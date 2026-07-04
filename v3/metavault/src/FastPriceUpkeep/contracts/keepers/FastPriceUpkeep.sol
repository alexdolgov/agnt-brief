/// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;

pragma experimental ABIEncoderV2;

import "../libraries/math/SafeMath.sol";
import "../libraries/token/IERC20.sol";
import "../libraries/token/SafeERC20.sol";
import "./interfaces/KeeperCompatibleInterface.sol";
import "./interfaces/AggregatorV2V3Interface.sol";

import "../libraries/access/Ownable.sol";

import "../core/interfaces/IPositionRouter.sol";
import "../core/interfaces/IVault.sol";

interface IFastPriceFeed {
    function lastUpdatedAt() external view returns (uint256);

    function lastUpdatedBlock() external view returns (uint256);

    function setIsSpreadEnabled(bool _isSpreadEnabled) external;

    function setSigner(address _account, bool _isActive) external;

    function setPrices(
        address[] memory _tokens,
        uint256[] memory _prices,
        uint256 _timestamp
    ) external;
}

contract FastPriceUpkeep is Ownable, KeeperCompatibleInterface {
    using SafeMath for uint256;

    uint256 public constant PRICE_PRECISION = 10**30;

    address public gov;
    address public fastPriceFeed;

    address[] public tokens; // btc, eth, link,

    mapping(address => address) public priceFeeds;
    mapping(address => uint256) public priceDecimals;

    uint256 public interval;
    uint256 public lastTimeStamp;

    uint256 public priceSampleSpace = 3;
    uint256 public tokensLength;

    bool public isStopped = false;

    modifier onlyGov() {
        require(msg.sender == gov, "FastPriceUpkeep: forbidden");
        _;
    }

    constructor(uint256 _updateInterval) public {
        interval = _updateInterval;
        lastTimeStamp = block.timestamp;

        gov = msg.sender;
    }

    function setGov(address _gov) external onlyGov {
        gov = _gov;
    }

    function setFastPriceFeed(address _fastPriceFeed) external onlyGov {
        fastPriceFeed = _fastPriceFeed;
    }

    function setInterval(uint256 _interval) external onlyGov {
        interval = _interval;
        lastTimeStamp = block.timestamp;
    }

    function setPriceSampleSpace(uint256 _priceSampleSpace) external onlyGov {
        require(_priceSampleSpace > 0, "FastPriceUpkeep: invalid _priceSampleSpace");
        priceSampleSpace = _priceSampleSpace;
    }

    function setTokens(address[] memory _tokens, uint256[] memory _tokenPrecisions) external onlyGov {
        require(_tokens.length == _tokenPrecisions.length, "FastPriceUpkeep: invalid lengths");
        tokens = _tokens;
        tokensLength = tokens.length;
    }

    function setTokenConfig(
        address _token,
        address _priceFeed,
        uint256 _priceDecimals
    ) external onlyGov {
        priceFeeds[_token] = _priceFeed;
        priceDecimals[_token] = _priceDecimals;
    }

    function deleteTokenConfig(address _token) external onlyGov {
        delete priceFeeds[_token];
        delete priceDecimals[_token];
    }

    function stopContract() public onlyGov {
        isStopped = true;
    }

    function resumeContract() public onlyGov {
        isStopped = false;
    }

    function checkUpkeep(
        bytes calldata /*checkData*/
    )
        external
        override
        returns (
            bool upkeepNeeded,
            bytes memory /*performData*/
        )
    {
        upkeepNeeded = ensureCheckUpdate();
    }

    function performUpkeep(
        bytes calldata /*performData*/
    ) external override {
        if (ensureCheckUpdate()) {
            lastTimeStamp = block.timestamp;
            executeInternal();
        }
    }

    function ensureCheckUpdate() public view returns (bool upkeepNeeded) {
        upkeepNeeded = (block.timestamp - lastTimeStamp) > interval;
    }

    function executeInternal() internal {
        require(!isStopped, "FastPriceUpkeep: contract stoped");
        updateFastPriceFeed();
    }

    function updateFastPriceFeed() public returns (uint256[] memory prices) {
        uint256[] memory _prices = new uint256[](tokens.length);

        for (uint16 i = 0; i < tokens.length; i++) {
            uint256 tokenPrice = getPrice(tokens[i], true);

            _prices[i] = tokenPrice;
        }
        prices = _prices;

        IFastPriceFeed(fastPriceFeed).setPrices(tokens, _prices, block.timestamp);
    }

    function getPrice(address _token, bool _maximise) public view returns (uint256) {
        address priceFeedAddress = priceFeeds[_token];
        require(priceFeedAddress != address(0), "FastPriceUpkeep: invalid price feed");

        AggregatorV2V3Interface priceFeed = AggregatorV2V3Interface(priceFeedAddress);

        uint256 price = 0;
        uint256 roundId = priceFeed.latestRound();

        for (uint256 i = 0; i < priceSampleSpace; i++) {
            if (roundId <= i) {
                break;
            }
            uint256 p;

            if (i == 0) {
                int256 _p = priceFeed.latestAnswer();
                require(_p > 0, "FastPriceUpkeep: invalid price");
                p = uint256(_p);
            } else {
                (, int256 _p, , , ) = priceFeed.getRoundData(uint80(roundId - i));
                require(_p > 0, "FastPriceUpkeep: invalid price");
                p = uint256(_p);
            }

            if (price == 0) {
                price = p;
                continue;
            }

            if (_maximise && p > price) {
                price = p;
                continue;
            }

            if (!_maximise && p < price) {
                price = p;
            }
        }

        require(price > 0, "FastPriceUpkeep: could not fetch price");
        // normalise price precision
        uint256 _priceDecimals = priceDecimals[_token];
        return price.mul(PRICE_PRECISION).div(10**_priceDecimals);
    }
}
