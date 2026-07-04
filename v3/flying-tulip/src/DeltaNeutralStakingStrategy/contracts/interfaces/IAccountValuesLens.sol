// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

/// @dev All values are USD-WAD (1e18 = $1).
struct AccountSnapshot {
    /// max(coll - debt + enginePnL, 0)
    uint256 equityUSDWad;
    /// Maintenance requirement: sum of (assetValue * mmBps) for collateral + debt, plus engine maintenance.
    uint256 maintUSDWad;
    /// collUSDWad + max(enginePnL, 0). Includes positive engine PnL as "effective" collateral
    /// for UI display and repay-cap math (computeMinRepayment). NOT suitable for seize-eligibility
    /// checks because engine PnL is not seizable collateral.
    uint256 pnlAdjCollUSDWad;
    /// Pure on-chain collateral value: sum of (avail * oraclePrice) for collateral-flagged assets.
    /// Excludes engine PnL. A zero-priced asset contributes zero. Use this for seize-eligibility
    /// checks (e.g. insolvency exception: collUSDWad == 0 means nothing left to seize).
    uint256 collUSDWad;
    /// Pure on-chain debt value: sum of (principalNow * oraclePrice) for debt assets.
    /// A zero-priced debt asset contributes zero (undervalues real debt).
    uint256 debtUSDWad;
    /// Aggregate unrealized PnL from engine risk modules (signed). Not derivable from other
    /// fields when negative due to the equity floor at zero. Provided for off-chain consumers
    /// (portfolio UI, debugging). Verifiable: equity == max(coll - debt + enginePnL, 0).
    int256 enginePnLUSDWad;
}

interface IAccountValuesLens {
    function accountValues(address pm, address user) external view returns (AccountSnapshot memory);
    function previewBorrowIndexWad(
        address pmAddr,
        address asset
    )
        external
        view
        returns (uint256 idxNow);
}
