/// SPDX-License-Identifier: BUSL-1.1

/// Copyright (C) 2023 Brahma.fi

pragma solidity 0.8.19;

import {ISafeWallet, Enum} from "interfaces/external/ISafeWallet.sol";
import {PolicyValidator} from "src/core/PolicyValidator.sol";
import {SafeHelper} from "src/libraries/SafeHelper.sol";
import {AddressProviderService} from "src/core/AddressProviderService.sol";
import {WalletRegistry} from "src/core/registries/WalletRegistry.sol";
import {TypeHashHelper} from "src/libraries/TypeHashHelper.sol";

/**
 * @title TransactionValidator
 * @author Brahma.fi
 * @notice Allows validation of transactions pre and post execution
 */
contract TransactionValidator is AddressProviderService {
    error AccountNotFound(address);
    error InvalidGuard();
    error InvalidFallbackHandler();
    error InvalidModule();
    error InvalidExecutorPlugin();
    error TxnUnAuthorized();

    /**
     * @notice datatype for safe transaction params
     * @param from address of safe
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
    struct SafeTransactionParams {
        Enum.Operation operation;
        address from;
        address to;
        address payable refundReceiver;
        address gasToken;
        address msgSender;
        uint256 value;
        uint256 safeTxGas;
        uint256 baseGas;
        uint256 gasPrice;
        bytes data;
        bytes signatures;
    }

    constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                   CONSOLE GUARD HOOKS                      */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/
    /**
     * @notice Validates a txn on guard before execution, for Brahma console accounts
     * @dev checks for possible console overrides and then performs policy validation
     * @param txParams params of transaction
     */
    function validatePreTransactionOverridable(SafeTransactionParams memory txParams) external view {
        // Validate policy
        _validatePolicySignature(
            TypeHashHelper.ExecutionParams({
                to: txParams.to,
                value: txParams.value,
                data: txParams.data,
                operation: uint8(txParams.operation),
                account: txParams.from,
                executor: address(0),
                nonce: ISafeWallet(txParams.from).nonce(),
                safeTxGas: txParams.safeTxGas,
                baseGas: txParams.baseGas,
                gasPrice: txParams.gasPrice,
                gasToken: txParams.gasToken,
                refundReceiver: txParams.refundReceiver
            }),
            txParams.signatures
        );
    }

    /* solhint-disable no-empty-blocks */
    /**
     * @notice Provides on-chain guarantees on security critical expected states of a Brhma console account
     * @dev Empty hook available for future use
     */
    function validatePostTransactionOverridable(bytes32, /*txHash */ bool, /*success */ address /*console */ )
        external
        view
    {}
    /* solhint-enable no-empty-blocks */

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                   SUBACCOUNT GUARD HOOKS                   */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/
    /**
     * @notice Validates a txn on guard before execution, for subAccounts
     * @dev calls policy validator to check if policy signature is valid
     * @param txParams params of transaction
     */
    function validatePreTransaction(SafeTransactionParams memory txParams) external view {
        _validatePolicySignature(
            TypeHashHelper.ExecutionParams({
                to: txParams.to,
                value: txParams.value,
                data: txParams.data,
                operation: uint8(txParams.operation),
                account: txParams.from,
                executor: address(0),
                nonce: ISafeWallet(txParams.from).nonce(),
                safeTxGas: txParams.safeTxGas,
                baseGas: txParams.baseGas,
                gasPrice: txParams.gasPrice,
                gasToken: txParams.gasToken,
                refundReceiver: txParams.refundReceiver
            }),
            txParams.signatures
        );
    }

    /**
     * @notice Provides on-chain guarantees on security critical expected states of subAccount for guard
     * @param subAccount address of subAccount to validate
     */
    function validatePostTransaction(bytes32, /*txHash */ bool, /*success */ address subAccount) external view {
        _checkSubAccountSecurityConfig(subAccount);
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                   EXECUTOR PLUGIN GUARD HOOKS              */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/
    /**
     * @notice Validates a module txn before execution
     * @dev calls policy validator to check if policy signature is valid
     * @param from address of safe
     * @param executionStructHash execution struct hash
     * @param signatures user signatures appended with validation signature
     */
    function validatePreExecutorTransaction(
        address, /*msgSender */
        address from,
        bytes32 executionStructHash,
        bytes calldata signatures
    ) external view {
        _validatePolicySignature(from, executionStructHash, signatures);
    }

    /**
     * @notice Provides on-chain guarantees on security critical expected states of account for executor plugin
     * @param account address of account to validate
     */
    function validatePostExecutorTransaction(address, /*msgSender */ address account) external view {
        // Check if account has executor plugin still enabled as a module on it
        if (!ISafeWallet(account).isModuleEnabled(AddressProviderService._getAuthorizedAddress(_EXECUTOR_PLUGIN_HASH)))
        {
            revert InvalidExecutorPlugin();
        }

        if (WalletRegistry(walletRegistry).isWallet(account)) {
            _checkConsoleAccountSecurityConfig(account);
        } else if (WalletRegistry(walletRegistry).subAccountToWallet(account) != address(0)) {
            _checkSubAccountSecurityConfig(account);
        } else {
            revert AccountNotFound(account);
        }
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                   INTERNAL METHODS                         */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/
    /**
     * @notice Internal helper to validate the module, guard and fallback handler for a subaccount
     * @dev Ensures that guard has not been disabled/updated and the owner console as a module has not been disabled
     * @param _subAccount address of subAccount
     */
    function _checkSubAccountSecurityConfig(address _subAccount) internal view {
        address guard = SafeHelper._getGuard(_subAccount);
        address fallbackHandler = SafeHelper._getFallbackHandler(_subAccount);

        // Ensure guard has not been disabled
        if (guard != AddressProviderService._getAuthorizedAddress(_SAFE_MODERATOR_HASH)) revert InvalidGuard();

        // Ensure fallback handler has not been altered
        if (fallbackHandler != AddressProviderService._getAuthorizedAddress(_CONSOLE_FALLBACK_HANDLER_HASH)) {
            revert InvalidFallbackHandler();
        }

        address ownerConsole = WalletRegistry(walletRegistry).subAccountToWallet(_subAccount);

        // Ensure owner console as a module has not been disabled
        if (!ISafeWallet(_subAccount).isModuleEnabled(ownerConsole)) revert InvalidModule();
    }

    /**
     * @notice Internal helper to validate the module, guard and fallback handler for a console account
     * @dev Ensures that guard has not been disabled/updated
     * @param _consoleAccount address of consoleAccount
     */
    function _checkConsoleAccountSecurityConfig(address _consoleAccount) internal view {
        address guard = SafeHelper._getGuard(_consoleAccount);
        address fallbackHandler = SafeHelper._getFallbackHandler(_consoleAccount);

        // Ensure guard has not been disabled
        if (guard != AddressProviderService._getAuthorizedAddress(_SAFE_MODERATOR_OVERRIDABLE_HASH)) {
            revert InvalidGuard();
        }

        // Ensure fallback handler has not been altered
        if (fallbackHandler != AddressProviderService._getAuthorizedAddress(_CONSOLE_FALLBACK_HANDLER_HASH)) {
            revert InvalidFallbackHandler();
        }
    }

    /**
     * @notice Internal helper to validate policy signature for a safe txn
     * @dev Calls policy validator to check if policy signature is valid
     * @param _executionParams execution params struct
     * @param _signatures user signatures appended with validation signature
     */
    function _validatePolicySignature(TypeHashHelper.ExecutionParams memory _executionParams, bytes memory _signatures)
        internal
        view
    {
        if (
            !PolicyValidator(AddressProviderService._getAuthorizedAddress(_POLICY_VALIDATOR_HASH)).isPolicySignatureValid(
                _executionParams, _signatures
            )
        ) {
            revert TxnUnAuthorized();
        }
    }

    /**
     * @notice Internal helper to validate policy signature for a module txn
     * @dev Calls policy validator to check if policy signature is valid
     * @param _from address of safe
     * @param _executionStructHash execution struct hash
     * @param _signatures user signatures appended with validation signature
     */
    function _validatePolicySignature(address _from, bytes32 _executionStructHash, bytes memory _signatures)
        internal
        view
    {
        if (
            !PolicyValidator(AddressProviderService._getAuthorizedAddress(_POLICY_VALIDATOR_HASH)).isPolicySignatureValid(
                _from, _executionStructHash, _signatures
            )
        ) {
            revert TxnUnAuthorized();
        }
    }
}
