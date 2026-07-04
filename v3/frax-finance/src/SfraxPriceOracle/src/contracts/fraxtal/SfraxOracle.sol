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
// ======================= SfraxPriceOracle ===========================
// ====================================================================
// Frax Finance: https://github.com/FraxFinance

// ====================================================================
import { Timelock2Step } from "frax-std/access-control/v1/Timelock2Step.sol";
import { ITimelock2Step } from "frax-std/access-control/v1/interfaces/ITimelock2Step.sol";
import { DualOracleBase, ConstructorParams as DualOracleBaseParams } from "../DualOracleBase.sol";
import { IDualOracle } from "interfaces/IDualOracle.sol";
import { FraxUsdChainlinkOracleWithMaxDelay, ConstructorParams as FraxUsdChainlinkOracleWithMaxDelayParams } from "src/contracts/abstracts/FraxUsdChainlinkOracleWithMaxDelay.sol";
import { ISfrax } from "src/contracts/interfaces/ISfrax.sol";

struct ConstructorParams {
    // = Timelock2Step
    address timelockAddress;
    // = FraxUsdChainlinkOracleWithMaxDelay
    address fraxUsdChainlinkFeedAddress;
    uint256 maximumFraxUsdOracleDelay;
    // sFrax
    address sfrax;
    address sfraxRateTransportOracle;
}

/// @title SfraxPriceOracle
/// @notice An oracle for Sfrax
contract SfraxPriceOracle is Timelock2Step, DualOracleBase, FraxUsdChainlinkOracleWithMaxDelay {
    address public sFrax;
    ISfrax public sFraxOracle;

    constructor(
        ConstructorParams memory params
    )
        Timelock2Step()
        DualOracleBase(
            DualOracleBaseParams({
                baseToken0: address(840),
                baseToken0Decimals: 18,
                quoteToken0: params.sfrax,
                quoteToken0Decimals: 18,
                baseToken1: address(840),
                baseToken1Decimals: 18,
                quoteToken1: params.sfrax,
                quoteToken1Decimals: 18
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
        sFrax = params.sfrax;
        sFraxOracle = ISfrax(params.sfraxRateTransportOracle);
    }

    // ====================================================================
    // View Helpers
    // ====================================================================

    /// @notice The ```name``` function returns the name of the contract
    /// @return _name The name of the contract
    function name() external pure returns (string memory _name) {
        _name = "SFRAX Chainlink Oracle";
    }

    // ====================================================================
    // Configuration Setters
    // ====================================================================

    /// @notice The ```setMaximumFraxUsdOracleDelay``` function sets the max oracle delay to determine if Chainlink data is stale
    /// @dev Requires msg.sender to be the timelock address
    /// @param newMaxOracleDelay The new max oracle delay
    function setMaximumFraxUsdOracleDelay(uint256 newMaxOracleDelay) external override {
        _requireTimelock();
        _setMaximumFraxUsdOracleDelay({ _newMaxOracleDelay: newMaxOracleDelay });
    }

    // ====================================================================
    // Price Functions
    // ====================================================================

    // @notice The ```getUsdPerFraxChainlink``` function returns USD per FRAX using the Chainlink oracle
    /// @return isBadData If the Chainlink oracle is stale
    /// @return usdPerFrax The Eth Price is usd units
    function getUsdPerFraxChainlink() public view returns (bool isBadData, uint256 usdPerFrax) {
        (isBadData, , usdPerFrax) = _getFraxUsdChainlinkPrice();
        usdPerFrax *= (ORACLE_PRECISION / FRAX_USD_CHAINLINK_FEED_PRECISION);
    }

    /// @notice The ```getPricesNormalized``` function returns the normalized prices in human readable form
    /// @dev decimals of underlying tokens match so we can just return _getPrices()
    /// @return isBadDataNormal If the Chainlink oracle is stale
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
        // uint256 fraxPersFrax = sFrax.previewRedeem(1e18);
        uint256 fraxPersFrax = sFraxOracle.pricePerShare();
        (bool isBadDataUsdFraxChainlink, uint256 usdPerFrax) = getUsdPerFraxChainlink();
        uint256 sfraxPerUsd = (ORACLE_PRECISION ** 3) / (fraxPersFrax * usdPerFrax);
        priceLow = priceHigh = sfraxPerUsd;
        isBadData = isBadDataUsdFraxChainlink;
    }

    /// @notice The ```getPrices``` function is intended to return two prices from different oracles
    /// @dev `priceLow` will be equivalent to `priceHigh` for this oracle
    /// @return isBadData is true when data is stale or otherwise bad
    /// @return priceLow is the lower of the two prices
    /// @return priceHigh is the higher of the two prices
    function getPrices() external view returns (bool isBadData, uint256 priceLow, uint256 priceHigh) {
        (isBadData, priceLow, priceHigh) = _getPrices();
    }
}
