// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IVeReppo {
    struct Lockup {
        /// @notice Amount of tokens staked
        uint128 amount;
        /// @notice End timestamp of the lockup
        uint48 end;
        /// @notice Whether the lockup is auto-relocking
        bool autoRelocking;
        /// @notice Staking points of the lockup
        /// @dev This is set to zero if the lockup is auto-relocking, in this case the points are calculated dynamically
        uint256 points;
    }

    /// @notice Emitted when a user votes for a pod
    /// @param user User who voted
    /// @param epoch Epoch in which the vote was cast
    /// @param podId Pod ID that was voted for
    /// @param votes Number of votes cast
    event Voted(address indexed user, uint256 indexed epoch, uint256 indexed podId, uint256 votes);

    /// @notice Emitted when the pod manager is updated
    /// @param newPodManager Address of the new pod manager
    event PodManagerUpdated(address indexed newPodManager);

    /// @notice Emitted when tokens are staked
    /// @param user Address of the staker
    /// @param to Address receiving the NFT
    /// @param tokenId Token ID of the created lockup
    /// @param amount Amount of tokens staked
    /// @param duration Duration of the lockup
    event Staked(address indexed user, address indexed to, uint256 indexed tokenId, uint256 amount, uint256 duration);

    /// @notice Emitted when more tokens are added to an existing stake
    /// @param user Address of the staker
    /// @param oldTokenId Token ID of the old lockup (burned)
    /// @param newTokenId Token ID of the new lockup
    /// @param additionalAmount Additional amount staked
    /// @param totalAmount Total amount after increase
    event StakeIncreased(
        address indexed user,
        uint256 indexed oldTokenId,
        uint256 indexed newTokenId,
        uint256 additionalAmount,
        uint256 totalAmount
    );

    /// @notice Emitted when a lockup duration is extended
    /// @param user Address of the lockup owner
    /// @param oldTokenId Token ID of the old lockup (burned)
    /// @param newTokenId Token ID of the new lockup
    /// @param newDuration New duration of the lockup
    /// @param newEnd New end timestamp
    event LockExtended(
        address indexed user,
        uint256 indexed oldTokenId,
        uint256 indexed newTokenId,
        uint256 newDuration,
        uint256 newEnd
    );

    /// @notice Emitted when auto-relocking status is changed
    /// @param user Address of the lockup owner
    /// @param oldTokenId Token ID of the old lockup (burned)
    /// @param newTokenId Token ID of the new lockup
    /// @param autoRelocking New auto-relocking status
    event AutoRelockingChanged(
        address indexed user, uint256 indexed oldTokenId, uint256 indexed newTokenId, bool autoRelocking
    );

    /// @notice Emitted when tokens are withdrawn from an expired lockup
    /// @param user Address of the withdrawer
    /// @param to Address receiving the withdrawn tokens
    /// @param tokenId Token ID of the withdrawn lockup
    /// @param amount Amount of tokens withdrawn
    event Withdrawn(address indexed user, address indexed to, uint256 indexed tokenId, uint256 amount);

    /// @notice Emitted when the base URI is updated
    /// @param newBaseURI New base URI
    event BaseURIUpdated(string indexed newBaseURI);

    /// @notice Emitted when the underlying token is set
    /// @param underlyingToken Address of the underlying token
    event UnderlyingTokenSet(address indexed underlyingToken);

    /// @notice Thrown when the caller is not the owner of the lockup
    error Unauthorized();
    /// @notice Thrown when the address is the zero address
    error ZeroAddress();
    /// @notice Thrown when the amount to be staked is zero
    error AmountZero();
    /// @notice Thrown when the staking points exceed the maximum points
    error ExceedsMaxPoints();
    /// @notice Thrown when the staking duration is too short
    error StakingTooShort();
    /// @notice Thrown when the staking duration is too long
    error StakingTooLong();
    /// @notice Thrown when the auto-relocking flag is set when extending the lockup
    error AutoRelocking();
    /// @notice Thrown when the lockup is greater than the new duration
    error DoesNotExtendLock();
    /// @notice Thrown when the auto-relocking flag is already set
    error NoAutoRelockingChange();
    /// @notice Thrown when the lockup is not expired
    error LockupNotExpired();
    /// @notice Already voted for this epoch
    error AlreadyVoted();
    /// @notice Exceeds remaining votes
    error ExceedsRemainingVotes();
    /// @notice Operation would leave insufficient voting power to cover already cast votes
    error InsufficientVotingPower();
    /// @notice Thrown when the lockup is not found
    error LockupNotFound();
    /// @notice Thrown when attempting to transfer a non-transferable token
    error NonTransferable();

    /// @notice Stake an amount for a given duration
    /// @param amount Amount to be staked
    /// @param duration Duration of the lockup
    /// @return tokenId Token id of the lockup
    function stake(uint256 amount, uint256 duration) external returns (uint256 tokenId);

    /// @notice Stake an amount for a given duration on behalf of another address
    /// @param amount Amount to be staked
    /// @param duration Duration of the lockup
    /// @param to Address to stake for
    /// @return tokenId Token id of the lockup
    /// @dev Locked tokens are transferred from the msg.sender address
    function stakeFor(uint256 amount, uint256 duration, address to) external returns (uint256 tokenId);

    /// @notice Stake more tokens into an existing lockup
    /// @param tokenId Token id of the lockup
    /// @param amount Amount to be staked
    /// @return newTokenId Token id of the new lockup
    /// @dev The old NFT is burned
    function stakeMore(uint256 tokenId, uint256 amount) external returns (uint256 newTokenId);

    /// @notice Extend the lockup for a given duration
    /// @param tokenId Token id of the lockup
    /// @param duration Duration to extend the lockup
    /// @return newTokenId Token id of the new lockup
    /// @dev The old NFT is burned
    function extendLock(uint256 tokenId, uint256 duration) external returns (uint256 newTokenId);

    /// @notice Set the auto-relocking flag for a lockup
    /// @param tokenId Token id of the lockup
    /// @param autoRelocking Whether to enable auto-relocking
    /// @return newTokenId Token id of the new lockup
    /// @dev The old NFT is burned
    function setAutoRelocking(uint256 tokenId, bool autoRelocking) external returns (uint256 newTokenId);

    /// @notice Withdraw tokens from an expired lockup
    /// @param tokenId Token id of the lockup to withdraw from
    /// @param to Address to send the withdrawn tokens to
    function withdraw(uint256 tokenId, address to) external;

    /// @notice Set the pod manager
    /// @param newPodManager Address of the new pod manager
    function setPodManager(address newPodManager) external;

    /// @notice Set the base URI
    /// @param newBaseURI New base URI
    function setBaseURI(string calldata newBaseURI) external;

    /// @notice Returns the voting power of an address
    /// @param user Address to get the voting power of
    /// @return votingPower Voting power of the address
    function votingPowerOf(address user) external view returns (uint256 votingPower);

    /// @notice Preview the number of points that would be returned for the
    /// given amount and duration.
    /// @param amount Amount to be staked
    /// @param duration Duration of the lockup
    /// @return points Staking points that would be returned
    /// @return end Staking period end date
    function previewPoints(uint256 amount, uint256 duration) external view returns (uint256 points, uint256 end);

    /// @notice Minimum lockup duration
    function minStakeDuration() external view returns (uint256);

    /// @notice Maximum lockup duration
    function maxStakeDuration() external view returns (uint256);

    /// @notice Returns the length of an epoch
    function epochLength() external view returns (uint256);

    /// @notice Returns the current epoch
    function currentEpoch() external view returns (uint256);

    /// @notice Returns the end timestamp of an epoch
    function epochEnd(uint256 epoch) external view returns (uint256);

    /// @notice Returns the lockup data for a given token ID
    /// @param tokenId Token ID to get the lockup data for
    /// @return lockup Lockup data structure
    function lockupData(uint256 tokenId) external view returns (Lockup memory lockup);
}
