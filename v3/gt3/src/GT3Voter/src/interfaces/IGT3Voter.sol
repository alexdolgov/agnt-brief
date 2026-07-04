// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.24;

/// @title IGT3Voter Interface
/// @author gt3.finance
/// @notice Interface for the GT3 Voter contract that manages voting and reward distribution for liquidity pools
interface IGT3Voter {
    /// @notice Error when a gauge is already created for a pool
    /// @param pool The address of the pool
    error GT3VoterGaugeAlreadyCreated(address pool);

    /// @notice Error when a pool token is not whitelisted
    /// @param token The address of the token
    error GT3VoterPoolTokenNotWhitelisted(address token);

    /// @notice Error when a pool does not exist
    /// @param pool The address of the pool
    error GT3VoterPoolNotExist(address pool);

    /// @notice Error when an unauthorized address attempts an action
    /// @param sender The address of the sender
    /// @param tokenId The ID of the token
    error GT3VoterUnauthorized(address sender, uint256 tokenId);

    /// @notice Error when parameters are inconsistent
    error GT3VoterInconsistentParams();

    /// @notice Error when a pool has already been voted on
    /// @param pool The address of the pool
    error GT3VoterPoolAlreadyVoted(address pool);

    /// @notice Error when the pool weight is zero
    /// @param pool The address of the pool
    error GT3VoterZeroPoolWeight(address pool);

    /// @notice Error when the pair does not have a gauge
    /// @param pair The address of the pair
    error GT3VoterNotAGauge(address pair);

    /// @notice Error when the sender is not a gauge
    /// @param sender The address of the sender
    error GT3VoterSenderIsNotGauge(address sender);

    /// @notice Error when the caller is not the minter
    /// @param sender The address of the sender
    error GT3VoterOnlyMinter(address sender);

    /// @notice Error when the caller is not the owner or pair factory
    /// @param sender The address of the sender
    error GT3VoterOnlyOwnerOrPairFactory(address sender);

    /// @notice Emitted when a new gauge is created
    /// @param gauge The address of the gauge
    /// @param creator The address of the creator
    /// @param bribe The address of the bribe
    /// @param pool The address of the pool
    event GaugeCreated(address indexed gauge, address creator, address indexed bribe, address indexed pool);

    /// @notice Emitted when a vote is cast
    /// @param voter The address of the voter
    /// @param pool The address of the pool
    /// @param tokenId The ID of the token
    /// @param weight The weight of the vote
    event Voted(address indexed voter, address indexed pool, uint256 tokenId, uint256 weight);

    /// @notice Emitted when a vote is reset
    /// @param pool The address of the pool
    /// @param tokenId The ID of the token
    /// @param weight The weight of the vote
    event Abstained(address indexed pool, uint256 tokenId, uint256 weight);

    /// @notice Emitted when a reward is notified
    /// @param sender The address of the sender
    /// @param reward The address of the reward
    /// @param amount The amount of the reward
    event NotifyReward(address indexed sender, address indexed reward, uint256 amount);

    /// @notice Emitted when a reward for some gauge is notified
    /// @param gauge The address of the gauge
    /// @param sender The address of the sender
    /// @param amount The amount of the reward
    event GaugeNotifyReward(address indexed gauge, address indexed sender, uint256 amount);

    /// @notice Emitted when a reward is distributed
    /// @param sender The address of the sender
    /// @param gauge The address of the gauge
    /// @param amount The amount of the reward
    event DistributeReward(address indexed sender, address indexed gauge, uint256 amount);

    /// @notice Returns the address of the GT3 token
    /// @return The address of the GT3 token
    function gt3() external view returns (address);

    /// @notice Returns the gauge address for a given pool
    /// @param pool The address of the pool
    /// @return The address of the gauge
    function gauges(address pool) external view returns (address);

    /// @notice Returns the bribe address for a given gauge
    /// @param gauge The address of the gauge
    /// @return The address of the bribe
    function bribes(address gauge) external view returns (address);

    /// @notice Returns the address of the xGT3 token
    /// @return The address of the xGT3 token
    function xGt3() external view returns (address);

    /// @notice Returns the address of the minter
    /// @return The address of the minter
    function minter() external view returns (address);

    /// @notice Returns the total voting weight
    /// @return The total voting weight
    function totalWeight() external view returns (uint256);

    /// @notice Returns the current index
    /// @return The current index
    function index() external view returns (uint256);

    /// @notice Creates a new gauge for a pool
    /// @param pool The address of the pool
    /// @return The address of the created gauge
    function createGauge(address pool) external returns (address);

    /// @notice Distributes rewards to a gauge
    /// @param gauge The address of the gauge
    function distribute(address gauge) external;

    /// @notice Notifies the contract of a reward amount
    /// @param amount The amount of the reward
    function notifyRewardAmount(uint256 amount) external;

    /// @notice Checks if a token ID is currently voting
    /// @param tokenId The ID of the token
    /// @return True if the token ID is voting, false otherwise
    function isVoting(uint256 tokenId) external view returns (bool);

    /// @notice Returns the used weight for a token ID
    /// @param tokenId The ID of the token
    /// @return The used weight
    function usedWeights(uint256 tokenId) external view returns (uint256);

    /// @notice Resets the vote for a token ID
    /// @param tokenId The ID of the token
    function reset(uint256 tokenId) external;

    /// @notice Rebases the vote for a token ID
    /// @param tokenId The ID of the token
    function rebaseVote(uint256 tokenId) external;

    /// @notice Checks if a token ID has unclaimed bribes
    /// @param tokenId The ID of the token
    /// @return True if there are unclaimed bribes, false otherwise
    function hasUnclaimedBribes(uint256 tokenId) external view returns (bool);

    /// @notice Returns the length of the pools array
    /// @return The length of the pools array
    function poolsLength() external view returns (uint256);

    /// @notice Claims rewards from specified gauges
    /// @param gauges_ The array of gauge addresses
    function claimGaugesRewards(address[] memory gauges_) external;

    /// @notice Claims bribes rewards for a token ID
    /// @param bribes_ The array of bribe addresses
    /// @param tokens_ The array of token addresses for each bribe
    /// @param tokenId_ The ID of the token
    function claimBribesRewards(address[] memory bribes_, address[][] memory tokens_, uint256 tokenId_) external;

    /// @notice Give extra rewards to gauge
    /// @param gauge_ Address of the gauge to notifyReward
    /// @param amount_ Amount of rewards to notifyReward
    function gaugeNotifyReward(address gauge_, uint256 amount_) external;

    /// @notice Distributes rewards for all pools
    function distribute() external;

    /// @notice Distributes rewards for a range of pools
    /// @param start_ The start index of the range
    /// @param end_ The end index of the range
    function distribute(uint256 start_, uint256 end_) external;

    /// @notice Distributes rewards for specified gauges
    /// @param gauges_ The array of gauge addresses
    function distribute(address[] memory gauges_) external;

    /// @notice Updates all gauges
    function updateAll() external;

    /// @notice Updates a specific gauge
    /// @param gauge_ The address of the gauge
    function updateGauge(address gauge_) external;

    /// @notice Updates gauges for a range of pools
    /// @param start_ The start index of the range
    /// @param end_ The end index of the range
    function updateForRange(uint256 start_, uint256 end_) external;

    /// @notice Returns the pool associated with a gauge
    /// @param gauge The address of the gauge
    /// @return The address of the pool
    function poolForGauge(address gauge) external view returns (address);

    /// @notice Checks if an address is a valid gauge
    /// @param gauge The address to check
    /// @return True if the address is a valid gauge, false otherwise
    function isGauge(address gauge) external view returns (bool);

    /// @notice Returns the weight of votes for a pool
    /// @param pool The address of the pool
    /// @return The weight of votes
    function weights(address pool) external view returns (uint256);

    /// @notice Returns the supply index for a gauge
    /// @param gauge The address of the gauge
    /// @return The supply index
    function supplyIndex(address gauge) external view returns (uint256);

    /// @notice Returns the claimable amount for a gauge
    /// @param gauge The address of the gauge
    /// @return The claimable amount
    function claimable(address gauge) external view returns (uint256);

    /// @notice Returns the votes cast by a token ID for a pool
    /// @param tokenId The ID of the token
    /// @param pool The address of the pool
    /// @return The amount of votes cast
    function votes(uint256 tokenId, address pool) external view returns (uint256);

    /// @notice Returns a pool address by its index
    /// @param index The index of the pool
    /// @return The address of the pool
    function pools(uint256 index) external view returns (address);

    /// @notice Initializes the contract
    /// @param owner_ The address of the owner
    /// @param pairFactory_ The address of the pair factory
    /// @param xGt3_ The address of the xGT3 token
    /// @param gaugesFactory_ The address of the gauges factory
    /// @param bribesFactory_ The address of the bribes factory
    /// @param minter_ The address of the minter
    function initialize(
        address owner_,
        address pairFactory_,
        address xGt3_,
        address gaugesFactory_,
        address bribesFactory_,
        address minter_
    ) external;

    /// @notice Casts votes for pools with specified weights
    /// @param tokenId_ The ID of the token to vote with
    /// @param poolVote_ The array of pool addresses to vote for
    /// @param weights_ The array of weights for each pool
    function vote(uint256 tokenId_, address[] calldata poolVote_, uint256[] calldata weights_) external;
}
