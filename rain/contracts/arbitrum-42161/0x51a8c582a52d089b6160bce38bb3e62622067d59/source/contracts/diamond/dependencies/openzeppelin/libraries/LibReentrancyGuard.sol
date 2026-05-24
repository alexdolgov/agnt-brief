// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

import { LibUtilsRevert } from "../../../libraries/LibUtilsRevert.sol";

import { IReentrancyGuard } from "../interfaces/IReentrancyGuard.sol";

/**
 * @title LibReentrancyGuard
 * @author Rain Team
 * @notice Diamond compatible library to interact with ReentrancyGuard storage.
 * @dev Uses the same ERC-7201 storage that was initialized during deployment.
 */
library LibReentrancyGuard {
    /* ========================== STATE VARIABLES ========================== */

    /// @dev Reentrancy guard status value indicating that the contract is not currently entered. Used as the default
    /// state before any protected function execution.
    uint256 private constant NOT_ENTERED = 1;

    /// @dev Reentrancy guard status value indicating that the contract is currently entered. Set during execution of a
    /// function protected by the reentrancy guard.
    uint256 private constant ENTERED = 2;

    /* ========================== ERC7201 STORAGE ========================== */

    /// @dev Namespaced storage location as per ERC-7201 (openzeppelin.storage.ReentrancyGuard).
    struct ReentrancyGuardStorage {
        uint256 _status;
    }

    // keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.ReentrancyGuard")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant ReentrancyGuardStorageLocation =
        0x9b779b17422d0df92223018b32b4d1fa46e071723d6817e2486d003becc55f00;

    function _getReentrancyGuardStorage() private pure returns (ReentrancyGuardStorage storage $) {
        assembly {
            $.slot := ReentrancyGuardStorageLocation
        }
    }

    /* ========================== FUNCTIONS ========================== */

    /**
     * @dev Enforces reentrancy protection before function execution.
     */
    function enforceNonReentrantBefore() internal {
        ReentrancyGuardStorage storage $ = _getReentrancyGuardStorage();

        // On the first call to nonReentrant, _status will be NOT_ENTERED.
        if ($._status == ENTERED) {
            LibUtilsRevert.revertWithSelector(IReentrancyGuard.ReentrancyGuardReentrantCall.selector);
        }

        // Any calls to nonReentrant after this point will fail.
        $._status = ENTERED;
    }

    /**
     * @dev Resets reentrancy protection after function execution.
     */
    function enforceNonReentrantAfter() internal {
        ReentrancyGuardStorage storage $ = _getReentrancyGuardStorage();

        // By storing the original value once again, a refund is triggered (see
        // https://eips.ethereum.org/EIPS/eip-2200).
        $._status = NOT_ENTERED;
    }
}
