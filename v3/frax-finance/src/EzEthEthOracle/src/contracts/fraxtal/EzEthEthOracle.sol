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
// =========================== EzEthEthOracle ============================
// ====================================================================
// Frax Finance: https://github.com/FraxFinance

// ====================================================================

import { Timelock2Step } from "frax-std/access-control/v1/Timelock2Step.sol";
import { ITimelock2Step } from "frax-std/access-control/v1/interfaces/ITimelock2Step.sol";
import { DualOracleBase, ConstructorParams as DualOracleBaseParams } from "../DualOracleBase.sol";
import { IDualOracle } from "interfaces/IDualOracle.sol";
import { ERC165Storage } from "src/contracts/utils/ERC165Storage.sol";
import { Api3OracleWithMaxDelay, ConstructorParams as Api3OracleParams } from "src/contracts/abstracts/Api3OracleWithMaxDelay.sol";

struct ConstructorParams {
    address ezEthErc20;
    address frxEthErc20;
    address timelockAddress;
    address api3PriceFeed;
    uint8 api3FeedDecimals;
    uint256 maximumOracleDelayApi3;
}

contract EzEthEthOracle is DualOracleBase, Timelock2Step, Api3OracleWithMaxDelay {
    address public immutable EZETH_ERC20;

    constructor(
        ConstructorParams memory _params
    )
        DualOracleBase(
            DualOracleBaseParams({
                baseToken0: _params.frxEthErc20,
                baseToken0Decimals: 18,
                quoteToken0: _params.ezEthErc20,
                quoteToken0Decimals: 18,
                baseToken1: _params.frxEthErc20,
                baseToken1Decimals: 18,
                quoteToken1: _params.ezEthErc20,
                quoteToken1Decimals: 18
            })
        )
        Timelock2Step()
        Api3OracleWithMaxDelay(
            Api3OracleParams({
                api3FeedAddress: _params.api3PriceFeed,
                api3FeedDecimals: _params.api3FeedDecimals,
                maximumOracleDelay: _params.maximumOracleDelayApi3
            })
        )
    {
        _setTimelock({ _newTimelock: _params.timelockAddress });
        _registerInterface({ interfaceId: type(IDualOracle).interfaceId });
        _registerInterface({ interfaceId: type(ITimelock2Step).interfaceId });

        EZETH_ERC20 = _params.ezEthErc20;
    }

    // ====================================================================
    // View Helpers
    // ====================================================================

    function name() external pure returns (string memory) {
        return "EzEth Api3 Oracle";
    }

    // ====================================================================
    // Configuration Setters
    // ====================================================================

    /// @notice The ```_setMaximumOracleDelay``` function sets the max oracle delay to determine if Price Feed data is stale
    /// @dev Requires the msg.sender to be the timelock address
    /// @param _newMaxOracleDelay The new max oracle delay
    function setMaximumOracleDelay(uint256 _newMaxOracleDelay) external override {
        _requireTimelock();
        _setMaximumOracleDelay({ _newMaxOracleDelay: _newMaxOracleDelay });
    }

    // ====================================================================
    // Price Functions
    // ====================================================================

    /// @notice The ```getEthPerEzEthApi3``` function returns the amount of eth per ezEth
    /// @return _isBadData Whether the data returned from the oracle is stale
    /// @return _ethPerEzEth The amount of eth per unit of EzEth
    function getEthPerEzEthApi3() public view returns (bool _isBadData, uint256 _ethPerEzEth) {
        (_isBadData, , _ethPerEzEth) = _getApi3Price();
        _ethPerEzEth *= ORACLE_PRECISION / API3_FEED_PRECISION;
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
        (bool isBadDataApi3, uint256 _ethPerEzEthApi3) = getEthPerEzEthApi3();

        uint256 ezEthPerEth = ORACLE_PRECISION ** 2 / _ethPerEzEthApi3;

        _isBadData = isBadDataApi3;
        _priceLow = _priceHigh = ezEthPerEth;
    }

    /// @notice The ```getPrices``` function is intended to return two prices from different oracles
    /// @return _isBadData is true when data is stale or otherwise bad
    /// @return _priceLow is the lower of the two prices
    /// @return _priceHigh is the higher of the two prices
    function getPrices() external view returns (bool _isBadData, uint256 _priceLow, uint256 _priceHigh) {
        return _getPrices();
    }
}
