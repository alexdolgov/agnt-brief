/// SPDX-License-Identifier: BUSL-1.1

/// Copyright (C) 2023 Brahma.fi

pragma solidity 0.8.19;

import {IERC165, Guard, Enum} from "interfaces/external/ISafeWallet.sol";
import {AddressProviderService} from "src/core/AddressProviderService.sol";
import {TransactionValidator} from "src/core/TransactionValidator.sol";
import {SafeHelper} from "src/libraries/SafeHelper.sol";

/**
 * @title SafeModeratorOverridable
 * @author Brahma.fi
 * @notice A guard that validates transactions and allows only policy abiding txns, on Brhma console account and can be overriden by removal of guard
 */
contract SafeModeratorOverridable is AddressProviderService, Guard {
    /**
     * @dev Token interface change used to bypass foundry coverage issue
     * Refer https://github.com/foundry-rs/foundry/issues/5729
     */
    uint8 public constant DIFFER_SAFE_MOD = 0;

    constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

    /**
     * @notice Inherited from Guard, function is called before executing a Safe transaction during execTransaction
     * @param to target address
     * @param value txn value
     * @param data txn callData
     * @param operation type of operation
     * @param safeTxGas gas that should be used for safe txn
     * @param baseGas gas cost independent of txn cost
     * @param gasPrice gas price in current block
     * @param gasToken address of token used for gas
     * @param refundReceiver address of receiver of gas payment
     * @param signatures user signatures appended with validation signature
     * @param msgSender address of msg.sender of original txn
     */
    function checkTransaction(
        address to,
        uint256 value,
        bytes memory data,
        Enum.Operation operation,
        uint256 safeTxGas,
        uint256 baseGas,
        uint256 gasPrice,
        address gasToken,
        address payable refundReceiver,
        bytes memory signatures,
        address msgSender
    ) external view override {
        // Check if guard or fallback handler is being removed, if yes, skip policy validation
        if (_isConsoleBeingOverridden(msg.sender, to, value, data, operation)) return;

        TransactionValidator(AddressProviderService._getAuthorizedAddress(_TRANSACTION_VALIDATOR_HASH))
            .validatePreTransactionOverridable(
            TransactionValidator.SafeTransactionParams({
                from: msg.sender,
                to: to,
                value: value,
                data: data,
                operation: operation,
                safeTxGas: safeTxGas,
                baseGas: baseGas,
                gasPrice: gasPrice,
                gasToken: gasToken,
                refundReceiver: refundReceiver,
                signatures: signatures,
                msgSender: msgSender
            })
        );
    }

    /**
     * @notice Inherited from Guard, function is called after executing a Safe transaction during execTransaction
     * @param txHash tx hash, computed from transaction
     * @param success boolean indicating success/failure of above transaction
     */
    function checkAfterExecution(bytes32 txHash, bool success) external view override {
        TransactionValidator(AddressProviderService._getAuthorizedAddress(_TRANSACTION_VALIDATOR_HASH))
            .validatePostTransactionOverridable(txHash, success, msg.sender);
    }

    function supportsInterface(bytes4 interfaceId) external pure returns (bool) {
        return interfaceId == type(Guard).interfaceId || interfaceId == type(IERC165).interfaceId;
    }

    /**
     * @notice Provides guarantees that the guard and fallback handler can always be removed by the console
     * @dev This ensures that, if a `ConsoleAccount` wishes to override policy checks, to change the guard or fallback handler, it can do so without any external intervention
     * @param _from address of sender
     * @param _to target address
     * @param _value txn value
     * @param _data txn callData
     * @param _operation type of operation
     * @return isGuardBeingRemoved
     */
    function _isConsoleBeingOverridden(
        address _from,
        address _to,
        uint256 _value,
        bytes memory _data,
        Enum.Operation _operation
    ) internal pure returns (bool) {
        bytes32 hashedCallData = keccak256(_data);
        /**
         * Following conditions validate if the transaction aims to remove guard or fallback handler on Safe
         *         from == to (safe sending txn to itself)
         *         value == 0
         *         data == abi.encodeCall(ISafeWallet.setGuard, (address(0))) || abi.encodeCall(ISafeWallet.setFallbackHandler, (address(0)))
         *         operation == Enum.Operation.Call
         *
         * In case these conditions are met, the guard is being removed, return true
         */
        if (_from == _to && _value == 0 && _operation == Enum.Operation.Call) {
            if (SafeHelper._GUARD_REMOVAL_CALLDATA_HASH == hashedCallData) {
                return true;
            } else if (SafeHelper._FALLBACK_REMOVAL_CALLDATA_HASH == hashedCallData) {
                return true;
            }
        }

        return false;
    }
}
