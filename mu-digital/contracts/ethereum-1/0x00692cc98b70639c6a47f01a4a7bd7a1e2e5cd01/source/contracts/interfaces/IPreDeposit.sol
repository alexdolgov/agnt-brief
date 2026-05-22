// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

/**
 * @title IPreDeposit
 * @author Mu Digital
 * @notice Interface for the PreDeposit contract
 */
interface IPreDeposit {
    /**
     * @notice Emitted when a user makes a deposit
     * @param user The address of the user making the deposit
     * @param amount The amount deposited
     * @param totalDeposited The new total deposited amount
     */
    event Deposited(address indexed user, uint256 indexed amount, uint256 indexed totalDeposited);

    /**
     * @notice Emitted when funds are transferred to the vault
     * @param vault The address of the vault
     * @param amount The amount transferred
     * @param timestamp The timestamp of the transfer
     */
    event TransferredToVault(address indexed vault, uint256 indexed amount, uint256 indexed timestamp);

    /**
     * @notice Emitted when the deposit cap is updated
     * @param newCap The new deposit cap
     */
    event DepositCapUpdated(uint256 indexed newCap);

    /**
     * @notice Emitted when the vault address is updated
     * @param newVault The new vault address
     */
    event VaultAddressUpdated(address indexed newVault);

    /**
     * @notice Emitted when the Merkle root is updated
     * @param newRoot The new Merkle root
     * @param updatedBy The address that updated the root
     */
    event MerkleRootUpdated(bytes32 indexed newRoot, address indexed updatedBy);

    /**
     * @notice Emitted when whitelist status is updated
     * @param enabled True if whitelist is enabled, false otherwise
     */
    event WhitelistStatusUpdated(bool indexed enabled);
}
