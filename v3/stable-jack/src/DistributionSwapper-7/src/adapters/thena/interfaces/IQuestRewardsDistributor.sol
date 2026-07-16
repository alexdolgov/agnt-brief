//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

interface IQuestRewardsDistributor {
    // Events

    /**
     * @notice Event emitted when a user Claims
     */
    event Claimed(
        uint256 indexed questID,
        uint256 indexed period,
        uint256 index,
        uint256 amount,
        address rewardToken,
        address indexed account
    );
    /**
     * @notice Event emitted when a New Quest is added
     */
    event NewQuest(uint256 indexed questID, address rewardToken);
    /**
     * @notice Event emitted when a Period of a Quest is updated (when the Merkle Root is added)
     */
    event QuestPeriodUpdated(uint256 indexed questID, uint256 indexed period, bytes32 merkleRoot);
    /**
     * @notice Event emitted when the Loot Creator address is updated
     */
    event LootCreatorUpdated(address indexed oldCreator, address indexed newCreator);

    // Functions

    /**
     * @notice Checks if the rewards were claimed for a user on a given period
     * @dev Checks if the rewards were claimed for a user (based on the index) on a given period
     * @param questID ID of the Quest
     * @param period Amount of underlying to borrow
     * @param index Index of the claim
     * @return bool : true if already claimed
     */
    function isClaimed(uint256 questID, uint256 period, uint256 index) external view returns (bool);

    //Basic Claim
    /**
     * @notice Claims the reward for a user for a given period of a Quest
     * @dev Claims the reward for a user for a given period of a Quest if the correct proof was given
     * @param questID ID of the Quest
     * @param period Timestamp of the period
     * @param index Index in the Merkle Tree
     * @param account Address of the user claiming the rewards
     * @param amount Amount of rewards to claim
     * @param merkleProof Proof to claim the rewards
     */
    function claim(
        uint256 questID,
        uint256 period,
        uint256 index,
        address account,
        uint256 amount,
        bytes32[] calldata merkleProof
    ) external;

    //Struct ClaimParams
    struct ClaimParams {
        uint256 questID;
        uint256 period;
        uint256 index;
        uint256 amount;
        bytes32[] merkleProof;
    }

    //Multi Claim
    /**
     * @notice Claims multiple rewards for a given list
     * @dev Calls the claim() method for each entry in the claims array
     * @param account Address of the user claiming the rewards
     * @param claims List of ClaimParams struct data to claim
     */
    function multiClaim(address account, ClaimParams[] calldata claims) external;

    //FullQuest Claim (form of Multi Claim but for only one Quest => only one ERC20 transfer)
    //Only works for the given periods (in ClaimParams) for the Quest. Any omitted period will be skipped
    /**
     * @notice Claims the reward for all the given periods of a Quest, and transfer all the rewards at once
     * @dev Sums up all the rewards for given periods of a Quest, and executes only one transfer
     * @param account Address of the user claiming the rewards
     * @param questID ID of the Quest
     * @param claims List of ClaimParams struct data to claim
     */
    function claimQuest(address account, uint256 questID, ClaimParams[] calldata claims) external;

    /**
     * @notice Returns all current Closed periods for the given Quest ID
     * @dev Returns all current Closed periods for the given Quest ID
     * @param questID ID of the Quest
     * @return uint256[] : List of closed periods
     */
    function getClosedPeriodsByQuests(uint256 questID) external view returns (uint256[] memory);
}
