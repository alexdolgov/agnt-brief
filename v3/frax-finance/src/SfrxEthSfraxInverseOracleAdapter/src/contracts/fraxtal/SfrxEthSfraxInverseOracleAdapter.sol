// SPDX-License-Identifier: ISC
pragma solidity ^0.8.20;

// ====================================================================
// |     ______                   _______                             |
// |    / _____________ __  __   / ____(_____  ____ _____  ________   |
// |   / /_  / ___/ __ `| |/_/  / /_  / / __ \/ __ `/ __ \/ ___/ _ \  |
// |  / __/ / /  / /_/ _>  <   / __/ / / / / / /_/ / / / / /__/  __/  |
// | /_/   /_/   \__,_/_/|_|  /_/   /_/_/ /_/\__,_/_/ /_/\___/\___/   |
// |                                                                  |
// ====================================================================
// =============== SfrxEthSfraxInverseOracleAdapter ===================
// ====================================================================
// Frax Finance: https://github.com/FraxFinance

// ====================================================================
import { Timelock2Step } from "frax-std/access-control/v1/Timelock2Step.sol";
import { ITimelock2Step } from "frax-std/access-control/v1/interfaces/ITimelock2Step.sol";
import { ChainlinkOracleWithMaxDelay, ConstructorParams as ChainlinkOracleWithMaxDelayParams } from "../abstracts/ChainlinkOracleWithMaxDelay.sol";
import { EthUsdChainlinkOracleWithMaxDelay, ConstructorParams as EthUsdChainlinkOracleWithMaxDelayParams } from "../abstracts/EthUsdChainlinkOracleWithMaxDelay.sol";
import { UniswapV3SingleTwapOracle, ConstructorParams as UniswapV3SingleTwapOracleParams } from "../abstracts/UniswapV3SingleTwapOracle.sol";
import { DualOracleBase, ConstructorParams as DualOracleBaseParams } from "../DualOracleBase.sol";
import { IDualOracle } from "interfaces/IDualOracle.sol";
import { FraxUsdChainlinkOracleWithMaxDelay, ConstructorParams as FraxUsdChainlinkOracleWithMaxDelayParams } from "src/contracts/abstracts/FraxUsdChainlinkOracleWithMaxDelay.sol";
import { ISfrax } from "src/contracts/interfaces/ISfrax.sol";

import "node_modules/forge-std/src/console.sol";

struct ConstructorParams {
    // = Timelock2Step
    address timelockAddress;
    // = DualOracleBase
    address baseToken0;
    uint8 baseToken0Decimals;
    address quoteToken0;
    uint8 quoteToken0Decimals;
    address baseToken1;
    uint8 baseToken1Decimals;
    address quoteToken1;
    uint8 quoteToken1Decimals;
    // = FraxUsdChainlinkOracleWithMaxDelay
    address fraxUsdChainlinkFeedAddress;
    uint256 maximumFraxUsdOracleDelay;
    // sFrax
    address sfraxOracle;
    // sfrxETHDualOracleInWeth
    address sFrxEthDualOracleInUsd;
}

/// @title WethInverseOracleAdapter
/// @notice An oracle for the Wrapped Bitcoin token in Usd terms
contract SfrxEthSfraxInverseOracleAdapter is Timelock2Step, DualOracleBase, FraxUsdChainlinkOracleWithMaxDelay {
    ISfrax public sFraxOracle;
    IDualOracle public sFrxEthDualOracleInUsd;

    constructor(
        ConstructorParams memory params
    )
        Timelock2Step()
        DualOracleBase(
            DualOracleBaseParams({
                baseToken0: params.baseToken0,
                baseToken0Decimals: params.baseToken0Decimals,
                quoteToken0: params.quoteToken0,
                quoteToken0Decimals: params.quoteToken0Decimals,
                baseToken1: params.baseToken1,
                baseToken1Decimals: params.baseToken1Decimals,
                quoteToken1: params.quoteToken1,
                quoteToken1Decimals: params.quoteToken1Decimals
            })
        )
        FraxUsdChainlinkOracleWithMaxDelay(
            FraxUsdChainlinkOracleWithMaxDelayParams({
                fraxUsdChainlinkFeedAddress: params.fraxUsdChainlinkFeedAddress,
                fraxUsdMaximumOracleDelay: params.maximumFraxUsdOracleDelay
            })
        )
    {
        _setTimelock({ _newTimelock: params.timelockAddress });
        _registerInterface({ interfaceId: type(IDualOracle).interfaceId });
        _registerInterface({ interfaceId: type(ITimelock2Step).interfaceId });
        sFraxOracle = ISfrax(params.sfraxOracle);
        sFrxEthDualOracleInUsd = IDualOracle(params.sFrxEthDualOracleInUsd);
    }

    // ====================================================================
    // View Helpers
    // ====================================================================

    /// @notice The ```name``` function returns the name of the contract
    /// @return _name The name of the contract
    function name() external pure returns (string memory _name) {
        _name = "SfrxEth/SFRAX Inverse Oracle Adapter Redstone";
    }

    // ====================================================================
    // Configuration Setters
    // ====================================================================

    /// @notice The ```setMaximumFraxUsdOracleDelay``` function sets the max oracle delay to determine if Redstone data is stale
    /// @dev Requires msg.sender to be the timelock address
    /// @param newMaxOracleDelay The new max oracle delay
    function setMaximumFraxUsdOracleDelay(uint256 newMaxOracleDelay) external override {
        _requireTimelock();
        _setMaximumFraxUsdOracleDelay({ _newMaxOracleDelay: newMaxOracleDelay });
    }

    // ====================================================================
    // Price Functions
    // ====================================================================

    // @notice The ```getUsdPerFraxRedstone``` function returns USD per FRAX using the Redstone oracle
    /// @return isBadData If the Redstone oracle is stale
    /// @return usdPerFrax The Eth Price is usd units
    function getUsdPerFraxRedstone() public view returns (bool isBadData, uint256 usdPerFrax) {
        uint256 usdPerFraxChainlinkRaw;
        (isBadData, , usdPerFraxChainlinkRaw) = _getFraxUsdChainlinkPrice();
        usdPerFrax = (ORACLE_PRECISION * usdPerFraxChainlinkRaw) / FRAX_USD_CHAINLINK_FEED_PRECISION;
    }

    /// @notice The ```getPricesNormalized``` function returns the normalized prices in human readable form
    /// @dev decimals of underlying tokens match so we can just return _getPrices()
    /// @return isBadDataNormal If the Redstone oracle is stale
    /// @return priceLowNormal The normalized low price
    /// @return priceHighNormal The normalized high price
    function getPricesNormalized()
        external
        view
        override
        returns (bool isBadDataNormal, uint256 priceLowNormal, uint256 priceHighNormal)
    {
        (isBadDataNormal, priceLowNormal, priceHighNormal) = _getPrices();
        priceLowNormal = priceLowNormal;
        priceHighNormal = priceHighNormal;
    }

    function _getPrices() internal view returns (bool isBadData, uint256 priceLow, uint256 priceHigh) {
        uint256 fraxPersFrax = sFraxOracle.pricePerShare();
        (bool isBadDataSfrxEthWeth, uint256 usdPerSfrxEthLow, uint256 usdPerSfrxEthHigh) = sFrxEthDualOracleInUsd
            .getPrices();
        (bool isBadDataUsdFraxRedstone, uint256 usdPerFrax) = getUsdPerFraxRedstone();
        uint256 sFraxPerUsd = (((ORACLE_PRECISION ** 2) / usdPerFrax) * ORACLE_PRECISION) / fraxPersFrax;
        priceLow = (sFraxPerUsd * (1e36 / usdPerSfrxEthHigh)) / ORACLE_PRECISION;
        priceHigh = (sFraxPerUsd * (1e36 / usdPerSfrxEthLow)) / ORACLE_PRECISION;
        isBadData = isBadDataSfrxEthWeth || isBadDataUsdFraxRedstone;
    }

    /// @notice The ```getPrices``` function is intended to return two prices from different oracles
    /// @dev `priceLow` will be equivalent to `priceHigh` for this oracle
    /// @return isBadData is true when data is stale or otherwise bad
    /// @return priceLow is the lower of the two prices
    /// @return priceHigh is the higher of the two prices
    function getPrices() external view returns (bool isBadData, uint256 priceLow, uint256 priceHigh) {
        (isBadData, priceLow, priceHigh) = _getPrices();
    }

    function getPricesSfrxEthWeth() external view returns (bool isBadData, uint256 priceLow, uint256 priceHigh) {
        (isBadData, priceLow, priceHigh) = sFrxEthDualOracleInUsd.getPrices();
    }
}
