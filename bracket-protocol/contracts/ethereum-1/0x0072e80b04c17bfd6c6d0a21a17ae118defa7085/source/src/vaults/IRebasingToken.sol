// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {IERC20Metadata} from "openzeppelin-contracts/token/ERC20/extensions/IERC20Metadata.sol";

/**
 * @title IRebasingToken
 * @notice Interface for rebasing tokens that automatically adjust balances based on an assets-per-share ratio
 * @dev Extends IERC20Upgradeable and adds rebasing-specific functionality
 */
interface IRebasingToken is IERC20Metadata {
    /**
     * @notice Returns the shares that have been minted for an account
     * @param account Address to check shares for
     * @return shares minted for the account
     */
    function mintedSharesOf(address account) external view returns (uint256);

    /**
     * @notice Returns the shares that have been processed but not yet minted for an account
     * @param account Address to check shares for
     * @return shares pending to be minted for the account
     */
    function pendingMintShares(address account) external view returns (uint256);

    /**
     * @notice Returns the total shares balance for an account, including both minted and pending mint shares
     * @param account Address to check shares for
     * @return shares owned by the account in total
     */
    function sharesOf(address account) external view returns (uint256);

    /**
     * @notice Returns the total minted shares
     * @return total minted shares
     */
    function totalMintedShares() external view returns (uint256);

    /**
     * @notice Returns the total pending shares
     * @return total pending shares
     * @dev Can be negative as it can be used to represent shares that can now be claimed
     */
    function totalNonMintedShares() external view returns (uint256);

    /**
     * @notice Returns the total active shares, including minted and pending shares
     * @return total shares
     */
    function totalShares() external view returns (uint256);

    /**
     * @notice Returns the assets that are currently active for an account
     * @param account Address to check assets for
     * @return assets currently active for the account
     */
    function activeBalanceOf(address account) external view returns (uint256);

    /**
     * @notice Returns the assets that are currently inactive for an account
     * @param account Address to check assets for
     * @return assets currently inactive for the account
     */
    function inactiveBalanceOf(address account) external view returns (uint256);    

    /**
     * @notice Converts an asset amount to shares using the latest assets per share ratio
     * @param assets Amount of assets to convert
     * @return amount of shares equivalent to the input assets
     */
    function convertToShares(uint256 assets) external view returns (uint256);

    /**
     * @notice Converts an asset amount to shares using the provided assets per share ratio
     * @param assets Amount of assets to convert
     * @param _assetsPerShare Current assets per share ratio
     * @return amount of shares equivalent to the input assets
     */
    function convertToShares(uint256 assets, uint256 _assetsPerShare) external view returns (uint256);

    /**
     * @notice Converts a share amount to assets using the latest assets per share ratio
     * @param shares Amount of shares to convert
     * @return Amount of assets equivalent to the input shares
     */
    function convertToAssets(uint256 shares) external view returns (uint256);
    
    /**
     * @notice Converts a share amount to assets using the provided assets per share ratio
     * @param shares Amount of shares to convert
     * @param _assetsPerShare Current assets per share ratio
     * @return Amount of assets equivalent to the input shares
     */
    function convertToAssets(uint256 shares, uint256 _assetsPerShare) external view returns (uint256);

    /**
     * @notice Returns the current assets per share ratio
     * @return Current ratio of assets to shares
     */
    function assetsPerShare() external view returns (uint256);

    /**
     * @notice Returns the active supply of the token
     * @return active supply of the token
     */
    function activeSupply() external view returns (uint256);

    /**
     * @notice Returns the inactive supply of the token
     * @return inactive supply of the token
     */
    function inactiveSupply() external view returns (uint256);
} 