// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import { Initializable } from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import { ITimelockable2Step } from "../Interfaces/ITimelockable2Step.sol";

/**
 * @title Timelockable2StepUpgradeable
 * @notice Abstract contract providing two-step timelock transfer for critical operations
 * @dev Similar to OZ's Ownable2StepUpgradeable but for a dedicated timelock address.
 *      The timelock is fully self-governing - only the current timelock can initiate transfer.
 *      This prevents admin bypass as no external role can grant or revoke timelock access.
 *
 * Storage: Uses EIP-7201 namespaced storage pattern for upgrade safety.
 *          This contract can be safely added to any existing upgradeable contract's
 *          inheritance chain without affecting its storage layout.
 *
 * Usage:
 * 1. Inherit this contract in your upgradeable contract
 * 2. Call __Timelockable2Step_init(initialTimelock) in your initializer
 * 3. Use the onlyTimelock modifier on functions that should be timelock-protected
 * 4. The timelock address can transfer itself via transferTimelock() + acceptTimelock()
 *
 * Security Model:
 * - Only current timelock can call transferTimelock()
 * - Only pending timelock can call acceptTimelock()
 * - Only current timelock can call cancelTimelockTransfer()
 * - No admin role can bypass or override the timelock
 */
abstract contract Timelockable2StepUpgradeable is Initializable, ITimelockable2Step {
    // ------------------------------------------------------------------------
    // EIP-7201 Namespaced Storage
    // ------------------------------------------------------------------------

    /// @dev Storage struct for EIP-7201 namespaced storage pattern
    /// @notice Location: erc7201:vaultedge.storage.Timelockable2Step
    struct Timelockable2StepStorage {
        address _timelock;
        address _pendingTimelock;
    }

    // keccak256(abi.encode(uint256(keccak256("vaultedge.storage.Timelockable2Step")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant TIMELOCKABLE_STORAGE_LOCATION =
        0xc660d732dedc04efdaf4cde53f7c115ece118a51c5841a387bf95577c663bd00;

    function _getTimelockableStorage() private pure returns (Timelockable2StepStorage storage $) {
        assembly {
            $.slot := TIMELOCKABLE_STORAGE_LOCATION
        }
    }

    // ------------------------------------------------------------------------
    // Modifiers
    // ------------------------------------------------------------------------

    /// @notice Restricts function access to the current timelock address
    modifier onlyTimelock() {
        if (msg.sender != _getTimelockableStorage()._timelock) revert Timelockable__OnlyTimelock();
        _;
    }

    // ------------------------------------------------------------------------
    // Initializers
    // ------------------------------------------------------------------------

    /**
     * @dev Initializes the timelock with an initial address
     * @param initialTimelock The initial timelock address (cannot be zero)
     */
    function __Timelockable2Step_init(address initialTimelock) internal onlyInitializing {
        __Timelockable2Step_init_unchained(initialTimelock);
    }

    /**
     * @dev Unchained initializer for multiple inheritance scenarios
     * @param initialTimelock The initial timelock address (cannot be zero)
     */
    function __Timelockable2Step_init_unchained(address initialTimelock) internal onlyInitializing {
        if (initialTimelock == address(0)) revert Timelockable__InvalidAddress();
        _getTimelockableStorage()._timelock = initialTimelock;
    }

    // ------------------------------------------------------------------------
    // View Functions
    // ------------------------------------------------------------------------

    /// @inheritdoc ITimelockable2Step
    function timelock() public view virtual override returns (address) {
        return _getTimelockableStorage()._timelock;
    }

    /// @inheritdoc ITimelockable2Step
    function pendingTimelock() public view virtual override returns (address) {
        return _getTimelockableStorage()._pendingTimelock;
    }

    // ------------------------------------------------------------------------
    // Timelock Transfer Functions
    // ------------------------------------------------------------------------

    /// @inheritdoc ITimelockable2Step
    function transferTimelock(address newTimelock) public virtual override onlyTimelock {
        if (newTimelock == address(0)) revert Timelockable__InvalidAddress();
        Timelockable2StepStorage storage $ = _getTimelockableStorage();
        $._pendingTimelock = newTimelock;
        emit TimelockTransferStarted($._timelock, newTimelock);
    }

    /// @inheritdoc ITimelockable2Step
    function acceptTimelock() public virtual override {
        Timelockable2StepStorage storage $ = _getTimelockableStorage();
        if (msg.sender != $._pendingTimelock) revert Timelockable__OnlyPendingTimelock();
        address oldTimelock = $._timelock;
        address newTimelock = $._pendingTimelock;
        $._timelock = newTimelock;
        delete $._pendingTimelock;
        emit TimelockTransferCompleted(oldTimelock, newTimelock);
    }

    /// @inheritdoc ITimelockable2Step
    function cancelTimelockTransfer() public virtual override onlyTimelock {
        Timelockable2StepStorage storage $ = _getTimelockableStorage();
        if ($._pendingTimelock == address(0)) revert Timelockable__NoPendingTransfer();
        emit TimelockTransferCancelled($._pendingTimelock);
        delete $._pendingTimelock;
    }
}
