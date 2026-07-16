// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Pausable {
    error Paused();
    error NotPaused();

    bytes32 private constant _PAUSED_SLOT = keccak256("pausable.slot.paused");

    /// @dev use to allow action only when the contract is not paused
    modifier whenNotPaused() {
        _whenNotPaused();
        _;
    }

    /// @dev use to allow action only when the contract is paused
    modifier whenPaused() {
        _whenPaused();
        _;
    }

    /// @notice Returns if the contract is paused or not
    /// @return if the contract is paused or not
    function isPaused() public view returns (bool) {
        return _paused();
    }

    /// @dev pauses the contract
    function _pause() internal {
        bytes32 pausedSlot = _PAUSED_SLOT;
        assembly {
            sstore(pausedSlot, true)
        }
    }

    /// @dev unpauses the contract
    function _unpause() internal {
        bytes32 pausedSlot = _PAUSED_SLOT;
        assembly {
            sstore(pausedSlot, false)
        }
    }

    /// @dev get the current pause value
    function _paused() internal view returns (bool paused) {
        bytes32 pausedSlot = _PAUSED_SLOT;
        assembly {
            paused := sload(pausedSlot)
        }
    }

    function _whenPaused() internal view {
        if (!_paused()) {
            revert NotPaused();
        }
    }

    function _whenNotPaused() internal view {
        if (_paused()) {
            revert Paused();
        }
    }
}
