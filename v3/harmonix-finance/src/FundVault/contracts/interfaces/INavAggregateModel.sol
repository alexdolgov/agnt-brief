// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0;

interface INavAggregateModel {
    /**
     * @notice Intermediate result produced by `computeNav` and consumed by VaultManager.updateNav.
     * @param totalSupply          Raw share supply from `ShareToken.totalSupply()`, used to detect
     *                             the genesis state (no shares ever minted) when `globalRedeemShares` equals totalSupply.
     * @param navDenomination      Gross sum of each asset's total NAV converted to the common denomination
     *                             (1e18 scale), before subtracting any redemption obligations.
     * @param effNavDenomination   Net sum after subtracting redemption obligations (`pendingAssets + claimableAssets`)
     *                             per asset. Used as the PPS numerator.
     * @param globalRedeemShares   Sum of `redeemShares` across all registered vaults — shares locked in
     *                             pending redemptions. `effectiveSupply = totalSupply - globalRedeemShares`.
     * @param assetList            Registered asset addresses at the time of the snapshot.
     * @param assetTotalNavs       Per-asset total NAV in asset-token units
     *                             (`offChainNav + balanceOf(fundVault) + claimableAssets`), aligned with `assetList`.
     */
    struct NavResult {
        uint256 totalSupply;
        uint256 navDenomination; // gross: sum of all assetTotalNavs in denomination, no deductions
        uint256 effNavDenomination; // net: navDenomination minus redemption obligations, used as PPS numerator
        uint256 globalRedeemShares; // sum of redeemShares across all vaults; effectiveSupply = totalSupply - globalRedeemShares
        uint256[] assetTotalNavs; // per-asset: offChainNav + balanceOf(fundVault) + claimableAssets, aligned with assetList passed to computeNav
        uint256 ppsValue; // price-per-share derived from this snapshot
        bool isValidPps; // false if ppsValue is zero or exceeds the configured deviationPps
    }

    /**
     * @notice Computes a NAV snapshot for the provided asset list.
     * @dev Stateless — reads all required data from VaultManager and its dependent contracts.
     *      The caller (VaultManager) is responsible for passing the current registered asset list.
     * @param assetList The registered asset token addresses to include in the computation.
     * @return result   The NAV snapshot.
     */
    function computeNav(address[] calldata assetList) external view returns (NavResult memory result);
}
