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
// ========================== FxsDualOracle ===========================
// ====================================================================
// Frax Finance: https://github.com/FraxFinance

// ====================================================================

import { Timelock2Step } from "frax-std/access-control/v1/Timelock2Step.sol";
import { ITimelock2Step } from "frax-std/access-control/v1/interfaces/ITimelock2Step.sol";
import { ChainlinkOracleWithMaxDelay, ConstructorParams as ChainlinkOracleWithMaxDelayParams } from "../abstracts/ChainlinkOracleWithMaxDelay.sol";
import { DualOracleBase, ConstructorParams as DualOracleBaseParams } from "../DualOracleBase.sol";
import { FraxSwapTwapOracle, ConstructorParams as FraxSwapOracleParams } from "../abstracts/FraxSwapTwapPriceOracle.sol";
import "interfaces/IDualOracle.sol";

struct ConstructorParams {
    address fraxswapPair;
    uint32 twapDuration;
    address fxsErc20;
    address fxsRedstoneFeed;
    uint256 maximumOracleDelay;
    address timelockAddress;
}

/// @title FrxEthDualOracle
contract FxsDualOracle is DualOracleBase, Timelock2Step, FraxSwapTwapOracle, ChainlinkOracleWithMaxDelay {
    address public immutable FXS_ERC20;

    constructor(
        ConstructorParams memory _params
    )
        DualOracleBase(
            DualOracleBaseParams({
                baseToken0: address(840),
                baseToken0Decimals: 18,
                quoteToken0: _params.fxsErc20,
                quoteToken0Decimals: 18,
                baseToken1: address(840),
                baseToken1Decimals: 18,
                quoteToken1: _params.fxsErc20,
                quoteToken1Decimals: 18
            })
        )
        Timelock2Step()
        ChainlinkOracleWithMaxDelay(
            ChainlinkOracleWithMaxDelayParams({
                chainlinkFeedAddress: _params.fxsRedstoneFeed,
                maximumOracleDelay: _params.maximumOracleDelay
            })
        )
        FraxSwapTwapOracle(
            FraxSwapOracleParams({
                fraxswapPair: _params.fraxswapPair,
                toQuote: _params.fxsErc20,
                twapDuration: _params.twapDuration
            })
        )
    {
        _setTimelock({ _newTimelock: _params.timelockAddress });
        _registerInterface({ interfaceId: type(IDualOracle).interfaceId });
        _registerInterface({ interfaceId: type(ITimelock2Step).interfaceId });

        FXS_ERC20 = _params.fxsErc20;
    }

    // ====================================================================
    // View Helpers
    // ====================================================================

    function name() external pure returns (string memory) {
        return "FXS RedStone Dual Oracle + TWAP";
    }

    // ====================================================================
    // Configuration Setters
    // ====================================================================

    /// @notice The ```setMaximumOracleDelay``` function set the max oracle delay for the Fxs/USD Redstone oracle
    /// @dev Requires msg.sender to be the timelock address
    /// @param _newMaxOracleDelay The new max oracle delay
    function setMaximumOracleDelay(uint256 _newMaxOracleDelay) external override {
        _requireTimelock();
        _setMaximumOracleDelay({ _newMaxOracleDelay: _newMaxOracleDelay });
    }

    /// @notice The ```setTwapDurationFraxSwap``` function set the twap duration for the FraxSwap Twap Oracle
    /// @dev Requiores msg.sender to be the timelock address
    /// @param _newTwapDuration The new twap duration
    function setTwapDurationFraxSwap(uint32 _newTwapDuration) external override {
        _requireTimelock();
        _setTwapDurationFraxSwap({ _newTwapDuration: _newTwapDuration });
    }

    // ====================================================================
    // Price Functions
    // ====================================================================

    /// @notice The ```getFxsPerUsdRedStone``` function returns the amount of fxs per 1 USD
    /// @return _isBadData Whether the data returned from the oracle is stale
    /// @return _fxsPerUsd The amount of fxs per unit of USD
    function getFxsPerUsdRedStone() public view returns (bool _isBadData, uint256 _fxsPerUsd) {
        (bool isBadData, , uint256 usdPerFxs) = _getChainlinkPrice();
        _isBadData = isBadData;
        _fxsPerUsd = (CHAINLINK_FEED_PRECISION * ORACLE_PRECISION) / usdPerFxs;
    }

    /// @notice The ```getPricesNormalized``` function returns the normalized prices in human readable form
    /// @return _isBadDataNormal If the Redstone oracle is stale
    /// @return _priceLowNormal The normalized low price
    /// @return _priceHighNormal The normalized high price
    function getPricesNormalized()
        external
        view
        returns (bool _isBadDataNormal, uint256 _priceLowNormal, uint256 _priceHighNormal)
    {
        (bool _isBadData, uint256 _priceLow, uint256 _priceHigh) = _getPrices();
        _isBadDataNormal = _isBadData;

        _priceLowNormal = NORMALIZATION_0 > 0
            ? _priceLow * 10 ** uint256(NORMALIZATION_0)
            : _priceLow / 10 ** (uint256(-NORMALIZATION_0));

        _priceHighNormal = NORMALIZATION_1 > 0
            ? _priceHigh * 10 ** uint256(NORMALIZATION_1)
            : _priceHigh / 10 ** (uint256(-NORMALIZATION_1));
    }

    function _getPrices() internal view returns (bool _isBadData, uint256 _priceLow, uint256 _priceHigh) {
        (bool isBadData, uint256 _fxsPerUsdRedStone) = getFxsPerUsdRedStone();

        uint256 _fraxPerFxsTwap = _getTwapFraxSwapPair();
        uint256 _fxsPerFraxTwap = (ORACLE_PRECISION ** 2) / _fraxPerFxsTwap;

        _isBadData = isBadData;
        _priceLow = _fxsPerFraxTwap < _fxsPerUsdRedStone ? _fxsPerFraxTwap : _fxsPerUsdRedStone;
        _priceHigh = _fxsPerUsdRedStone > _fxsPerFraxTwap ? _fxsPerUsdRedStone : _fxsPerFraxTwap;
    }

    /// @notice The ```getPrices``` function is intended to return two prices from different oracles
    /// @return _isBadData is true when data is stale or otherwise bad
    /// @return _priceLow is the lower of the two prices
    /// @return _priceHigh is the higher of the two prices
    function getPrices() external view returns (bool _isBadData, uint256 _priceLow, uint256 _priceHigh) {
        return _getPrices();
    }
}
