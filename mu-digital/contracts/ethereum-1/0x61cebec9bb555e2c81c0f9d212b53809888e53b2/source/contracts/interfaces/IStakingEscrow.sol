// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

/**
 * @title IStakingEscrow
 * @author Mu Digital
 * @notice Interface for staking escrow functionality with cooldown periods
 */
interface IStakingEscrow {
    struct RedeemRequest {
        address asset;
        uint256 vaultAmount;
        uint256 assetAmount;
        uint256 unlockTime;
    }

    /**
     * @notice Emitted when account stakes tokens
     * @param sender The address of the account who staked the tokens
     * @param asset The address of the asset being staked
     * @param vault The address of the vault where the tokens are staked
     * @param assetAmount The amount of tokens staked
     */
    event Staked(address indexed sender, address indexed asset, address indexed vault, uint256 assetAmount);

    /**
     * @notice Emitted when account init redeems tokens
     * @param receiver The address of the account who initiated the redeem
     * @param vault The address of the vault where the tokens are staked
     * @param asset The address of the asset being redeemed
     * @param vaultAmount The amount of tokens to be redeemed from the vault
     * @param assetAmount The amount of tokens to be redeemed
     * @param unlockTime The unlock time for the redeemed tokens
     */
    event RedeemInitiated(
        address indexed receiver,
        address indexed vault,
        address indexed asset,
        uint256 vaultAmount,
        uint256 assetAmount,
        uint256 unlockTime
    );

    /**
     * @notice Emitted when account claims redeemed tokens
     * @param receiver The address of the account who claimed the tokens
     * @param vault The address of the vault where the tokens are staked
     * @param asset The address of the asset being claimed
     * @param requestId The ID of the redeem request
     * @param vaultAmount The amount of tokens redeemed from the vault
     * @param assetAmount The amount of tokens claimed
     */
    event RedeemClaimed(
        address indexed receiver,
        address indexed vault,
        address indexed asset,
        uint256 requestId,
        uint256 vaultAmount,
        uint256 assetAmount
    );

    /**
     * @notice Emitted when the vault is updated
     * @param token The address of the token being updated
     * @param vault The address of the new vault
     */
    event VaultUpdated(address indexed token, address indexed vault);

    /**
     * @notice Emitted when the cooldown period is updated
     * @param coolDownPeriod The new cooldown period in seconds
     */
    event CoolDownPeriodUpdated(uint256 indexed coolDownPeriod);

    /**
     * @notice Emitted when the whitelist is updated
     * @param addressToAdd The address of the added whitelisted account
     */
    event WhiteListAdded(address indexed addressToAdd);

    /**
     * @notice Emitted when the whitelist is updated
     * @param addressToRemove The address of the removed whitelisted account
     */
    event WhiteListRemoved(address indexed addressToRemove);

    /**
     * @notice Returns the vault address for a specified token
     * @param token The token address to query
     * @return The vault address for the given token
     */
    function vault(address token) external view returns (address);
}
