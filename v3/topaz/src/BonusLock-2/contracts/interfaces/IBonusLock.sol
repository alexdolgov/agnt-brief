// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {ITopaz} from "./ITopaz.sol";
import {IVotingEscrow} from "./IVotingEscrow.sol";

interface IBonusLock {
    error InvalidParams();
    error InvalidRecipient();
    error NoVeNFTDeposited();
    error InsufficientBalance();
    error SplitNotEnabled();
    error SplitFailed();
    error NotOwned();
    error NotNormalEscrow();
    error ContractPaused();
    error NotPaused();
    error ZeroAmount();
    error ZeroAddress();
    error AllTiersExhausted();
    error InvalidTier();
    error NotStarted();

    event VeNFTDeposited(uint256 indexed tokenId, uint256 amount);
    event VeNFTWithdrawn(uint256 indexed tokenId, address indexed recipient);
    event VeNFTSwapped(uint256 indexed oldTokenId, uint256 indexed newTokenId, uint256 newBalance);
    event BonusLocked(
        address indexed user,
        uint256 indexed tokenId,
        uint256 userAmount,
        uint256 bonusAmount
    );
    event BonusLockedWithExisting(
        address indexed user,
        uint256 indexed tokenId,
        uint256 freshAmount,
        uint256 bonusAmount
    );
    event TierAdvanced(uint256 indexed oldTier, uint256 indexed newTier);
    event Paused(address account);
    event Unpaused(address account);
    event TokenRecovered(uint256 indexed tokenId, address indexed recipient);

    /// @notice Interface of Topaz.sol
    function topaz() external view returns (ITopaz);

    /// @notice Interface of IVotingEscrow.sol
    function ve() external view returns (IVotingEscrow);

    /// @notice The tokenId of the deposited protocol veNFT
    function depositedTokenId() external view returns (uint256);

    /// @notice Remaining balance available for bonuses in the current protocol veNFT
    function remainingBalance() external view returns (uint256);

    /// @notice Whether the contract is paused
    function paused() external view returns (bool);

    /// @notice Total bonus TOPAZ distributed across all locks
    function totalBonusDistributed() external view returns (uint256);

    /// @notice Number of bonus tiers
    function NUM_TIERS() external pure returns (uint256);

    /// @notice Maximum total bonus that can ever be distributed (50M TOPAZ)
    function TOTAL_BONUS_CAP() external pure returns (uint256);

    /// @notice Timestamp when the bonus promotion starts
    function START_TIME() external pure returns (uint256);

    /// @notice Current bonus percentage in basis points based on active tier
    function bonusPercentage() external view returns (uint256);

    /// @notice Index of the currently active tier (0-6), or NUM_TIERS if all exhausted
    function currentTier() external view returns (uint256);

    /// @notice Get tier configuration
    /// @param _tier Tier index (0-6)
    /// @return percentage Bonus percentage in basis points
    /// @return available Total bonus available at this tier
    /// @return cumulativeCeiling Cumulative bonus ceiling through this tier
    function tierInfo(uint256 _tier) external pure returns (uint256 percentage, uint256 available, uint256 cumulativeCeiling);

    /// @notice Remaining bonus available in a specific tier
    /// @param _tier Tier index (0-6)
    function tierRemaining(uint256 _tier) external view returns (uint256);

    /// @notice Bonus distributed so far in the current tier
    function currentTierDistributed() external view returns (uint256);

    /// @notice Total bonus remaining across all tiers
    function totalBonusRemaining() external view returns (uint256);

    /// @notice Calculate the bonus amount for a given deposit, accounting for tier progression
    /// @param _amount The amount of TOPAZ to lock
    /// @return bonus The bonus amount that would be applied
    function calculateBonus(uint256 _amount) external view returns (uint256 bonus);

    /// @notice Lock fresh TOPAZ and receive a permanent veNFT with bonus
    /// @param _amount Amount of TOPAZ to lock
    /// @return tokenId The resulting veNFT token ID sent to the user
    function lock(uint256 _amount) external returns (uint256 tokenId);

    /// @notice Lock fresh TOPAZ into an existing veNFT and receive bonus
    /// @param _tokenId Existing veNFT to augment (caller must approve this contract)
    /// @param _amount Amount of fresh TOPAZ to add
    /// @return tokenId The resulting veNFT token ID (same as _tokenId)
    function lockWithExisting(uint256 _tokenId, uint256 _amount) external returns (uint256 tokenId);

    /// @notice Deposit a permanent veNFT as the protocol bonus pool
    /// @param _tokenId The permanent veNFT to deposit
    function depositVeNFT(uint256 _tokenId) external;

    /// @notice Withdraw the protocol veNFT
    /// @param _recipient Address to receive the veNFT
    function withdrawVeNFT(address _recipient) external;

    /// @notice Atomically swap the protocol veNFT for a new one (no downtime)
    /// @param _newTokenId The new permanent veNFT to deposit
    function swapVeNFT(uint256 _newTokenId) external;

    /// @notice Re-sync remainingBalance with the actual veNFT locked amount (picks up rebases)
    function refreshBalance() external;

    /// @notice Pause the contract (blocks user locks)
    function pause() external;

    /// @notice Unpause the contract
    function unpause() external;

    /// @notice Recover a stuck veNFT (not the protocol lock)
    /// @param _tokenId Token to recover
    /// @param _recipient Recipient address
    function recoverToken(uint256 _tokenId, address _recipient) external;
}
