// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2025 Flying Tulip Inc. All rights reserved.
pragma solidity ^0.8.30;

import {IPositionsManager} from "../interfaces/IPositionsManager.sol";
import {ISessionManager} from "../interfaces/ISessionManager.sol";

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Permit.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

/// @title MetaSessionActions
/// @notice PositionsManager meta-transaction module using delegated session keys validated via `ISessionManager`.
/// @dev Must be allowlisted via `PositionsManager.setMetaModule` to access PM meta entrypoints.
contract MetaSessionActions {
    using SafeERC20 for IERC20;

    uint256 internal constant BPS = 10_000;

    IPositionsManager public immutable pm;
    ISessionManager public sessionManager;
    mapping(address => bool) public trustedForwarder;

    error MetaSessionManagerNotSet();
    error MetaSessionZeroAddress();
    error MetaSessionAmountZero();
    error MetaSessionFeeNotAllowed();
    error MetaSessionFeeTooHigh();
    error MetaSessionFeeExceedsAmount();
    error MetaSessionExecutorMismatch(address expectedExecutor, address actualCaller);
    error MetaSessionDataHashMismatch(bytes32 expected, bytes32 provided);

    event SessionManagerSet(address indexed sessionManager);
    event TrustedForwarderSet(address indexed forwarder, bool ok);

    bytes32 private constant _SESSION_DEPOSIT_DATAHASH_TYPEHASH =
        keccak256("MetaSessionDeposit(address asset,uint256 amount)");
    bytes32 private constant _SESSION_WITHDRAW_DATAHASH_TYPEHASH =
        keccak256("MetaSessionWithdraw(address asset,uint256 amount)");
    bytes32 private constant _SESSION_BORROW_DATAHASH_TYPEHASH =
        keccak256("MetaSessionBorrow(address asset,uint256 amount)");
    bytes32 private constant _SESSION_REPAY_DATAHASH_TYPEHASH =
        keccak256("MetaSessionRepay(address asset,uint256 amount)");
    bytes32 private constant _SESSION_APPROVE_ENGINE_DATAHASH_TYPEHASH =
        keccak256("MetaSessionApproveEngine(address engine,address asset,uint256 debitAllowance)");
    bytes32 private constant _SESSION_APPROVE_BORROW_DELEGATE_DATAHASH_TYPEHASH = keccak256(
        "MetaSessionApproveBorrowDelegate(address delegate,address asset,uint256 borrowAllowance)"
    );

    struct PermitParams {
        bool usePermit;
        uint256 permitValue;
        uint256 permitDeadline;
        uint8 v;
        bytes32 r;
        bytes32 s;
    }

    address public admin;

    event AdminTransferred(address indexed prev, address indexed next);

    constructor(address pm_, address admin_) {
        if (pm_ == address(0) || admin_ == address(0)) revert MetaSessionZeroAddress();
        pm = IPositionsManager(pm_);
        admin = admin_;
        emit AdminTransferred(address(0), admin_);
    }

    modifier onlyAdmin() {
        _onlyAdmin();
        _;
    }

    function _onlyAdmin() internal view {
        if (msg.sender != admin) revert IPositionsManager.ftPositionManagerOnlyOwner();
    }

    function setAdmin(address newAdmin) external onlyAdmin {
        if (newAdmin == address(0)) revert MetaSessionZeroAddress();
        emit AdminTransferred(admin, newAdmin);
        admin = newAdmin;
    }

    /// @notice Set the SessionManager address (0 = disable session-based flows).
    function setSessionManager(address sessionManager_) external onlyAdmin {
        sessionManager = ISessionManager(sessionManager_);
        emit SessionManagerSet(sessionManager_);
    }

    /// @notice Allow a contract to forward session calls on behalf of `SessionCall.executor`.
    /// @dev Forwarders must ensure they only forward when `executor == msg.sender` in the original call context.
    function setTrustedForwarder(address forwarder, bool ok) external onlyAdmin {
        if (forwarder == address(0)) revert MetaSessionZeroAddress();
        trustedForwarder[forwarder] = ok;
        emit TrustedForwarderSet(forwarder, ok);
    }

    function depositWithSessionAndPermit(
        address asset,
        uint256 amount,
        PermitParams calldata permitParams,
        ISessionManager.SessionCall calldata sessionCall,
        bytes calldata delegateSignature
    )
        external
    {
        _depositWithSessionAndPermit(asset, amount, permitParams, sessionCall, delegateSignature);
    }

    function withdrawWithSession(
        address asset,
        uint256 amount,
        ISessionManager.SessionCall calldata sessionCall,
        bytes calldata delegateSignature
    )
        external
    {
        _withdrawWithSession(asset, amount, sessionCall, delegateSignature);
    }

    function borrowWithSession(
        address asset,
        uint256 amount,
        ISessionManager.SessionCall calldata sessionCall,
        bytes calldata delegateSignature
    )
        external
    {
        _borrowWithSession(asset, amount, sessionCall, delegateSignature);
    }

    function repayWithSessionAndPermit(
        address asset,
        uint256 amount,
        PermitParams calldata permitParams,
        ISessionManager.SessionCall calldata sessionCall,
        bytes calldata delegateSignature
    )
        external
    {
        _repayWithSessionAndPermit(asset, amount, permitParams, sessionCall, delegateSignature);
    }

    function approveEngineWithSession(
        address engine,
        address asset,
        uint256 debitAllowance,
        ISessionManager.SessionCall calldata sessionCall,
        bytes calldata delegateSignature
    )
        external
    {
        _approveEngineWithSession(engine, asset, debitAllowance, sessionCall, delegateSignature);
    }

    function approveBorrowWithSession(
        address delegate,
        address asset,
        uint256 borrowAllowance,
        ISessionManager.SessionCall calldata sessionCall,
        bytes calldata delegateSignature
    )
        external
    {
        _approveBorrowWithSession(delegate, asset, borrowAllowance, sessionCall, delegateSignature);
    }

    function _depositWithSessionAndPermit(
        address asset,
        uint256 amount,
        PermitParams calldata permitParams,
        ISessionManager.SessionCall calldata sessionCall,
        bytes calldata delegateSignature
    )
        internal
    {
        if (address(sessionManager) == address(0)) revert MetaSessionManagerNotSet();
        if (asset == address(0)) revert MetaSessionZeroAddress();
        if (amount == 0) revert MetaSessionAmountZero();

        bytes32 expectedHash =
            keccak256(abi.encode(_SESSION_DEPOSIT_DATAHASH_TYPEHASH, asset, amount));
        if (sessionCall.dataHash != expectedHash) {
            revert MetaSessionDataHashMismatch(expectedHash, sessionCall.dataHash);
        }

        (address owner,, uint16 maxFeeBps) = sessionManager.validateAndConsume(
            asset, amount, sessionCall, delegateSignature, msg.sender
        );

        _enforceRelayerFee(amount, maxFeeBps, sessionCall.feeAmount);

        if (permitParams.usePermit) {
            try IERC20Permit(asset)
                .permit(
                    owner,
                    address(this),
                    permitParams.permitValue,
                    permitParams.permitDeadline,
                    permitParams.v,
                    permitParams.r,
                    permitParams.s
                ) {}
                catch {}
        }

        IERC20 token = IERC20(asset);
        token.safeTransferFrom(owner, address(this), amount);

        uint256 net = amount - sessionCall.feeAmount;

        token.forceApprove(address(pm), net);
        pm.depositFor(owner, asset, net);
        token.forceApprove(address(pm), 0);

        if (sessionCall.feeAmount != 0) {
            token.safeTransfer(sessionCall.executor, sessionCall.feeAmount);
        }
    }

    function _withdrawWithSession(
        address asset,
        uint256 amount,
        ISessionManager.SessionCall calldata sessionCall,
        bytes calldata delegateSignature
    )
        internal
    {
        if (address(sessionManager) == address(0)) revert MetaSessionManagerNotSet();
        if (asset == address(0)) revert MetaSessionZeroAddress();
        if (amount == 0) revert MetaSessionAmountZero();

        bytes32 expectedHash =
            keccak256(abi.encode(_SESSION_WITHDRAW_DATAHASH_TYPEHASH, asset, amount));
        if (sessionCall.dataHash != expectedHash) {
            revert MetaSessionDataHashMismatch(expectedHash, sessionCall.dataHash);
        }

        (address owner,, uint16 maxFeeBps) = sessionManager.validateAndConsume(
            asset, amount, sessionCall, delegateSignature, msg.sender
        );

        _enforceRelayerFee(amount, maxFeeBps, sessionCall.feeAmount);
        uint256 net = amount - sessionCall.feeAmount;

        IERC20 token = IERC20(asset);
        pm.withdraw(owner, asset, amount, address(this));

        token.safeTransfer(owner, net);
        if (sessionCall.feeAmount != 0) {
            token.safeTransfer(sessionCall.executor, sessionCall.feeAmount);
        }
    }

    function _borrowWithSession(
        address asset,
        uint256 amount,
        ISessionManager.SessionCall calldata sessionCall,
        bytes calldata delegateSignature
    )
        internal
    {
        if (address(sessionManager) == address(0)) revert MetaSessionManagerNotSet();
        if (asset == address(0)) revert MetaSessionZeroAddress();
        if (amount == 0) revert MetaSessionAmountZero();

        bytes32 expectedHash =
            keccak256(abi.encode(_SESSION_BORROW_DATAHASH_TYPEHASH, asset, amount));
        if (sessionCall.dataHash != expectedHash) {
            revert MetaSessionDataHashMismatch(expectedHash, sessionCall.dataHash);
        }

        (address owner,, uint16 maxFeeBps) = sessionManager.validateAndConsume(
            asset, amount, sessionCall, delegateSignature, msg.sender
        );

        _enforceRelayerFee(amount, maxFeeBps, sessionCall.feeAmount);
        uint256 net = amount - sessionCall.feeAmount;

        IERC20 token = IERC20(asset);
        pm.borrow(owner, asset, amount, address(this));

        token.safeTransfer(owner, net);
        if (sessionCall.feeAmount != 0) {
            token.safeTransfer(sessionCall.executor, sessionCall.feeAmount);
        }
    }

    function _repayWithSessionAndPermit(
        address asset,
        uint256 amount,
        PermitParams calldata permitParams,
        ISessionManager.SessionCall calldata sessionCall,
        bytes calldata delegateSignature
    )
        internal
    {
        if (address(sessionManager) == address(0)) revert MetaSessionManagerNotSet();
        if (asset == address(0)) revert MetaSessionZeroAddress();
        if (amount == 0) revert MetaSessionAmountZero();

        bytes32 expectedHash =
            keccak256(abi.encode(_SESSION_REPAY_DATAHASH_TYPEHASH, asset, amount));
        if (sessionCall.dataHash != expectedHash) {
            revert MetaSessionDataHashMismatch(expectedHash, sessionCall.dataHash);
        }

        (address owner,, uint16 maxFeeBps) = sessionManager.validateAndConsume(
            asset, amount, sessionCall, delegateSignature, msg.sender
        );

        _enforceRelayerFee(amount, maxFeeBps, sessionCall.feeAmount);
        uint256 net = amount - sessionCall.feeAmount;

        if (permitParams.usePermit) {
            try IERC20Permit(asset)
                .permit(
                    owner,
                    address(this),
                    permitParams.permitValue,
                    permitParams.permitDeadline,
                    permitParams.v,
                    permitParams.r,
                    permitParams.s
                ) {}
                catch {}
        }

        IERC20 token = IERC20(asset);
        uint256 balBefore = token.balanceOf(address(this));
        token.safeTransferFrom(owner, address(this), amount);

        if (sessionCall.feeAmount != 0) {
            token.safeTransfer(sessionCall.executor, sessionCall.feeAmount);
        }

        token.forceApprove(address(pm), net);
        pm.repayFor(owner, asset, net);
        token.forceApprove(address(pm), 0);

        uint256 refund = token.balanceOf(address(this)) - balBefore;
        if (refund != 0) token.safeTransfer(owner, refund);
    }

    function _approveEngineWithSession(
        address engine,
        address asset,
        uint256 debitAllowance,
        ISessionManager.SessionCall calldata sessionCall,
        bytes calldata delegateSignature
    )
        internal
    {
        if (address(sessionManager) == address(0)) revert MetaSessionManagerNotSet();
        if (engine == address(0) || asset == address(0)) revert MetaSessionZeroAddress();
        if (sessionCall.feeAmount != 0) revert MetaSessionFeeNotAllowed();

        bytes32 expectedHash = keccak256(
            abi.encode(_SESSION_APPROVE_ENGINE_DATAHASH_TYPEHASH, engine, asset, debitAllowance)
        );
        if (sessionCall.dataHash != expectedHash) {
            revert MetaSessionDataHashMismatch(expectedHash, sessionCall.dataHash);
        }

        address executor = sessionCall.executor;
        if (executor != msg.sender && !trustedForwarder[msg.sender]) {
            revert MetaSessionExecutorMismatch(executor, msg.sender);
        }

        (address owner,,) = sessionManager.validateAndConsume(
            address(0), 0, sessionCall, delegateSignature, executor
        );

        pm.approveEngine(owner, engine, asset, debitAllowance);
    }

    function _approveBorrowWithSession(
        address delegate,
        address asset,
        uint256 borrowAllowance,
        ISessionManager.SessionCall calldata sessionCall,
        bytes calldata delegateSignature
    )
        internal
    {
        if (address(sessionManager) == address(0)) revert MetaSessionManagerNotSet();
        if (delegate == address(0) || asset == address(0)) revert MetaSessionZeroAddress();
        if (sessionCall.feeAmount != 0) revert MetaSessionFeeNotAllowed();

        bytes32 expectedHash = keccak256(
            abi.encode(
                _SESSION_APPROVE_BORROW_DELEGATE_DATAHASH_TYPEHASH, delegate, asset, borrowAllowance
            )
        );
        if (sessionCall.dataHash != expectedHash) {
            revert MetaSessionDataHashMismatch(expectedHash, sessionCall.dataHash);
        }

        address executor = sessionCall.executor;
        if (executor != msg.sender && !trustedForwarder[msg.sender]) {
            revert MetaSessionExecutorMismatch(executor, msg.sender);
        }

        (address owner,,) = sessionManager.validateAndConsume(
            address(0), 0, sessionCall, delegateSignature, executor
        );

        pm.approveBorrow(owner, delegate, asset, borrowAllowance);
    }

    function _enforceRelayerFee(uint256 amount, uint16 maxFeeBps, uint256 feeAmount) internal pure {
        if (feeAmount == 0) return;
        if (feeAmount >= amount) revert MetaSessionFeeExceedsAmount();

        uint256 baseAmount = amount - feeAmount;
        uint256 maxFee = Math.mulDiv(baseAmount, maxFeeBps, BPS, Math.Rounding.Ceil);
        if (feeAmount > maxFee) revert MetaSessionFeeTooHigh();
    }
}
