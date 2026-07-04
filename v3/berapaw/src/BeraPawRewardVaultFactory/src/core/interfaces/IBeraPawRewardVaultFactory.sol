// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import { IErrors } from "../interfaces/IErrors.sol";

/**
 * @title IBeraPawRewardVaultFactory
 * @notice Interface for the BeraPawRewardVaultFactory contract
 */
interface IBeraPawRewardVaultFactory is IErrors {
    /* ´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /* EVENTS */
    /* .•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    event VaultCreated(address indexed stakingToken, address indexed vault);

    /* ´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /* ADMIN FUNCTIONS */
    /* .•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/


    /**
     * @notice Creates a new BeraPawRewardVault contract
     * @param stakingToken The token to be staked in the vault
     * @return The address of the newly created reward vault
     */
    function createBeraPawRewardVault(address stakingToken) external returns (address);

    /**
     * @notice Claims residual rewards from multiple BeraPawRewardVaults
     * @param berapawRewardVaults Array of vault addresses to claim from
     * @param recipient Address to receive the claimed rewards
     */
    function claimResidualReward(address[] memory berapawRewardVaults, address recipient) external;

    /* ´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /* PUBLIC FUNCTIONS */
    /* .•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /**
     * @notice Retrieves rewards for multiple users across multiple vaults
     * @param berapawRewardVaults Array of vault addresses to get rewards from
     */
    function getMultipleRewards(address[] memory berapawRewardVaults) external;

    /**
     * @notice Predicts the address of a BeraPawRewardVault before deployment
     * @param stakingToken The staking token to predict the vault address for
     * @return The predicted vault address
     */
    function predictBeraPawRewardVaultAddress(address stakingToken) external view returns (address);

    /* ´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /* GETTERS */
    /* .•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /**
     * @notice Gets the vault address for a given staking token
     * @param stakingToken The staking token address
     * @return The vault address (or address(0) if not created)
     */
    function getVault(address stakingToken) external view returns (address);

    /**
     * @notice Gets all created vault addresses
     * @param index The index in the vaults array
     * @return The vault address at the given index
     */
    function allVaults(uint256 index) external view returns (address);

    /**
     * @notice Checks if an account has the GOD role
     * @param account The account to check
     * @return True if the account has the GOD role
     */
    function isGod(address account) external view returns (bool);

    /**
     * @notice Checks if an account has the ADMIN role
     * @param account The account to check
     * @return True if the account has the ADMIN role
     */
    function isAdmin(address account) external view returns (bool);

    /**
     * @notice Checks if an account has the CURATOR role
     * @param account The account to check
     * @return True if the account has the CURATOR role
     */
    function isCurator(address account) external view returns (bool);
}