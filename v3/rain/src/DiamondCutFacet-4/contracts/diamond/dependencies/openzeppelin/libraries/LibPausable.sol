// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

import { LibUtilsRevert } from "../../../libraries/LibUtilsRevert.sol";

import { IPausable } from "../interfaces/IPausable.sol";

/**
 * @title LibPausable
 * @author Rain Team
 * @notice Diamond compatible library to interact with Pausable storage.
 * @dev Uses the same ERC-7201 storage that was initialized during deployment.
 */
library LibPausable {
    /* ========================== ERC7201 STORAGE ========================== */

    /// @dev Namespaced storage location as per ERC-7201 (openzeppelin.storage.Pausable).
    struct PausableStorage {
        bool _paused;
    }

    // keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.Pausable")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant PausableStorageLocation =
        0xcd5ed15c6e187e77e9aee88184c21f4f2182ab5827cb3b7e07fbedcd63f03300;

    function _getPausableStorage() private pure returns (PausableStorage storage $) {
        assembly {
            $.slot := PausableStorageLocation
        }
    }

    /**
     * @dev See {IPausable-paused}.
     */
    function paused() internal view returns (bool) {
        PausableStorage storage $ = _getPausableStorage();

        return $._paused;
    }

    /* ========================== FUNCTIONS ========================== */

    /**
     * @dev See {IPausable-pause}.
     */
    function pause() internal {
        PausableStorage storage $ = _getPausableStorage();

        enforceNotPaused();
        $._paused = true;

        emit IPausable.Paused({ account: msg.sender });
    }

    /**
     * @dev See {IPausable-unpause}.
     */
    function unpause() internal {
        PausableStorage storage $ = _getPausableStorage();

        enforcePaused();
        $._paused = false;

        emit IPausable.Unpaused({ account: msg.sender });
    }

    /**
     * @dev Throws if the contract is paused.
     */
    function enforceNotPaused() internal view {
        if (paused()) {
            LibUtilsRevert.revertWithSelector(IPausable.EnforcedPause.selector);
        }
    }

    /**
     * @dev Throws if the contract is not paused.
     */
    function enforcePaused() internal view {
        if (!paused()) {
            LibUtilsRevert.revertWithSelector(IPausable.ExpectedPause.selector);
        }
    }
}
