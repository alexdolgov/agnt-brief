// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

/**
 * @title ILoAZND
 * @author Mu Digital
 * @notice Interface for Locked AZND tokens with ERC4626 vault functionality
 */
interface ILoAZND {
    /**
     * @notice Emitted when rewards are deposited
     * @param depositor The address of the sender
     * @param amount The amount of rewards deposited
     */
    event RewardDeposited(address indexed depositor, uint256 indexed amount);

    /**
     * @notice Emitted when locked assets are rescued
     * @param receiver The address of the receiver
     * @param amount The amount of assets rescued
     */
    event LockedAssetsRescued(address indexed receiver, uint256 indexed amount);

    /**
     * @notice Deposit function restricted to onlyMinter role
     * @param assets Amount of assets to deposit
     * @param receiver Address to receive the deposited assets
     * @return Amount of shares minted
     */
    function deposit(uint256 assets, address receiver) external returns (uint256);

    /**
     * @notice Mint function restricted to onlyMinter role
     * @param shares Amount of shares to mint
     * @param receiver Address to receive the minted shares
     * @return Amount of assets deposited
     */
    function mint(uint256 shares, address receiver) external returns (uint256);

    /**
     * @notice Withdraw function restricted to onlyBurner role
     * @param assets Amount of assets to withdraw
     * @param receiver Address to receive the withdrawn assets
     * @param owner Address from which assets will be withdrawn
     * @return Amount of shares burned
     */
    function withdraw(uint256 assets, address receiver, address owner) external returns (uint256);

    /**
     * @notice Redeem function restricted to onlyBurner role
     * @param shares Amount of shares to redeem
     * @param receiver Address to receive the redeemed assets
     * @param owner Address from which shares will be redeemed
     * @return Amount of assets withdrawn
     */
    function redeem(uint256 shares, address receiver, address owner) external returns (uint256);

    /**
     * @notice Deposit rewards into the contract. Only callable by reward depositor
     * @param assets Amount of assets to deposit as rewards
     */
    function depositRewards(uint256 assets) external;

    /**
     * @notice Rescue locked assets that are in excess of totalDepositedAssets
     */
    function rescueLockedAssets() external;
}
