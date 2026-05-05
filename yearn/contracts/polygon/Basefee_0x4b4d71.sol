// ============================================================
// FILE: contracts/BaseFeeProvider.sol
// ============================================================

// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.28;

/**
 * @dev Contract that reads the block base fee on supported
 *  networks, including Ethereum, Fantom, and Arbitrum.
 *
 * Version 0.1.1
 */

contract Basefee {
    /// @notice Check the network's current base fee.
    /// @return Current network base fee, in wei.
    function basefee_global() external view returns (uint) {
        return block.basefee;
    }
}
