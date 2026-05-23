// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";

/**
 * @title BitFiPausable
 * @author BitFi Labs
 * @notice An abstract contract providing ownable pause and unpause functionality.
 */
abstract contract BitFiPausable is OwnableUpgradeable, PausableUpgradeable {
    /**
     * @notice Pauses the contract.
     * @dev Can only be called by the owner.
     */
    function pause() public virtual onlyOwner {
        _pause();
    }

    /**
     * @notice Unpauses the contract.
     * @dev Can only be called by the owner.
     */
    function unpause() public virtual onlyOwner {
        _unpause();
    }
}
