// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title IRewardAdapter
/// @notice Interface for DEX-specific staking reward adapters
/// @dev Adapters handle staking operations for reward programs (Aerodrome gauges, PancakeSwap MasterChef, etc.)
interface IRewardAdapter {
    // ═══════════════════════════════════════════════════════════════════════════
    // EVENTS
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Emitted when a position is staked
    event Staked(uint256 indexed tokenId, address indexed stakingContract);

    /// @notice Emitted when a position is unstaked
    event Unstaked(uint256 indexed tokenId, address indexed stakingContract);

    /// @notice Emitted when rewards are claimed
    event RewardsClaimed(uint256 indexed tokenId, address indexed recipient, uint256 amount);

    // ═══════════════════════════════════════════════════════════════════════════
    // FUNCTIONS
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice The reward token address (AERO, CAKE, etc.)
    /// @return The reward token address
    function rewardToken() external view returns (address);

    /// @notice Stake a position NFT to earn rewards
    /// @dev The position NFT must be transferred to the adapter first
    /// @param tokenId The position NFT token ID
    function stake(uint256 tokenId) external;

    /// @notice Unstake a position NFT
    /// @dev Returns the NFT to the caller
    /// @param tokenId The position NFT token ID
    function unstake(uint256 tokenId) external;

    /// @notice Claim pending rewards and send to recipient
    /// @param tokenId The position NFT token ID
    /// @param recipient Address to receive the rewards
    /// @return earned Amount of staking rewards claimed (AERO/CAKE/etc)
    /// @return fees0 Amount of token0 trading fees collected
    /// @return fees1 Amount of token1 trading fees collected
    function claimRewards(uint256 tokenId, address recipient) external returns (uint256 earned, uint256 fees0, uint256 fees1);

    /// @notice View pending rewards for a position
    /// @param tokenId The position NFT token ID
    /// @return amount Pending reward amount
    function pendingRewards(uint256 tokenId) external view returns (uint256 amount);

    /// @notice Check if a position is currently staked
    /// @param tokenId The position NFT token ID
    /// @return True if staked, false otherwise
    function isStaked(uint256 tokenId) external view returns (bool);

    /// @notice Get the staking contract address (gauge, MasterChef, etc.)
    /// @param pool The pool address
    /// @return The staking contract address, or address(0) if none
    function getStakingContract(address pool) external view returns (address);

    /// @notice Check if the vault must call the staking contract directly (not through adapter)
    /// @dev PancakeSwap MasterChef V3 requires the depositor to be msg.sender for harvest/collect
    ///      Aerodrome gauges don't have this restriction
    /// @return needsDirectCall True if the vault must call staking contract directly
    /// @return stakingContract The staking contract address to call (if needsDirectCall is true)
    function requiresDirectCall() external view returns (bool needsDirectCall, address stakingContract);

    /// @notice Validate that a pool can be staked (gauge exists, MasterChef registered, etc.)
    /// @dev Called by AdminSatellite.addPool() to fail early if staking would fail later
    ///      Each adapter implements DEX-specific validation:
    ///      - Aerodrome: checks gauge exists and is alive
    ///      - PancakeSwap: checks pool is in MasterChef with non-zero allocPoint
    /// @param pool The pool address to validate
    function validatePool(address pool) external view;
}
