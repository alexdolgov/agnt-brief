// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import { CallbackHandler } from "src/core/CallbackHandler.sol";

// solhint-disable no-unused-import

import { IERC20 } from "@oz/interfaces/IERC20.sol";
import { Pausable } from "@oz/utils/Pausable.sol";
import { ReentrancyGuardTransient } from "@oz/utils/ReentrancyGuardTransient.sol";
import { MerkleProof } from "@oz/utils/cryptography/MerkleProof.sol";
import { Auth, Authority } from "@solmate/auth/Auth.sol";
import { Auth2Step } from "src/core/Auth2Step.sol";
import {
    ADDRESS_SIZE_BITS,
    AFTER_SUBMIT_MASK,
    BEFORE_SUBMIT_MASK,
    CONFIGURABLE_HOOK_LENGTH_MASK,
    ERC20_SPENDER_OFFSET,
    HOOK_FLAG_MASK,
    VAULT_ADDRESS_SENTINEL,
    WORD_SIZE
} from "src/core/Constants.sol";
import { Approval, BaseVaultParameters, OperationContext } from "src/core/Types.sol";
import { IBaseVault } from "src/core/interfaces/IBaseVault.sol";
import { IBaseVaultFactory } from "src/core/interfaces/IBaseVaultFactory.sol";

import { IMerkleRootProvider } from "src/core/interfaces/IMerkleRootProvider.sol";
import { IVaultHook } from "src/core/interfaces/IVaultHook.sol";
import { IWhitelist } from "src/core/interfaces/IWhitelist.sol";
import { CalldataExtractor } from "src/core/libraries/CalldataExtractor.sol";
import { CalldataReader, CalldataReaderLib } from "src/core/libraries/CalldataReader.sol";
import { Pipeline } from "src/core/libraries/Pipeline.sol";

/// @title BaseVault
/// @notice Base contract for vault functionality with operation execution and hooks
abstract contract BaseVault is IBaseVault, Pausable, CallbackHandler, ReentrancyGuardTransient, Auth2Step {
    using Pipeline for bytes;
    using CalldataExtractor for bytes;

    ////////////////////////////////////////////////////////////
    //                       Immutables                       //
    ////////////////////////////////////////////////////////////

    IWhitelist public immutable WHITELIST;

    ////////////////////////////////////////////////////////////
    //                        Storage                         //
    ////////////////////////////////////////////////////////////

    /// @notice Address of the hook contract for vault-level operations
    IVaultHook public hook;

    /// @notice Mapping of guardian addresses to their respective merkle roots
    mapping(address guardian => bytes32 root) public guardianRoots;

    ////////////////////////////////////////////////////////////
    //                       Modifiers                        //
    ////////////////////////////////////////////////////////////

    /// @notice Ensures caller is the either auth (owner or authorized role) or the guardian.
    modifier onlyAuthOrGuardian() {
        require(
            isAuthorized(msg.sender, msg.sig) || guardianRoots[msg.sender] != bytes32(0),
            Aera__CallerIsNotAuthOrGuardian()
        );
        _;
    }

    constructor() Auth2Step(msg.sender, Authority(address(0))) {
        // Interactions: get initialization parameters
        BaseVaultParameters memory params = IBaseVaultFactory(msg.sender).baseVaultParameters();

        address _owner = params.owner;
        // Requirements: check that the admin address is not zero.
        require(_owner != address(0), Aera__ZeroAddressOwner());
        // Effects: set the owner.
        transferOwnership(_owner);

        // Effects: set the whitelist
        WHITELIST = params.whitelist;

        // Effects: set the guardian, root, and hooks
        _setGuardianRoot(params.guardian, params.root);
        IVaultHook hook_ = params.hook;
        if (address(hook_) != address(0)) {
            _setHooks(hook_);
        }
    }

    ////////////////////////////////////////////////////////////
    //              Public / External Functions               //
    ////////////////////////////////////////////////////////////

    /// @inheritdoc IBaseVault
    function submit(bytes calldata data) external whenNotPaused nonReentrant {
        bytes32 root = guardianRoots[msg.sender];
        // Requirements: check that the caller is a guardian
        require(root != bytes32(0), Aera__CallerIsNotGuardian());

        // Interactions: get the effective root, possible from IMerkleRootProvider
        root = _getRoot(root);

        address vaultHook = address(hook);
        // Requirements + Interactions: call the before submit hook if defined
        _beforeSubmitHook(vaultHook, data);

        CalldataReader reader = CalldataReaderLib.from(data);
        CalldataReader end = reader.readBytesEnd(data);

        // Requirements + Interactions: execute the submit
        (Approval[] memory approvals, uint256 approvalsLength) = _executeSubmit(root, reader, end);

        // Invariants: verify no pending approvals
        _noPendingApprovalsInvariant(approvals, approvalsLength);

        // Requirements + Interactions: call the after submit hook if defined
        _afterSubmitHook(vaultHook, data);
    }

    /// @inheritdoc IBaseVault
    function setGuardianRoot(address guardian, bytes32 root) external virtual requiresAuth {
        // Requirements + Effects: set the guardian root
        _setGuardianRoot(guardian, root);
    }

    /// @inheritdoc IBaseVault
    function checkGuardianWhitelist(address guardian) external {
        // Requirements: check that the guardian is not whitelisted
        if (!WHITELIST.isWhitelisted(guardian)) {
            // Effects: set the guardian root to zero
            guardianRoots[guardian] = bytes32(0);

            // Log guardian root set
            emit GuardianRootSet(guardian, bytes32(0));
        }
    }

    /// @inheritdoc IBaseVault
    function setHooks(IVaultHook newHooks) external virtual requiresAuth {
        // Requirements + Effects: set the hooks address
        _setHooks(newHooks);
    }

    /// @inheritdoc IBaseVault
    function pause() external onlyAuthOrGuardian {
        // Effects: pause the vault
        _pause();
    }

    /// @inheritdoc IBaseVault
    function unpause() external requiresAuth {
        // Effects: unpause the vault
        _unpause();
    }

    ////////////////////////////////////////////////////////////
    //              Private / Internal Functions              //
    ////////////////////////////////////////////////////////////

    /// @inheritdoc CallbackHandler
    function _handleCallback(bytes32 root, uint256 cursor) internal virtual override {
        CalldataReader reader = CalldataReader.wrap(cursor);
        CalldataReader end = reader.readBytesEnd();

        // Requirements + Interactions: execute the submit
        (Approval[] memory approvals, uint256 approvalsLength) = _executeSubmit(root, reader, end);

        // Effects: store the callback approvals
        _storeCallbackApprovals(approvals, approvalsLength);
    }

    /// @notice Writes transient storage to prepare for callback if callback is defined
    /// @param reader Current position in the calldata
    /// @param root The merkle root of the callback
    /// @return isCallback Whether a callback was defined
    /// @return newCursor Updated cursor position
    function _processCallback(CalldataReader reader, bytes32 root) internal returns (CalldataReader, bool) {
        bool hasCallback;
        (reader, hasCallback) = reader.readBool();

        if (hasCallback) {
            uint256 packedCallbackData;
            (reader, packedCallbackData) = reader.readU208();

            // Requirements + Effects: allow the callback
            _allowCallback(root, packedCallbackData);
        }

        return (reader, hasCallback);
    }

    /// @notice Calls before submit hook if defined
    /// @param vaultHook Address of the vault hook contract
    /// @dev We SLOAD hook once and pass it into functions
    function _beforeSubmitHook(address vaultHook, bytes calldata data) internal {
        if (_hasBeforeHook(vaultHook)) {
            // Interactions: call the before submit hook
            (bool success, bytes memory result) =
                vaultHook.call(abi.encodeWithSelector(IVaultHook.beforeSubmit.selector, data, msg.sender));
            // Requirements: check that the hook call succeeded
            require(success, Aera__BeforeSubmitHookFailed(result));
        }
    }

    /// @notice Calls after submit hook if defined
    /// @param vaultHook Address of the vault hook contract
    /// @dev We SLOAD hook once and pass it into functions
    function _afterSubmitHook(address vaultHook, bytes calldata data) internal {
        if (_hasAfterHook(vaultHook)) {
            // Interactions: call the after submit hook
            (bool success, bytes memory result) =
                vaultHook.call(abi.encodeWithSelector(IVaultHook.afterSubmit.selector, data, msg.sender));
            // Invariants: check that the hook call succeeded
            require(success, Aera__AfterSubmitHookFailed(result));
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
        if (_hasBeforeHook(operationHook)) {
            // Interactions: call the before operation hook
            (bool success, bytes memory returnData) = operationHook.call(data);
            // Requirements: check that the hook call succeeded
            require(success, Aera__BeforeOperationHookFailed(i, returnData));

            // Requirements: check that the return data length is a multiple of 32
            require(returnData.length % WORD_SIZE == 0, Aera__InvalidBeforeOperationHookReturnDataLength());

            _replaceVaultAddressWithSentinel(returnData);

            // Return value is ABI encoded so we need to decode it to get to the actual
            // bytes value that we returned from the hook
            (result) = abi.decode(returnData, (bytes));
        }
    }

    /// @notice Calls after operation hook if defined
    /// @param operationHook Address of the operation-specific hook
    /// @param data Operation calldata
    /// @param i Operation index
    function _afterOperationHook(address operationHook, bytes memory data, uint256 i) internal {
        if (_hasAfterHook(operationHook)) {
            // Interactions: call the after operation hook
            (bool success, bytes memory result) = operationHook.call(data);
            // Requirements: check that the hook call succeeded
            require(success, Aera__AfterOperationHookFailed(i, result));
        }
    }

    /// @notice Executes a series of operations
    /// @param reader Current position in the calldata
    /// @param end End position in the calldata
    /// @return approvals Array of approvals
    /// @return approvalsLength Number of approvals tracked
    /// @dev Approvals are tracked because of the noPendingApproval invariant
    function _executeSubmit(bytes32 root, CalldataReader reader, CalldataReader end)
        internal
        returns (Approval[] memory approvals, uint256 approvalsLength)
    {
        uint256 operationsLength;
        (reader, operationsLength) = reader.readU8();

        bytes[] memory results = new bytes[](operationsLength);

        /// theoretical maximum number of pending approvals is operations number
        approvals = new Approval[](operationsLength);

        // Safe to reuse the same variable because all its parameters get overwritten every time, except in static call
        // branch where we don't verify against the merkle root
        OperationContext memory ctx;
        for (uint256 i = 0; i < operationsLength; ++i) {
            (reader, ctx.target) = reader.readAddr();

            bytes memory callData;
            (reader, callData) = reader.readBytesToMemory();

            reader = callData.pipe(reader, results);

            bool isStaticCall;
            (reader, isStaticCall) = reader.readBool();
            if (isStaticCall) {
                // Interactions: perform external static call
                (bool success, bytes memory result) = ctx.target.staticcall(callData);
                // Requirements: verify static call succeeded
                require(success, Aera__SubmissionFailed(i, result));

                results[i] = result;
            } else {
                ctx.selector = bytes4(callData);
                if (ctx.selector == IERC20.approve.selector) {
                    unchecked {
                        approvals[approvalsLength++] =
                            Approval({ token: ctx.target, spender: _extractApprovalSpender(callData) });
                    }
                }
                // Requirements + Effects: process the callback if defined
                (reader, ctx.isCallback) = _processCallback(reader, root);

                bytes memory extractedData;
                uint256 configurableOperationHook;
                // Requirements + possible Interactions: process the operation hook
                (reader, extractedData, configurableOperationHook, ctx.operationHook) =
                    _processOperationHook(reader, callData, i);

                bytes32[] memory proof;
                (reader, proof) = reader.readBytes32Array();

                (reader, ctx.value) = _readOptionalU256(reader);

                // Requirements: verify merkle proof
                _verifyOperation(proof, root, _createMerkleLeaf(ctx, extractedData, configurableOperationHook));

                //slither-disable-next-line arbitrary-send-eth
                (bool success, bytes memory result) = ctx.target.call{ value: ctx.value }(callData);
                // Requirements: check that the submission succeeded
                require(success, Aera__SubmissionFailed(i, result));

                // possible Interactions + Requirements: call the after operation hook if defined
                _afterOperationHook(ctx.operationHook, callData, i);

                results[i] = result;

                if (ctx.isCallback) {
                    // Effects: get the callback approvals and clear the transient storage
                    Approval[] memory callbackApprovals = _getCallbackApprovals();

                    // Invariants: verify no pending approvals from the callback
                    _noPendingApprovalsInvariant(callbackApprovals, callbackApprovals.length);
                }
            }
        }

        // Invariants: check that the reader is at the end of the calldata
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
        returns (CalldataReader, bytes memory, uint256, address)
    {
        uint8 hookConfigFlag;
        (reader, hookConfigFlag) = reader.readU8();

        if (hookConfigFlag == 0) {
            return (reader, "", 0, address(0));
        }

        uint256 calldafaOffsetsCount = hookConfigFlag & CONFIGURABLE_HOOK_LENGTH_MASK;

        // check if it's only configurable hook
        if (hookConfigFlag & HOOK_FLAG_MASK == 0) {
            uint256 calldataOffsetsPacked;
            (reader, calldataOffsetsPacked) = reader.readU256();

            return (
                reader, callData.extract(calldataOffsetsPacked, calldafaOffsetsCount), calldataOffsetsPacked, address(0)
            );
        }

        address operationHook;
        // check if it's both configurable and contract hook
        if (calldafaOffsetsCount != 0) {
            uint256 calldataOffsetsPacked;
            (reader, calldataOffsetsPacked) = reader.readU256();

            (reader, operationHook) = reader.readAddr();
            // Requirements: check that the operation hook is not a before submit hook
            if (_hasBeforeHook(operationHook)) {
                revert Aera__BeforeOperationHookWithConfigurableHook();
            }

            return (
                reader,
                callData.extract(calldataOffsetsPacked, calldafaOffsetsCount),
                calldataOffsetsPacked,
                operationHook
            );
        }

        // only contract hook
        (reader, operationHook) = reader.readAddr();

        return (
            reader,
            // Requirements + Interactions: call the before operation hook if defined
            _beforeOperationHook(operationHook, callData, i),
            0,
            operationHook
        );
    }

    /// @notice Sets the hooks address
    /// @param hooksAddress Address of the hooks contract
    function _setHooks(IVaultHook hooksAddress) internal {
        // Effects: set hooks address
        hook = hooksAddress;

        // Log hooks set
        emit HooksSet(address(hooksAddress));
    }

    /// @notice Sets the guardian root
    /// @param guardian Address of the guardian
    /// @param root Merkle root
    function _setGuardianRoot(address guardian, bytes32 root) internal virtual {
        // Requirements: check that the guardian address is not zero
        require(guardian != address(0), Aera__ZeroAddressGuardian());

        // Requirements: check that the guardian is whitelisted
        require(WHITELIST.isWhitelisted(guardian), Aera__GuardianNotWhitelisted());

        // Requirements: check that root is not zero
        require(root != bytes32(0), Aera__ZeroAddressMerkleRoot());

        if (!_isMerkleRoot(root)) {
            // Interactions: validate provider by calling external contract
            IMerkleRootProvider(address(uint160(uint256(root)))).merkleRoot();
        }

        // Effects: set guardian root
        guardianRoots[guardian] = root;

        // Log guardian root set
        emit GuardianRootSet(guardian, root);
    }

    /// @notice Get the current effective merkle root
    /// @return Current merkle root from storage or IMerkleRootProvider address
    function _getRoot(bytes32 root) internal view returns (bytes32) {
        return _isMerkleRoot(root)
            ? root
            // Interactions: get root from IMerkleRootProvider
            : IMerkleRootProvider(address(uint160(uint256(root)))).merkleRoot();
    }

    /// @notice Replaces the vault address with a sentinel value
    /// @param data The data to replace the vault address in
    /// @dev This is to have the exact same merkle tree for 2 vaults with the same configuration
    function _replaceVaultAddressWithSentinel(bytes memory data) internal view {
        uint256 pointer;
        uint256 endPointer;
        assembly ("memory-safe") {
            pointer := data
        }
        unchecked {
            pointer += WORD_SIZE;
            endPointer = pointer + data.length;
        }

        bytes32 vaultAddressBytes32 = bytes32(uint256(uint160(address(this))));
        bytes32 replacementWord = VAULT_ADDRESS_SENTINEL;

        bytes32 currentWord;
        while (pointer < endPointer) {
            assembly ("memory-safe") {
                currentWord := mload(pointer)
            }

            if (currentWord == vaultAddressBytes32) {
                assembly ("memory-safe") {
                    mstore(pointer, replacementWord)
                }
            }

            unchecked {
                pointer += WORD_SIZE;
            }
        }
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

            // Requirements: verify allowance is zero
            require(
                // Interactions: get allowance
                IERC20(approval.token).allowance(address(this), approval.spender) == 0,
                Aera__AllowanceIsNotZero(approval.token, approval.spender)
            );
        }
    }

    /// @notice Verifies a merkle proof
    /// @param proof The merkle proof
    /// @param root The merkle root
    /// @param leaf The leaf to verify
    function _verifyOperation(bytes32[] memory proof, bytes32 root, bytes32 leaf) internal pure {
        require(MerkleProof.verify(proof, root, leaf), Aera__ProofVerificationFailed());
    }

    /// @notice Creates a merkle leaf
    /// @param ctx The operation context
    /// @param extractedData The extracted data
    /// @param configurableOperationHook The configurable operation hook
    /// @return leaf Merkle leaf
    function _createMerkleLeaf(
        OperationContext memory ctx,
        bytes memory extractedData,
        uint256 configurableOperationHook
    ) internal pure returns (bytes32) {
        return keccak256(
            abi.encodePacked(
                extractedData, ctx.target, ctx.selector, ctx.value > 0, configurableOperationHook, ctx.operationHook
            )
        );
    }

    /// @notice Checks if the stored value is a merkle root (vs IMerkleRootProvider address )
    /// @param value The bytes32 value to check
    /// @return True if value is merkle root, false if it's a IMerkleRootProvider address
    /// @dev If 12 most significant bytes are zero, it's a IMerkleRootProvider address
    /// @dev Chance to create a merkle root with 12 zero bytes is negligible
    function _isMerkleRoot(bytes32 value) internal pure returns (bool) {
        return uint256(value) >> ADDRESS_SIZE_BITS != 0;
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
    function _hasBeforeHook(address hook_) internal pure returns (bool) {
        /// least significant bit is 1 indicating it's a before hook
        return uint160(hook_) & BEFORE_SUBMIT_MASK != 0;
    }

    /// @dev Check if hook needs to be called after submit
    /// @param hook_ Hook address to check
    /// @return True if hook needs to be called after submit
    function _hasAfterHook(address hook_) internal pure returns (bool) {
        /// second least significant bit is 1 indicating it's a after hook
        return uint160(hook_) & AFTER_SUBMIT_MASK != 0;
    }
}
