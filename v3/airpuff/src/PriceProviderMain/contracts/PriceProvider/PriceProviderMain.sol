// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.23;

import { OwnableUpgradeable, MsgSenderAppUpg } from "../CrossChainMsg/MsgSenderAppUpg.sol";
import { IPriceProvider } from "../interfaces/IIncentive/IPriceProvider.sol";

import "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";
import "@uniswap/v3-core-0.8-support/contracts/libraries/TickMath.sol";
import "@uniswap/v3-core/contracts/libraries/FixedPoint96.sol";
import "@uniswap/v3-core-0.8-support/contracts/libraries/FullMath.sol";

import { SafeCast } from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import { IChainlinkOracle } from "../interfaces/IChainlinkOracle.sol";

contract PriceProviderMain is IPriceProvider, OwnableUpgradeable, MsgSenderAppUpg {
    using SafeCast for uint256;
    using SafeCast for int256;
    using FullMath for uint256;

    uint256 public constant MAX_TIME_INTERVAL = 86400 * 3; // 3 days
    uint256 public constant MAX_TWAP_INTERVAL = 86400; // 1 day
    uint256 public constant MIN_TWAP_INTERVAL = 60; // 1 minute
    uint256 public constant MAX_TIMEPOINTS = 7;

    uint256 public price;
    uint8 public decimals; //18
    uint256 public lastUpdatedTimestamp;
    uint256 public timeInterval; // how many seconds between each update
    uint32 public twapInterval; // how many seconds between each observation (timepoints)
    uint8 public timePoints; //how many prices will be used to calculate the average price
    address public apuffTokenPoolAddress;
    address public usdcOracle;
    address public ethOracle;

    mapping(address => bool) public keepers;

    uint256[50] private __gap;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    //modifier to check if the caller is the keeper
    modifier onlyKeeper() {
        if (!keepers[msg.sender]) revert NotKeeper();
        _;
    }

    function initialize(address _msgSendEndpoint, uint256 _approxDstExecutionGas) public initializer {
        decimals = 18;
        twapInterval = 3600;
        timePoints = 7;
        timeInterval = 3600 * 3; //3 hour
        keepers[msg.sender] = true;
        __MsgSenderAppUpg_init(_msgSendEndpoint, _approxDstExecutionGas);
        __Ownable_init(msg.sender);
    }

    function setKeeper(address _keeper, bool _isKeeper) external onlyOwner {
        if (_keeper == address(0)) revert AddressZero();
        keepers[_keeper] = _isKeeper;
        emit KeeperSet(_keeper, _isKeeper);
    }

    function setChainlinkOracle(address _ethOracle) external onlyOwner {
        if (_ethOracle == address(0)) revert AddressZero();
        ethOracle = _ethOracle;
        emit ChainlinkOracleSet(_ethOracle);
    }

    //function to setTimeInterval
    function setTimeInterval(uint256 _timeInterval, uint32 _twapInterval, uint8 _timePoints) external onlyOwner {
        if (_timeInterval > MAX_TIME_INTERVAL) revert InvalidTimeInterval();
        if (_twapInterval > MAX_TWAP_INTERVAL || _twapInterval < MIN_TWAP_INTERVAL) revert InvalidTimeInterval();
        if (_timePoints > MAX_TIMEPOINTS) revert InvalidTimePoints();
        timeInterval = _timeInterval;
        twapInterval = _twapInterval;
        timePoints = _timePoints;
        emit TimeIntervalSet(_timeInterval, _twapInterval, _timePoints);
    }

    function setApuffTokenPool(address _apuffTokenPoolAddress) external onlyOwner {
        if (_apuffTokenPoolAddress == address(0)) revert AddressZero();

        apuffTokenPoolAddress = _apuffTokenPoolAddress;

        emit ApuffTokenPoolSet(_apuffTokenPoolAddress);
    }

    function updatePrice() public returns (uint256) {
        uint256 updatedPriceInEth = getPriceInEthFromUniswap(apuffTokenPoolAddress);
        price = getApuffPriceInUsd(updatedPriceInEth);
        lastUpdatedTimestamp = block.timestamp;
        emit PriceUpdated(price);
        return price;
    }

    function broadcast(uint256 chainId) public payable refundUnusedEth {
        _broadcast(chainId, price);
        //event in the internal function
    }

    //updateAdnBrodcastPrice to multiple chains

    function updateAndBroadcastPrice(uint256[] calldata chainIds) public payable refundUnusedEth {
        uint256 _updatedPrice;
        if (block.timestamp - lastUpdatedTimestamp < timeInterval) {
            _updatedPrice = price;
        } else {
            _updatedPrice = updatePrice();
        }
        for (uint256 i = 0; i < chainIds.length; i++) {
            _broadcast(chainIds[i], _updatedPrice);
        }
    }

    function updateAndBroadcastPriceSingle(uint256 chainId) public payable refundUnusedEth {
        uint256 _updatedPrice;
        if (block.timestamp - lastUpdatedTimestamp < timeInterval) {
            _updatedPrice = price;
        } else {
            _updatedPrice = updatePrice();
        }
        _broadcast(chainId, _updatedPrice);
    }

    //function to withdraw eth from the contract
    function withdrawEth() external onlyOwner {
        (bool sent, ) = payable(msg.sender).call{ value: address(this).balance }("");
        if (sent) emit EthWithdrawn(address(this).balance);
    }

    /*//////////////////////////////////////////////////////////////
                       VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    function getApuffPriceInUsd(uint256 apuffPriceInEth) public view returns (uint256 apuffPriceInUsd) {
        uint256 ethPriceInUsd = _getLatestData(ethOracle); //usdc price in eth
        apuffPriceInUsd = (apuffPriceInEth * ethPriceInUsd) / 1e8; //decimal??
    }

    //
    function getTokenPrice() external view returns (uint256) {
        return price;
    }

    function getPriceInEthFromUniswap(address uniswapV3Pool) public view returns (uint256) {
        uint160 sqrtPriceX96 = _getSqrtTwapX96(uniswapV3Pool, twapInterval, timePoints);
        // how many apuff token can be bought with 1 eth
        uint256 priceOfEthInApuff = (_getPriceX96FromSqrtPriceX96(sqrtPriceX96)) / FixedPoint96.Q96;

        uint256 priceOfAPuffInEth = 1e18 / priceOfEthInApuff; //1 Apuff to eth

        return priceOfAPuffInEth;
    }

    /*//////////////////////////////////////////////////////////////
                      INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    function _broadcast(uint256 chainId, uint256 _price) internal {
        _sendMessage(chainId, abi.encode(_price));
        emit PriceBroadcasted(chainId, _price);
    }

    function _getLatestData(address _oracle) internal view returns (uint256) {
        (, /* uint80 roundID */ int answer /*uint startedAt*/ /*uint timeStamp*/ /*uint80 answeredInRound*/, , , ) = IChainlinkOracle(
            _oracle
        ).latestRoundData(); //in 1e8

        return uint256(answer);
    }

    function _getSqrtTwapX96(
        address _uniswapV3Pool,
        uint32 _twapInterval,
        uint8 _timepoints
    ) internal view returns (uint160 sqrtPriceX96Average) {
        require(_timepoints > 0, "Timepoints must be greater than 0");
        if (_twapInterval == 0 || _timepoints == 1) {
            (sqrtPriceX96Average, , , , , , ) = IUniswapV3Pool(_uniswapV3Pool).slot0();
        } else {
            // Calculate the time interval between each observation
            uint32 intervalBetweenObservations = _twapInterval / (_timepoints - 1);
            uint32[] memory secondsAgos = new uint32[](_timepoints);
            for (uint8 i = 0; i < _timepoints; i++) {
                secondsAgos[i] = intervalBetweenObservations * i;
            }

            // Fetch observations for each timepoint
            (int56[] memory tickCumulatives, ) = IUniswapV3Pool(_uniswapV3Pool).observe(secondsAgos);

            // Calculate the average tick from the cumulative ticks
            int256 cumulativeTick = 0;
            for (uint8 i = 1; i < _timepoints; i++) {
                cumulativeTick += (tickCumulatives[i] - tickCumulatives[i - 1]);
            }
            cumulativeTick /= int256(uint256(_timepoints - 1));

            // Convert average tick to sqrtPriceX96
            sqrtPriceX96Average = TickMath.getSqrtRatioAtTick(int24(cumulativeTick / int256(uint256(intervalBetweenObservations))));
        }
    }

    function _getPriceX96FromSqrtPriceX96(uint160 sqrtPriceX96) internal pure returns (uint256 priceX96) {
        return FullMath.mulDiv(sqrtPriceX96, sqrtPriceX96, FixedPoint96.Q96);
    }
}
