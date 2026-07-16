// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;

import {PoolKey} from "@uniswap/v4-core/src/types/PoolKey.sol";
import {PoolId} from "@uniswap/v4-core/src/types/PoolId.sol";

interface IUniversalLocker {
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
    event OnIncreaseLiquidity(
        uint256 indexed lockId,
        uint256 amount,
        uint256 token0Used,
        uint256 token1Used
    );
    event LiquidityDecreased(uint256 indexed lockId);
    event LockExtended(uint256 indexed lockId, uint256 newUnlockTime);
    event HookBlacklisted(address hook, bool blacklisted);
    event WhitelistModeChanged(bool indexed isWhitelistMode);
    event CollectAddressUpdated(
        uint256 indexed lockId,
        address indexed newCollectAddress
    );

    // GPS UniV4LPLocker new
    event OnFeeReceiverUpdated(address oldFeeReceiver, address newFeeReceiver);
    event OnAddFee(
        bytes32 nameHash,
        string name,
        uint256 lpFee,
        uint256 collectFee,
        uint256 lockFee,
        address lockFeeToken
    );
    event OnEditFee(
        bytes32 nameHash,
        string name,
        uint256 lpFee,
        uint256 collectFee,
        uint256 lockFee,
        address lockFeeToken
    );
    event OnRemoveFee(bytes32 nameHash);

    event TokensRescued(
        address indexed token,
        address indexed receiver,
        uint256 amount
    );
    event EthRescued(address indexed receiver, uint256 amount);

    event OnLockPendingTransfer(
        uint256 indexed lockId,
        address previousOwner,
        address newOwner
    );
    event OnLockTransferred(
        uint256 indexed lockId,
        address previousOwner,
        address newOwner
    );
    event CustomFeeAdded(
        address indexed user,
        uint256 lpFee,
        uint256 collectFee,
        uint256 lockFee
    );
    event CustomFeeRemoved(address indexed user);

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

    // Core functions
    function lockNFTPosition(
        uint256 tokenId,
        uint256 unlockTime,
        address collector_,
        string memory feeName
    ) external payable returns (uint256 lockId);

    function unlockLiquidity(uint256 lockId) external;

    function decreaseLiquidity(
        uint256 lockId,
        uint128 liquidityDecrease,
        uint256 amount0Min,
        uint256 amount1Min
    ) external returns (uint256 amount0, uint256 amount1);

    function relock(uint256 lockId, uint256 newUnlockTime) external;

    // View functions
    function getLockInfo(
        uint256 lockId
    ) external view returns (LockInfo memory);

    function isLocked(uint256 lockId) external view returns (bool);

    function getUserLockCount(address user) external view returns (uint256);

    function getUserLockAt(
        address user,
        uint256 index
    ) external view returns (uint256);
}
