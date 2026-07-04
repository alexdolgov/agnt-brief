// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "../BIFKN314.sol";

/**
 * @title BurstToken
 * @dev This contract extends the BIFKN314 contract to implement a token with a bonding curve mechanism.
 * It includes functionalities to manage the bonding curve phase and restrict certain operations during this phase.
 *
 * Key functionalities include:
 * - Initializing the Burst Factory address.
 * - Marking the bonding curve as complete.
 * - Overriding the `_update` function to include bonding curve restrictions.
 *
 * The contract uses the following custom errors for better error handling:
 * - `StillBonding`: Indicates that an operation cannot be performed because the bonding period is still active.
 * - `Unauthorized`: Indicates that the caller is not authorized to perform the operation.
 * - `InvalidAddress`: Indicates that an invalid address was provided.
 * - `AlreadyInitialized`: Indicates that the Burst Factory address has already been initialized.
 */
contract BurstToken is BIFKN314 {
    // Address of Burst Factory
    address public burstFactory;

    // Bonding Curve Complete
    bool public curveComplete;

    modifier onlyBurstFactory() {
        if (msg.sender != burstFactory) revert Unauthorized(msg.sender);
        _;
    }

    /**
     * @dev Error to indicate that an operation cannot be performed because the bonding period is still active.
     */
    error StillBonding();

    /**
     * @dev Constructor function for the BurstToken contract.
     * It initializes the contract by calling the constructor of the BIFKN314 contract.
     */
    constructor() BIFKN314() {}

    /**
     * @dev Initializes the Burst Token.
     * @param burstFactory_ The new address of the Burst Factory.
     * @notice Only the contract owner can call this function.
     * @notice Reverts if the provided address is invalid (address(0)).
     */
    function initializeBurstToken(address burstFactory_) external onlyOwner {
        if (burstFactory_ == address(0)) revert InvalidAddress();
        if (burstFactory != address(0)) revert AlreadyInitialized();

        burstFactory = burstFactory_;
    }

    /**
     * @notice Marks the curve as complete.
     * @dev This function can only be called by the BurstFactory contract.
     * @dev Sets the `curveComplete` state variable to true.
     * @dev External function.
     */
    function completeTheCurve() external onlyBurstFactory {
        curveComplete = true;
    }

    /**
     * @dev Internal function to update token transfers.
     * Overrides the `_update` function from the parent contract.
     *
     * This function performs the following actions:
     * 1. Calls the parent contract's `_update` function to handle the basic transfer logic.
     * 2. Checks if the bonding curve phase is still active (`curveComplete` is false).
     * 3. If the bonding curve phase is active, it ensures that the transfer is not between certain restricted addresses.
     *
     * @param from The address from which tokens are being transferred.
     * @param to The address to which tokens are being transferred.
     * @param amount The amount of tokens being transferred.
     *
     * @notice Reverts with `StillBonding` if the bonding curve phase is active and the transfer involves restricted addresses.
     */
    function _update(
        address from,
        address to,
        uint256 amount
    ) internal virtual override {
        // Is still in bonding curve phase
        if (!curveComplete) {
            if (
                from != burstFactory &&
                from != address(0) &&
                to != burstFactory &&
                to != DEAD_ADDRESS &&
                to != address(0)
            ) revert StillBonding();
        }
        super._update(from, to, amount);
    }
}
