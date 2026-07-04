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
// ===================== FraxtalTransportOracle =======================
// ====================================================================
// Frax Finance: https://github.com/FraxFinance

// ====================================================================
import { FraxOracle, ConstructorParams as FraxOracleParams } from "src/contracts/frax-oracle/abstracts/FraxOracle.sol";

/// @title ClFraxOracle
/// @notice Drop in replacement for a chainlink oracle for price of ETH in USD
/// @dev High/low prices will be equivalent and return the L1 CL Oracle result
contract FraxtalTransportOracle is FraxOracle {
    constructor(FraxOracleParams memory _params) FraxOracle(_params) {}

    // ====================================================================
    // View Helpers
    // ====================================================================

    /// @notice The ```description``` function returns the description of the contract
    /// @return _description The description of the contract
    function description() external pure override returns (string memory _description) {
        _description = "ETH/USD: Chainlink Transport";
    }

    /// @notice The ```decimals``` function returns same decimals value as CL Oracle
    /// @return _decimals The decimals corresponding to the CL answer being transported to L2
    /// @dev Needed for ingesting CL feed into Frax Oracles
    function decimals() external pure override returns (uint8 _decimals) {
        _decimals = 8;
    }
}
