// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {EIP712} from "@openzeppelin/contracts/utils/cryptography/EIP712.sol";
import {ECDSA} from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import {PoolKey} from "v4-core/types/PoolKey.sol";
import {ILimitOrderManager} from "../LimitOrderBook/interfaces/ILimitOrderManager.sol";
import {SwapThenLimitOrderHelper} from "../LimitOrderBook/periphery/SwapThenLimitOrderHelper.sol";
import {IMultiPositionManager} from "../MultiPositionManager/interfaces/IMultiPositionManager.sol";
import {UnilaunchTokenLaunchFactory} from "../LaunchPad/UnilaunchTokenLaunchFactory.sol";
import {UnilaunchCallOption} from "../LaunchPad/UnilaunchCallOption.sol";
import {IRelayerFactory} from "../MultiPositionManager/interfaces/IRelayerFactory.sol";
import {IRelayer} from "../MultiPositionManager/interfaces/IRelayer.sol";

/// @notice Minimal delegated account for EIP-7702 batching and relayer execution.
/// @dev Uses the account address as the signer and stores nonce in the account's storage.
contract UnilaunchDelegatedAccount is EIP712 {
    using ECDSA for bytes32;

    struct Call {
        address to;
        uint256 value;
        bytes data;
    }

    struct SessionAuthorization {
        address sessionKey;
        uint48 expiresAt;
        PermissionInput[] permissions;
        uint256 deadline;
    }

    struct PermissionInput {
        address target;
        bytes4 selector;
        uint256 maxValue;
        uint256 maxAmount;
        uint256 maxAmount0;
        uint256 maxAmount1;
    }

    struct Session {
        uint48 expiresAt;
        uint64 version;
        bool active;
    }

    struct Permission {
        uint64 version;
        bool enabled;
        uint256 maxValue;
        uint256 maxAmount;
        uint256 maxAmount0;
        uint256 maxAmount1;
    }

    bytes32 private constant CALL_TYPEHASH = keccak256("Call(address to,uint256 value,bytes data)");
    bytes32 private constant EXECUTE_TYPEHASH =
        keccak256("Execute(address to,uint256 value,bytes data,uint256 nonce,uint256 deadline)");
    bytes32 private constant EXECUTE_BATCH_TYPEHASH =
        keccak256("ExecuteBatch(bytes32 callsHash,uint256 nonce,uint256 deadline)");
    bytes32 private constant EXECUTE_SESSION_TYPEHASH =
        keccak256("ExecuteSession(address sessionKey,address target,uint256 value,bytes data,uint256 nonce,uint256 deadline)");
    bytes32 private constant EXECUTE_BATCH_SESSION_TYPEHASH =
        keccak256("ExecuteBatchSession(address sessionKey,bytes32 callsHash,uint256 nonce,uint256 deadline)");
    bytes32 private constant PERMISSION_TYPEHASH =
        keccak256("Permission(address target,bytes4 selector,uint256 maxValue,uint256 maxAmount,uint256 maxAmount0,uint256 maxAmount1)");
    bytes32 private constant AUTHORIZE_SESSION_TYPEHASH =
        keccak256("AuthorizeSession(address sessionKey,uint48 expiresAt,bytes32 permissionsHash,uint256 nonce,uint256 deadline)");
    bytes32 private constant REVOKE_SESSION_TYPEHASH =
        keccak256("RevokeSession(address sessionKey,uint256 nonce,uint256 deadline)");

    bytes4 private constant EIP1271_MAGIC_VALUE = 0x1626ba7e;
    uint48 public constant MAX_SESSION_DURATION = 7 days;

    uint256 public nonce;
    mapping(address => Session) public sessions;
    mapping(address => uint256) public sessionNonces;
    mapping(address => mapping(address => mapping(bytes4 => Permission))) public permissions;

    event Executed(address indexed target, uint256 value, bytes data);
    event BatchExecuted(uint256 calls, bytes32 callsHash);
    event SessionKeyAuthorized(address indexed sessionKey, uint48 expiresAt, uint64 version);
    event SessionKeyRevoked(address indexed sessionKey, uint64 version);
    event SessionExecuted(address indexed sessionKey, address indexed target, uint256 value, bytes data);
    event SessionBatchExecuted(address indexed sessionKey, uint256 calls, bytes32 callsHash);

    error InvalidSignature();
    error SignatureExpired();
    error CallFailed(uint256 index, bytes reason);
    error InvalidSessionKey();
    error SessionInactive();
    error SessionExpired();
    error SessionTooLong();
    error PermissionDenied();
    error ValueExceeded();
    error AmountExceeded();
    error MissingPermissions();

    constructor() EIP712("Unilaunch Delegated Account", "1") {}

    function execute(
        address target,
        uint256 value,
        bytes calldata data,
        uint256 deadline,
        bytes calldata signature
    ) external payable returns (bytes memory result) {
        uint256 currentNonce = _useNonce();
        if (msg.sender != address(this)) {
            _validateExecute(target, value, data, currentNonce, deadline, signature);
        }

        result = _call(target, value, data, 0);
        emit Executed(target, value, data);
    }

    function executeBatch(
        Call[] calldata calls,
        uint256 deadline,
        bytes calldata signature
    ) external payable returns (bytes[] memory results) {
        bytes32 callsHash = _hashCalls(calls);
        uint256 currentNonce = _useNonce();
        if (msg.sender != address(this)) {
            _validateExecuteBatch(callsHash, currentNonce, deadline, signature);
        }

        results = new bytes[](calls.length);
        for (uint256 i = 0; i < calls.length; ++i) {
            results[i] = _call(calls[i].to, calls[i].value, calls[i].data, i);
            emit Executed(calls[i].to, calls[i].value, calls[i].data);
        }

        emit BatchExecuted(calls.length, callsHash);
    }

    function authorizeSessionKey(SessionAuthorization calldata auth, bytes calldata signature) external {
        if (auth.sessionKey == address(0)) revert InvalidSessionKey();
        if (auth.permissions.length == 0) revert MissingPermissions();
        if (auth.expiresAt <= block.timestamp) revert SessionExpired();
        if (auth.expiresAt > block.timestamp + MAX_SESSION_DURATION) revert SessionTooLong();

        uint256 currentNonce = _useNonce();
        if (msg.sender != address(this)) {
            if (auth.deadline != 0 && block.timestamp > auth.deadline) revert SignatureExpired();
            bytes32 permissionsHash = _hashPermissions(auth.permissions);
            bytes32 structHash = keccak256(
                abi.encode(
                    AUTHORIZE_SESSION_TYPEHASH,
                    auth.sessionKey,
                    auth.expiresAt,
                    permissionsHash,
                    currentNonce,
                    auth.deadline
                )
            );
            _requireValidSignature(structHash, signature);
        }

        uint64 nextVersion = sessions[auth.sessionKey].version + 1;
        sessions[auth.sessionKey] = Session({expiresAt: auth.expiresAt, version: nextVersion, active: true});
        for (uint256 i = 0; i < auth.permissions.length; ++i) {
            PermissionInput calldata input = auth.permissions[i];
            permissions[auth.sessionKey][input.target][input.selector] = Permission({
                version: nextVersion,
                enabled: true,
                maxValue: input.maxValue,
                maxAmount: input.maxAmount,
                maxAmount0: input.maxAmount0,
                maxAmount1: input.maxAmount1
            });
        }

        emit SessionKeyAuthorized(auth.sessionKey, auth.expiresAt, nextVersion);
    }

    function revokeSessionKey(address sessionKey, uint256 deadline, bytes calldata signature) external {
        if (sessionKey == address(0)) revert InvalidSessionKey();
        uint256 currentNonce = _useNonce();
        if (msg.sender != address(this)) {
            if (deadline != 0 && block.timestamp > deadline) revert SignatureExpired();
            bytes32 structHash = keccak256(
                abi.encode(REVOKE_SESSION_TYPEHASH, sessionKey, currentNonce, deadline)
            );
            _requireValidSignature(structHash, signature);
        }
        Session storage session = sessions[sessionKey];
        session.active = false;
        emit SessionKeyRevoked(sessionKey, session.version);
    }

    function executeWithSession(
        address sessionKey,
        address target,
        uint256 value,
        bytes calldata data,
        uint256 deadline,
        bytes calldata signature
    ) external payable returns (bytes memory result) {
        _validateSession(sessionKey);
        uint256 currentNonce = _useSessionNonce(sessionKey);
        if (deadline != 0 && block.timestamp > deadline) revert SignatureExpired();

        bytes32 structHash = keccak256(
            abi.encode(
                EXECUTE_SESSION_TYPEHASH,
                sessionKey,
                target,
                value,
                keccak256(data),
                currentNonce,
                deadline
            )
        );
        _requireSessionSignature(sessionKey, structHash, signature);
        _enforceSessionPermission(sessionKey, target, value, data);

        result = _call(target, value, data, 0);
        emit SessionExecuted(sessionKey, target, value, data);
    }

    function executeBatchWithSession(
        address sessionKey,
        Call[] calldata calls,
        uint256 deadline,
        bytes calldata signature
    ) external payable returns (bytes[] memory results) {
        _validateSession(sessionKey);
        uint256 currentNonce = _useSessionNonce(sessionKey);
        if (deadline != 0 && block.timestamp > deadline) revert SignatureExpired();

        bytes32 callsHash = _hashCalls(calls);
        bytes32 structHash = keccak256(
            abi.encode(EXECUTE_BATCH_SESSION_TYPEHASH, sessionKey, callsHash, currentNonce, deadline)
        );
        _requireSessionSignature(sessionKey, structHash, signature);

        results = new bytes[](calls.length);
        for (uint256 i = 0; i < calls.length; ++i) {
            _enforceSessionPermission(sessionKey, calls[i].to, calls[i].value, calls[i].data);
            results[i] = _call(calls[i].to, calls[i].value, calls[i].data, i);
            emit SessionExecuted(sessionKey, calls[i].to, calls[i].value, calls[i].data);
        }

        emit SessionBatchExecuted(sessionKey, calls.length, callsHash);
    }

    function isValidSignature(bytes32 hash, bytes calldata signature) external view returns (bytes4) {
        (address signer, ECDSA.RecoverError error,) = ECDSA.tryRecover(hash, signature);
        if (error == ECDSA.RecoverError.NoError && signer == address(this)) {
            return EIP1271_MAGIC_VALUE;
        }
        return 0x00000000;
    }

    function domainSeparator() external view returns (bytes32) {
        return _domainSeparatorV4();
    }

    function _useNonce() internal returns (uint256 currentNonce) {
        currentNonce = nonce;
        nonce = currentNonce + 1;
    }

    function _validateExecute(
        address target,
        uint256 value,
        bytes calldata data,
        uint256 currentNonce,
        uint256 deadline,
        bytes calldata signature
    ) internal view {
        if (deadline != 0 && block.timestamp > deadline) revert SignatureExpired();
        bytes32 structHash = keccak256(
            abi.encode(EXECUTE_TYPEHASH, target, value, keccak256(data), currentNonce, deadline)
        );
        _requireValidSignature(structHash, signature);
    }

    function _validateExecuteBatch(
        bytes32 callsHash,
        uint256 currentNonce,
        uint256 deadline,
        bytes calldata signature
    ) internal view {
        if (deadline != 0 && block.timestamp > deadline) revert SignatureExpired();
        bytes32 structHash = keccak256(abi.encode(EXECUTE_BATCH_TYPEHASH, callsHash, currentNonce, deadline));
        _requireValidSignature(structHash, signature);
    }

    function _requireValidSignature(bytes32 structHash, bytes calldata signature) internal view {
        bytes32 digest = _hashTypedDataV4(structHash);
        (address signer, ECDSA.RecoverError error,) = ECDSA.tryRecover(digest, signature);
        if (error != ECDSA.RecoverError.NoError || signer != address(this)) {
            revert InvalidSignature();
        }
    }

    function _requireSessionSignature(
        address sessionKey,
        bytes32 structHash,
        bytes calldata signature
    ) internal view {
        bytes32 digest = _hashTypedDataV4(structHash);
        (address signer, ECDSA.RecoverError error,) = ECDSA.tryRecover(digest, signature);
        if (error != ECDSA.RecoverError.NoError || signer != sessionKey) {
            revert InvalidSignature();
        }
    }

    function _hashCalls(Call[] calldata calls) internal pure returns (bytes32) {
        bytes32[] memory callHashes = new bytes32[](calls.length);
        for (uint256 i = 0; i < calls.length; ++i) {
            callHashes[i] = keccak256(
                abi.encode(CALL_TYPEHASH, calls[i].to, calls[i].value, keccak256(calls[i].data))
            );
        }
        return keccak256(abi.encodePacked(callHashes));
    }

    function _call(
        address target,
        uint256 value,
        bytes calldata data,
        uint256 index
    ) internal returns (bytes memory result) {
        (bool success, bytes memory returnData) = target.call{value: value}(data);
        if (!success) {
            revert CallFailed(index, returnData);
        }
        return returnData;
    }

    function _hashPermissions(PermissionInput[] calldata permissionInputs) internal pure returns (bytes32) {
        bytes32[] memory hashes = new bytes32[](permissionInputs.length);
        for (uint256 i = 0; i < permissionInputs.length; ++i) {
            PermissionInput calldata input = permissionInputs[i];
            hashes[i] = keccak256(
                abi.encode(
                    PERMISSION_TYPEHASH,
                    input.target,
                    input.selector,
                    input.maxValue,
                    input.maxAmount,
                    input.maxAmount0,
                    input.maxAmount1
                )
            );
        }
        return keccak256(abi.encodePacked(hashes));
    }

    function _useSessionNonce(address sessionKey) internal returns (uint256 currentNonce) {
        currentNonce = sessionNonces[sessionKey];
        sessionNonces[sessionKey] = currentNonce + 1;
    }

    function _validateSession(address sessionKey) internal view {
        Session memory session = sessions[sessionKey];
        if (!session.active) revert SessionInactive();
        if (session.expiresAt <= block.timestamp) revert SessionExpired();
    }

    function _enforceSessionPermission(address sessionKey, address target, uint256 value, bytes calldata data)
        internal
        view
    {
        bytes4 selector = data.length >= 4 ? bytes4(data) : bytes4(0);
        Session memory session = sessions[sessionKey];
        Permission memory permission = permissions[sessionKey][target][selector];
        if (!permission.enabled || permission.version != session.version) revert PermissionDenied();
        if (value > permission.maxValue) revert ValueExceeded();

        if (selector == ILimitOrderManager.createLimitOrder.selector) {
            (, , uint256 amount,,) = abi.decode(data[4:], (bool, int24, uint256, PoolKey, address));
            _enforceMaxAmount(permission.maxAmount, amount);
            return;
        }
        if (selector == ILimitOrderManager.createScaleOrders.selector) {
            (, , , uint256 totalAmount,, , ,) =
                abi.decode(data[4:], (bool, int24, int24, uint256, uint256, uint256, PoolKey, address));
            _enforceMaxAmount(permission.maxAmount, totalAmount);
            return;
        }
        if (selector == SwapThenLimitOrderHelper.swapThenLimit.selector) {
            (, , uint256 amountIn,, , , ,) =
                abi.decode(data[4:], (PoolKey, bool, uint256, uint256, uint160, bytes, address, address));
            _enforceMaxAmount(permission.maxAmount, amountIn);
            return;
        }
        if (selector == IMultiPositionManager.deposit.selector) {
            (uint256 deposit0Desired, uint256 deposit1Desired,,) =
                abi.decode(data[4:], (uint256, uint256, address, address));
            _enforceMaxAmount(permission.maxAmount0, deposit0Desired);
            _enforceMaxAmount(permission.maxAmount1, deposit1Desired);
            return;
        }
        if (selector == UnilaunchCallOption.exercise.selector) {
            uint256 tokenAmount = abi.decode(data[4:], (uint256));
            _enforceMaxAmount(permission.maxAmount, tokenAmount);
            return;
        }
        if (selector == UnilaunchTokenLaunchFactory.deployTokenAndLaunchPresale.selector) {
            return;
        }
        if (selector == IRelayerFactory.deployRelayer.selector) {
            return;
        }
        if (selector == IRelayer.fundContract.selector) {
            return;
        }
    }

    function _enforceMaxAmount(uint256 maxAmount, uint256 actual) internal pure {
        if (actual > maxAmount) revert AmountExceeded();
    }

    receive() external payable {}

    fallback() external payable {}
}
