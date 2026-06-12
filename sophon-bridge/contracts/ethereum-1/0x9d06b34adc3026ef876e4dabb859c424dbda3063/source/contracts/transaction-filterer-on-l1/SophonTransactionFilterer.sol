// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import "contracts/access/AccessControl.sol";
import {ITransactionFilterer} from "contracts/transaction-filterer-on-l1/ITransactionFilterer.sol";

/**
 * @title Permissioned Transaction Filterer
 * @notice All calls are blocked unless the target contract has the WHITELISTED_ROLE,
 *         or the sender has the SUPERUSER_ROLE.
 */
contract SophonTransactionFilterer is ITransactionFilterer, AccessControl {

    /// @notice Role for contracts allowed to receive L2 transactions
    bytes32 public constant WHITELISTED_ROLE = keccak256("WHITELISTED_ROLE");

    /// @notice Role for privileged senders who can bypass whitelist checks
    bytes32 public constant SUPERUSER_ROLE = keccak256("SUPERUSER_ROLE");

    /**
     * @dev Grant the DEFAULT_ADMIN_ROLE to the deployer so they can manage roles.
     */
    constructor(address initialAdmin) {
        _grantRole(DEFAULT_ADMIN_ROLE, initialAdmin);
    }

    /**
     * @notice Check if the transaction is allowed to be processed on L2.
     * @dev Allowed if:
     *      - `l2Calldata` is empty (no contract interaction), or
     *      - `contractL2` has WHITELISTED_ROLE, or
     *      - `sender` has SUPERUSER_ROLE.
     */
    function isTransactionAllowed(
        address sender,
        address contractL2,
        uint256 /* mintValue */,
        uint256 /* l2Value */,
        bytes memory l2Calldata,
        address /* refundRecipient */
    ) external view override returns (bool) {
        return l2Calldata.length == 0 || hasRole(WHITELISTED_ROLE, contractL2) || hasRole(SUPERUSER_ROLE, sender);
    }
}