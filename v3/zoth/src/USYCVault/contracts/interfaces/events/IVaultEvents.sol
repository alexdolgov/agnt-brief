// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import './IBaseVaultEvents.sol';

/**
 * @title Vault Events Interface
 * @author ZeUSD Protocol Team
 * @notice Events emitted by vault operations
 * @dev All events that can be emitted by Vault
 */
interface IVaultEvents is IBaseVaultEvents {
    /**
     * @notice Emitted when primary asset operation occurs
     * @param user User involved in operation
     * @param amount Amount involved
     * @param isDeposit Whether operation was deposit
     * @dev Primary asset operation tracking event
     */
    event VaultPrimaryAssetOperation(address indexed user, uint256 amount, bool isDeposit);

    /**
     * @notice Emitted when secondary asset operation occurs
     * @param asset Secondary asset involved
     * @param user User involved in operation
     * @param amount Amount involved
     * @param isDeposit Whether operation was deposit
     * @dev Secondary asset operation tracking event
     */
    event VaultSecondaryAssetOperation(
        address indexed asset,
        address indexed user,
        uint256 amount,
        bool isDeposit
    );
}
