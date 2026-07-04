// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {Vault} from "./Vault.sol";

library ShareMath {
    uint256 internal constant PLACEHOLDER_UINT = 1;

    error InvalidAssetPerShare();
    error Overflow104();
    error Overflow128();
    error Overflow224();

    /**
     * @notice Converts asset amount to shares
     * @dev Uses ROUND DOWN (floor division) to protect the vault
     * @dev When users deposit assets to receive shares, rounding down gives them slightly fewer shares,
     *      preventing value extraction through repeated small deposits (rounding attacks)
     * @param assetAmount Amount of assets to convert
     * @param assetPerShare Price of assets per share (with decimals precision)
     * @param decimals Number of decimals for precision
     * @return shares Number of shares (rounded down in favor of vault)
     */
    function assetToShares(
        uint256 assetAmount,
        uint256 assetPerShare,
        uint256 decimals
    ) internal pure returns (uint256) {
        // If this throws, it means that vault's roundPricePerShare[currentRound] has not been set yet
        // which should never happen.
        // Has to be larger than 1 because `1` is used in `initRoundPricePerShares` to prevent cold writes.
        if (assetPerShare <= PLACEHOLDER_UINT) revert InvalidAssetPerShare();

        // EXPLICIT ROUNDING: Division rounds DOWN (Solidity default)
        // This protects the vault by giving depositors slightly fewer shares
        return (assetAmount * (10 ** decimals)) / assetPerShare;
    }

    /**
     * @notice Converts shares to asset amount
     * @dev Uses ROUND DOWN (floor division) to protect the vault
     * @dev When users burn shares to receive assets, rounding down gives them slightly fewer assets,
     *      preventing value extraction through repeated small withdrawals (rounding attacks)
     * @param shares Number of shares to convert
     * @param assetPerShare Price of assets per share (with decimals precision)
     * @param decimals Number of decimals for precision
     * @return assets Amount of assets (rounded down in favor of vault)
     */
    function sharesToAsset(
        uint256 shares,
        uint256 assetPerShare,
        uint256 decimals
    ) internal pure returns (uint256) {
        // If this throws, it means that vault's roundPricePerShare[currentRound] has not been set yet
        // which should never happen.
        // Has to be larger than 1 because `1` is used in `initRoundPricePerShares` to prevent cold writes.
        if (assetPerShare <= PLACEHOLDER_UINT) revert InvalidAssetPerShare();

        // EXPLICIT ROUNDING: Division rounds DOWN (Solidity default)
        // This protects the vault by giving withdrawers slightly fewer assets
        return (shares * assetPerShare) / (10 ** decimals);
    }

    /**
     * @notice Returns the shares unclaimed by the user given their StakeReceipt
     * @param stakeReceipt is the user's deposit receipt
     * @param currentRound is the `round` stored on the vault
     * @param assetPerShare is the price in asset per share
     * @param decimals is the number of decimals the asset/shares use
     * @return unclaimedShares is the user's virtual balance of shares that are owed
     */
    function getSharesFromReceipt(
        Vault.StakeReceipt memory stakeReceipt,
        uint256 currentRound,
        uint256 assetPerShare,
        uint256 decimals
    ) internal pure returns (uint256 unclaimedShares) {
        if (stakeReceipt.round > 0 && stakeReceipt.round < currentRound) {
            uint256 sharesFromRound = assetToShares(
                stakeReceipt.amount,
                assetPerShare,
                decimals
            );

            return uint256(stakeReceipt.unclaimedShares) + sharesFromRound;
        }
        return stakeReceipt.unclaimedShares;
    }

    /**
     * @notice Calculates the price per share for the vault
     * @dev Uses ROUND DOWN (floor division) to be conservative
     * @dev Rounding down slightly underestimates the vault's price per share, which is conservative
     *      and prevents overvaluation. When used in assetToShares(), this compounds the vault protection.
     * @param totalSupply Total number of shares in circulation
     * @param totalBalance Total assets held by the vault
     * @param pendingAmount Assets deposited but not yet converted to shares
     * @param decimals Number of decimals for precision
     * @return price Price per share (rounded down for conservative valuation)
     */
    function pricePerShare(
        uint256 totalSupply,
        uint256 totalBalance,
        uint256 pendingAmount,
        uint256 decimals
    ) internal pure returns (uint256) {
        uint256 singleShare = 10 ** decimals;
        return
            totalSupply > 0
                // EXPLICIT ROUNDING: Division rounds DOWN (Solidity default)
                // This underestimates price per share, providing conservative valuation
                ? (singleShare * (totalBalance - pendingAmount)) / totalSupply
                : singleShare;
    }

    // #############################################
    // HELPERS
    // #############################################

    function assertUint104(uint256 num) internal pure {
        if (num > type(uint104).max) revert Overflow104();
    }

    function assertUint128(uint256 num) internal pure {
        if (num > type(uint128).max) revert Overflow128();
    }

    function assertUint224(uint256 num) internal pure {
        if (num > type(uint224).max) revert Overflow224();
    }
}
