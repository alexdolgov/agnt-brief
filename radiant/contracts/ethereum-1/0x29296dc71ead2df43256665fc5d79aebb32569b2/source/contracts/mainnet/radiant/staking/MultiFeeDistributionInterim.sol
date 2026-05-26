// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";

import {RecoverERC20} from "../libraries/RecoverERC20.sol";
import {IChefIncentivesController} from "../../interfaces/IChefIncentivesController.sol";
import {IBountyManager} from "../../interfaces/IBountyManager.sol";
import {IMultiFeeDistribution, IFeeDistribution} from "../../interfaces/IMultiFeeDistribution.sol";
import {IMintableToken} from "../../interfaces/IMintableToken.sol";
import {LockedBalance, Balances, Reward, EarnedBalance} from "../../interfaces/LockedBalance.sol";
import {IPriceProvider} from "../../interfaces/IPriceProvider.sol";

/// @title Multi Fee Distribution Interim Contract
/// @author Radiant
/// @dev Interim contract to process reward claims on-behalf users.
// All other functionality was removed to avoid keeping this implementation in the final version.
contract MultiFeeDistributionInterim is Initializable, PausableUpgradeable, OwnableUpgradeable, RecoverERC20 {
	using SafeERC20 for IERC20;
	using SafeERC20 for IMintableToken;

	address private _priceProvider;

	/********************** Constants ***********************/

	uint256 public constant QUART = 25000; //  25%
	uint256 public constant HALF = 65000; //  65%
	uint256 public constant WHOLE = 100000; // 100%

	// Maximum slippage allowed to be set by users (used for compounding).
	uint256 public constant MAX_SLIPPAGE = 9000; //10%
	uint256 public constant PERCENT_DIVISOR = 10000; //100%

	uint256 public constant AGGREGATION_EPOCH = 6 days;

	uint256 public constant RATIO_DIVISOR = 10000;

	address public constant REV_MANAGER = 0x8E0268c0C8c45691E4C62fDf8F440A47DD8a5E3f;
	address public constant EXECUTIONER = 0x63aAA6867d0697de09cf7050C045c44DeA8a5455;

	/// @notice Proportion of burn amount
	uint256 public burn;

	/// @notice Duration that rewards are streamed over
	uint256 public rewardsDuration;

	/// @notice Duration that rewards loop back
	uint256 public rewardsLookback;

	/// @notice Default lock index
	uint256 public constant DEFAULT_LOCK_INDEX = 1;

	/// @notice Duration of lock/earned penalty period, used for earnings
	uint256 public defaultLockDuration;

	/// @notice Duration of vesting RDNT
	uint256 public vestDuration;

	/// @notice Returns reward converter
	address public rewardConverter;

	/********************** Contract Addresses ***********************/

	/// @notice Address of CIC contract
	IChefIncentivesController public incentivesController;

	/// @notice Address of RDNT
	IMintableToken public rdntToken;

	/// @notice Address of LP token
	address public stakingToken;

	// Address of Lock Zapper
	address internal _lockZap;

	/********************** Lock & Earn Info ***********************/

	// Private mappings for balance data
	mapping(address => Balances) private _balances;
	mapping(address => LockedBalance[]) internal _userLocks;
	mapping(address => LockedBalance[]) private _userEarnings;

	/**
	 * @dev The following slot `autocompoundEnabled` was deprecated in an upgrade.
	 * Was: it allowed to know "who opted into autocompounding"
	 * Is: Autocompounded is enabled for all users by default and it can be disabled by the user
	 */
	mapping(address => bool) private _deprecatedAutocompoundEnabledSlot;

	mapping(address => uint256) public lastAutocompound;

	/// @notice Total locked value
	uint256 public lockedSupply;

	/// @notice Total locked value in multipliers
	uint256 public lockedSupplyWithMultiplier;

	// Time lengths
	uint256[] internal _lockPeriod;

	// Multipliers
	uint256[] internal _rewardMultipliers;

	/********************** Reward Info ***********************/

	/// @notice Reward tokens being distributed
	address[] public rewardTokens;

	/// @notice Reward data per token
	mapping(address => Reward) public rewardData;

	/// @notice user -> reward token -> rpt; RPT for paid amount
	mapping(address => mapping(address => uint256)) public userRewardPerTokenPaid;

	/// @notice user -> reward token -> amount; used to store reward amount
	mapping(address => mapping(address => uint256)) public rewards;

	/********************** Other Info ***********************/

	/// @notice DAO wallet
	address public daoTreasury;

	/// @notice treasury wallet
	address public starfleetTreasury;

	/// @notice Addresses approved to call mint
	mapping(address => bool) public minters;

	// Addresses to relock
	mapping(address => bool) public autoRelockDisabled;

	// Default lock index for relock
	mapping(address => uint256) public defaultLockIndex;

	/// @notice Flag to prevent more minter addings
	bool public mintersAreSet;

	/// @notice Last claim time of the user
	mapping(address => uint256) public lastClaimTime;

	/// @notice Bounty manager contract
	address public bountyManager;

	/// @notice Maximum slippage for each trade excepted by the individual user when performing compound trades
	mapping(address => uint256) public userSlippage;

	/// @notice Reward ratio for operation expenses
	uint256 public operationExpenseRatio;

	/// @notice Account where operational expenses are sent to
	address public operationExpenseReceiver;

	/// @notice Stores whether a token is being destibuted to dLP lockers
	mapping(address => bool) public isRewardToken;

	mapping(address => bool) public autocompoundDisabled;

	/********************** Events ***********************/

	event Locked(address indexed user, uint256 amount, uint256 lockedBalance, uint256 indexed lockLength, bool isLP);
	event Withdrawn(
		address indexed user,
		uint256 receivedAmount,
		uint256 lockedBalance,
		uint256 penalty,
		uint256 burn,
		bool isLP
	);
	event RewardPaid(address indexed user, address indexed rewardToken, uint256 reward);
	event Relocked(address indexed user, uint256 amount, uint256 lockIndex);
	event BountyManagerUpdated(address indexed _bounty);
	event RewardConverterUpdated(address indexed _rewardConverter);
	event LockTypeInfoUpdated(uint256[] lockPeriod, uint256[] rewardMultipliers);
	event AddressesUpdated(IChefIncentivesController _controller, address indexed _treasury);
	event LPTokenUpdated(address indexed _stakingToken);
	event RewardAdded(address indexed _rewardToken);
	event LockerAdded(address indexed locker);
	event LockerRemoved(address indexed locker);
	event RevenueEarned(address indexed asset, uint256 assetAmount);
	event OperationExpensesUpdated(address indexed _operationExpenses, uint256 _operationExpenseRatio);
	event NewTransferAdded(address indexed asset, uint256 lpUsdValue);
	event UserAutocompoundUpdated(address indexed user, bool indexed disabled);
	event UserSlippageUpdated(address indexed user, uint256 slippage);

	/********************** Errors ***********************/
	error AddressZero();
	error AmountZero();
	error InvalidBurn();
	error InvalidRatio();
	error InvalidLookback();
	error InvalidLockPeriod();
	error InsufficientPermission();
	error AlreadyAdded();
	error AlreadySet();
	error InvalidType();
	error ActiveReward();
	error InvalidAmount();
	error InvalidEarned();
	error InvalidTime();
	error InvalidPeriod();
	error UnlockTimeNotFound();
	error InvalidAddress();
	error InvalidAction();

	modifier onlyOwnerOrExecutioner() {
		if (msg.sender != owner() && msg.sender != EXECUTIONER) revert InsufficientPermission();
		_;
	}

	constructor() {
		_disableInitializers();
	}

	/********************** Setters ***********************/

	/**
	 * @notice Set minters
	 * @param minters_ array of address
	 */
	function setMinters(address[] calldata minters_) external onlyOwner {
		uint256 length = minters_.length;
		for (uint256 i; i < length; ) {
			if (minters_[i] == address(0)) revert AddressZero();
			minters[minters_[i]] = true;
			unchecked {
				i++;
			}
		}
		mintersAreSet = true;
	}

	/**
	 * @notice Remove an existing reward token.
	 * @param _rewardToken address to be removed
	 */
	function removeReward(address _rewardToken) external onlyOwnerOrExecutioner {
		bool isTokenFound;
		uint256 indexToRemove;

		uint256 length = rewardTokens.length;
		for (uint256 i; i < length; i++) {
			if (rewardTokens[i] == _rewardToken) {
				isTokenFound = true;
				indexToRemove = i;
				break;
			}
		}

		if (!isTokenFound) revert InvalidAddress();

		// Reward token order is changed, but that doesn't have an impact
		if (indexToRemove < length - 1) {
			rewardTokens[indexToRemove] = rewardTokens[length - 1];
		}

		rewardTokens.pop();

		// Scrub historical reward token data
		Reward storage rd = rewardData[_rewardToken];
		rd.lastUpdateTime = 0;
		rd.periodFinish = 0;
		rd.balance = 0;
		rd.rewardPerSecond = 0;
		rd.rewardPerTokenStored = 0;

		isRewardToken[_rewardToken] = false;
	}

	/*********************** Interim functions ***********************/

	/// @dev Interim method to process rewards on behalf users to complete Revenue Management purpose.
	function claimOnBehalPlatformAllRewards(
		address[] calldata users,
		address[] memory rewardAddrs
	) external onlyOwnerOrExecutioner {
		uint256 len = users.length;
		for (uint256 i; i < len; ) {
			_getRewardInternal(users[i], rewardAddrs);
			unchecked {
				i++;
			}
		}
	}

	/// @dev Interim method to swipe out to `REV_MANAGER` amounts remaining of removed rewards
	function sendDustToRevenueManagement(address[] memory rewardAddrs) external onlyOwnerOrExecutioner {
		uint256 len = rewardAddrs.length;
		for (uint256 i; i < len; ) {
			address token = rewardAddrs[i];
			if (!isRewardToken[token]) {
				uint256 balance = IERC20(token).balanceOf(address(this));
				if (balance > 0) {
					IERC20(token).safeTransfer(REV_MANAGER, balance);
				}
			}
			unchecked {
				i++;
			}
		}
	}

	/// @dev Interim method to process rewards on behalf users to complete Revenue Management purpose.
	function _getRewardInternal(address userId, address[] memory rewardTokens_) internal {
		_updateReward(userId);
		_getReward(userId, rewardTokens_);
		IPriceProvider(_priceProvider).update();
	}

	/********************** External functions ***********************/

	/**
	 * @notice Claim all pending staking rewards.
	 */
	function getAllRewards() external {
		return getReward(rewardTokens);
	}

	/********************** External View functions ***********************/

	/**
	 * @notice Return lock duration.
	 */
	function getLockDurations() external view returns (uint256[] memory) {
		return _lockPeriod;
	}

	/**
	 * @notice Return reward multipliers.
	 */
	function getLockMultipliers() external view returns (uint256[] memory) {
		return _rewardMultipliers;
	}

	/**
	 * @notice Returns all locks of a user.
	 * @param user address.
	 * @return lockInfo of the user.
	 */
	function lockInfo(address user) external view returns (LockedBalance[] memory) {
		return _userLocks[user];
	}

	/**
	 * @notice Total balance of an account, including unlocked, locked and earned tokens.
	 * @param user address.
	 */
	function totalBalance(address user) external view returns (uint256) {
		if (stakingToken == address(rdntToken)) {
			return _balances[user].total;
		}
		return _balances[user].locked;
	}

	/**
	 * @notice Returns price provider address
	 */
	function getPriceProvider() external view returns (address) {
		return _priceProvider;
	}

	/**
	 * @notice Reward amount of the duration.
	 * @param rewardToken for the reward
	 * @return reward amount for duration
	 */
	function getRewardForDuration(address rewardToken) external view returns (uint256) {
		return (rewardData[rewardToken].rewardPerSecond * rewardsDuration) / 1e12;
	}

	/**
	 * @notice Total balance of an account, including unlocked, locked and earned tokens.
	 * @param user address of the user for which the balances are fetched
	 */
	function getBalances(address user) external view returns (Balances memory) {
		return _balances[user];
	}

	/********************** Public functions ***********************/

	/**
	 * @notice Claim all pending staking rewards.
	 * @param rewardTokens_ array of reward tokens
	 */
	function getReward(address[] memory rewardTokens_) public {
		_updateReward(msg.sender);
		_getReward(msg.sender, rewardTokens_);
		IPriceProvider(_priceProvider).update();
	}

	/**
	 * @notice Information on a user's lockings
	 * @return total balance of locks
	 * @return unlockable balance
	 * @return locked balance
	 * @return lockedWithMultiplier
	 * @return lockData which is an array of locks
	 */
	function lockedBalances(
		address user
	)
		public
		view
		returns (
			uint256 total,
			uint256 unlockable,
			uint256 locked,
			uint256 lockedWithMultiplier,
			LockedBalance[] memory lockData
		)
	{
		LockedBalance[] storage locks = _userLocks[user];
		uint256 idx;
		uint256 length = locks.length;
		for (uint256 i; i < length; ) {
			if (locks[i].unlockTime > block.timestamp) {
				if (idx == 0) {
					lockData = new LockedBalance[](locks.length - i);
				}
				lockData[idx] = locks[i];
				idx++;
				locked = locked + locks[i].amount;
				lockedWithMultiplier = lockedWithMultiplier + (locks[i].amount * locks[i].multiplier);
			} else {
				unlockable = unlockable + locks[i].amount;
			}
			unchecked {
				i++;
			}
		}
		total = _balances[user].locked;
	}

	/**
	 * @notice Reward locked amount of the user.
	 * @param user address
	 * @return locked amount
	 */
	function lockedBalance(address user) public view returns (uint256 locked) {
		LockedBalance[] storage locks = _userLocks[user];
		uint256 length = locks.length;
		uint256 currentTimestamp = block.timestamp;
		for (uint256 i; i < length; ) {
			if (locks[i].unlockTime > currentTimestamp) {
				locked = locked + locks[i].amount;
			}
			unchecked {
				i++;
			}
		}
	}

	/**
	 * @notice Earnings which are vesting, and earnings which have vested for full duration.
	 * @dev Earned balances may be withdrawn immediately, but will incur a penalty between 25-90%, based on a linear schedule of elapsed time.
	 * @return totalVesting sum of vesting tokens
	 * @return unlocked earnings
	 * @return earningsData which is an array of all infos
	 */
	function earnedBalances(
		address user
	) public view returns (uint256 totalVesting, uint256 unlocked, EarnedBalance[] memory earningsData) {
		unlocked = _balances[user].unlocked;
		LockedBalance[] storage earnings = _userEarnings[user];
		uint256 idx;
		uint256 length = earnings.length;
		uint256 currentTimestamp = block.timestamp;
		for (uint256 i; i < length; ) {
			if (earnings[i].unlockTime > currentTimestamp) {
				if (idx == 0) {
					earningsData = new EarnedBalance[](earnings.length - i);
				}
				(, uint256 penaltyAmount, , ) = _ieeWithdrawableBalance(user, earnings[i].unlockTime);
				earningsData[idx].amount = earnings[i].amount;
				earningsData[idx].unlockTime = earnings[i].unlockTime;
				earningsData[idx].penalty = penaltyAmount;
				idx++;
				totalVesting = totalVesting + earnings[i].amount;
			} else {
				unlocked = unlocked + earnings[i].amount;
			}
			unchecked {
				i++;
			}
		}
		return (totalVesting, unlocked, earningsData);
	}

	/**
	 * @notice Final balance received and penalty balance paid by user upon calling exit.
	 * @dev This is earnings, not locks.
	 * @param user address.
	 * @return amount total withdrawable amount.
	 * @return penaltyAmount penalty amount.
	 * @return burnAmount amount to burn.
	 */
	function withdrawableBalance(
		address user
	) public view returns (uint256 amount, uint256 penaltyAmount, uint256 burnAmount) {
		uint256 earned = _balances[user].earned;
		if (earned > 0) {
			uint256 length = _userEarnings[user].length;
			for (uint256 i; i < length; ) {
				uint256 earnedAmount = _userEarnings[user][i].amount;
				if (earnedAmount == 0) continue;
				(, , uint256 newPenaltyAmount, uint256 newBurnAmount) = _penaltyInfo(_userEarnings[user][i]);
				penaltyAmount = penaltyAmount + newPenaltyAmount;
				burnAmount = burnAmount + newBurnAmount;
				unchecked {
					i++;
				}
			}
		}
		amount = _balances[user].unlocked + earned - penaltyAmount;
		return (amount, penaltyAmount, burnAmount);
	}

	/**
	 * @notice Returns reward applicable timestamp.
	 * @param rewardToken for the reward
	 * @return end time of reward period
	 */
	function lastTimeRewardApplicable(address rewardToken) public view returns (uint256) {
		uint256 periodFinish = rewardData[rewardToken].periodFinish;
		return block.timestamp < periodFinish ? block.timestamp : periodFinish;
	}

	/**
	 * @notice Reward amount per token
	 * @dev Reward is distributed only for locks.
	 * @param rewardToken for reward
	 * @return rptStored current RPT with accumulated rewards
	 */
	function rewardPerToken(address rewardToken) public view returns (uint256 rptStored) {
		rptStored = rewardData[rewardToken].rewardPerTokenStored;
		if (lockedSupplyWithMultiplier > 0) {
			uint256 newReward = (lastTimeRewardApplicable(rewardToken) - rewardData[rewardToken].lastUpdateTime) *
				rewardData[rewardToken].rewardPerSecond;
			rptStored = rptStored + ((newReward * 1e18) / lockedSupplyWithMultiplier);
		}
	}

	/**
	 * @notice Address and claimable amount of all reward tokens for the given account.
	 * @param account for rewards
	 * @return rewardsData array of rewards
	 */
	function claimableRewards(address account) public view returns (IFeeDistribution.RewardData[] memory rewardsData) {
		rewardsData = new IFeeDistribution.RewardData[](rewardTokens.length);

		uint256 length = rewardTokens.length;
		for (uint256 i; i < length; ) {
			rewardsData[i].token = rewardTokens[i];
			rewardsData[i].amount =
				_earned(
					account,
					rewardsData[i].token,
					_balances[account].lockedWithMultiplier,
					rewardPerToken(rewardsData[i].token)
				) /
				1e12;
			unchecked {
				i++;
			}
		}
		return rewardsData;
	}

	/********************** Internal functions ***********************/

	/**
	 * @notice Update user reward info.
	 * @param account address
	 */
	function _updateReward(address account) internal {
		uint256 balance = _balances[account].lockedWithMultiplier;
		uint256 length = rewardTokens.length;
		for (uint256 i = 0; i < length; ) {
			address token = rewardTokens[i];
			uint256 rpt = rewardPerToken(token);

			Reward storage r = rewardData[token];
			r.rewardPerTokenStored = rpt;
			r.lastUpdateTime = lastTimeRewardApplicable(token);

			if (account != address(this)) {
				rewards[account][token] = _earned(account, token, balance, rpt);
				userRewardPerTokenPaid[account][token] = rpt;
			}
			unchecked {
				i++;
			}
		}
	}

	/**
	 * @notice Add new reward.
	 * @dev If prev reward period is not done, then it resets `rewardPerSecond` and restarts period
	 * @param rewardToken address
	 * @param reward amount
	 */
	function _notifyReward(address rewardToken, uint256 reward) internal {
		address operationExpenseReceiver_ = operationExpenseReceiver;
		uint256 operationExpenseRatio_ = operationExpenseRatio;
		if (operationExpenseReceiver_ != address(0) && operationExpenseRatio_ != 0) {
			uint256 opExAmount = (reward * operationExpenseRatio_) / RATIO_DIVISOR;
			if (opExAmount != 0) {
				IERC20(rewardToken).safeTransfer(operationExpenseReceiver_, opExAmount);
				reward = reward - opExAmount;
			}
		}

		Reward storage r = rewardData[rewardToken];
		if (block.timestamp >= r.periodFinish) {
			r.rewardPerSecond = (reward * 1e12) / rewardsDuration;
		} else {
			uint256 remaining = r.periodFinish - block.timestamp;
			uint256 leftover = (remaining * r.rewardPerSecond) / 1e12;
			r.rewardPerSecond = ((reward + leftover) * 1e12) / rewardsDuration;
		}

		r.lastUpdateTime = block.timestamp;
		r.periodFinish = block.timestamp + rewardsDuration;
		r.balance = r.balance + reward;

		emit RevenueEarned(rewardToken, reward);

		uint256 lpUsdValue = IPriceProvider(_priceProvider).getRewardTokenPrice(rewardToken, reward);
		emit NewTransferAdded(rewardToken, lpUsdValue);
	}

	/**
	 * @notice Notify unseen rewards.
	 * @dev for rewards other than RDNT token, every 24 hours we check if new
	 *  rewards were sent to the contract or accrued via aToken interest.
	 * @param token address
	 */
	function _notifyUnseenReward(address token) internal {
		if (token == address(0)) revert AddressZero();
		if (token == address(rdntToken)) {
			return;
		}
		Reward storage r = rewardData[token];
		uint256 periodFinish = r.periodFinish;
		if (periodFinish == 0) revert InvalidPeriod();
		if (periodFinish < block.timestamp + rewardsDuration - rewardsLookback) {
			uint256 unseen = IERC20(token).balanceOf(address(this)) - r.balance;
			if (unseen > 0) {
				_notifyReward(token, unseen);
			}
		}
	}

	/**
	 * @notice User gets reward
	 * @param user address
	 * @param rewardTokens_ array of reward tokens
	 */
	function _getReward(address user, address[] memory rewardTokens_) internal whenNotPaused {
		uint256 length = rewardTokens_.length;
		IChefIncentivesController chefIncentivesController = incentivesController;
		chefIncentivesController.setEligibilityExempt(user, true);
		for (uint256 i; i < length; ) {
			address token = rewardTokens_[i];
			_notifyUnseenReward(token);
			uint256 reward = rewards[user][token] / 1e12;
			if (reward > 0) {
				rewards[user][token] = 0;
				rewardData[token].balance = rewardData[token].balance - reward;

				IERC20(token).safeTransfer(user, reward);
				emit RewardPaid(user, token, reward);
			}
			unchecked {
				i++;
			}
		}
		chefIncentivesController.setEligibilityExempt(user, false);
		chefIncentivesController.afterLockUpdate(user);
	}

	/********************** Internal View functions ***********************/

	/**
	 * @notice Returns withdrawable balance at exact unlock time
	 * @param user address for withdraw
	 * @param unlockTime exact unlock time
	 * @return amount total withdrawable amount
	 * @return penaltyAmount penalty amount
	 * @return burnAmount amount to burn
	 * @return index of earning
	 */
	function _ieeWithdrawableBalance(
		address user,
		uint256 unlockTime
	) internal view returns (uint256 amount, uint256 penaltyAmount, uint256 burnAmount, uint256 index) {
		uint256 length = _userEarnings[user].length;
		for (index; index < length; ) {
			if (_userEarnings[user][index].unlockTime == unlockTime) {
				(amount, , penaltyAmount, burnAmount) = _penaltyInfo(_userEarnings[user][index]);
				return (amount, penaltyAmount, burnAmount, index);
			}
			unchecked {
				index++;
			}
		}
		revert UnlockTimeNotFound();
	}

	/**
	 * @notice Calculate earnings.
	 * @param user address of earning owner
	 * @param rewardToken address
	 * @param balance of the user
	 * @param currentRewardPerToken current RPT
	 * @return earnings amount
	 */
	function _earned(
		address user,
		address rewardToken,
		uint256 balance,
		uint256 currentRewardPerToken
	) internal view returns (uint256 earnings) {
		earnings = rewards[user][rewardToken];
		uint256 realRPT = currentRewardPerToken - userRewardPerTokenPaid[user][rewardToken];
		earnings = earnings + ((balance * realRPT) / 1e18);
	}

	/**
	 * @notice Penalty information of individual earning
	 * @param earning earning info.
	 * @return amount of available earning.
	 * @return penaltyFactor penalty rate.
	 * @return penaltyAmount amount of penalty.
	 * @return burnAmount amount to burn.
	 */
	function _penaltyInfo(
		LockedBalance memory earning
	) internal view returns (uint256 amount, uint256 penaltyFactor, uint256 penaltyAmount, uint256 burnAmount) {
		if (earning.unlockTime > block.timestamp) {
			// 90% on day 1, decays to 25% on day 90
			penaltyFactor = ((earning.unlockTime - block.timestamp) * HALF) / vestDuration + QUART; // 25% + timeLeft/vestDuration * 65%
			penaltyAmount = (earning.amount * penaltyFactor) / WHOLE;
			burnAmount = (penaltyAmount * burn) / WHOLE;
		}
		amount = earning.amount - penaltyAmount;
	}
}
