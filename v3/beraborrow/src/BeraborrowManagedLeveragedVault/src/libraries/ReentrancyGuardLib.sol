// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

library ReentrancyGuardLib {
    error Reentrant();
    error ReentrantInternal();

    function _guard() internal {
        bytes4 selector = Reentrant.selector;

        assembly ("memory-safe") {
            if tload(0) {
                mstore(0, selector)
                revert(0, 0x04)
            }
            tstore(0, 1)
        }
    }

    function _unlockGuard() internal {
        // Unlocks the guard, making the pattern composable.
        // After the function exits, it can be called again, even in the same transaction.
        assembly ("memory-safe") {
            tstore(0, 0)
        }
    }

    function _internalGuard() internal {
        bytes4 selector = ReentrantInternal.selector;

        assembly ("memory-safe") {
            switch tload(0) // Reentrancy guard slot
            case 1 { tstore(0, 2) } // Disable internal reentrancies
            default {
                mstore(0, selector)
                revert(0, 0x04)
            }
        }
    }
}