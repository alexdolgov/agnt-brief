// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2025 Flying Tulip Inc. All rights reserved.
pragma solidity ^0.8.30;

import {IPositionsManager} from "../interfaces/IPositionsManager.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {ECDSA} from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import {MessageHashUtils} from "@openzeppelin/contracts/utils/cryptography/MessageHashUtils.sol";
import {IERC1271} from "@openzeppelin/contracts/interfaces/IERC1271.sol";
import {IERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Permit.sol";
import {ILeverageEngine} from "../interfaces/ILeverageEngine.sol";

/// @title MetaActions
/// @notice PositionsManager meta-transaction module:
///         deposit/withdraw/borrow/repay/approveEngine/approveBorrow + flash via-callback flows via EIP-712 sigs.
/// @dev Must be allowlisted via `PositionsManager.setMetaModule` to access PM meta entrypoints.
contract MetaActions {
    using SafeERC20 for IERC20;

    IPositionsManager public immutable pm;

    error MetaExpired();
    error MetaBadSignature();
    error MetaZeroAddress();
    error MetaAmountZero();
    error MetaInvalidBps();
    error MetaFeeDisabled();
    error MetaRelayerMismatch();
    error MetaFeeTooHigh();
    error MetaFeeExceedsAmount();
    error MetaInvalidFeeBounds(uint128 minFee, uint128 maxFee);

    // ERC-1271 magic value for valid signatures
    bytes4 internal constant MAGICVALUE = 0x1626ba7e;

    uint256 internal constant BPS = 10_000;

    enum MetaAction {
        DEPOSIT,
        WITHDRAW,
        BORROW,
        REPAY,
        APPROVE_ENGINE,
        APPROVE_BORROW_DELEGATE
    }

    struct MetaFeeConfig {
        bool configured;
        bool enabled;
        uint16 feeBps;
        uint128 minFee;
        uint128 maxFee;
    }

    mapping(uint8 action => mapping(address asset => MetaFeeConfig cfg)) public metaFeeConfig;

    event MetaFeeConfigSet(
        uint8 indexed action,
        address indexed asset,
        bool enabled,
        uint16 feeBps,
        uint128 minFee,
        uint128 maxFee
    );
    event MetaFeePaid(
        address indexed relayer,
        address indexed user,
        uint8 indexed action,
        address asset,
        uint256 amount,
        uint256 fee
    );

    // EIP-712 typehashes (PositionsManager domain)
    bytes32 private constant _DEPOSIT_TYPEHASH = keccak256(
        "Deposit(address user,address asset,uint256 amount,address relayer,uint256 maxFee,uint256 nonce,uint256 deadline)"
    );
    bytes32 private constant _WITHDRAW_TYPEHASH = keccak256(
        "Withdraw(address user,address asset,uint256 amount,address relayer,uint256 maxFee,uint256 nonce,uint256 deadline)"
    );
    bytes32 private constant _BORROW_TYPEHASH = keccak256(
        "Borrow(address user,address asset,uint256 amount,address relayer,uint256 maxFee,uint256 nonce,uint256 deadline)"
    );
    bytes32 private constant _REPAY_TYPEHASH = keccak256(
        "Repay(address user,address asset,uint256 amount,address relayer,uint256 maxFee,uint256 nonce,uint256 deadline)"
    );
    bytes32 private constant _APPROVE_ENGINE_TYPEHASH = keccak256(
        "ApproveEngine(address user,address engine,address asset,uint256 debitAllowance,address relayer,uint256 nonce,uint256 deadline)"
    );
    bytes32 private constant _APPROVE_BORROW_DELEGATE_TYPEHASH = keccak256(
        "ApproveBorrowDelegate(address user,address delegate,address asset,uint256 borrowAllowance,address relayer,uint256 nonce,uint256 deadline)"
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
        if (pm_ == address(0) || admin_ == address(0)) revert MetaZeroAddress();
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
        if (newAdmin == address(0)) revert MetaZeroAddress();
        emit AdminTransferred(admin, newAdmin);
        admin = newAdmin;
    }

    function setMetaFeeConfig(
        uint8 action,
        address asset,
        bool enabled,
        uint16 feeBps,
        uint128 minFee,
        uint128 maxFee
    )
        external
        onlyAdmin
    {
        if (feeBps > BPS) revert MetaInvalidBps();
        if (maxFee != 0 && minFee > maxFee) revert MetaInvalidFeeBounds(minFee, maxFee);
        metaFeeConfig[action][asset] = MetaFeeConfig({
            configured: true, enabled: enabled, feeBps: feeBps, minFee: minFee, maxFee: maxFee
        });
        emit MetaFeeConfigSet(action, asset, enabled, feeBps, minFee, maxFee);
    }

    function depositWithSig(
        address user,
        address asset,
        uint256 amount,
        uint256 maxFee,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s,
        bool usePermit,
        uint256 permitValue,
        uint256 permitDeadline,
        uint8 pv,
        bytes32 pr,
        bytes32 ps
    )
        external
    {
        _depositWithSigInternal(
            user,
            asset,
            amount,
            maxFee,
            deadline,
            abi.encodePacked(r, s, v),
            usePermit,
            permitValue,
            permitDeadline,
            pv,
            pr,
            ps
        );
    }

    function depositWithSig(
        address user,
        address asset,
        uint256 amount,
        uint256 maxFee,
        uint256 deadline,
        bytes calldata sig,
        bool usePermit,
        uint256 permitValue,
        uint256 permitDeadline,
        uint8 pv,
        bytes32 pr,
        bytes32 ps
    )
        external
    {
        _depositWithSigInternal(
            user,
            asset,
            amount,
            maxFee,
            deadline,
            sig,
            usePermit,
            permitValue,
            permitDeadline,
            pv,
            pr,
            ps
        );
    }

    function withdrawWithSig(
        address user,
        address asset,
        uint256 amount,
        uint256 maxFee,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    )
        external
    {
        _withdrawWithSigInternal(user, asset, amount, maxFee, deadline, abi.encodePacked(r, s, v));
    }

    function withdrawWithSig(
        address user,
        address asset,
        uint256 amount,
        uint256 maxFee,
        uint256 deadline,
        bytes calldata sig
    )
        external
    {
        _withdrawWithSigInternal(user, asset, amount, maxFee, deadline, sig);
    }

    function borrowWithSig(
        address user,
        address asset,
        uint256 amount,
        uint256 maxFee,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    )
        external
    {
        _borrowWithSigInternal(user, asset, amount, maxFee, deadline, abi.encodePacked(r, s, v));
    }

    function borrowWithSig(
        address user,
        address asset,
        uint256 amount,
        uint256 maxFee,
        uint256 deadline,
        bytes calldata sig
    )
        external
    {
        _borrowWithSigInternal(user, asset, amount, maxFee, deadline, sig);
    }

    function repayWithSig(
        address user,
        address asset,
        uint256 amount,
        uint256 maxFee,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s,
        bool usePermit,
        uint256 permitValue,
        uint256 permitDeadline,
        uint8 pv,
        bytes32 pr,
        bytes32 ps
    )
        external
    {
        _repayWithSigInternal(
            user,
            asset,
            amount,
            maxFee,
            deadline,
            abi.encodePacked(r, s, v),
            usePermit,
            permitValue,
            permitDeadline,
            pv,
            pr,
            ps
        );
    }

    function repayWithSig(
        address user,
        address asset,
        uint256 amount,
        uint256 maxFee,
        uint256 deadline,
        bytes calldata sig,
        bool usePermit,
        uint256 permitValue,
        uint256 permitDeadline,
        uint8 pv,
        bytes32 pr,
        bytes32 ps
    )
        external
    {
        _repayWithSigInternal(
            user,
            asset,
            amount,
            maxFee,
            deadline,
            sig,
            usePermit,
            permitValue,
            permitDeadline,
            pv,
            pr,
            ps
        );
    }

    function approveEngineWithSig(
        address user,
        address engine,
        address asset,
        uint256 debitAllowance,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    )
        external
    {
        _approveEngineWithSigInternal(
            user, engine, asset, debitAllowance, deadline, abi.encodePacked(r, s, v)
        );
    }

    function approveEngineWithSig(
        address user,
        address engine,
        address asset,
        uint256 debitAllowance,
        uint256 deadline,
        bytes calldata sig
    )
        external
    {
        _approveEngineWithSigInternal(user, engine, asset, debitAllowance, deadline, sig);
    }

    function approveBorrowWithSig(
        address user,
        address delegate,
        address asset,
        uint256 borrowAllowance,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    )
        external
    {
        _approveBorrowWithSigInternal(
            user, delegate, asset, borrowAllowance, deadline, abi.encodePacked(r, s, v)
        );
    }

    function approveBorrowWithSig(
        address user,
        address delegate,
        address asset,
        uint256 borrowAllowance,
        uint256 deadline,
        bytes calldata sig
    )
        external
    {
        _approveBorrowWithSigInternal(user, delegate, asset, borrowAllowance, deadline, sig);
    }

    // ===================== Advanced flows (via callback) =====================

    function _depositWithSigInternal(
        address user,
        address asset,
        uint256 amount,
        uint256 maxFee,
        uint256 deadline,
        bytes memory sig,
        bool usePermit,
        uint256 permitValue,
        uint256 permitDeadline,
        uint8 pv,
        bytes32 pr,
        bytes32 ps
    )
        internal
    {
        address relayer = msg.sender;
        if (block.timestamp > deadline) revert MetaExpired();
        if (amount == 0) revert MetaAmountZero();

        uint256 fee = _computeMetaFee(MetaAction.DEPOSIT, asset, amount);
        if (fee > maxFee) revert MetaFeeTooHigh();
        if (fee >= amount) revert MetaFeeExceedsAmount();
        uint256 net = amount - fee;

        _verifyMetaSig(_DEPOSIT_TYPEHASH, user, asset, amount, maxFee, deadline, sig);

        if (usePermit) {
            try IERC20Permit(asset)
                .permit(user, address(this), permitValue, permitDeadline, pv, pr, ps) {}
                catch {}
        }

        IERC20 token = IERC20(asset);
        token.safeTransferFrom(user, address(this), amount);

        token.forceApprove(address(pm), net);
        pm.depositFor(user, asset, net);
        token.forceApprove(address(pm), 0);

        if (fee != 0) {
            token.safeTransfer(relayer, fee);
            emit MetaFeePaid(relayer, user, uint8(MetaAction.DEPOSIT), asset, amount, fee);
        }
    }

    function _withdrawWithSigInternal(
        address user,
        address asset,
        uint256 amount,
        uint256 maxFee,
        uint256 deadline,
        bytes memory sig
    )
        internal
    {
        address relayer = msg.sender;
        if (block.timestamp > deadline) revert MetaExpired();
        if (amount == 0) revert MetaAmountZero();

        uint256 fee = _computeMetaFee(MetaAction.WITHDRAW, asset, amount);
        if (fee > maxFee) revert MetaFeeTooHigh();
        if (fee >= amount) revert MetaFeeExceedsAmount();
        uint256 net = amount - fee;

        _verifyMetaSig(_WITHDRAW_TYPEHASH, user, asset, amount, maxFee, deadline, sig);

        IERC20 token = IERC20(asset);
        pm.withdraw(user, asset, amount, address(this));

        token.safeTransfer(user, net);
        if (fee != 0) {
            token.safeTransfer(relayer, fee);
            emit MetaFeePaid(relayer, user, uint8(MetaAction.WITHDRAW), asset, amount, fee);
        }
    }

    function _borrowWithSigInternal(
        address user,
        address asset,
        uint256 amount,
        uint256 maxFee,
        uint256 deadline,
        bytes memory sig
    )
        internal
    {
        address relayer = msg.sender;
        if (block.timestamp > deadline) revert MetaExpired();
        if (amount == 0) revert MetaAmountZero();

        uint256 fee = _computeMetaFee(MetaAction.BORROW, asset, amount);
        if (fee > maxFee) revert MetaFeeTooHigh();
        if (fee >= amount) revert MetaFeeExceedsAmount();
        uint256 net = amount - fee;

        _verifyMetaSig(_BORROW_TYPEHASH, user, asset, amount, maxFee, deadline, sig);

        IERC20 token = IERC20(asset);
        pm.borrow(user, asset, amount, address(this));

        token.safeTransfer(user, net);
        if (fee != 0) {
            token.safeTransfer(relayer, fee);
            emit MetaFeePaid(relayer, user, uint8(MetaAction.BORROW), asset, amount, fee);
        }
    }

    function _repayWithSigInternal(
        address user,
        address asset,
        uint256 amount,
        uint256 maxFee,
        uint256 deadline,
        bytes memory sig,
        bool usePermit,
        uint256 permitValue,
        uint256 permitDeadline,
        uint8 pv,
        bytes32 pr,
        bytes32 ps
    )
        internal
    {
        address relayer = msg.sender;
        if (block.timestamp > deadline) revert MetaExpired();
        if (amount == 0) revert MetaAmountZero();

        uint256 fee = _computeMetaFee(MetaAction.REPAY, asset, amount);
        if (fee > maxFee) revert MetaFeeTooHigh();
        if (fee >= amount) revert MetaFeeExceedsAmount();
        uint256 net = amount - fee;

        _verifyMetaSig(_REPAY_TYPEHASH, user, asset, amount, maxFee, deadline, sig);

        if (usePermit) {
            try IERC20Permit(asset)
                .permit(user, address(this), permitValue, permitDeadline, pv, pr, ps) {}
                catch {}
        }

        IERC20 token = IERC20(asset);
        uint256 balBefore = token.balanceOf(address(this));
        token.safeTransferFrom(user, address(this), amount);

        if (fee != 0) {
            token.safeTransfer(relayer, fee);
            emit MetaFeePaid(relayer, user, uint8(MetaAction.REPAY), asset, amount, fee);
        }

        token.forceApprove(address(pm), net);
        pm.repayFor(user, asset, net);
        token.forceApprove(address(pm), 0);

        uint256 refund = token.balanceOf(address(this)) - balBefore;
        if (refund != 0) token.safeTransfer(user, refund);
    }

    function _approveEngineWithSigInternal(
        address user,
        address engine,
        address asset,
        uint256 debitAllowance,
        uint256 deadline,
        bytes memory sig
    )
        internal
    {
        if (block.timestamp > deadline) revert MetaExpired();

        _verifyApproveEngineSig(user, engine, asset, debitAllowance, deadline, sig);

        pm.approveEngine(user, engine, asset, debitAllowance);
    }

    function _approveBorrowWithSigInternal(
        address user,
        address delegate,
        address asset,
        uint256 borrowAllowance,
        uint256 deadline,
        bytes memory sig
    )
        internal
    {
        if (block.timestamp > deadline) revert MetaExpired();

        _verifyApproveBorrowDelegateSig(user, delegate, asset, borrowAllowance, deadline, sig);

        pm.approveBorrow(user, delegate, asset, borrowAllowance);
    }

    function _verifyMetaSig(
        bytes32 typehash,
        address user,
        address asset,
        uint256 amount,
        uint256 maxFee,
        uint256 deadline,
        bytes memory sig
    )
        internal
    {
        address relayer = msg.sender;
        uint256 nonce = pm.useTypedNonce(user, typehash);
        bytes32 structHash =
            keccak256(abi.encode(typehash, user, asset, amount, relayer, maxFee, nonce, deadline));
        bytes32 digest = MessageHashUtils.toTypedDataHash(pm.DOMAIN_SEPARATOR(), structHash);
        if (!_isValidSig(user, digest, sig)) revert MetaBadSignature();
    }

    function _verifyApproveEngineSig(
        address user,
        address engine,
        address asset,
        uint256 debitAllowance,
        uint256 deadline,
        bytes memory sig
    )
        internal
    {
        address relayer = msg.sender;
        uint256 nonce = pm.useTypedNonce(user, _APPROVE_ENGINE_TYPEHASH);
        bytes32 structHash = keccak256(
            abi.encode(
                _APPROVE_ENGINE_TYPEHASH,
                user,
                engine,
                asset,
                debitAllowance,
                relayer,
                nonce,
                deadline
            )
        );
        bytes32 digest = MessageHashUtils.toTypedDataHash(pm.DOMAIN_SEPARATOR(), structHash);
        if (!_isValidSig(user, digest, sig)) revert MetaBadSignature();
    }

    function _verifyApproveBorrowDelegateSig(
        address user,
        address delegate,
        address asset,
        uint256 borrowAllowance,
        uint256 deadline,
        bytes memory sig
    )
        internal
    {
        address relayer = msg.sender;
        uint256 nonce = pm.useTypedNonce(user, _APPROVE_BORROW_DELEGATE_TYPEHASH);
        bytes32 structHash = keccak256(
            abi.encode(
                _APPROVE_BORROW_DELEGATE_TYPEHASH,
                user,
                delegate,
                asset,
                borrowAllowance,
                relayer,
                nonce,
                deadline
            )
        );
        bytes32 digest = MessageHashUtils.toTypedDataHash(pm.DOMAIN_SEPARATOR(), structHash);
        if (!_isValidSig(user, digest, sig)) revert MetaBadSignature();
    }

    function _computeMetaFee(
        MetaAction action,
        address asset,
        uint256 amount
    )
        internal
        view
        returns (uint256 fee)
    {
        MetaFeeConfig memory cfg = metaFeeConfig[uint8(action)][asset];
        if (!cfg.configured) {
            cfg = metaFeeConfig[uint8(action)][address(0)];
        }
        if (!cfg.enabled) revert MetaFeeDisabled();

        fee = Math.mulDiv(amount, cfg.feeBps, BPS, Math.Rounding.Ceil);
        if (fee < cfg.minFee) fee = cfg.minFee;
        if (cfg.maxFee != 0 && fee > cfg.maxFee) fee = cfg.maxFee;
    }

    function _isValidSig(
        address signer,
        bytes32 digest,
        bytes memory sig
    )
        internal
        view
        returns (bool)
    {
        // Compatibility-first:
        // - Try ECDSA first (works for EOAs and EIP-7702 EOAs with delegation code).
        // - Fall back to ERC-1271 for contracts (incl. delegated EOAs that implement ERC-1271).
        (address recovered, ECDSA.RecoverError err,) = ECDSA.tryRecover(digest, sig);
        if (err == ECDSA.RecoverError.NoError && recovered == signer) return true;

        // Avoid ABI decode reverts when calling ERC-1271 on a non-contract (empty return data).
        if (signer.code.length == 0) return false;
        (bool ok, bytes memory ret) =
            signer.staticcall(abi.encodeCall(IERC1271.isValidSignature, (digest, sig)));
        if (!ok || ret.length < 4) return false;
        bytes4 res;
        assembly {
            res := mload(add(ret, 32))
        }
        return (res == MAGICVALUE);
    }
}
