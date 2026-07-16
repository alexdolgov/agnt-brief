// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.7;

import "../abstract/AdminAccess.sol";
import "../interfaces/IPriceOracle.sol";
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

// import "hardhat/console.sol";

contract GoldOracleTangible is AdminAccess, IPriceOracle {
    AggregatorV3Interface internal priceFeed;
    struct GoldBar {
        uint256 grams;
        uint256 premiumPercentage; //in percentage: 1234 -> 1.234 %;  50 -> 0.005 USD
    }

    event GoldBarAdded(string barName, uint256 grams, uint256 premiumPrice);

    mapping(string => GoldBar) public goldBars;

    uint256 public unz = 311034768; // 7 decimals 31.1034768gr

    constructor(address goldOracle) {
        require(goldOracle != address(0), "Empty address");
        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
        priceFeed = AggregatorV3Interface(goldOracle);
    }

    /// @inheritdoc IPriceOracle
    function latestAnswer(ITangibleNFT nft)
        external
        view
        override
        returns (uint256)
    {
        require(goldBars[nft.name()].grams > 0, "No data for tnft");
        (
            uint80 roundID,
            int256 price,
            uint256 startedAt,
            uint256 timeStamp,
            uint80 answeredInRound
        ) = priceFeed.latestRoundData();
        if (price < 0) {
            price = 0;
        }

        uint256 priceForGrams = ((convertToOracleDecimals(
            goldBars[nft.name()].grams,
            0
        ) * uint256(price)) / convertToOracleDecimals(unz, uint8(7)));

        uint256 premium = calculatePremium(
            priceForGrams,
            goldBars[nft.name()].premiumPercentage
        );

        return priceForGrams + premium;
    }

    /// @inheritdoc IPriceOracle
    function latestTimeStamp(ITangibleNFT nft)
        external
        view
        override
        returns (uint256)
    {
        require(goldBars[nft.name()].grams > 0, "No data for tnft");
        (
            uint80 roundID,
            int256 price,
            uint256 startedAt,
            uint256 timeStamp,
            uint80 answeredInRound
        ) = priceFeed.latestRoundData();
        return timeStamp;
    }

    /// @inheritdoc IPriceOracle
    function decimals() external view override returns (uint8) {
        return _decimals();
    }

    function _decimals() internal view returns (uint8) {
        return priceFeed.decimals();
    }

    /// @inheritdoc IPriceOracle
    function description() external view override returns (string memory desc) {
        return priceFeed.description();
    }

    function version() external view override returns (uint256) {
        return priceFeed.version();
    }

    function calculatePremium(uint256 price, uint256 percentage)
        internal
        view
        returns (uint256)
    {
        //percentage can have 3 decimal places
        //for example 1234 is 1.234%
        return (price * percentage) / 100000;
    }

    function convertToOracleDecimals(uint256 price, uint8 priceDecimals)
        internal
        view
        returns (uint256)
    {
        if (uint256(priceDecimals) > _decimals()) {
            return price / (10**(uint256(priceDecimals) - _decimals()));
        } else if (uint256(priceDecimals) < _decimals()) {
            return price * (10**(_decimals() - uint256(priceDecimals)));
        }
        return price;
    }

    // function pricePerGram(uint256 price) internal view returns (uint256) {
    //     uint256 alignedUnz = convertToOracleDecimals(unz, uint8(7));
    //     return price / 31;
    // }

    function addGoldBar(
        ITangibleNFT nft,
        uint256 grams,
        uint256 premiumPercentage
    ) external onlyAdmin {
        require(address(nft) != address(0), "Zero nft");
        require(grams > 0, "Zero grams");
        if (goldBars[nft.name()].grams > 0) {
            //we update
            goldBars[nft.name()].grams = grams;
            goldBars[nft.name()].premiumPercentage = premiumPercentage;
        } else {
            //we add new
            GoldBar memory gb = GoldBar({
                grams: grams,
                premiumPercentage: premiumPercentage
            });
            goldBars[nft.name()] = gb;
        }

        emit GoldBarAdded(nft.name(), grams, premiumPercentage);
    }
}
