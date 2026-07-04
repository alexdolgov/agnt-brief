// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "solady/src/accounts/Receiver.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

import "./interfaces/aerodrome/INonfungiblePositionManager.sol";
import "./interfaces/aerodrome/ISugarHelper.sol";

import "./rewards/SDAOSimpleRewardAPI.sol";
import "./utils/Clonable.sol";

/**
 * @title SFILockedStakingAerodromeV3
 * @notice Locked staking contract for Aerodrome V3 LP NFT positions.
 *
 * Users lock their Aerodrome V3 NFT positions for a chosen period to earn staking rewards.
 * A score is computed as `liquidity * lockingPeriod` and determines each user's share of rewards.
 *
 * Key mechanics:
 *  1. Users deposit Aerodrome V3 NFT positions and lock them for a chosen period.
 *  2. Users can extend their locking period to increase their score.
 *  3. Users can withdraw after unlock or early-withdraw with a per-day fee deducted from liquidity.
 *  4. Accumulated trading fees from positions can be claimed independently of staking rewards.
 *  5. Staking rewards are distributed proportionally based on each user's score relative to totalScore.
 */
contract SFILockedStakingAerodromeV3 is Clonable, ReentrancyGuard, Receiver {
	using SafeERC20 for IERC20;
	using EnumerableSet for EnumerableSet.UintSet;

	/// @notice Maximum basis points denominator (100.00%).
	uint256 public constant MAX_PERCENTAGE = 10000;

	/// @notice Maximum early unlock fee cap (50.00%).
	uint256 public constant MAX_EARLY_UNLOCK_FEE = 5000;

	/// @notice Maximum allowed locking period in seconds, set during initialization.
	uint256 public MAX_LOCKING_PERIOD;

	/// @notice Maximum allowed early unlock fee per day in basis points, set during initialization.
	uint256 public MAX_EARLY_UNLOCK_FEE_PER_DAY;

	/// @notice Per-user staking information.
	struct UserInfo {
		uint128 amount; // Total liquidity the user has staked.
		uint256 lockDate; // Timestamp of the user's last deposit or extension.
		uint256 unlockDate; // Timestamp when the user's funds become unlocked.
		uint256 score; // Cumulative score: sum of (liquidity * lockingPeriod) across deposits.
	}

	/// @notice Staking info for each user address.
	mapping(address => UserInfo) public userInfo;

	/// @notice Staked NFT token IDs per user.
	mapping(address => EnumerableSet.UintSet) private tokenIds;

	/// @notice Whether new deposits are currently accepted.
	bool public depositsEnabled;

	/// @notice Address of the ERC-20 reward token.
	address public rewardToken;

	/// @notice Address of the rewards distribution module.
	address public rewardsAPI;

	/// @notice Sum of all users' scores, used as the reward distribution denominator.
	uint256 public totalScore;

	/// @notice Early unlock fee rate per day in basis points (e.g. 5 = 0.05%).
	uint256 public earlyUnlockFeePerDay;

	/// @notice Aerodrome SugarHelper address used to query pending trading fees.
	address public sugarHelper;

	/// @notice Aerodrome V3 pool identification parameters.
	struct PoolInfo {
		address nftManager; // Aerodrome NonfungiblePositionManager address.
		address token0; // Pool token0 address.
		address token1; // Pool token1 address.
		int24 tickSpacing; // Pool tick spacing (identifies the fee tier).
	}

	/// @notice Pool configuration set during initialization.
	PoolInfo public poolInfo;

	/// @param user The depositor address.
	/// @param tokenId The NFT position token ID deposited.
	/// @param amount The liquidity amount of the deposited position.
	/// @param lockingPeriod The locking duration in seconds.
	event Deposit(address indexed user, uint256 tokenId, uint256 amount, uint256 lockingPeriod);

	/// @param user The withdrawing user address.
	/// @param tokenId The NFT position token ID withdrawn.
	event Withdraw(address indexed user, uint256 tokenId);

	/// @param user The claiming user address.
	/// @param claimed The amount of reward tokens claimed.
	event Claimed(address indexed user, uint256 claimed);

	/// @param user The user who paid the early unlock fee.
	/// @param fee0 The amount of token0 deducted as fee.
	/// @param fee1 The amount of token1 deducted as fee.
	/// @param secondsUntilUnlock The remaining seconds until the original unlock date.
	event PaidEarlyUnlockFee(address indexed user, uint256 fee0, uint256 fee1, uint256 secondsUntilUnlock);

	/// @param admin The owner who collected fees.
	/// @param fees0 The amount of token0 collected.
	/// @param fees1 The amount of token1 collected.
	event CollectedFees(address admin, uint256 fees0, uint256 fees1);

	/// @param user The user who received trading fees.
	/// @param fees0 The amount of token0 returned.
	/// @param fees1 The amount of token1 returned.
	event ReturnedTradingFees(address indexed user, uint256 fees0, uint256 fees1);

	/// @param admin The owner who toggled deposits.
	/// @param depositsEnabled The new deposits enabled state.
	event SetDepositsEnabled(address admin, bool depositsEnabled);

	/// @param admin The owner who changed the fee.
	/// @param earlyUnlockFeePerDay The new early unlock fee per day in basis points.
	event SetEarlyUnlockFeePerDay(address admin, uint256 earlyUnlockFeePerDay);

	error WrongPool();
	error AlreadyInitialized();
	error MissingToken();
	error MissingFee();
	error MissingAmount();
	error MissingNftManager();
	error MissingRewardsAPI();
	error NftNotReceived();
	error DepositsDisabled();
	error PoolTokensRecoveryNotAllowed();
	error ExceedsMaxEarlyUnlockFeePerDay(uint256 fee, uint maxFee);
	error ExceedsMaxLockingPeriod(uint256 period, uint256 maxPeriod);
	error WithdrawalRequestTokenIdNotDeposited(uint256 tokenId);
	error RequestedUnlockDateBeforeCurrent(uint256 requestedUnlockDate, uint256 currentUnlockDate);
	error ZeroMaxLockingPeriodInDays();
	error ZeroMaxEarlyUnlockFeePerDay();
	error MissingSugarHelper();

	/**
	 * @notice Initializes the cloned contract instance with pool and reward parameters.
	 * @dev Can only be called once by the owner. Marked payable to save gas (no msg.value check).
	 * @param _nftManager Aerodrome NonfungiblePositionManager address.
	 * @param _token0 Pool token0 address.
	 * @param _token1 Pool token1 address.
	 * @param _tickSpacing Pool tick spacing identifying the fee tier.
	 * @param _rewardsAPI Rewards distribution module address.
	 * @param maxLockingPeriodInDays Maximum locking period in days.
	 * @param maxEarlyUnlockFeePerDay Maximum early unlock fee per day in basis points.
	 * @param _sugarHelper Aerodrome SugarHelper address for querying pending fees.
	 */
	function initialize(
		address _nftManager,
		address _token0,
		address _token1,
		int24 _tickSpacing,
		address _rewardsAPI,
		uint256 maxLockingPeriodInDays,
		uint256 maxEarlyUnlockFeePerDay,
		address _sugarHelper
	) external payable onlyOwner {
		if (poolInfo.nftManager != address(0)) {
			revert AlreadyInitialized();
		}

		if (_nftManager == address(0)) {
			revert MissingNftManager();
		}

		if (_token0 == address(0)) {
			revert MissingToken();
		}

		if (_token1 == address(0)) {
			revert MissingToken();
		}

		if (_tickSpacing == 0) {
			revert MissingFee();
		}

		if (_rewardsAPI == address(0)) {
			revert MissingRewardsAPI();
		}

		if (maxLockingPeriodInDays == 0) {
			revert ZeroMaxLockingPeriodInDays();
		}

		if (maxEarlyUnlockFeePerDay == 0) {
			revert ZeroMaxEarlyUnlockFeePerDay();
		}

		if (_sugarHelper == address(0)) {
			revert MissingSugarHelper();
		}

		MAX_LOCKING_PERIOD = maxLockingPeriodInDays * 1 days;
		MAX_EARLY_UNLOCK_FEE_PER_DAY = maxEarlyUnlockFeePerDay;

		poolInfo.token0 = _token0;
		poolInfo.token1 = _token1;
		poolInfo.nftManager = _nftManager;
		poolInfo.tickSpacing = _tickSpacing;
		rewardsAPI = _rewardsAPI;
		rewardToken = SDAOSimpleRewardAPI(_rewardsAPI).rewardToken();
		earlyUnlockFeePerDay = 5;
		sugarHelper = _sugarHelper;
	}

	/**
	 * @notice Previews the early unlock fee for a given withdrawal amount and original unlock date.
	 * @param withdrawalAmount The liquidity amount being withdrawn early.
	 * @param originalUnlockDate The originally scheduled unlock timestamp.
	 * @return earlyUnlockFee The fee in liquidity units that would be deducted.
	 */
	function previewEarlyUnlockFee(uint128 withdrawalAmount, uint256 originalUnlockDate) public view returns (uint128 earlyUnlockFee) {
		earlyUnlockFee = uint128((withdrawalAmount * (originalUnlockDate - block.timestamp) * earlyUnlockFeePerDay) / 1 days / MAX_PERCENTAGE);
	}

	/**
	 * @notice Returns the pending (uncollected) trading fees for a staked NFT position.
	 * @param tokenId The NFT position token ID to query.
	 * @return pending0 Pending token0 trading fees.
	 * @return pending1 Pending token1 trading fees.
	 */
	function pendingTradingFees(uint256 tokenId) public view returns (uint256 pending0, uint256 pending1) {
		return ISugarHelper(sugarHelper).fees(poolInfo.nftManager, tokenId);
	}

	/**
	 * @notice Returns the staked NFT token ID at the given index for a user.
	 * @param user The user address to query.
	 * @param index The index in the user's staked token set.
	 * @return The NFT token ID at the given index.
	 */
	function stakedByIndex(address user, uint256 index) external view returns (uint256) {
		return tokenIds[user].at(index);
	}

	/**
	 * @notice Checks whether a user has a specific NFT token ID staked.
	 * @param user The user address to query.
	 * @param tokenId The NFT token ID to check.
	 * @return True if the user has the token ID staked.
	 */
	function stakedContains(address user, uint256 tokenId) external view returns (bool) {
		return tokenIds[user].contains(tokenId);
	}

	/**
	 * @notice Returns the number of NFT positions a user has staked.
	 * @param user The user address to query.
	 * @return The number of staked positions.
	 */
	function stakedLength(address user) external view returns (uint256) {
		return tokenIds[user].length();
	}

	/**
	 * @notice Returns all staked NFT token IDs for a user.
	 * @param user The user address to query.
	 * @return ids Array of staked NFT token IDs.
	 */
	function stakedByUser(address user) external view returns (uint256[] memory ids) {
		EnumerableSet.UintSet storage set = tokenIds[user];
		uint256 length = set.length();
		ids = new uint256[](length);

		for (uint256 i; i < length; i++) {
			ids[i] = set.at(i);
		}
	}

	/**
	 * @notice Deposits an Aerodrome V3 NFT position and locks it for the specified period.
	 * @param tokenId The NFT position token ID to deposit.
	 * @param _lockingPeriod The locking duration in seconds.
	 */
	function deposit(uint256 tokenId, uint256 _lockingPeriod) external nonReentrant {
		uint256 liquidity_deposited = _deposit(tokenId, msg.sender, msg.sender, _lockingPeriod);
		emit Deposit(msg.sender, tokenId, liquidity_deposited, _lockingPeriod);
	}

	/**
	 * @notice Withdraws a staked NFT position. Applies an early unlock fee if withdrawn before the unlock date.
	 * @param _tokenId The NFT position token ID to withdraw.
	 */
	function withdraw(uint256 _tokenId) external nonReentrant {
		_withdraw(_tokenId, msg.sender);
		emit Withdraw(msg.sender, _tokenId);
	}

	/**
	 * @notice Returns the caller's pending staking reward amount.
	 * @return The claimable reward token amount.
	 */
	function pending() external view returns (uint256) {
		return SDAOSimpleRewardAPI(rewardsAPI).claimableForUser(msg.sender);
	}

	/**
	 * @notice Returns the pending staking reward amount for a specific user.
	 * @param _user The user address to query.
	 * @return The claimable reward token amount.
	 */
	function pendingFor(address _user) external view returns (uint256) {
		return SDAOSimpleRewardAPI(rewardsAPI).claimableForUser(_user);
	}

	/**
	 * @notice Claims the caller's accumulated staking rewards.
	 */
	function claim() external {
		uint256 _claimed = SDAOSimpleRewardAPI(rewardsAPI).claimForUser(msg.sender);
		emit Claimed(msg.sender, _claimed);
	}

	/**
	 * @notice Claims accumulated trading fees from all of the caller's staked positions.
	 */
	function claimTradeFees() public {
		EnumerableSet.UintSet storage userTokenIds = tokenIds[msg.sender];
		uint256 length = userTokenIds.length();
		for (uint256 i; i < length; i++) {
			_collectTradingFees(userTokenIds.at(i), msg.sender);
		}
	}

	/**
	 * @notice Claims both trading fees and staking rewards in a single transaction.
	 */
	function claimAll() external {
		claimTradeFees();
		uint256 _claimed = SDAOSimpleRewardAPI(rewardsAPI).claimForUser(msg.sender);
		emit Claimed(msg.sender, _claimed);
	}

	/**
	 * @notice Withdraws a staked NFT position and claims staking rewards in a single transaction.
	 * @param _tokenId The NFT position token ID to withdraw.
	 */
	function withdrawAndClaim(uint256 _tokenId) external nonReentrant {
		_withdraw(_tokenId, msg.sender);
		emit Withdraw(msg.sender, _tokenId);
		SDAOSimpleRewardAPI(rewardsAPI).claimForUser(msg.sender);
	}

	/**
	 * @notice Enables or disables new deposits.
	 * @param _depositsEnabled True to enable deposits, false to disable.
	 */
	function setDepositsEnabled(bool _depositsEnabled) external onlyOwner {
		depositsEnabled = _depositsEnabled;
		emit SetDepositsEnabled(msg.sender, _depositsEnabled);
	}

	/**
	 * @notice Updates the early unlock fee rate per day.
	 * @param _earlyUnlockFeePerDay New fee rate in basis points per day (e.g. 5 = 0.05%/day).
	 */
	function setEarlyUnlockFeePerDay(uint256 _earlyUnlockFeePerDay) external onlyOwner {
		if (_earlyUnlockFeePerDay > MAX_EARLY_UNLOCK_FEE_PER_DAY) {
			revert ExceedsMaxEarlyUnlockFeePerDay(_earlyUnlockFeePerDay, MAX_EARLY_UNLOCK_FEE_PER_DAY);
		}
		earlyUnlockFeePerDay = _earlyUnlockFeePerDay;
		emit SetEarlyUnlockFeePerDay(msg.sender, _earlyUnlockFeePerDay);
	}

	/**
	 * @notice Recovers ERC-20 tokens accidentally sent to this contract.
	 * @dev Cannot recover pool tokens (token0/token1) as those are held as collected early unlock fees.
	 * @param _token The ERC-20 token address to recover.
	 * @param amount The amount to recover.
	 * @param to The recipient address.
	 */
	function recoverUnsupportedTokens(address _token, uint256 amount, address to) external onlyOwner {
		if (_token == address(0)) {
			revert MissingToken();
		}

		if (_token == poolInfo.token0 || _token == poolInfo.token1) {
			revert PoolTokensRecoveryNotAllowed();
		}

		IERC20(_token).safeTransfer(to, amount);
	}

	/**
	 * @notice Transfers all accumulated early unlock fees (token0 and token1) to the owner.
	 * @dev Early unlock fees are received as underlying tokens when liquidity is decreased from positions.
	 */
	function collectFees() external onlyOwner {
		uint256 balance0 = IERC20(poolInfo.token0).balanceOf(address(this));
		uint256 balance1 = IERC20(poolInfo.token1).balanceOf(address(this));
		IERC20(poolInfo.token0).safeTransfer(msg.sender, balance0);
		IERC20(poolInfo.token1).safeTransfer(msg.sender, balance1);
		emit CollectedFees(msg.sender, balance0, balance1);
	}

	/**
	 * @dev Handles the deposit logic: validates the position, transfers the NFT, and updates scores.
	 *
	 * When `tokenId` is 0 and the user already has a position, this acts as a lock extension only.
	 * The new unlock date must not be earlier than the current one.
	 *
	 * @param tokenId The NFT position token ID to deposit (0 to extend lock only).
	 * @param _user The address transferring the NFT.
	 * @param _recipient The address credited with the staked position.
	 * @param _lockingPeriod The locking duration in seconds from now.
	 * @return tokensDeposited The liquidity amount deposited (0 if extending only).
	 */
	function _deposit(uint256 tokenId, address _user, address _recipient, uint256 _lockingPeriod) internal returns (uint128 tokensDeposited) {
		if (_lockingPeriod > MAX_LOCKING_PERIOD) {
			revert ExceedsMaxLockingPeriod(_lockingPeriod, MAX_LOCKING_PERIOD);
		}

		if (!depositsEnabled) {
			revert DepositsDisabled();
		}

		UserInfo memory user = userInfo[_recipient];

		uint128 _amount;
		if (tokenId != 0) {
			address pToken0;
			address pToken1;
			int24 pTickSpacing;
			(, , pToken0, pToken1, pTickSpacing, , , _amount, , , , ) = INonfungiblePositionManager(poolInfo.nftManager).positions(tokenId);
			if (poolInfo.token0 != pToken0 || poolInfo.token1 != pToken1 || poolInfo.tickSpacing != pTickSpacing) {
				revert WrongPool();
			}
		}

		if (_amount == 0 && user.amount == 0) {
			revert MissingAmount();
		}

		uint256 newEndPeriod = block.timestamp + _lockingPeriod;

		if (newEndPeriod < user.unlockDate) {
			revert RequestedUnlockDateBeforeCurrent(newEndPeriod, user.unlockDate);
		}

		uint256 deltaScore;

		// Transfer NFT when not only extending
		if (tokenId != 0 && _amount != 0) {
			IERC721(poolInfo.nftManager).safeTransferFrom(_user, address(this), tokenId);
			tokensDeposited = _amount;
		}

		if (user.amount != 0) {
			// Extend existing position's score for the additional lock time
			uint256 extensionPeriod = newEndPeriod - user.unlockDate;
			deltaScore += user.amount * extensionPeriod;
		}

		// Score contribution from the new deposit
		deltaScore += tokensDeposited * _lockingPeriod;
		totalScore += deltaScore;
		user.score += deltaScore;
		SDAOSimpleRewardAPI(rewardsAPI).changeUserShares(_recipient, user.score);

		user.amount += tokensDeposited;
		user.lockDate = block.timestamp;
		user.unlockDate = newEndPeriod;
		userInfo[_recipient] = user;
		if (tokenId != 0) {
			tokenIds[_recipient].add(tokenId);
		}
	}

	/**
	 * @dev Handles the withdrawal logic: updates scores, applies early unlock fee if applicable,
	 *      and transfers the NFT back to the user.
	 *
	 * If the unlock date has already passed, the user's score is extended up to the current timestamp
	 * before computing the proportional score reduction.
	 *
	 * @param tokenId The NFT position token ID to withdraw.
	 * @param _user The user address performing the withdrawal.
	 */
	function _withdraw(uint256 tokenId, address _user) internal {
		if (!tokenIds[_user].contains(tokenId)) {
			revert WithdrawalRequestTokenIdNotDeposited(tokenId);
		}

		UserInfo storage user = userInfo[_user];

		uint256 originalUnlockDate = user.unlockDate;
		uint256 deltaScore;

		// If unlock date has passed, credit additional score for the extra time held
		if (originalUnlockDate < block.timestamp) {
			uint256 extensionPeriod = block.timestamp - originalUnlockDate;
			deltaScore = user.amount * extensionPeriod;
			totalScore += deltaScore;
			user.score += deltaScore;
			user.unlockDate = block.timestamp;
		}

		(, , , , , , , uint128 withdrawalAmount, , , , ) = INonfungiblePositionManager(poolInfo.nftManager).positions(tokenId);

		// Reduce score proportional to the liquidity being withdrawn
		deltaScore = (user.score * withdrawalAmount) / user.amount;

		user.amount -= withdrawalAmount;

		totalScore -= deltaScore;
		user.score -= deltaScore;
		SDAOSimpleRewardAPI(rewardsAPI).changeUserShares(_user, user.score);

		// Apply early unlock fee if withdrawing before the unlock date
		if (user.unlockDate > block.timestamp) {
			_collectTradingFees(tokenId, _user);
			uint128 earlyUnlockFee = previewEarlyUnlockFee(withdrawalAmount, originalUnlockDate);
			(uint256 fees0, uint256 fees1) = _decreasePosition(earlyUnlockFee, tokenId);
			emit PaidEarlyUnlockFee(_user, fees0, fees1, originalUnlockDate - block.timestamp);
		}

		// Reset unlock date when fully withdrawn
		if (user.amount == 0) {
			user.unlockDate = block.timestamp;
		}

		tokenIds[_user].remove(tokenId);

		IERC721(poolInfo.nftManager).safeTransferFrom(address(this), _user, tokenId);
	}

	/**
	 * @dev Collects accumulated trading fees from an NFT position and sends them directly to the user.
	 * @param tokenId The NFT position token ID to collect fees from.
	 * @param _user The recipient of the collected trading fees.
	 * @return collected0 The amount of token0 fees collected.
	 * @return collected1 The amount of token1 fees collected.
	 */
	function _collectTradingFees(uint256 tokenId, address _user) private returns (uint256 collected0, uint256 collected1) {
		uint256 balance0 = IERC20(poolInfo.token0).balanceOf(_user);
		uint256 balance1 = IERC20(poolInfo.token1).balanceOf(_user);

		INonfungiblePositionManager.CollectParams memory collectParams = INonfungiblePositionManager.CollectParams(
			tokenId,
			_user,
			type(uint128).max,
			type(uint128).max
		);
		INonfungiblePositionManager(poolInfo.nftManager).collect(collectParams);

		collected0 = IERC20(poolInfo.token0).balanceOf(_user) - balance0;
		collected1 = IERC20(poolInfo.token1).balanceOf(_user) - balance1;

		if (collected0 > 0 || collected1 > 0) {
			emit ReturnedTradingFees(_user, collected0, collected1);
		}
	}

	/**
	 * @dev Decreases liquidity in an NFT position and collects the resulting tokens to this contract.
	 * @param amount The liquidity amount to remove from the position.
	 * @param tokenId The NFT position token ID to decrease liquidity from.
	 * @return received0 The amount of token0 received from the decreased liquidity.
	 * @return received1 The amount of token1 received from the decreased liquidity.
	 */
	function _decreasePosition(uint128 amount, uint256 tokenId) private returns (uint256 received0, uint256 received1) {
		uint256 balance0 = IERC20(poolInfo.token0).balanceOf(address(this));
		uint256 balance1 = IERC20(poolInfo.token1).balanceOf(address(this));

		INonfungiblePositionManager.DecreaseLiquidityParams memory params = INonfungiblePositionManager.DecreaseLiquidityParams(
			tokenId,
			amount,
			0,
			0,
			block.timestamp
		);

		INonfungiblePositionManager(poolInfo.nftManager).decreaseLiquidity(params);

		INonfungiblePositionManager.CollectParams memory collectParams = INonfungiblePositionManager.CollectParams(
			tokenId,
			address(this),
			type(uint128).max,
			type(uint128).max
		);
		INonfungiblePositionManager(poolInfo.nftManager).collect(collectParams);

		received0 = IERC20(poolInfo.token0).balanceOf(address(this)) - balance0;
		received1 = IERC20(poolInfo.token1).balanceOf(address(this)) - balance1;
	}
}
