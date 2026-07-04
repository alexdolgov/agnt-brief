/// SPDX-License-Identifier: BUSL-1.1

/// Copyright (C) 2023 Brahma.fi

pragma solidity 0.8.19;

import {ReentrancyGuard} from "openzeppelin-contracts/security/ReentrancyGuard.sol";
import {SignatureCheckerLib} from "solady/utils/SignatureCheckerLib.sol";
import {EIP712} from "solady/utils/EIP712.sol";
import {ISafeWallet} from "interfaces/external/ISafeWallet.sol";
import {AddressProviderService} from "src/core/AddressProviderService.sol";
import {TransactionValidator} from "src/core/TransactionValidator.sol";
import {ExecutorRegistry} from "src/core/registries/ExecutorRegistry.sol";
import {SafeHelper} from "src/libraries/SafeHelper.sol";
import {TypeHashHelper} from "src/libraries/TypeHashHelper.sol";
import {Types} from "interfaces/Types.sol";

/**
 * @title ExecutorPlugin
 * @author Brahma.fi
 * @notice Responsible for executing transactions on safes with module permissions
 * @dev ExecutorPlugin needs to be enabled as a module on the safe
 */
contract ExecutorPlugin is AddressProviderService, ReentrancyGuard, EIP712 {
    error InvalidExecutor();
    error InvalidSignature();
    error ModuleExecutionFailed();

    /**
     * @notice datatype for execution requests
     * @param exec txn params
     * @param account address of safe to execute txn on
     * @param executor address that initiated execution request
     * @param executorSignature executor's signature for execution
     * @param validatorSignature validator's signature for execution
     * @dev Signature formats:
     *  executorSignature = executor's signatures (arbitrary bytes length)
     *  validatorSignature = abi.encodePacked(policySignature, length, expiryEpoch)
     *  where:
     *      policySignature = validity signature signed by validator (arbitrary bytes length)
     *      length = length of `policySignature` (4 bytes)
     *      expiryEpoch = expiry timestamp (4 bytes)
     */
    struct ExecutionRequest {
        Types.Executable exec;
        address account;
        address executor;
        bytes executorSignature;
        bytes validatorSignature;
    }

    /// @notice EIP712 domain name
    string private constant _NAME = "ExecutorPlugin";
    /// @notice EIP712 domain version
    string private constant _VERSION = "1.0";

    /// @notice mapping of account to nonce of executors
    mapping(address account => mapping(address executor => uint256 nonce)) public executorNonce;

    constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

    /**
     * @notice Enables executors to raise execution requests that will be executed via a module transaction
     * @dev The Executors are expected to sign the EIP712 digest generated from following struct: TypeHashHelper.ExecutionParams
     * @param execRequest params for execution request
     * @return returnData of txn
     */
    function executeTransaction(ExecutionRequest calldata execRequest) external nonReentrant returns (bytes memory) {
        address transactionValidator = AddressProviderService._getAuthorizedAddress(_TRANSACTION_VALIDATOR_HASH);
        _validateExecutionRequest(execRequest, transactionValidator);

        bytes memory txnResult = _executeTxnAsModule(execRequest.account, execRequest.exec);

        TransactionValidator(transactionValidator).validatePostExecutorTransaction(msg.sender, execRequest.account);

        return txnResult;
    }

    /**
     * @notice internal helper to execute transaction on a safe as a module
     * @dev executes txn as a module on `_account`
     * @param _account address of safe to execute on
     * @param _executable params of txn to execute
     * @return returnData of txn
     */
    function _executeTxnAsModule(address _account, Types.Executable memory _executable)
        internal
        returns (bytes memory)
    {
        (bool success, bytes memory txnResult) = ISafeWallet(_account).execTransactionFromModuleReturnData(
            _executable.target,
            _executable.value,
            _executable.data,
            SafeHelper._parseOperationEnum(_executable.callType)
        );
        if (!success) revert ModuleExecutionFailed();
        return txnResult;
    }

    /**
     * @notice internal helper to validate the execution request
     * @dev - validates executor's signature and checks if the executor is valid for given account.
     *      - validates policy
     * @param execRequest params for execution request
     */
    function _validateExecutionRequest(ExecutionRequest calldata execRequest, address transactionValidator) internal {
        if (!ExecutorRegistry(executorRegistry).isExecutor(execRequest.account, execRequest.executor)) {
            revert InvalidExecutor();
        }

        // Empty Signature check for EOA executor
        if (execRequest.executor.code.length == 0 && execRequest.executorSignature.length == 0) {
            // Executor is an EOA and no executor signature is provided
            revert InvalidSignature();
        }

        // Build execution struct hash
        bytes32 _executionStructHash = TypeHashHelper._buildExecutionParamsHash(
            TypeHashHelper.ExecutionParams({
                to: execRequest.exec.target,
                value: execRequest.exec.value,
                data: execRequest.exec.data,
                operation: uint8(SafeHelper._parseOperationEnum(execRequest.exec.callType)),
                account: execRequest.account,
                executor: execRequest.executor,
                nonce: executorNonce[execRequest.account][execRequest.executor]++,
                safeTxGas: 0,
                baseGas: 0,
                gasPrice: 0,
                gasToken: address(0),
                refundReceiver: address(0)
            })
        );

        // Build EIP712 digest for execution struct hash
        bytes32 _transactionDigest = _hashTypedData(_executionStructHash);

        // Validate executor signature
        if (
            !SignatureCheckerLib.isValidSignatureNow(
                execRequest.executor, _transactionDigest, execRequest.executorSignature
            )
        ) {
            revert InvalidExecutor();
        }

        // Validate policy signature
        TransactionValidator(transactionValidator).validatePreExecutorTransaction(
            msg.sender, execRequest.account, _executionStructHash, execRequest.validatorSignature
        );
    }

    /**
     * @notice Internal helper to get EIP712 domain name and version
     * @return name domainName
     * @return version domainVersion
     */
    function _domainNameAndVersion() internal pure override returns (string memory name, string memory version) {
        return (_NAME, _VERSION);
    }
}
