// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.24;

/// @title IGT3Rebase Interface
/// @notice Interface for the GT3 Rebase contract that manages token distribution over epochs
interface IGT3Rebase {
    /// @notice Emitted when a checkpoint is created
    /// @param time The timestamp of the checkpoint
    /// @param tokens The amount of tokens distributed
    event CheckpointToken(uint256 time, uint256 tokens);

    /// @notice Emitted when tokens are claimed
    /// @param tokenId The ID of the token
    /// @param epochStart The start of the epoch
    /// @param epochEnd The end of the epoch
    /// @param amount The amount of tokens claimed
    event Claimed(uint256 indexed tokenId, uint256 indexed epochStart, uint256 indexed epochEnd, uint256 amount);

    /// @notice Emitted when the minter is updated
    /// @param minter The address of the new minter
    event UpdateMinter(address indexed minter);

    /// @notice Error when the caller is not the minter
    error NotMinter();

    /// @notice Error when the NFT is not managed or normal
    error NotManagedOrNormalNFT();

    /// @notice Error when the period is not updated
    error UpdatePeriod();

    /// @notice Initializes the contract
    /// @param owner The address of the owner
    /// @param xGt3 The address of the xGT3 token
    function initialize(address owner, address xGt3) external;

    /// @notice Creates a checkpoint for token distribution
    function checkpoint() external;

    /// @notice Returns the claimable amount for a token ID
    /// @param tokenId The ID of the token
    /// @return The amount of tokens claimable
    function claimable(uint256 tokenId) external view returns (uint256);

    /// @notice Claims tokens for a token ID
    /// @param tokenId The ID of the token
    /// @return The amount of tokens claimed
    function claim(uint256 tokenId) external returns (uint256);

    /// @notice Returns the address of the token
    /// @return The address of the token
    function token() external view returns (address);

    /// @notice Returns the address of the minter
    /// @return The address of the minter
    function minter() external view returns (address);

    /// @notice Returns the start time of the contract
    /// @return The start time
    function startTime() external view returns (uint256);

    /// @notice Returns the last checkpoint time
    /// @return The last checkpoint time
    function lastCheckpointTime() external view returns (uint256);

    /// @notice Returns the last balance of the token
    /// @return The last balance of the token
    function tokenLastBalance() external view returns (uint256);

    /// @notice Returns the time cursor for a token ID
    /// @param tokenId The ID of the token
    /// @return The time cursor
    function timeCursorOf(uint256 tokenId) external view returns (uint256);

    /// @notice Returns the tokens per epoch
    /// @param epoch The epoch index
    /// @return The tokens distributed in the epoch
    function tokensPerEpoch(uint256 epoch) external view returns (uint256);

    /// @notice Updates the minter address
    /// @param minter_ The new minter address
    /// @dev Can only be called by the owner
    function updateMinter(address minter_) external;
}
