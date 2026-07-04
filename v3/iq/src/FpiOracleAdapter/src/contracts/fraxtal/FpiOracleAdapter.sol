// SPDX-License-Identifier: ISC
pragma solidity ^0.8.19;

// ====================================================================
// |     ______                   _______                             |
// |    / _____________ __  __   / ____(_____  ____ _____  ________   |
// |   / /_  / ___/ __ `| |/_/  / /_  / / __ \/ __ `/ __ \/ ___/ _ \  |
// |  / __/ / /  / /_/ _>  <   / __/ / / / / / /_/ / / / / /__/  __/  |
// | /_/   /_/   \__,_/_/|_|  /_/   /_/_/ /_/\__,_/_/ /_/\___/\___/   |
// |                                                                  |
// ====================================================================
// ========================== FPIOracleAdapter ========================
// ====================================================================
// Frax Finance: https://github.com/FraxFinance

// ====================================================================

import { ERC165Storage } from "src/contracts/utils/ERC165Storage.sol";
import { DualOracleBase, IDualOracle, ConstructorParams as DualOracleBaseParams } from "../DualOracleBase.sol";

struct ConstructorParams {
    address fpiErc20;
    address fpiMerkleProofOracle;
}

contract FpiOracleAdapter is DualOracleBase, ERC165Storage {
    address public immutable FPI_MERKLE_PROOF_ORACLE;

    constructor(
        ConstructorParams memory _params
    )
        DualOracleBase(
            DualOracleBaseParams({
                baseToken0: address(840),
                baseToken0Decimals: 18,
                quoteToken0: _params.fpiErc20,
                quoteToken0Decimals: 18,
                baseToken1: address(840),
                baseToken1Decimals: 18,
                quoteToken1: _params.fpiErc20,
                quoteToken1Decimals: 18
            })
        )
    {
        _registerInterface({ interfaceId: type(IDualOracle).interfaceId });
        FPI_MERKLE_PROOF_ORACLE = _params.fpiMerkleProofOracle;
    }

    // ====================================================================
    // View Helpers
    // ====================================================================

    function name() external pure returns (string memory) {
        return "Fpi Merkle Oracle Adapter";
    }

    // ====================================================================
    // Price Functions
    // ====================================================================

    /// @notice The ```getPrices``` function is intended to return two prices from different oracles
    /// @return _isBadData is true when data is stale or otherwise bad
    /// @return _priceLow is the lower of the two prices
    /// @return _priceHigh is the higher of the two prices
    /// @dev Prices returned from the FPI_MERKLE_PROOF_ORACLE are equivalent and nver stale
    function _getPrices() internal view returns (bool _isBadData, uint256 _priceLow, uint256 _priceHigh) {
        (, uint256 _low, uint256 _high) = IDualOracle(FPI_MERKLE_PROOF_ORACLE).getPrices();
        _priceLow = 1e36 / _low;
        _priceHigh = 1e36 / _high;
    }

    /// @notice The ```getPrices``` function is intended to return two prices from different oracles
    /// @return _isBadData is true when data is stale or otherwise bad
    /// @return _priceLow is the lower of the two prices
    /// @return _priceHigh is the higher of the two prices
    function getPrices() external view returns (bool _isBadData, uint256 _priceLow, uint256 _priceHigh) {
        return _getPrices();
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
}
