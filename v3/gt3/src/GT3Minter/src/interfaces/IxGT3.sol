// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.24;

import {IERC721} from "@openzeppelin/contracts/token/ERC721/IERC721.sol";

/// @title IxGT3 Interface
/// @notice Interface for the GT3 staking contract that manages locked token positions as NFTs with voting power
/// @dev This contract extends ERC721 functionality to handle locked token positions
interface IxGT3 is IERC721 {
    /// @notice Emitted when tokens are deposited into a lock
    /// @param provider The address depositing tokens
    /// @param tokenId The ID of the NFT receiving the deposit
    /// @param value The amount of tokens deposited
    /// @param locktime The new lock end time
    /// @param depositType The type of deposit operation
    /// @param ts The timestamp of the deposit
    event Deposit(
        address indexed provider,
        uint256 tokenId,
        uint256 value,
        uint256 indexed locktime,
        DepositType depositType,
        uint256 ts
    );

    /// @notice Emitted when the total supply changes
    /// @param prevSupply The previous total supply
    /// @param supply The new total supply
    event Supply(uint256 prevSupply, uint256 supply);

    /// @notice Emitted when tokens are withdrawn from a lock
    /// @param account The address withdrawing tokens
    /// @param tokenId The ID of the NFT being withdrawn from
    /// @param value The amount of tokens withdrawn
    /// @param timestamp The timestamp of the withdrawal
    event Withdraw(address indexed account, uint256 tokenId, uint256 value, uint256 timestamp);

    /// @notice Emitted when a locked position is split into two
    /// @param from The original token ID
    /// @param tokenId1 The first resulting token ID
    /// @param tokenId2 The second resulting token ID
    /// @param sender The address initiating the split
    /// @param splitAmount1 The amount in the first resulting token
    /// @param splitAmount2 The amount in the second resulting token
    /// @param locktime The lock end time for both resulting tokens
    /// @param timestamp The timestamp of the split
    event Split(
        uint256 indexed from,
        uint256 indexed tokenId1,
        uint256 indexed tokenId2,
        address sender,
        uint256 splitAmount1,
        uint256 splitAmount2,
        uint256 locktime,
        uint256 timestamp
    );

    /// @notice Emitted when a vote rebase fails
    /// @param tokenId The token ID that failed to rebase
    /// @param currentWeight The current voting weight
    /// @param usedWeight The used voting weight
    event RebaseVoteFailed(uint256 indexed tokenId, uint256 currentWeight, uint256 usedWeight);

    /// @notice Error thrown when attempting to deposit zero tokens
    error XGT3NonZeroValue();

    /// @notice Error thrown when a lock is not found for a token ID
    /// @param tokenId The token ID that doesn't exist
    error XGT3NotExistingLockFound(uint256 tokenId);

    /// @notice Error thrown when attempting to operate on an expired lock
    /// @param tokenId The token ID of the expired lock
    error XGT3LockExpired(uint256 tokenId);

    /// @notice Error thrown when attempting to deposit zero tokens
    error XGT3DepositZero();

    /// @notice Error thrown when lock duration exceeds maximum allowed
    error XGT3ExceedMaxLockTime();

    /// @notice Error thrown when attempting to lock until a past time
    error XGT3OnlyLockUntilTimeFuture();

    /// @notice Error thrown when token is attached to voting
    /// @param tokenId The token ID that is attached
    error XGT3TokenAttached(uint256 tokenId);

    /// @notice Error thrown when attempting to merge the same token
    /// @param tokenFrom Source token ID
    /// @param tokenTo Destination token ID
    error XGT3SameToken(uint256 tokenFrom, uint256 tokenTo);

    /// @notice Error thrown when caller is not authorized for token
    /// @param tokenId The token ID caller is not authorized for
    error XGT3UnauthorizedToken(uint256 tokenId);

    /// @notice Error thrown when not increasing lock duration
    /// @param tokenId The token ID with invalid lock duration
    error XGT3OnlyIncreaseLockDuration(uint256 tokenId);

    /// @notice Error thrown when lock time has not expired
    error XGT3LockTimeNotExpired();

    /// @notice Error thrown when split amount exceeds balance
    error XGT3ExceedSplitAmount();

    /// @notice Error thrown when initializing with zero token address
    error XGT3InitTokenZero();

    /// @notice Error thrown when initializing with zero max duration
    error XGT3InitZeroMaxDuration();

    /// @notice Error thrown when voter is already set
    error XGT3VoterAlreadySetted();

    /// @notice Error thrown when attempting to use zero address
    error XGT3ZeroAddress();

    struct Point {
        int128 bias;
        int128 slope; // # -dweight / dt
        uint256 ts;
        uint256 blk; // block
    }

    struct LockedBalance {
        int128 amount;
        uint256 end;
    }

    enum DepositType {
        DEPOSIT_FOR_TYPE,
        CREATE_LOCK_TYPE,
        INCREASE_LOCK_AMOUNT,
        INCREASE_UNLOCK_TIME,
        MERGE_TYPE
    }

    /// @notice Returns the current token ID counter
    /// @return The latest token ID minted
    function tokenId() external view returns (uint256);

    /// @notice Returns the GT3 token address
    /// @return The address of the GT3 token contract
    function token() external view returns (address);

    /// @notice Returns the current total supply
    /// @return The current total supply of locked tokens
    function supply() external view returns (uint256);

    /// @notice Returns the voter contract address
    /// @return The address of the voter contract
    function voter() external view returns (address);

    /// @notice Returns the maximum lock duration allowed
    /// @return The maximum duration in seconds
    function maxDuration() external view returns (uint256);

    /// @notice Returns the current epoch number
    /// @return The current global epoch number
    function epoch() external view returns (uint256);

    /// @notice Returns the user point epoch for a token ID
    /// @param tokenId The token ID to query
    /// @return The current epoch number for the user's token
    function userPointEpoch(uint256 tokenId) external view returns (uint256);

    /// @notice Returns the slope changes at a specific timestamp
    /// @param time The timestamp to query
    /// @return The slope change value
    function slopeChanges(uint256 time) external view returns (int128);

    /// @notice Returns the block number when ownership changed for a token
    /// @param tokenId The token ID to query
    /// @return The block number of the last ownership change
    function ownershipChange(uint256 tokenId) external view returns (uint256);

    /// @notice Initializes the contract with initial parameters
    /// @param owner_ The initial owner address
    /// @param token_ The GT3 token address
    /// @param maxDuration_ The maximum lock duration allowed
    function initialize(address owner_, address token_, uint256 maxDuration_) external;

    /// @notice Returns the last slope for a given token ID
    /// @param tokenId The token ID to query
    /// @return The last slope value for the token
    function getLastUserSlope(uint256 tokenId) external view returns (int128);

    /// @notice Returns the timestamp of a user's point history
    /// @param tokenId The token ID to query
    /// @param idx The index in the point history array
    /// @return The timestamp of the user's point history
    function userPointHistoryTimestamp(uint256 tokenId, uint256 idx) external view returns (uint256);

    /// @notice Returns the end time of a locked position
    /// @param tokenId The token ID to query
    /// @return The end time of the locked position
    function lockedEnd(uint256 tokenId) external view returns (uint256);

    /// @notice Returns the voting units for a specific NFT
    /// @param tokenId The token ID to query
    /// @return The voting units for the specified NFT
    function getVotingUnitsNFT(uint256 tokenId) external view returns (uint256);

    /// @notice Returns the voting units for a specific NFT at a given timestamp
    /// @param tokenId The token ID to query
    /// @param timestamp The timestamp to query
    /// @return The voting units at the specified timestamp
    function getVotingUnitsNFTAt(uint256 tokenId, uint256 timestamp) external view returns (uint256);

    /// @notice Returns the total supply at current timestamp
    /// @return The current total supply
    function totalSupply() external view returns (uint256);

    /// @notice Returns the total supply at a specific timestamp
    /// @param timestamp The timestamp to query
    /// @return The total supply at the specified timestamp
    function totalSupplyAtTimestamp(uint256 timestamp) external view returns (uint256);

    /// @notice Checks if an address is approved or owner of a token
    /// @param spender The address to check
    /// @param tokenId The token ID to check
    /// @return True if the address is approved or owner
    function isApprovedOrOwner(address spender, uint256 tokenId) external view returns (bool);

    /// @notice Updates the voter contract address (owner only)
    /// @param voter_ The new voter contract address
    function updateVoter(address voter_) external;

    /// @notice Sets the initial voter contract address (can only be called once)
    /// @param voter_ The voter contract address to set
    function setVoter(address voter_) external;

    /// @notice Creates a checkpoint of the current state
    function checkpoint() external;

    /// @notice Creates a lock position with basic parameters
    /// @param value Amount of tokens to lock
    /// @param lockDuration Duration of the lock in seconds
    /// @return The ID of the newly created NFT
    function createLock(uint256 value, uint256 lockDuration) external returns (uint256);

    /// @notice Creates a lock position with permit
    /// @param value Amount of tokens to lock
    /// @param lockDuration Duration of the lock
    /// @param deadline Deadline for the permit
    /// @param v V parameter of the signature
    /// @param r R parameter of the signature
    /// @param s S parameter of the signature
    /// @return The ID of the newly created NFT
    function createLock(uint256 value, uint256 lockDuration, uint256 deadline, uint8 v, bytes32 r, bytes32 s)
        external
        returns (uint256);

    /// @notice Creates a lock position for another address
    /// @param value Amount of tokens to lock
    /// @param lockDuration Duration of the lock
    /// @param to Address that will own the NFT
    /// @param deadline Deadline for the permit
    /// @param v V parameter of the signature
    /// @param r R parameter of the signature
    /// @param s S parameter of the signature
    /// @return The ID of the newly created NFT
    function createLockFor(
        uint256 value,
        uint256 lockDuration,
        address to,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external returns (uint256);

    /// @notice Splits a locked position into two
    /// @param tokenId The token ID to split
    /// @param amount The amount to split off
    /// @return tokenId1 The ID of the original token
    /// @return tokenId2 The ID of the new token
    function split(uint256 tokenId, uint256 amount) external returns (uint256 tokenId1, uint256 tokenId2);

    /// @notice Deposits additional tokens into a locked position
    /// @param tokenId The token ID to deposit for
    /// @param value The amount to deposit
    function depositFor(uint256 tokenId, uint256 value) external;

    /// @notice Increases the unlock time for a locked position
    /// @param tokenId The token ID to modify
    /// @param lockDuration Additional duration to add to the lock
    function increaseUnlockTime(uint256 tokenId, uint256 lockDuration) external;

    /// @notice Merges two locked positions into one
    /// @param from Token ID to merge from
    /// @param to Token ID to merge into
    function merge(uint256 from, uint256 to) external;

    /// @notice Withdraws tokens from an expired lock
    /// @param tokenId The token ID to withdraw
    function withdraw(uint256 tokenId) external;

    /// @notice Creates a lock position for another address without permit
    /// @param value Amount of tokens to lock
    /// @param lockDuration Duration of the lock
    /// @param to Address that will own the NFT
    /// @return The ID of the newly created NFT
    function createLockFor(uint256 value, uint256 lockDuration, address to) external returns (uint256);

    /// @notice Deposits tokens with permit
    /// @param tokenId The token ID to deposit for
    /// @param value Amount of tokens to deposit
    /// @param deadline Deadline for the permit
    /// @param v V parameter of the signature
    /// @param r R parameter of the signature
    /// @param s S parameter of the signature
    function depositFor(uint256 tokenId, uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s) external;
}
