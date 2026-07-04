// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {PoolKey} from "infinity-core/src/types/PoolKey.sol";
import {PoolId} from "infinity-core/src/types/PoolId.sol";

/// @title IUniversalLockerPCS
/// @notice Internal interface for GoPlus PCS Infinity CL LP Locker.
///         Mirrors IUniversalLocker (Uni V4) but uses PCS Infinity PoolKey (which includes poolManager).
interface IUniversalLockerPCS {
    // Custom errors
    error InvalidPoolManager();
    error InvalidPositionManager();
    error InvalidPermit2();
    error InsufficientLockFee();
    error InvalidHookAddress();
    error NoChange();
    error HookNotWhitelisted();
    error HookIsBlacklisted();
    error UnlockTimeInPast();
    error InvalidUnlockTime();
    error NoLiquidityInPosition();
    error PoolNotInitialized();
    error NotOwner();
    error StillLocked();
    error AlreadyUnlocked();
    error TransferFailed(string reason);
    error InvalidRecipient();
    error NotYetExpired();
    error ZeroLiquidity();
    error InsufficientLiquidity();
    error CannotRescueNFTs();
    error ETHTransferFailed();
    error InvalidCollectAddress();
    error NFTOwnerMismatch(address expected, address actual);
    error InvalidTokenId();
    error InvalidFeeReceiver();
    error InvalidLockOwner();
    error InvalidLockId();
    error NotPendingOwner();

    // Events
    event LiquidityLocked(
        uint256 indexed lockId,
        address indexed owner,
        address positionManager,
        uint256 tokenId,
        PoolId indexed poolId,
        uint256 amount,
        uint256 unlockTime
    );

    event LiquidityUnlocked(
        uint256 indexed lockId,
        address indexed owner,
        address token,
        uint256 tokenId,
        PoolId indexed poolId,
        uint256 amount
    );

    event HookWhitelisted(address indexed hookAddress, bool status);
    event OnIncreaseLiquidity(uint256 indexed lockId, uint256 amount, uint256 token0Used, uint256 token1Used);
    event LiquidityDecreased(uint256 indexed lockId);
    event LockExtended(uint256 indexed lockId, uint256 newUnlockTime);
    event HookBlacklisted(address hook, bool blacklisted);
    event WhitelistModeChanged(bool indexed isWhitelistMode);
    event CollectAddressUpdated(uint256 indexed lockId, address indexed newCollectAddress);

    event OnFeeReceiverUpdated(address oldFeeReceiver, address newFeeReceiver);
    event OnFeeSignerUpdated(address oldSigner, address newSigner);
    event OnSignatureDisabled(bytes signature, bool disabled);
    event OnAddFee(
        bytes32 nameHash, string name, uint256 lpFee, uint256 collectFee, uint256 lockFee, address lockFeeToken
    );
    event OnEditFee(
        bytes32 nameHash, string name, uint256 lpFee, uint256 collectFee, uint256 lockFee, address lockFeeToken
    );
    event OnRemoveFee(bytes32 nameHash);

    event TokensRescued(address indexed token, address indexed receiver, uint256 amount);
    event EthRescued(address indexed receiver, uint256 amount);
    event PositionNFTRescued(uint256 indexed lockId, uint256 indexed tokenId, address indexed receiver, address owner);

    event OnLockPendingTransfer(uint256 indexed lockId, address previousOwner, address newOwner);
    event OnLockTransferred(uint256 indexed lockId, address previousOwner, address newOwner);
    // Structs
    struct LockInfo {
        uint256 lockId;
        address pendingOwner;
        address owner;
        address collector;
        uint256 collectFee;
        uint256 lpFee;
        uint256 tokenId;
        PoolKey poolKey;
        uint256 amount;
        uint256 unlockTime;
    }

    struct FeeStruct {
        string name;
        uint256 lpFee;
        uint256 collectFee;
        uint256 lockFee;
        address lockFeeToken;
    }

    // Core functions
    function lockNFTPosition(
        uint256 tokenId,
        uint256 unlockTime,
        address lockOwner_,
        address collector_,
        string memory feeName
    ) external payable returns (uint256 lockId);

    function lockNFTPositionWithCustomFee(
        uint256 tokenId,
        uint256 unlockTime,
        address lockOwner_,
        address collector_,
        bytes memory signature_,
        FeeStruct memory feeObj_
    ) external payable returns (uint256 lockId);

    function setSignatureDisabled(bytes calldata signature, bool disabled) external;

    function unlockLiquidity(uint256 lockId) external;

    function decreaseLiquidity(uint256 lockId, uint128 liquidityDecrease, uint256 amount0Min, uint256 amount1Min)
        external
        returns (uint256 amount0, uint256 amount1);

    function relock(uint256 lockId, uint256 newUnlockTime) external;

    function collect(uint256 lockId, address recipient)
        external
        returns (uint256 amount0, uint256 amount1, uint256 fee0, uint256 fee1);

    function collectWithoutLock(uint256 lockId, address recipient)
        external
        returns (uint256 amount0, uint256 amount1, uint256 fee0, uint256 fee1);

    // View functions
    function getLockInfo(uint256 lockId) external view returns (LockInfo memory);

    function isLocked(uint256 lockId) external view returns (bool);

    function getUserLockCount(address user) external view returns (uint256);

    function getUserLockAt(address user, uint256 index) external view returns (uint256);
}
