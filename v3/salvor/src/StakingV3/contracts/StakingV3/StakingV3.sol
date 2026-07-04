// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.9;

import {AccessControlEnumerableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlEnumerableUpgradeable.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import {SafeERC20Upgradeable, IERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import {IAntTokenV2} from "../Interfaces/IAntTokenV2.sol";
import {IStakingV3, IStakingCore} from "../Interfaces/IStakingV3.sol";
import {IWAVAX} from "../Interfaces/IWAVAX.sol";

/**
 * @title StakingV3
 * Main Staking Contract
 *
 * Implement algorithm for multitokens rewards distribution (inspired by the synthetix staking rewards approach).
 * Adds authorization requirements (amount and period) to the simple staking base with stake and unstake functionalities,
 * stores accounts balances and keeps track of stake total supply and corresponding registred values.
 */
// solhint-disable-next-line max-states-count
contract StakingV3 is IStakingV3, AccessControlEnumerableUpgradeable, PausableUpgradeable, ReentrancyGuardUpgradeable {
    using SafeERC20Upgradeable for IERC20Upgradeable;

    /* ========== STATE VARIABLES ========== */

    /**
     * Roles used in the contract.
     */
    bytes32 public constant REWARD_MANAGER_ROLE = keccak256("REWARD_MANAGER_ROLE");
    bytes32 public constant FEE_MANAGER_ROLE = keccak256("FEE_MANAGER_ROLE");
    bytes32 public constant CLAIM_MANAGER_ROLE = keccak256("CLAIM_MANAGER_ROLE");
    bytes32 public constant STAKE_MANAGER_ROLE = keccak256("STAKE_MANAGER_ROLE");
    bytes32 public constant MIGRATION_MANAGER_ROLE = keccak256("MIGRATION_MANAGER_ROLE");

    /**
     * Token used to stake, should be provided in the constructor.
     */
    IERC20Upgradeable public stakeToken;

    /**
     * Address of AntTokenV2 contract.
     */
    IAntTokenV2 public antToken;

    /**
     * Address of WAVAX token.
     */
    IWAVAX public wavax;

    /**
     * Stores accounts stake balances.
     */
    mapping(address => uint256) public stakeBalance;

    /**
     * Total accounts stakes kept under this contract.
     */
    uint256 public totalStake;

    /**
     * List of current enabled reward tokens.
     */
    RewardTokenCategory[] public rewardTokensList;
    RewardTokenCategory[] public customRewardTokensList;

    /**
     * Data about airdrop rewards for each token address.
     * Token => Category => Data
     */
    mapping(address => mapping(uint8 => RewardTokenStorage)) public rewardTokensData;
    mapping(address => mapping(uint8 => CustomRewardTokenStorage)) public customRewardTokensData;

    /**
     * Fees taken on stake and unstake action (1e18 mantissa)
     */
    uint256 public stakeFeeMantissa;
    uint256 public unstakeFeeMantissa;

    /**
     * Dynamic fee data
     */
    DynamicFeeData public dynamicStakeFee;
    DynamicFeeData public dynamicUnstakeFee;

    /**
     * Default period of time used to redistribute fees
     */
    uint256 public feesRedistributionPeriod;

    /**
     * Limit of rewards that can be distributed at once
     */
    uint256 constant public NUMBER_OF_REWARDS_LIMIT = 170;

    /* ========== EVENTS ========== */

    /* ------ Fees ------ */
    event StakeFeeSet(uint256 stakeFee);
    event UnstakeFeeSet(uint256 unstakeFee);

    event DynamicStakeFeeSet(uint256 startRate, uint256 duration);
    event DynamicUnstakeFeeSet(uint256 startRate, uint256 duration);

    event StakeFeeCollected(address indexed staker, uint256 value);
    event UnstakeFeeCollected(address indexed staker, uint256 value);

    event FeesRedistributionPeriodSet(uint256 period);

    /* ------ Rewards ------ */
    event RewardAdded(address indexed token, uint8 category, uint256 amount, uint256 duration);
    event RewardRemoved(address indexed token, uint8 category, uint256 amount);
    event RewardClaimed(address indexed token, uint8 category, address indexed staker, address indexed receiver, uint256 amount);
    event CustomRewardAdded(address indexed token, uint8 category, uint256 amount);
    event CustomRewardRemoved(address indexed token, uint8 category, uint256 amount);
    event CustomRewardClaimed(address indexed token, uint8 category, address indexed staker, address indexed receiver, uint256 amount);

    /* ------ Migrations ------ */
    event MigrationCompleted(address migrator, address indexed staker, address newStaking, uint256 amount);

    /* ------ Staking ------ */
    event StakeAdded(address indexed supplier, address indexed receiver, uint256 value);
    event StakeRemoved(address indexed staker, address indexed receiver, uint256 value);

    /* ------ Misc ------ */
    event WavaxAddressSet(address wavax);
    event AntTokenAddressSet(address antToken);

    /* ========== CONSTRUCTOR ========== */

    /**
     * @dev Constructor/Initializer
     * @param stakeToken_ The address of stake token contract
     * @param antTokenAddress_ The address of AntTokenV2 contract
     * @param wavaxAddress_ The address of WAVAX contract
     * @param feesRedistributionPeriod_ Period used to redistribute reward from fees
     * @param stakeFee_ Initial stake fee
     * @param unstakeFee_ Initial unstake fee
     *
     * initialize is used instead of constructor because of upgradable proxy pattern
     */
    function initialize (
        address stakeToken_,
        address antTokenAddress_,
        address wavaxAddress_,
        uint256 feesRedistributionPeriod_,
        uint256 stakeFee_,
        uint256 unstakeFee_
    ) public initializer {
        require(stakeToken_ != address(0), "stakeToken cannot be 0x0");
        __AccessControlEnumerable_init();
        __ReentrancyGuard_init();
        __Pausable_init();
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(REWARD_MANAGER_ROLE, msg.sender);
        _grantRole(FEE_MANAGER_ROLE, msg.sender);
        _grantRole(CLAIM_MANAGER_ROLE, msg.sender);
        _grantRole(STAKE_MANAGER_ROLE, msg.sender);

        stakeToken = IERC20Upgradeable(stakeToken_);
        setAntToken(antTokenAddress_);
        setWavax(wavaxAddress_);
        setFeesRedistributionPeriod(feesRedistributionPeriod_);

        setStakeFee(stakeFee_);
        setUnstakeFee(unstakeFee_);
    }

    //  ┌───────────────────────────────────────┐
    //  │   ____  _        _    _               │
    //  │  / ___|| |_ __ _| | _(_)_ __   __ _   │
    //  │  \___ \| __/ _` | |/ / | '_ \ / _` |  │
    //  │   ___) | || (_| |   <| | | | | (_| |  │
    //  │  |____/ \__\__,_|_|\_\_|_| |_|\__, |  │
    //  │                               |___/   │
    //  └───────────────────────────────────────┘

    /* ========== USER ========== */

    /**
     * @notice Stakes given amount.
     * @dev Adds modifiers to an internal function.
     */
    function stake(uint256 amount)
        external
        nonReentrant
        whenNotPaused
        updateAllRewards(msg.sender)
    {
        _stake(msg.sender, msg.sender, amount, true);
    }

    /**
     * @notice Unstakes given amount.
     * @dev Adds modifiers to an internal function.
     */
    function unstake(uint256 amount)
        external
        nonReentrant
        whenNotPaused
        updateAllRewards(msg.sender)
    {
        _unstake(msg.sender, msg.sender, amount, true);
    }

    /**
     * @notice Unstakes all tokens.
     * @dev Adds modifiers to an internal function.
     */
    function unstakeAll()
        public
        nonReentrant
        whenNotPaused
        updateAllRewards(msg.sender)
    {
        _unstake(msg.sender, msg.sender, stakeBalance[msg.sender], true);
    }

    /**
     * @notice Unstake all stake tokens and claim all rewards.
     * @dev Without nonReentrant.
     */
    function exit() external {
        unstakeAll();
        claimAllRewards();
    }

    /* ========== PRIVILEGED ========== */

    /**
     * @notice Stakes given amount for given receiver.
     * @dev Adds modifiers to an internal function.
     *
     * Only StakeManager can call this function.
     */
    function stakeFor(address receiver, uint256 amount, bool collectFee)
        external
        nonReentrant
        whenNotPaused
        updateAllRewards(receiver)
        onlyRole(STAKE_MANAGER_ROLE)
    {
        _stake(msg.sender, receiver, amount, collectFee);
    }

    /**
     * @dev Unstakes token of any address and transfers to defined address
     * Only AntToken contract can call this function
     * Used for later tokens distribution
     */
    function unstakeFrom(address staker, address receiver, uint256 amount, bool collectFee)
        external
        nonReentrant
        whenNotPaused
        updateAllRewards(staker)
    {
        require(msg.sender == address(antToken), "incorrect caller");
        _unstake(staker, receiver, amount, collectFee);
    }

    /* ========== VIEW ========== */

    /**
     * @notice Returns true if given account has staked tokens.
     */
    function isStaking(address account) external view returns (bool) {
        return stakeBalance[account] > 0;
    }

    /* ========== INTERNAL ========== */

    /**
     * @notice Internal function for staking. Also mints appropriate number of ANT tokens and distributes fee.
     * @param supplier Address of account which supplies tokens
     * @param receiver Address of account for which tokens are staked
     * @param amount Amount of tokens to stake
     * @param collectFee If true, fee will be collected
     */
    function _stake(address supplier, address receiver, uint256 amount, bool collectFee) internal {
        require(amount > 0, "cannot stake 0");

        if(collectFee){
            uint256 feeAmount = calculateStakeFee(amount);
            amount = amount - feeAmount;

            if(feeAmount > 0){
                _addReward(supplier, address(stakeToken), uint8(RewardCategory.Fee), feeAmount, feesRedistributionPeriod);
                emit StakeFeeCollected(supplier, feeAmount);
            }
        }

        stakeBalance[receiver] += amount;
        totalStake += amount;

        stakeToken.safeTransferFrom(supplier, address(this), amount);

        emit StakeAdded(supplier, receiver, amount);
    }

    /**
     * @notice Internal function for unstaking. Also burns appropriate number of ANT tokens and distributes fee.
     * @param staker Address of account which staked tokens
     * @param receiver Address of account for which unstaked tokens are transfered
     * @param amount Amount of tokens to unstake
     * @param collectFee If true, fee will be collected
     */
    function _unstake(address staker, address receiver, uint256 amount, bool collectFee) internal {
        require(amount > 0, "cannot unstake 0");
        // Initially stakeBalance and antToken.balanceOf are the same, but in the future implementation can change
        // and antToken.balanceOf will be using more factors to calculate ants amount
        require(stakeBalance[staker] >= amount, "amount exceeds staked balance");
        require(antToken.balanceOf(staker) >= amount, "amount exceeds uncollaterized balance");

        uint256 feeAmount = 0;

        if(collectFee){
            feeAmount = calculateUnstakeFee(amount);
            if(feeAmount > 0){
                stakeToken.safeApprove(address(this), feeAmount);
                _addReward(address(this), address(stakeToken), uint8(RewardCategory.Fee), feeAmount, feesRedistributionPeriod);
                emit UnstakeFeeCollected(staker, feeAmount);
            }
        }

        stakeBalance[staker] -= amount;
        totalStake -= amount;

        stakeToken.safeTransfer(receiver, amount - feeAmount);

        emit StakeRemoved(staker, receiver, amount);
    }

    // ┌───────────────────────────────────────────┐
    // │   ____                            _       │
    // │  |  _ \ _____      ____ _ _ __ __| |___   │
    // │  | |_) / _ \ \ /\ / / _` | '__/ _` / __|  │
    // │  |  _ <  __/\ V  V / (_| | | | (_| \__ \  │
    // │  |_| \_\___| \_/\_/ \__,_|_|  \__,_|___/  │
    // │                                           │
    // └───────────────────────────────────────────┘

    /* ========== ADMIN ========== */

    /**
     * @notice Notify about new or update previous token distribution.
     * @dev Reward tokens should be already transfered to this contract.
     * @param token Address of reward token
     * @param category Reward category
     * @param amount Amount of tokens
     * @param duration Duration of distribution in seconds
     *
     * // synthetix comment:
     * // Ensure the provided reward amount is not more than the balance in the contract.
     * // This keeps the reward rate in the right range, preventing overflows due to
     * // very high values of rewardRate in the earned and rewardsPerToken functions;
     * // Reward + leftover must be less than 2^256 / 10^18 to avoid overflow.
     *
     * Emits a {RewardAdded} event.
     */
    function addReward(address token, uint8 category, uint256 amount, uint256 duration)
        external
        onlyRole(REWARD_MANAGER_ROLE)
    {
        _addReward(msg.sender, token, category, amount, duration);
    }

     /**
     * @notice Function which allows the owner to recover and remove reward tokens.
     * @dev Function can be also used to protect from malicious privileged distributor and clean up rewardTokensList.
     *
     * Emits a {RewardRemoved} event.
     */
    function removeReward(address receiver, address token, uint8 category) external onlyRole(DEFAULT_ADMIN_ROLE) {
        RewardTokenData storage rewardData = _rewardData(token, category);
        RewardTokenCategory[] memory _rewardTokensList = rewardTokensList;
        bool found = false;

        for (uint i = 0; i < _rewardTokensList.length; i++) {
            if (_rewardTokensList[i].token == token && _rewardTokensList[i].category == category) {
                rewardTokensList[i] = _rewardTokensList[_rewardTokensList.length - 1];
                rewardTokensList.pop();
                found = true;
                break;
            }
        }
        require(found, "reward not found");

        rewardTokensData[token][category].index++;
        IERC20Upgradeable(token).safeTransfer(receiver, rewardData.totalAmount);

        emit RewardRemoved(token, category, rewardData.totalAmount);
    }

    /**
     * @notice Setup custom token distribution.
     * @dev Reward tokens will be transfered to this contract.
     * @param token Address of reward token
     * @param category Reward category
     * @param receivers Array of receivers and amounts
     *
     * Emits a {CustomRewardAdded} event.
     */
    function addCustomReward(address token, uint8 category, CustomRewardReceiver[] calldata receivers)
        external
        onlyRole(REWARD_MANAGER_ROLE)
    {
        uint256 totalAmount = 0;
        CustomRewardTokenData storage customRewardData = _customRewardData(token, category);
        if (customRewardData.registered == false) {
            customRewardTokensList.push(RewardTokenCategory({
                token: token,
                category: category
            }));
            customRewardData.registered = true;
        }

        for (uint i = 0; i < receivers.length; i++) {
            customRewardData.rewards[receivers[i].receiver] += receivers[i].amount;
            totalAmount += receivers[i].amount;
        }

        // avoid adding empty custom rewards
        require(totalAmount > 0, "totalAmount too low");

        customRewardData.totalAmount += totalAmount;
        IERC20Upgradeable(token).safeTransferFrom(msg.sender, address(this), totalAmount);

        emit CustomRewardAdded(token, category, totalAmount);
    }

    /**
     * @notice Function which allows the admin to recover and remove custom reward distribution.
     * @dev Function can be also used to protect from malicious privileged distributor and clean up customRewardTokensList.
     *
     * Emits a {CustomRewardRemoved} event.
     */
    function removeCustomReward(address receiver, address token, uint8 category)
        external
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        CustomRewardTokenData storage customRewardData = _customRewardData(token, category);
        RewardTokenCategory[] memory _customRewardTokensList = customRewardTokensList;
        bool found = false;

        for (uint i = 0; i < _customRewardTokensList.length; i++) {
            if (_customRewardTokensList[i].token == token && _customRewardTokensList[i].category == category) {
                customRewardTokensList[i] = _customRewardTokensList[_customRewardTokensList.length - 1];
                customRewardTokensList.pop();
                found = true;
                break;
            }
        }
        require(found, "reward not found");

        uint256 totalAmount = customRewardData.totalAmount;
        customRewardTokensData[token][category].index++;
        IERC20Upgradeable(token).safeTransfer(receiver, totalAmount);

        emit CustomRewardRemoved(token, category, totalAmount);
    }

    /* ========== USER ========== */

    /**
     * @notice Claim reward for given token.
     * @dev With nonReentrant.
     */
    function claimReward(address token, uint8 category)
        external
        whenNotPaused
        nonReentrant
        returns(uint256)
    {
        uint256 rewardClaimed = _claimReward(token, category, msg.sender, msg.sender);
        rewardClaimed += _claimCustomReward(token, category, msg.sender, msg.sender);

        return rewardClaimed;
    }

    /**
     * @notice Claim reward for given token for given claimer.
     * @dev With nonReentrant.
     * Only ClaimManager can call this function.
     */
    function claimRewardFor(address token, uint8 category, address claimer)
        external
        whenNotPaused
        nonReentrant
        onlyRole(CLAIM_MANAGER_ROLE)
        returns(uint256)
    {
        uint256 rewardClaimed = _claimReward(token, category, claimer, claimer);
        rewardClaimed += _claimCustomReward(token, category, claimer, claimer);

        return rewardClaimed;
    }

    /**
     * @notice Claim reward for all tokens.
     * @dev With nonReentrant.
     */
    function claimAllRewards()
        public
        whenNotPaused
        nonReentrant
    {
        _claimAllRewards(msg.sender, msg.sender);
    }

    /**
     * @notice Claim reward for all tokens for given claimer.
     * @dev With nonReentrant.
     * Only ClaimManager can call this function.
     */
    function claimAllRewardsFor(address claimer)
        external
        whenNotPaused
        nonReentrant
        onlyRole(CLAIM_MANAGER_ROLE)
    {
        _claimAllRewards(claimer, claimer);
    }

    /**
     * @notice Uses stake token reward to increase account stake.
     * @dev _getReward updates token reward.
     * @param category Reward category
     * @return bool true if compound was successful
     */
    function compoundStakeToken(uint8 category)
        external
        nonReentrant
        whenNotPaused
        updateAllRewards(msg.sender)
        returns (bool)
    {
        uint256 reward = _claimReward(address(stakeToken), category, msg.sender, address(this)) +
            _claimCustomReward(address(stakeToken), category, msg.sender, address(this));

        if(reward > 0){
            IERC20Upgradeable(address(stakeToken)).safeApprove(address(this), reward);
            _stake(address(this), msg.sender, reward, false);
            return true;
        }
        return false;

    }

    /* ========== VIEW ========== */

    /**
     * @notice Returns current reward amount for given token, category and account.
     */
    function claimableReward(address token, uint8 category, address account) external view returns (uint256) {
        CustomRewardTokenData storage customRewardData = _customRewardData(token, category);
        return _earned(token, category, account) + customRewardData.rewards[account];
    }

    /**
     * @notice Returns reward tokens list at given index.
     */
    function getRewardTokensListIndex(uint256 index) external view returns (RewardTokenCategory memory) {
        return rewardTokensList[index];
    }

    /**
     * @notice Returns custom reward tokens list at given index.
     */
    function getCustomRewardTokensListIndex(uint256 index) external view returns (RewardTokenCategory memory) {
        return customRewardTokensList[index];
    }

    /**
     * @notice Returns reward per token rate for given token and category.
     */
    function getRewardPerToken(address token, uint8 category) external view returns(uint256) {
        return _rewardPerToken(token, category);
    }

    /**
     * @notice Returns reward tokens list length.
     */
    function rewardTokensListLenght() external view returns (uint256) {
        return rewardTokensList.length;
    }

    /**
     * @notice Returns custom reward tokens list length.
     */
    function customRewardTokensListLenght() external view returns (uint256) {
        return customRewardTokensList.length;
    }

    /* ========== INTERNAL ========== */

    /**
     * @dev internal addReward, same but without onlyPrivileged.
     */
    function _addReward(address from, address token, uint8 category, uint256 amount, uint256 duration)
        internal
        updateSingleReward(token, category, address(0))
    {
        require(amount > 0, "amount too low"); // avoid adding empty rewards
        require(duration > 0, "duration too low");

        RewardTokenData storage tokenData = _rewardData(token, category);
        if (tokenData.periodFinish == 0) {
            require(rewardTokensList.length < NUMBER_OF_REWARDS_LIMIT, "rewards limit reached");

            rewardTokensList.push(RewardTokenCategory({
                token: token,
                category: category
            }));
        }

        uint256 rewardRate = _rewardRate(token, category, amount, duration);
        tokenData.rewardRate = rewardRate;
        tokenData.rewardsDuration = duration;
        tokenData.lastUpdateTime = block.timestamp;
        tokenData.periodFinish = block.timestamp + duration;
        tokenData.totalAmount += amount;

        IERC20Upgradeable(token).safeTransferFrom(from, address(this), amount);

        emit RewardAdded(token, category, amount, duration);
    }

    /**
     * @dev Internal common function for updating specified token reward.
     */
    function _updateReward(address token, uint8 category, address account) internal {
        RewardTokenData storage tokenData = _rewardData(token, category);

        tokenData.rewardPerTokenStored = _rewardPerToken(token, category);
        tokenData.lastUpdateTime = _lastTimeRewardApplicable(token, category);
        if (account != address(0)) {
            tokenData.rewards[account] = _earned(token, category, account);
            tokenData.accountRewardPerTokenPaid[account] = tokenData.rewardPerTokenStored;
        }
    }

    /**
     * @notice Sends token reward to the account.
     * @dev Internal function without nonReentrant.
     * @param token Reward tokens
     * @param receiver Account which will receive rewards tokens
     *
     * Emits a {RewardClaimed} event.
     */
    function _claimReward(address token, uint8 category, address claimer, address receiver)
        internal
        updateSingleReward(token, category, claimer)
        returns(uint256)
    {
        RewardTokenData storage rewardData = _rewardData(token, category);
        uint256 rewardAmount = rewardData.rewards[claimer];

        if (rewardAmount > 0) {
            rewardData.rewards[claimer] = 0;
            rewardData.totalAmount -= rewardAmount;
            _transferReward(token, receiver, rewardAmount);
            emit RewardClaimed(token, category, claimer, receiver, rewardAmount);
        }

        return rewardAmount;
    }

    /**
     * @notice Sends custom token reward to the account.
     * @dev Internal function without nonReentrant.
     * @param token Reward tokens
     * @param receiver Account which will receive rewards tokens
     *
     * Emits a {CustomRewardClaimed} event.
     */
    function _claimCustomReward(address token, uint8 category, address claimer, address receiver)
        internal
        returns(uint256)
    {
        CustomRewardTokenData storage customRewardData = _customRewardData(token, category);
        uint256 customRewardAmount = customRewardData.rewards[claimer];

        if (customRewardAmount > 0) {
            customRewardData.rewards[claimer] = 0;
            customRewardData.totalAmount -= customRewardAmount;
            _transferReward(token, receiver, customRewardAmount);
            emit CustomRewardClaimed(token, category, claimer, receiver, customRewardAmount);
        }

        return customRewardAmount;
    }

    /**
     * @notice Claim all token rewards.
     * @dev Internal function without nonReentrant.
     * @param claimer Account which claim rewards
     * @param receiver Account which will receive rewards tokens
     */
    function _claimAllRewards(address claimer, address receiver) internal {
        RewardTokenCategory[] memory _rewardTokensList = rewardTokensList;
        RewardTokenCategory[] memory _customRewardTokensList = customRewardTokensList;

        for (uint i = 0; i < _rewardTokensList.length; i++) {
            _claimReward(_rewardTokensList[i].token, _rewardTokensList[i].category, claimer, receiver);
        }

        for (uint i = 0; i < _customRewardTokensList.length; i++) {
            _claimCustomReward(_customRewardTokensList[i].token, _customRewardTokensList[i].category, claimer, receiver);
        }
    }

    /**
     * @notice Transfers reward tokens to the receiver.
     * @dev Internal function without nonReentrant.
     * @param token Reward tokens
     * @param receiver Account which will receive rewards tokens
     */
    function _transferReward(address token, address receiver, uint256 amount) internal {
        if(token == address(wavax)){
            wavax.withdraw(amount);
            (bool sent, ) = receiver.call{value: amount}(""); // solhint-disable-line avoid-low-level-calls
            if(sent){
                return;
            }
            else{
                wavax.deposit{value: amount}();
            }
        }
        IERC20Upgradeable(token).safeTransfer(receiver, amount);
    }

    /**
     * @notice Returns reward data for given token and category.
     * @dev Internal function which returns storage value
     */
    function _rewardData(address token, uint8 category) internal view returns(RewardTokenData storage) {
        return rewardTokensData[token][category].data[rewardTokensData[token][category].index];
    }

    /**
     * @notice Returns custom reward data for given token and category.
     */
    function _customRewardData(address token, uint8 category) internal view returns(CustomRewardTokenData storage) {
        return customRewardTokensData[token][category].data[customRewardTokensData[token][category].index];
    }

    /**
     * @notice Returns earned value for given token and account.
     */
    function _earned(address token, uint8 category, address account) internal view returns (uint256) {
        RewardTokenData storage tokenData = _rewardData(token, category);

        return
            stakeBalance[account] * (
                _rewardPerToken(token, category) - tokenData.accountRewardPerTokenPaid[account]
            ) / 1e36
            + tokenData.rewards[account];
    }

    /**
     * @notice Simulate reward rate for given token.
     * @dev Helper calculations shared by notifyRewardAmount and notifyStakeRewardAmount.
     *
     * The function calculates reward rate based on `amount` and `duration`, adjusting for ongoing distributions.
     *
     * Edge case: maximizing `amount` can lead to high values. The maximum safe value for `amount + leftover`
     * is approximately 1e41, because the calculation `1e36 * 1e41` is still below the max uint256 limit,
     * avoiding overflow.
     */
    function _rewardRate(
        address token,
        uint8 category,
        uint256 amount,
        uint256 duration
    ) internal view returns(uint256) {
        RewardTokenData storage tokenData = _rewardData(token, category);
        uint256 periodFinish = tokenData.periodFinish;

        if (block.timestamp >= periodFinish) {
            return amount * 1e36 / duration;
        }

        // ongoing reward distribution
        uint256 remaining = periodFinish - block.timestamp;
        uint256 leftover = remaining * tokenData.rewardRate / 1e36;
        return (amount + leftover) * 1e36 / duration;
    }

    /**
     * @notice Returns current amount of reward tokens per staked token.
     */
    function _rewardPerToken(address token, uint8 category) internal view returns (uint256) {
        RewardTokenData storage tokenData = _rewardData(token, category);
        uint256 _totalStake = totalStake;

        if (_totalStake == 0) {
            return tokenData.rewardPerTokenStored;
        }
        return
            tokenData.rewardPerTokenStored + (
                ((_lastTimeRewardApplicable(token, category) - tokenData.lastUpdateTime) * tokenData.rewardRate)
                / _totalStake
            );
    }

    /**
     * @notice Returns current timestamp within token distribution or distribution end date.
     */
    function _lastTimeRewardApplicable(address token, uint8 category) internal view returns (uint256) {
        uint256 periodFinish = _rewardData(token, category).periodFinish;

        return block.timestamp < periodFinish ? block.timestamp : periodFinish;
    }

    /* ========== MODIFIERS ========== */

    /**
     * @notice Updates reward for one token.
     */
    modifier updateSingleReward(address token, uint8 category, address account) {
        _updateReward(token, category, account);
        _;
    }

    /**
     * @notice Updates reward for all tokens in the rewardTokensList.
     * @dev Used for stake and unstake, and can be gas consuming.
     */
    modifier updateAllRewards(address account) {
        RewardTokenCategory[] memory _rewardTokensList = rewardTokensList;
        for (uint i = 0; i < _rewardTokensList.length; i++) {
            _updateReward(_rewardTokensList[i].token, _rewardTokensList[i].category, account);
        }
        _;
    }

    // ┌────────────────────────┐
    // │   _____                │
    // │  |  ___|__  ___  ___   │
    // │  | |_ / _ \/ _ \/ __|  │
    // │  |  _|  __/  __/\__ \  │
    // │  |_|  \___|\___||___/  │
    // │                        │
    // └────────────────────────┘

    /* ========== ADMIN ========== */

    /**
     * @notice sets the staking fee. Has to be smaller than 100% = 1e18.
     */
    function setStakeFee(uint256 fee) public onlyRole(FEE_MANAGER_ROLE) {
        require(_calculateDynamicFeeRate(dynamicStakeFee) + fee <= 1e18, "fee too high");
        stakeFeeMantissa = fee;
        emit StakeFeeSet(stakeFeeMantissa);
    }

    /**
     * @notice sets the unstaking fee. Has to be smaller than 100% = 1e18.
     */
    function setUnstakeFee(uint256 fee) public onlyRole(FEE_MANAGER_ROLE) {
        require(_calculateDynamicFeeRate(dynamicUnstakeFee) + fee <= 1e18, "fee too high");
        unstakeFeeMantissa = fee;
        emit UnstakeFeeSet(unstakeFeeMantissa);
    }

    /**
     * @dev Sets a temporary additional stake fee that linearly decreases
     *      from the initial value `startRate` to zero over the `duration` period.
     * @param startRate Initial fee value (18 decimal mantissa).
     * @param duration Period of time for which the dynamic fee will applied (in secondes, starting from `now`)
     */
    function setDynamicStakeFee(uint256 startRate, uint256 duration) public onlyRole(FEE_MANAGER_ROLE) {
        require(startRate + stakeFeeMantissa <= 1e18, "fee too high");
        require(duration > 0, "duration too low");

        // save dynamicUnstakeFee values
        dynamicStakeFee = DynamicFeeData({
            startRate: startRate,
            startTimestamp: block.timestamp,
            duration: duration
        });

        emit DynamicStakeFeeSet(startRate, duration);
    }

    /**
     * @dev Sets a temporary additional unstake fee that linearly decreases
     *      from the initial value `startRate` to zero over the `duration` period.
     * @param startRate Initial fee value (18 decimal mantissa).
     * @param duration Period of time for which the dynamic fee will applied (in secondes, starting from `now`)
     */
    function setDynamicUnstakeFee(uint256 startRate, uint256 duration) public onlyRole(FEE_MANAGER_ROLE) {
        require(startRate + unstakeFeeMantissa <= 1e18, "fee too high");
        require(duration > 0, "duration too low");

        // save dynamicUnstakeFee values
        dynamicUnstakeFee = DynamicFeeData({
            startRate: startRate,
            startTimestamp: block.timestamp,
            duration: duration
        });

        emit DynamicUnstakeFeeSet(startRate, duration);
    }

    /**
     * @param newPeriod In seconds
     */
    function setFeesRedistributionPeriod(uint256 newPeriod) public onlyRole(DEFAULT_ADMIN_ROLE) {
        require(newPeriod > 0 && newPeriod < 315360000, "incorrect newPeriod"); // 10 years max

        feesRedistributionPeriod = newPeriod;

        emit FeesRedistributionPeriodSet(feesRedistributionPeriod);
    }

    /* ========== VIEW ========== */

     /**
     * @dev Calculates fee for given stake amount
     * @param amount Amount of tokens to calculate fee for
     */
    function calculateStakeFee(uint256 amount) public view returns(uint256) {
        return _calculateFee(stakeFeeRate(), amount);
    }

    /**
     * @dev Calculates fee for given unstake amount
     * @param amount Amount of tokens to calculate fee for
     */
    function calculateUnstakeFee(uint256 amount) public view returns(uint256) {
        return _calculateFee(unstakeFeeRate(), amount);
    }

    /**
     * @dev Return total stake fee rate.
     */
    function stakeFeeRate() public view returns(uint256) {
        return stakeFeeMantissa + _calculateDynamicFeeRate(dynamicStakeFee);
    }

    /**
     * @dev Return total unstake fee rate.
     */
    function unstakeFeeRate() public view returns(uint256) {
        return unstakeFeeMantissa + _calculateDynamicFeeRate(dynamicUnstakeFee);
    }

    /* ========== INTERNAL ========== */

    /**
     * @notice Internal function that calculates fee amount.
     * @return uint256 the calculated fee amount
     */
    function _calculateFee(uint256 fee, uint256 amount) internal pure returns(uint256) {
        uint256 feeAmount;

        if (fee == 0) {
            return 0;
        }

        feeAmount = amount * fee / 1e18;
        return feeAmount;
    }

    /**
     * @dev Calculates dynamic fee rate
     * @param dynamicFee DynamicFeeData struct
     * @return uint256 the calculated fee amount
     */
    function _calculateDynamicFeeRate(DynamicFeeData memory dynamicFee) internal view returns (uint256) {
        // if not set
        if (dynamicFee.startTimestamp == 0) {
            return 0;
        }

        // if finished
        if (dynamicFee.startTimestamp + dynamicFee.duration <= block.timestamp) {
            return 0;
        }

        return dynamicFee.startRate *
            (dynamicFee.duration - (block.timestamp - dynamicFee.startTimestamp)) /
            dynamicFee.duration;
    }

    // ┌────────────────────────────────────────────────────┐
    // │   __  __ _                 _   _                   │
    // │  |  \/  (_) __ _ _ __ __ _| |_(_) ___  _ __  ___   │
    // │  | |\/| | |/ _` | '__/ _` | __| |/ _ \| '_ \/ __|  │
    // │  | |  | | | (_| | | | (_| | |_| | (_) | | | \__ \  │
    // │  |_|  |_|_|\__, |_|  \__,_|\__|_|\___/|_| |_|___/  │
    // │            |___/                                   │
    // └────────────────────────────────────────────────────┘

    /* ========== ADMIN ========== */

    /**
     * @notice Can be called only by migrator.
     * @dev Migrates staker to new version of staking contract defined as "migrator"..
     * @param staker Address of user to migrate
     *
     * Emits a {MigrationToV3Completed} event.
     */
    function migrate(address staker, address newStaking)
        external
        nonReentrant
        updateAllRewards(staker)
        onlyRole(MIGRATION_MANAGER_ROLE)
    {
        uint256 balance = stakeBalance[staker];
        require(stakeBalance[staker] > 0, "no stake to migrate");

        stakeBalance[staker] = 0;
        totalStake -= balance;

        uint256 totalBalanceBefore = stakeToken.balanceOf(address(this));
        stakeToken.safeApprove(newStaking, balance);
        IStakingCore(newStaking).receiveMigration(staker, balance);
        require(stakeToken.balanceOf(address(this)) == totalBalanceBefore - balance, "receiveMigration failed");

        emit MigrationCompleted(msg.sender, staker, newStaking, balance);
    }

    /**
     * @notice Pure reverting function
     */
    function receiveMigration(address, uint256) external pure {
        revert("Not supported");
    }

    // ┌───────────────────────┐
    // │   __  __ _            │
    // │  |  \/  (_)___  ___   │
    // │  | |\/| | / __|/ __|  │
    // │  | |  | | \__ \ (__   │
    // │  |_|  |_|_|___/\___|  │
    // │                       │
    // └───────────────────────┘

    /**
     * @notice Sets AntTokenV2 address.
     * @param antToken_ AntTokenV2 address
     */
    function setAntToken(address antToken_) public onlyRole(DEFAULT_ADMIN_ROLE) {
        require(antToken_ != address(0), "antToken cannot be 0x0");

        _revokeRole(REWARD_MANAGER_ROLE, address(antToken));
        _grantRole(REWARD_MANAGER_ROLE, antToken_);
        antToken = IAntTokenV2(antToken_);
        emit AntTokenAddressSet(antToken_);
    }

    /**
     * @notice Sets WAVAX address.
     * @param wavax_ WAVAX address
     */
    function setWavax(address wavax_) public onlyRole(DEFAULT_ADMIN_ROLE) {
        require(wavax_ != address(0), "WAVAX cannot be 0x0");

        wavax = IWAVAX(wavax_);
        emit WavaxAddressSet(wavax_);
    }

    /**
     * @notice Pauses stake functionalities.
     */
    function pauseStaking() external onlyRole(DEFAULT_ADMIN_ROLE) whenNotPaused {
        super._pause();
    }

    /**
     * @notice Resumes stake functionalities.
     */
    function unpauseStaking() external onlyRole(DEFAULT_ADMIN_ROLE) whenPaused {
        super._unpause();
    }

    /**
     * @notice Allow to receive AVAX
     */
    receive() external payable {} // solhint-disable-line no-empty-blocks
}
