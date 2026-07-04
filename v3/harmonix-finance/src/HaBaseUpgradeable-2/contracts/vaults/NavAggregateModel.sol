// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.34;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

import {HaBaseUpgradeable} from "../base/HaBaseUpgradeable.sol";
import {INavAggregateModel} from "../interfaces/INavAggregateModel.sol";
import {IVaultManager} from "../interfaces/IVaultManager.sol";

/// @title NavAggregateModel
/// @notice Stateless contract that computes the protocol-wide NAV snapshot.
/// @dev Holds no storage beyond `HaBaseUpgradeable` (`_vaultManager` + `__gap`).
///      All data is read from VaultManager and its dependent contracts via view calls.
///      VaultManager passes the registered asset list as a calldata parameter so this
///      contract never needs to query the asset registry itself.
contract NavAggregateModel is INavAggregateModel, HaBaseUpgradeable {
    using Math for uint256;

    uint256 internal constant WAD = 1e18;

    // ========= INITIALIZE ========================

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address vaultManagerAddr) external initializer {
        __HaBase_init(vaultManagerAddr);
    }

    // ========= CORE COMPUTATION ==================

    /// @inheritdoc INavAggregateModel
    function computeNav(address[] calldata assetList) external view returns (NavResult memory result) {
        IVaultManager vaultManager = _vaultManager;
        address fundVault = address(vaultManager.fundVault());
        uint256[] memory assetTotalNavs = new uint256[](assetList.length);

        // Fetch off-chain NAV values for every asset in one batched call to FundNavFeed.
        // These represent capital deployed to off-chain strategies (e.g. HyperLiquid positions)
        // and are set periodically by the PRICE_UPDATER_ROLE.
        uint256[] memory offChainNav = vaultManager.fundNav().fundNavValue(assetList);

        uint256 navDenomination;
        uint256 effNavDenomination;
        uint256 totalRedeemShares;

        for (uint256 i = 0; i < assetList.length; i++) {
            // Fetch the registered vault and its current redemption-state counters in a single
            // cross-contract call, combining what was previously two separate calls:
            (, IVaultManager.VaultState memory state) = vaultManager.getVaultStateByAsset(assetList[i]);

            // redeemShares are shares locked by pending redeem requests. They are excluded from
            // effectiveSupply so the PPS denominator does not count shares being redeemed.
            totalRedeemShares += state.redeemShares;

            // Total NAV for this asset = off-chain yield positions
            //                          + idle balance sitting in FundVault
            //                          + assets fulfilled but not yet claimed by redeemers
            // Result is written directly to the output array to avoid an extra stack slot.
            assetTotalNavs[i] = offChainNav[i] + IERC20(assetList[i]).balanceOf(fundVault) + state.claimableAssets;

            // Gross denomination: total asset NAV converted to common denomination, no deductions.
            navDenomination += vaultManager.convertAssetToDenomination(assetList[i], assetTotalNavs[i]);

            // Effective NAV backs the remaining share supply (excluding shares being redeemed).
            // We subtract what is owed to redeemers:
            //   pendingAssets   — requested but not yet fulfilled (still in FundVault)
            //   claimableAssets — fulfilled and ring-fenced for claimants (cancels out of totalNav)
            // Floor at 0 to avoid underflow if obligations exceed available NAV.
            uint256 owed = state.pendingAssets + state.claimableAssets;
            effNavDenomination += vaultManager.convertAssetToDenomination(
                assetList[i], assetTotalNavs[i] > owed ? assetTotalNavs[i] - owed : 0
            );
        }

        // Total share supply from the shared ShareToken (one token across all AssetVaults).
        uint256 totalSupply = vaultManager.shareToken().totalSupply();

        // effectiveSupply = shares that are NOT locked in pending redemptions.
        // Used as the PPS denominator so redeemers' assets don't inflate the price for holders.
        uint256 effectiveSupply = totalSupply > totalRedeemShares ? totalSupply - totalRedeemShares : 0;

        uint256 currentPps = vaultManager.pricePerShare();
        uint256 ppsValue = _computePps(effNavDenomination, effectiveSupply, totalSupply, currentPps);

        result = NavResult({
            assetTotalNavs: assetTotalNavs,
            navDenomination: navDenomination,
            effNavDenomination: effNavDenomination,
            totalSupply: totalSupply,
            globalRedeemShares: totalRedeemShares,
            ppsValue: ppsValue,
            isValidPps: _isValidPps(vaultManager, ppsValue, currentPps)
        });
    }

    /**
     * @dev Derives the price-per-share from the current NAV snapshot.
     *   - Genesis (no shares ever minted): returns 1e18 (par value).
     *   - All shares pending redemption (effectiveSupply == 0, totalSupply > 0):
     *     returns currentPps unchanged to avoid division by zero.
     *   - Normal case: effNavDenomination / effectiveSupply (floor rounding).
     */
    function _computePps(uint256 effNavDenomination, uint256 effectiveSupply, uint256 totalSupply, uint256 currentPps)
        private
        pure
        returns (uint256)
    {
        if (effectiveSupply == 0) {
            return totalSupply == 0 ? WAD : currentPps;
        }
        return effNavDenomination.mulDiv(WAD, effectiveSupply, Math.Rounding.Floor);
    }

    /**
     * @dev Returns whether `newPps` is an acceptable price-per-share update.
     *   - Returns false if `newPps` is zero.
     *   - If `deviationPps` is configured (> 0), the relative change from `currentPps`
     *     must not exceed that percentage (1e18 = 100%). A value of 0 disables the check.
     */
    function _isValidPps(IVaultManager vaultManager, uint256 newPps, uint256 currentPps) private view returns (bool) {
        if (newPps == 0) return false;

        uint256 deviation = vaultManager.deviationPps();
        if (deviation == 0) return true;

        uint256 absDiff = newPps >= currentPps ? newPps - currentPps : currentPps - newPps;
        uint256 allowedDiff = currentPps.mulDiv(deviation, WAD, Math.Rounding.Floor);
        return absDiff <= allowedDiff;
    }
}
