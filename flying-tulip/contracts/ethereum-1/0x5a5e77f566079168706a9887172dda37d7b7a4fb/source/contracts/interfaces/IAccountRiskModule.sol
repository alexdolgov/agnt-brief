// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

/// @notice Optional per-engine risk hook for account valuation.
/// @dev Engines can contribute:
///      - `pnlUSDWad`: signed mark-to-market PnL (USD, 1e18)
///      - `maintUSDWad`: additional maintenance margin requirement (USD, 1e18)
interface IAccountRiskModule {
    function riskContribution(
        address pm,
        address user
    )
        external
        view
        returns (int256 pnlUSDWad, uint256 maintUSDWad);
}

