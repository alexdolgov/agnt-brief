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
// ======================== SFrxEthDualOracle =========================
// ====================================================================
// Frax Finance: https://github.com/FraxFinance

// ====================================================================

import { Timelock2Step } from "frax-std/access-control/v1/Timelock2Step.sol";
import { ITimelock2Step } from "frax-std/access-control/v1/interfaces/ITimelock2Step.sol";
import { DualOracleBase, ConstructorParams as DualOracleBaseParams } from "../DualOracleBase.sol";
import { IDualOracle } from "interfaces/IDualOracle.sol";
import { ERC165Storage } from "src/contracts/utils/ERC165Storage.sol";

struct ConstructorParams {
    address sfrxEthErc20;
    address timelockAddress;
    address sfrxEthRateOracle;
    address frxEthOracle;
}

contract SfrxEthDualOracle is DualOracleBase, Timelock2Step, ERC165Storage {
    address public immutable SFRXETH_ERC20;
    IDualOracle public sfrxEthRateOracle;
    IDualOracle public frxEthOracle;

    constructor(
        ConstructorParams memory _params
    )
        DualOracleBase(
            DualOracleBaseParams({
                baseToken0: address(840),
                baseToken0Decimals: 18,
                quoteToken0: _params.sfrxEthErc20,
                quoteToken0Decimals: 18,
                baseToken1: address(840),
                baseToken1Decimals: 18,
                quoteToken1: _params.sfrxEthErc20,
                quoteToken1Decimals: 18
            })
        )
        Timelock2Step()
    {
        SFRXETH_ERC20 = _params.sfrxEthErc20;
        sfrxEthRateOracle = IDualOracle(_params.sfrxEthRateOracle);
        frxEthOracle = IDualOracle(_params.frxEthOracle);
        _setTimelock({ _newTimelock: _params.timelockAddress });
        _registerInterface({ interfaceId: type(IDualOracle).interfaceId });
        _registerInterface({ interfaceId: type(ITimelock2Step).interfaceId });
    }

    // ====================================================================
    // View Helpers
    // ====================================================================

    function name() external pure returns (string memory) {
        return "SfrxEth RedStone Dual Oracle + TWAP";
    }

    // ====================================================================
    // Configuration Setters
    // ====================================================================

    /// @notice The ```setSfrxEthRateOracle``` function is a timelock gated setter to allow for the
    ///         `sfrxEthRateOracle` pointer to be updated
    /// @param newOracle The address of the new oracle that we wish to update to
    function setSfrxEthRateOracle(address newOracle) public {
        _requireTimelock();
        emit SfrxEthRateOracleUpdated(address(sfrxEthRateOracle), newOracle);
        sfrxEthRateOracle = IDualOracle(newOracle);
    }

    /// @notice The ```setFrxEthOracle`` function is a timelock gated setter to allow for the
    ///         `frxEthOracle` pointer to be updated
    /// @param newOracle The address of the new oracle we wish to update to
    function setFrxEthOracle(address newOracle) public {
        _requireTimelock();
        emit FrxEthOracleUpdated(address(frxEthOracle), newOracle);
        frxEthOracle = IDualOracle(newOracle);
    }

    // ====================================================================
    // Price Functions
    // ====================================================================

    /// @notice The ```getPrices``` function is intended to return two prices from different oracles
    /// @return _isBadData is true when data is stale or otherwise bad
    /// @return _priceLow is the lower of the two prices
    /// @return _priceHigh is the higher of the two prices
    function _getPrices() internal view returns (bool _isBadData, uint256 _priceLow, uint256 _priceHigh) {
        // Currently only oracle that can return valuable `isBadData` flag
        (_isBadData, _priceLow, _priceHigh) = frxEthOracle.getPrices();
        (, , uint256 rate18) = sfrxEthRateOracle.getPrices();
        _priceLow = (_priceLow * ORACLE_PRECISION) / rate18;
        _priceHigh = (_priceHigh * ORACLE_PRECISION) / rate18;
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

    /// @notice The ```getPrices``` function is intended to return two prices from different oracles
    /// @return _isBadData is true when data is stale or otherwise bad
    /// @return _priceLow is the lower of the two prices
    /// @return _priceHigh is the higher of the two prices
    function getPrices() external view returns (bool _isBadData, uint256 _priceLow, uint256 _priceHigh) {
        return _getPrices();
    }

    /// @notice The ```SfrxEthRateOracleUpdated``` event is emitted when the oracle that fetches
    ///         the sfrxEth/frxEth price is changed
    /// @param oldOracle The address of the previous oracle
    /// @param newOracle The address of the updated oracle
    event SfrxEthRateOracleUpdated(address oldOracle, address newOracle);

    /// @notice The ```FrxEthOracleUpdated``` event is emitted when the oracle that fetches
    ///         the usd/frxEth price is changed
    /// @param oldOracle The address of the previous oracle
    /// @param newOracle The address of the updated oracle
    event FrxEthOracleUpdated(address oldOracle, address newOracle);
}
