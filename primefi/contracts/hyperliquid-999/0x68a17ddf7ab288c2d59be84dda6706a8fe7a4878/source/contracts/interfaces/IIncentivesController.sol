// SPDX-License-Identifier: MIT
pragma solidity 0.8.27;

import "./IOnwardIncentivesController.sol";

enum Token {
	INVALID_TOKEN,
	PRFI,
	USDC,
	USDT,
	USDT0,
	BUSD,
	DAI,
	ETH,
	WSTETH,
	UETH,
	WBTC,
	UBTC,
	CBBTC,
	BNB,
	HYPE,
	WSTHYPE,
	KHYPE,
	XDC,
	PSXDC,
	ARB,
	EXTRA_TOKEN1,
	EXTRA_TOKEN2,
	EXTRA_TOKEN3,
	EXTRA_TOKEN4,
	EXTRA_TOKEN5,
	EXTRA_TOKEN6,
	EXTRA_TOKEN7,
	EXTRA_TOKEN8,
	EXTRA_TOKEN9,
	EXTRA_TOKEN10,
	EXTRA_TOKEN11,
	EXTRA_TOKEN12,
	EXTRA_TOKEN13,
	EXTRA_TOKEN14,
	EXTRA_TOKEN15
}

enum ActionType {
	UpdateBalance,
	UpdateEligibility,
	Claim
}

struct UserData {
	address user;
	uint256 amount;
}

struct TokenData {
	address underlyingAsset;
	address aToken;
	uint256 totalSupply;
}

// Info of each pool.
struct PoolInfo {
	uint256 totalSupply;
	uint256 allocPoint; // How many allocation points assigned to this pool.
	uint256 lastRewardTime; // Last second that reward distribution occurs.
	uint256 accRewardPerShare; // Accumulated rewards per share, times ACC_REWARD_PRECISION. See below.
	IOnwardIncentivesController onwardIncentives;
}

// Info of each user.
// reward = user.`amount` * pool.`accRewardPerShare` - `rewardDebt`
struct UserInfo {
	uint256 amount;
	uint256 rewardDebt;
	uint256 lastClaimTime;
}

interface IIncentivesController {
	/// @notice Event emitted when the bounty manager is updated
	event BountyManagerUpdated(address indexed bountyManager);

	/// @notice Error emitted when the caller is not the pool configurator
	error NotAllowed();

	/// @notice Error emitted when there is nothing to vest
	error NothingToVest();

	/// @notice Error emitted when the caller is not the MFD
	error NotMFD();

	/// @notice Error emitted when the caller is not the RToken or MFD
	error NotRTokenOrMfd();

	/// @notice Error emitted when the caller is not the bounty manager
	error BountyOnly();

	/// @notice Only the sidechain can call the function
	error OnlySidechain();

	/// @notice Only the main chain can call the function
	error OnlyMainChain();

	/// @notice Only the ChefIncentivesController can call the function
	error OnlyChefIncentivesController();

	/// @notice Zero address
	error ZeroAddress();

	/// @notice Insufficient fee
	error InsufficientFee();

	/// @notice Invalid length
	error InvalidLength();

	/// @notice Invalid chain id
	error InvalidChain();

	/// @notice Emitted when the selected action is invalid
	error InvalidAction();

	/// @notice Unknown pool
	error UnknownPool();

	/// @notice Out of rewards
	error OutOfRewards();

	/// @notice Pool already exists
	error PoolAlreadyExists();

	/// @notice Invalid oracle price
	error InvalidOraclePrice();

	/// @notice Stale price
	error StalePrice();

	/// @notice Incomplete round
	error IncompleteRound();

	/// @notice Not eligible for rewards
	error NotEligible();

	/// @notice Zero value error
	error ZeroValue();

	/// @notice Emitted when the bounty manager is updated
	event Disqualified(address indexed user);

	/// @notice Reward paid
	event RewardPaid(address indexed user, uint256 reward);

	/// @notice Batch alloc points updated
	event BatchAllocPointsUpdated(address[] tokens, uint256[] allocPoints);

	/// @notice PRFI token updated
	event PrfiTokenUpdated(address oldToken, address newToken);

	/// @notice MFD updated
	event MfdUpdated(address oldMfd, address newMfd);

	/// @notice Reward minter set
	event RewardMinterSet(address rewardMinter);

	/// @notice Pool configurator set
	event PoolConfiguratorSet(address poolConfigurator);

	/// @notice Token aggregator updated
	event TokenAggregatorUpdated(Token token, address aggregator);

	/// @notice Token aggregator removed
	event TokenAggregatorRemoved(Token token);

	/// @notice Main chain updated
	event MainChainUpdated(uint32 oldChain, uint32 newChain);

	/// @notice PRFI per second changed
	event PrfiPerSecondChanged(uint256 oldRate, uint256 newRate);

	/// @notice Update oracle period
	event UpdateOraclePeriod(uint256 newPeriod);

	/// @notice Eligibility data provider set
	event EligibilityDataProviderSet(address indexed eligibilityDataProvider);
}
