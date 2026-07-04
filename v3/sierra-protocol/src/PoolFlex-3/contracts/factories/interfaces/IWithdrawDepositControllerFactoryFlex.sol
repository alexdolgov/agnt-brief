// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

/**
 * @title Interface for the WithdrawDepositControllerFlex factory.
 */
interface IWithdrawDepositControllerFactoryFlex {
    /**
     * @dev Emitted when a pool WithdrawController is created.
     */
    event WithdrawDepositControllerCreated(address indexed addr);

    /**
     * @dev Creates a pool's withdraw controller
     * @dev Emits `WithdrawDepositControllerCreated` event.
     */
    function createController(
        address pool,
        address vaultFactory,
        address borrowerWalletAddress
    ) external returns (address);
}
