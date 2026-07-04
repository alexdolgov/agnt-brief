// SPDX-License-Identifier: BSL-1.1
pragma solidity ^0.8.24;

import {BaseTransactionGuard, Enum, ITransactionGuard, IERC165} from "safe-contracts/base/GuardManager.sol";
import {BaseModuleGuard, IModuleGuard} from "safe-contracts/base/ModuleManager.sol";
import {AccessControl, IAccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";
import {ISafe} from "safe-contracts/interfaces/ISafe.sol";

/**
 * @title RolesGuard
 * @author Variable Logic Labs, Corp (hello@blend.money)
 * @notice A Safe transaction guard that enforces system-wide pause functionality and role-based access control
 * @dev This guard integrates with a Pausable contract to halt transaction execution when the system is paused.
 *      It implements the BaseTransactionGuard interface to hook into Safe's transaction lifecycle.
 *      The contract also manages role-based access control through the AssignmentManager.
 */
contract RolesGuard is BaseModuleGuard, BaseTransactionGuard, Pausable, AccessControl {
    /*//////////////////////////////////////////////////////////////
                                CONSTANTS
    //////////////////////////////////////////////////////////////*/

    /// @notice Role identifier for addresses that can pause/unpause the contract
    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");

    /*//////////////////////////////////////////////////////////////
                                ERRORS
    //////////////////////////////////////////////////////////////*/

    /// @notice Thrown when attempting to execute a transaction while the system is paused
    error SystemPaused();

    /*//////////////////////////////////////////////////////////////
                            CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Initializes the RolesGuard with a Pausable roles receiver
     * @param _owner The address that will be granted the initial PAUSER_ROLE
     * @dev The owner can add or remove the PAUSER_ROLE to any address
     */
    constructor(address _owner) {
        _grantRole(DEFAULT_ADMIN_ROLE, _owner);
        _grantRole(PAUSER_ROLE, _owner);
    }

    /*//////////////////////////////////////////////////////////////
                            PAUSE FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Pauses the contract, preventing transactions from being executed
     * @param _shouldPause True to pause, false to unpause
     * @dev Only addresses with PAUSER_ROLE can pause. When paused, transactions not from Safe owners will be blocked.
     *      This is an emergency mechanism to stop transactions from being executed if malicious activity is detected.
     */
    function pause(bool _shouldPause) external onlyRole(PAUSER_ROLE) {
        _shouldPause ? _pause() : _unpause();
    }

    /*//////////////////////////////////////////////////////////////
                        MODULE GUARD FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    function checkModuleTransaction(address, uint256, bytes memory, Enum.Operation, address)
        external
        view
        override
        returns (bytes32 moduleTxHash)
    {
        require(!paused(), SystemPaused());
        return bytes32(0);
    }

    function checkAfterModuleExecution(bytes32, /*txHash*/ bool /*success*/ ) external view override {}

    /*//////////////////////////////////////////////////////////////
                        TRANSACTION GUARD FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Pre-transaction validation hook
     * @dev This function is called before a Safe transaction is executed.
     *      Checks if the system is paused and blocks Safe owners.
     *
     * @param msgSender Address of the sender of the transaction
     */
    function checkTransaction(
        address, /*to*/
        uint256, /*value*/
        bytes memory, /*data*/
        Enum.Operation, /*operation*/
        uint256, /*safeTxGas*/
        uint256, /*baseGas*/
        uint256, /*gasPrice*/
        address, /*gasToken*/
        address payable, /*refundReceiver*/
        bytes memory, /*signatures*/
        address msgSender
    ) external view override {
        // If the system is not paused permit transactions. However, if the system is
        // not paused, only permit transactions from Safe owners.
        require(!paused() || ISafe(msg.sender).isOwner(msgSender), SystemPaused());
    }

    /**
     * @notice Post-transaction validation hook
     * @dev This function is called after a Safe transaction is executed.
     *      Currently implemented as a no-op.
     */
    function checkAfterExecution(bytes32, /*txHash*/ bool /*success*/ ) external view override {}

    /*//////////////////////////////////////////////////////////////
                        INTERFACE SUPPORT
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Query if a contract implements an interface
     * @dev See {IERC165-supportsInterface}.
     * @param interfaceId The interface identifier, as specified in ERC-165
     * @return bool True if the contract implements interfaceId, false otherwise
     */
    function supportsInterface(bytes4 interfaceId)
        public
        view
        virtual
        override(AccessControl, BaseModuleGuard, BaseTransactionGuard)
        returns (bool)
    {
        return interfaceId == type(ITransactionGuard).interfaceId || interfaceId == type(IAccessControl).interfaceId
            || interfaceId == type(IERC165).interfaceId || interfaceId == type(IModuleGuard).interfaceId;
    }
}
