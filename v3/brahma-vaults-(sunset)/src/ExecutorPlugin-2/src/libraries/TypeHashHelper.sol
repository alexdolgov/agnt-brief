/// SPDX-License-Identifier: BUSL-1.1

/// Copyright (C) 2023 Brahma.fi

pragma solidity 0.8.19;

/**
 * @title TypeHashHelper
 * @author Brahma.fi
 * @notice Helper library containing functions to build EIP712 struct and type hashes
 */
library TypeHashHelper {
    /**
     * @notice Structural representation of execution details
     * @param operation type of operation
     * @param to address to send tx to
     * @param account address of safe
     * @param executor address of executor if executed via executor plugin, address(0) if executed via execTransaction
     * @param gasToken address of token used for gas
     * @param refundReceiver address of receiver of gas payment
     * @param value txn value
     * @param nonce txn nonce
     * @param safeTxGas gas that should be used for safe txn
     * @param baseGas gas cost independent of txn cost
     * @param gasPrice gas price in current block
     * @param data txn callData
     */
    struct ExecutionParams {
        uint8 operation;
        address to;
        address account;
        address executor;
        address gasToken;
        address refundReceiver;
        uint256 value;
        uint256 nonce;
        uint256 safeTxGas;
        uint256 baseGas;
        uint256 gasPrice;
        bytes data;
    }

    /**
     * @notice Type of validation struct to hash
     * @param expiryEpoch max time till validity of the signature
     * @param executionStructHash txn digest generated using TypeHashHelper._buildExecutionParamsHash()
     * @param policyHash policy commit hash of the safe account
     */
    struct ValidationParams {
        uint32 expiryEpoch;
        bytes32 executionStructHash;
        bytes32 policyHash;
    }

    /**
     * @notice EIP712 typehash for execution params data
     * @dev keccak256("ExecutionParams(uint8 operation,address to,address account,address executor,address gasToken,address refundReceiver,uint256 value,uint256 nonce,uint256 safeTxGas,uint256 baseGas,uint256 gasPrice,bytes data)");
     */
    bytes32 public constant EXECUTION_PARAMS_TYPEHASH =
        0x483ad580f0a8d7881e792d04b2128f3b214b18aa7336126dc2e77a59752bd6f5;

    /**
     * @notice EIP712 typehash for validation data
     * @dev keccak256("ValidationParams(uint32 expiryEpoch,ExecutionParams executionParams,bytes32 policyHash)ExecutionParams(uint8 operation,address to,address account,address executor,address gasToken,address refundReceiver,uint256 value,uint256 nonce,uint256 safeTxGas,uint256 baseGas,uint256 gasPrice,bytes data)");
     */
    bytes32 public constant VALIDATION_PARAMS_TYPEHASH =
        0x37af4ddfcab5e0a0d11676ce89534ca59ffac1c30a5a4cc21f840d2f4704a952;

    /**
     * @notice Builds EIP712 execution struct hash
     * @param txn execution params struct
     * @return executionStructHash
     */
    function _buildExecutionParamsHash(ExecutionParams memory txn) internal pure returns (bytes32) {
        return keccak256(
            abi.encode(
                EXECUTION_PARAMS_TYPEHASH,
                txn.operation,
                txn.to,
                txn.account,
                txn.executor,
                txn.gasToken,
                txn.refundReceiver,
                txn.value,
                txn.nonce,
                txn.safeTxGas,
                txn.baseGas,
                txn.gasPrice,
                keccak256(txn.data)
            )
        );
    }

    /**
     * @notice Builds EIP712 validation struct hash
     * @param validation validation params struct
     * @return validationStructHash
     */
    function _buildValidationParamsHash(ValidationParams memory validation) internal pure returns (bytes32) {
        return keccak256(
            abi.encode(
                VALIDATION_PARAMS_TYPEHASH,
                validation.expiryEpoch,
                validation.executionStructHash,
                validation.policyHash
            )
        );
    }
}
