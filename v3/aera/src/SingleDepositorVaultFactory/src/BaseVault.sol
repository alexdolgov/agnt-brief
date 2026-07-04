// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import { CallbackHandler } from "./CallbackHandler.sol";

// solhint-disable no-unused-import
import {
    AFTER_SUBMIT_MASK,
    BEFORE_SUBMIT_MASK,
    CONFIGURABLE_HOOK_LENGTH_MASK,
    ERC20_SPENDER_OFFSET,
    HOOK_FLAG_MASK
} from "./Constants.sol";
import { Approval } from "./Types.sol";
import { IBaseVault } from "./interfaces/IBaseVault.sol";
import { IVaultHook } from "./interfaces/IVaultHook.sol";
import { CalldataExtractor } from "./libraries/CalldataExtractor.sol";
import { CalldataReader, CalldataReaderLib } from "./libraries/CalldataReader.sol";
import { Pipeline } from "./libraries/Pipeline.sol";

import { IERC20 } from "@oz/interfaces/IERC20.sol";
import { Pausable } from "@oz/utils/Pausable.sol";
import { ReentrancyGuardTransient } from "@oz/utils/ReentrancyGuardTransient.sol";
import { MerkleProof } from "@oz/utils/cryptography/MerkleProof.sol";
import { Auth, Authority } from "@solmate/auth/Auth.sol";

/// @title BaseVault
/// @notice Base contract for vault functionality with operation execution and hooks
abstract contract BaseVault is IBaseVault, Pausable, CallbackHandler, ReentrancyGuardTransient, Auth {
    using Pipeline for bytes;
    using CalldataExtractor for bytes;

    /// @notice Address of the vault guardian who can submit operations
    address public guardian;

    /// @notice Address of the hook contract for vault-level operations
    IVaultHook public hook;

    /// @notice Merkle root for operation verification
    bytes32 public root;

    /// @notice Ensures caller is the guardian
    modifier onlyGuardian() {
        require(msg.sender == guardian, Aera__CallerIsNotGuardian());
        _;
    }

    /// @notice Ensures caller is the either auth (owner or authorized role) or the guardian.
    modifier onlyAuthOrGuardian() {
        require(isAuthorized(msg.sender, msg.sig) || msg.sender == guardian, Aera__CallerIsNotAuthOrGuardian());
        _;
    }

    constructor() Auth(msg.sender, Authority(address(0))) { }

    /// @inheritdoc IBaseVault
    function submit(bytes calldata data) external onlyGuardian whenNotPaused nonReentrant {
        address vaultHook = address(hook);
        _vaultBeforeSubmitHook(vaultHook, data);

        CalldataReader reader = CalldataReaderLib.from(data);
        CalldataReader end = reader.readBytesEnd(data);

        (Approval[] memory approvals, uint256 approvalsLength) = _executeSubmit(reader, end);

        _noPendingApprovalsInvariant(approvals, approvalsLength);

        _vaultAfterSubmitHook(vaultHook, data);
    }

    /// @inheritdoc IBaseVault
    function setGuardian(address newGuardian) external virtual requiresAuth {
        // Requirements: check that the new guardian address is not the owner.
        require(newGuardian != owner, Aera__GuardianIsOwner());

        _setGuardian(newGuardian);
    }

    /// @inheritdoc IBaseVault
    function setRoot(bytes32 newRoot) external virtual requiresAuth {
        _setRoot(newRoot);
    }

    /// @inheritdoc IBaseVault
    function setHooks(IVaultHook newHooks) external virtual requiresAuth {
        _setHooks(newHooks);
    }

    /// @inheritdoc IBaseVault
    function pause() external virtual onlyAuthOrGuardian {
        _pause();
    }

    /// @inheritdoc IBaseVault
    function unpause() external virtual requiresAuth {
        _unpause();
    }

    /// @inheritdoc CallbackHandler
    function _handleCallback(uint256 cursor) internal virtual override {
        CalldataReader reader = CalldataReader.wrap(cursor);
        CalldataReader end = reader.readBytesEnd();

        (Approval[] memory approvals, uint256 approvalsLength) = _executeSubmit(reader, end);

        _storeCallbackApprovals(approvals, approvalsLength);
    }

    /// @notice Writes transient storage to prepare for callback if callback is defined
    /// @param reader Current position in the calldata
    /// @return isCallback Whether a callback was defined
    /// @return newCursor Updated cursor position
    function _processCallback(CalldataReader reader) internal returns (CalldataReader, bool) {
        bool hasCallback;
        (reader, hasCallback) = reader.readBool();

        if (hasCallback) {
            uint256 packedCallbackData;
            (reader, packedCallbackData) = reader.readU208();

            _allowCallback(packedCallbackData);
        }

        return (reader, hasCallback);
    }

    /// @notice Calls before submit hook if defined
    /// @param vaultHook Address of the vault hook contract
    /// @dev We SLOAD hook once and pass it into functions
    function _vaultBeforeSubmitHook(address vaultHook, bytes calldata data) internal {
        if (_hasBeforeSubmitHook(vaultHook)) {
            (bool success, bytes memory result) =
                vaultHook.call(abi.encodeWithSelector(IVaultHook.beforeSubmit.selector, data, msg.sender));
            require(success, Aera__VaultBeforeSubmitHookFailed(result));
        }
    }

    /// @notice Calls after submit hook if defined
    /// @param vaultHook Address of the vault hook contract
    /// @dev We SLOAD hook once and pass it into functions
    function _vaultAfterSubmitHook(address vaultHook, bytes calldata data) internal {
        if (_hasAfterSubmitHook(vaultHook)) {
            (bool success, bytes memory result) =
                vaultHook.call(abi.encodeWithSelector(IVaultHook.afterSubmit.selector, data, msg.sender));
            require(success, Aera__VaultAfterSubmitHookFailed(result));
        }
    }

    /// @notice Calls before operation hook if defined
    /// @param operationHook Address of the operation-specific hook
    /// @param data Operation calldata
    /// @param i Operation index
    /// @return result Result of the hook call
    function _beforeOperationHook(address operationHook, bytes memory data, uint256 i)
        internal
        returns (bytes memory result)
    {
        if (_hasBeforeSubmitHook(operationHook)) {
            bool success;
            (success, result) = operationHook.call(data);
            require(success, Aera__BeforeOperationHookFailed(i, result));
        }
    }

    /// @notice Calls after operation hook if defined
    /// @param operationHook Address of the operation-specific hook
    /// @param data Operation calldata
    /// @param i Operation index
    function _operationPostHook(address operationHook, bytes memory data, uint256 i) internal {
        if (_hasAfterSubmitHook(operationHook)) {
            (bool success, bytes memory result) = operationHook.call(data);
            require(success, Aera__AfterOperationHookFailed(i, result));
        }
    }

    /// @notice Executes a series of operations
    /// @param reader Current position in the calldata
    /// @param end End position in the calldata
    /// @return approvals Array of approvals
    /// @return approvalsLength Number of approvals tracked
    /// @dev Approvals are tracked because of the noPendingApproval invariant
    function _executeSubmit(CalldataReader reader, CalldataReader end)
        internal
        returns (Approval[] memory approvals, uint256 approvalsLength)
    {
        uint256 operationsLength;
        (reader, operationsLength) = reader.readU8();

        bytes[] memory results = new bytes[](operationsLength);

        /// theoretical maximum number of pending approvals is operations number
        approvals = new Approval[](operationsLength);

        for (uint256 i = 0; i < operationsLength; ++i) {
            address target;
            (reader, target) = reader.readAddr();

            bytes memory callData;
            (reader, callData) = reader.readBytesToMemory();

            reader = callData.pipe(reader, results);

            bool isStaticCall;
            (reader, isStaticCall) = reader.readBool();
            if (isStaticCall) {
                (bool success, bytes memory result) = target.staticcall(callData);
                require(success, Aera__SubmissionFailed(i, result));

                results[i] = result;
            } else {
                bytes4 selector = bytes4(callData);
                if (selector == IERC20.approve.selector) {
                    unchecked {
                        approvals[approvalsLength++] =
                            Approval({ token: target, spender: _extractApprovalSpender(callData) });
                    }
                }
                bool isCallback;
                (reader, isCallback) = _processCallback(reader);

                bytes memory extractedData;
                bytes memory hookConfigBytes;
                address operationHook;
                (reader, extractedData, hookConfigBytes, operationHook) = _processOperationHook(reader, callData, i);

                bytes32[] memory proof;
                (reader, proof) = reader.readBytes32Array();

                uint256 value;
                (reader, value) = _readOptionalU256(reader);

                _verifyOperation(target, selector, value, extractedData, hookConfigBytes, proof);

                //slither-disable-next-line arbitrary-send-eth
                (bool success, bytes memory result) = target.call{ value: value }(callData);
                require(success, Aera__SubmissionFailed(i, result));

                _operationPostHook(operationHook, callData, i);

                results[i] = result;

                if (isCallback) {
                    Approval[] memory callbackApprovals = _getCallbackApprovals();

                    _noPendingApprovalsInvariant(callbackApprovals, callbackApprovals.length);
                    _clearCallbackApprovals();
                }
            }
        }

        reader.requireAtEndOf(end);

        return (approvals, approvalsLength);
    }

    /// @notice Processes hook for operation
    /// @notice Returns extracted data if configurable or contract before operation hook is defined
    /// @param reader Current position in the calldata
    /// @param callData Operation calldata
    /// @param i Operation index
    /// @return reader Updated reader position
    /// @return extractedData Extracted chunks of calldata
    /// @return hookConfigBytes Hook configuration bytes
    /// @return operationHook Operation hook address
    function _processOperationHook(CalldataReader reader, bytes memory callData, uint256 i)
        internal
        returns (CalldataReader, bytes memory, bytes memory, address)
    {
        uint8 hookConfigFlag;
        (reader, hookConfigFlag) = reader.readU8();

        if (hookConfigFlag == 0) {
            return (reader, "", hex"00", address(0));
        }

        uint256 calldafaOffsetsCount = hookConfigFlag & CONFIGURABLE_HOOK_LENGTH_MASK;

        // check if it's only configurable hook
        if (hookConfigFlag & HOOK_FLAG_MASK == 0) {
            uint256 calldataOffsetsPacked;
            (reader, calldataOffsetsPacked) = reader.readU256();

            return (
                reader,
                callData.extract(calldataOffsetsPacked, calldafaOffsetsCount),
                abi.encodePacked(hookConfigFlag, calldataOffsetsPacked),
                address(0)
            );
        }

        address operationHook;
        // check if it's both configurable and contract hook
        if (calldafaOffsetsCount != 0) {
            uint256 calldataOffsetsPacked;
            (reader, calldataOffsetsPacked) = reader.readU256();

            (reader, operationHook) = reader.readAddr();
            if (_hasBeforeSubmitHook(operationHook)) {
                revert Aera__BeforeOperationHookWithConfigurableHook();
            }

            return (
                reader,
                callData.extract(calldataOffsetsPacked, calldafaOffsetsCount),
                abi.encodePacked(hookConfigFlag, calldataOffsetsPacked, operationHook),
                operationHook
            );
        }

        // only contract hook
        (reader, operationHook) = reader.readAddr();

        return (
            reader,
            _beforeOperationHook(operationHook, callData, i),
            abi.encodePacked(hookConfigFlag, operationHook),
            operationHook
        );
    }

    /// @notice Initializes the vault
    /// @param guardianAddress Address of the guardian
    /// @param hooksAddress Address of the hooks contract
    /// @param root_ Merkle root
    // solhint-disable-next-line func-name-mixedcase
    function __BaseVault_setInitParams(address guardianAddress, IVaultHook hooksAddress, bytes32 root_)
        internal
        virtual
    {
        // Requirements: check that the new guardian address is not the owner.
        require(guardianAddress != owner, Aera__GuardianIsOwner());

        // Effects: set guardian address.
        _setGuardian(guardianAddress);

        // Effects: set root, if not zero.
        if (root_ != bytes32(0)) {
            _setRoot(root_);
        }

        // Effects: set hooks address, if not zero.
        if (address(hooksAddress) != address(0)) {
            _setHooks(hooksAddress);
        }
    }

    /// @notice Sets the hooks address
    /// @param hooksAddress Address of the hooks contract
    function _setHooks(IVaultHook hooksAddress) internal {
        // Effects: set hooks address.
        hook = hooksAddress;

        // Log hooks set.
        emit HooksSet(address(hooksAddress));
    }

    /// @notice Sets the guardian address
    /// @param guardianAddress Address of the guardian
    function _setGuardian(address guardianAddress) internal virtual {
        // Requirements: check that the guardian address is not zero.
        require(guardianAddress != address(0), Aera__ZeroAddressGuardian());

        // Effects: set guardian address.
        guardian = guardianAddress;

        // Log guardian set.
        emit GuardianSet(guardianAddress);
    }

    /// @notice Sets the merkle root
    /// @param root_ Merkle root
    function _setRoot(bytes32 root_) internal {
        // Effects: set root.
        root = root_;

        // Log root set.
        emit RootSet(root_);
    }

    /// @notice Verifies operation against merkle root
    /// @param target Operation target address
    /// @param selector Function selector
    /// @param value ETH value
    /// @param extractedData Extracted operation data
    /// @param hookConfigBytes Hook configuration bytes
    /// @param proof Merkle proof
    function _verifyOperation(
        address target,
        bytes4 selector,
        uint256 value,
        bytes memory extractedData,
        bytes memory hookConfigBytes,
        bytes32[] memory proof
    ) internal view {
        bytes32 root_ = root;
        if (root_ == bytes32(0)) {
            return;
        }

        bytes32 leaf = keccak256(abi.encodePacked(extractedData, target, selector, value > 0, hookConfigBytes));

        require(
            MerkleProof.verify(proof, root_, leaf), Aera__ProofVerificationFailed(abi.encodePacked(target, selector))
        );
    }

    /// @notice Verifies no pending approvals remain
    /// @param approvals Array of approvals to check
    /// @param approvalsLength Number of approvals to verify
    /// @dev We iterate backwards to avoid extra i variable
    function _noPendingApprovalsInvariant(Approval[] memory approvals, uint256 approvalsLength) internal view {
        Approval memory approval;
        while (approvalsLength != 0) {
            unchecked {
                --approvalsLength;
            }

            approval = approvals[approvalsLength];

            require(
                IERC20(approval.token).allowance(address(this), approval.spender) == 0,
                Aera__AllowanceIsNotZero(approval.token, approval.spender)
            );
        }
    }

    /// @notice Read a uint256 from calldata with a flag
    /// @param reader Current position in calldata
    /// @return reader Updated reader position
    /// @return u256 The read value
    /// @dev To optimize for most use cases where there is no value, we use a 1 byte flag indicator
    function _readOptionalU256(CalldataReader reader) internal pure returns (CalldataReader, uint256 u256) {
        bool hasU256;
        (reader, hasU256) = reader.readBool();
        if (hasU256) {
            (reader, u256) = reader.readU256();
        }
        return (reader, u256);
    }

    /// @dev Extracts spender address from approval data
    /// @param data Approval calldata
    /// @return spender Address of the spender
    function _extractApprovalSpender(bytes memory data) internal pure returns (address spender) {
        assembly ("memory-safe") {
            let offset := add(data, ERC20_SPENDER_OFFSET)
            spender := mload(offset)
        }
    }

    /// @dev Check if hook needs to be called before submit
    /// @param hook_ Hook address to check
    /// @return True if hook needs to be called before submit
    function _hasBeforeSubmitHook(address hook_) internal pure returns (bool) {
        /// least significant bit is 1 indicating it's a before hook
        return uint160(hook_) & BEFORE_SUBMIT_MASK != 0;
    }

    /// @dev Check if hook needs to be called after submit
    /// @param hook_ Hook address to check
    /// @return True if hook needs to be called after submit
    function _hasAfterSubmitHook(address hook_) internal pure returns (bool) {
        /// second least significant bit is 1 indicating it's a after hook
        return uint160(hook_) & AFTER_SUBMIT_MASK != 0;
    }
}
