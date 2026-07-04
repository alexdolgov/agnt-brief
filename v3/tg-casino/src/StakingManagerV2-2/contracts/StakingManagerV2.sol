// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract StakingManagerV2 is Ownable {
    using SafeERC20 for IERC20;

    IERC20 private constant USDC =
        IERC20(0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48);
    IERC20 private constant stakeToken =
        IERC20(0x25B4f5D4C314bCD5d7962734936C957B947cb7CF);

    uint256 public tokensStaked;
    uint256 public harvestedRewards;

    uint256 private lastRewardedBlock;
    uint256 private accumulatedRewardsPerShare;
    uint256 public rewardTokensPerBlock;

    uint256 private constant REWARDS_PRECISION = 1e24;

    uint256 public lockTime;
    uint256 public endBlock;

    uint256 public migrated;

    struct PoolStaker {
        uint256 amount;
        uint256 stakedTime;
        uint256 lastUpdatedBlock;
        uint256 harvestedRewards;
        uint256 rewardDebt;
    }

    mapping(address => PoolStaker) public poolStakers;

    bool public paused;

    event Deposit(address indexed user, uint256 amount);
    event Withdraw(address indexed user, uint256 amount);
    event HarvestRewards(address indexed user, uint256 amount);
    event Paused(address account);
    event Unpaused(address account);

    /**
     * @dev Constructor
     * @param _rewardTokensPerBlock The number of reward tokens per block
     * @param _lockTime The lock time in seconds
     * @param _endBlock The block number when the staking ends
     *
     * Seed from previous contract [0x21d6D6d6FFD8b68e94bf5159Bb029635Af540aE8]
     * @param _tokensStaked The total amount of tokens staked from previous contract
     * @param _harvestedRewards The total amount of rewards harvested from previous contract
     * @param _lastRewardedBlock The last rewarded block from previous contract
     * @param _accumulatedRewardsPerShare The accumulated rewards per share from previous contract
     */
    constructor(
        uint256 _rewardTokensPerBlock,
        uint256 _lockTime,
        uint256 _endBlock,
        uint256 _tokensStaked,
        uint256 _harvestedRewards,
        uint256 _lastRewardedBlock,
        uint256 _accumulatedRewardsPerShare
    ) {
        rewardTokensPerBlock = _rewardTokensPerBlock;
        lockTime = _lockTime;
        endBlock = _endBlock;

        tokensStaked = _tokensStaked;
        harvestedRewards = _harvestedRewards;
        lastRewardedBlock = _lastRewardedBlock;
        accumulatedRewardsPerShare = _accumulatedRewardsPerShare;

        paused = true;
    }

    /**
     * @dev This modifier is used to prevent certain functions from being called when the contract is paused
     */
    modifier whenNotPaused() {
        require(!paused, "Staking is paused");
        _;
    }

    /**
     * @dev This modifier is used to allow certain functions to be called only when the contract is paused
     */
    modifier whenPaused() {
        require(paused, "Staking is not paused");
        _;
    }

    /**
     * @dev Triggers stopped state.
     */
    function pause() external onlyOwner whenNotPaused {
        paused = true;
        emit Paused(_msgSender());
    }

    /**
     * @dev Returns to normal state.
     */
    function unpause() external onlyOwner whenPaused {
        paused = false;
        emit Unpaused(_msgSender());
    }

    /**
     * @dev Deposit tokens to the pool
     * @param _amount The amount of tokens to deposit
     */
    function deposit(uint256 _amount) external whenNotPaused {
        require(block.number < endBlock, "Staking has ended");
        require(_amount > 0, "Deposit amount can't be zero");

        PoolStaker storage staker = poolStakers[msg.sender];

        // Update pool stakers
        harvestRewards();

        // Update current staker
        staker.amount += _amount;
        staker.rewardDebt =
            (staker.amount * accumulatedRewardsPerShare) /
            REWARDS_PRECISION;
        if (staker.stakedTime == 0) {
            staker.stakedTime = block.timestamp;
        }
        staker.lastUpdatedBlock = block.number;

        // Update pool
        tokensStaked += _amount;

        // Deposit tokens
        emit Deposit(msg.sender, _amount);
        stakeToken.safeTransferFrom(msg.sender, address(this), _amount);
    }

    /**
     * @dev Withdraw all tokens from existing pool
     */
    function withdraw() external whenNotPaused {
        PoolStaker memory staker = poolStakers[msg.sender];
        uint256 amount = staker.amount;
        require(
            block.number >= endBlock ||
                staker.stakedTime + lockTime <= block.timestamp,
            "You are not allowed to withdraw before locked time"
        );
        require(amount > 0, "Withdraw amount can't be zero");

        // Pay rewards
        harvestRewards();

        // Delete staker
        delete poolStakers[msg.sender];

        // Update pool
        tokensStaked -= amount;

        // Withdraw tokens
        emit Withdraw(msg.sender, amount);
        stakeToken.safeTransfer(msg.sender, amount);
    }

    /**
     * @dev Harvest user rewards
     */
    function harvestRewards() public whenNotPaused {
        _harvestRewards(msg.sender);
    }

    /**
     * @dev Harvest user rewards
     * @param _user The address of the user
     */
    function _harvestRewards(address _user) private {
        updatePoolRewards();
        PoolStaker storage staker = poolStakers[_user];
        uint256 rewardsToHarvest = ((staker.amount *
            accumulatedRewardsPerShare) / REWARDS_PRECISION) -
            staker.rewardDebt;
        if (rewardsToHarvest == 0) {
            return;
        }

        harvestedRewards += rewardsToHarvest;
        staker.harvestedRewards += rewardsToHarvest;
        staker.rewardDebt =
            (staker.amount * accumulatedRewardsPerShare) /
            REWARDS_PRECISION;
        emit HarvestRewards(_user, rewardsToHarvest);
        USDC.safeTransfer(_user, rewardsToHarvest);
    }

    /**
     * @dev Update pool's accumulatedRewardsPerShare and lastRewardedBlock
     */
    function updatePoolRewards() private {
        if (tokensStaked == 0) {
            lastRewardedBlock = block.number;
            return;
        }
        uint256 blocksSinceLastReward = block.number > endBlock
            ? endBlock - lastRewardedBlock
            : block.number - lastRewardedBlock;
        uint256 rewards = blocksSinceLastReward * rewardTokensPerBlock;
        accumulatedRewardsPerShare =
            accumulatedRewardsPerShare +
            ((rewards * REWARDS_PRECISION) / tokensStaked);
        lastRewardedBlock = block.number > endBlock ? endBlock : block.number;
    }

    /**
     * @dev To get the number of rewards that user can get
     * @param _user The address of the user
     */
    function getRewards(address _user) public view returns (uint256) {
        if (tokensStaked == 0) {
            return 0;
        }
        uint256 blocksSinceLastReward = block.number > endBlock
            ? endBlock - lastRewardedBlock
            : block.number - lastRewardedBlock;
        uint256 rewards = blocksSinceLastReward * rewardTokensPerBlock;
        uint256 accCalc = accumulatedRewardsPerShare +
            ((rewards * REWARDS_PRECISION) / tokensStaked);
        PoolStaker memory staker = poolStakers[_user];
        return
            ((staker.amount * accCalc) / REWARDS_PRECISION) - staker.rewardDebt;
    }

    /**
     * @dev To set the lock time
     * @param _lockTime The lock time in seconds
     */
    function setLockTime(uint256 _lockTime) public onlyOwner {
        lockTime = _lockTime;
    }

    /**
     * @dev To set the end block
     * @param _endBlock The block number when the staking ends
     */
    function setEndBlock(uint256 _endBlock) public onlyOwner {
        endBlock = _endBlock;
    }

    /**
     * @dev To set the number of reward tokens per block
     * @param _rewardTokensPerBlock The number of reward tokens per block
     */
    function setRewardsPerBlock(
        uint256 _rewardTokensPerBlock
    ) public onlyOwner {
        rewardTokensPerBlock = _rewardTokensPerBlock;
    }

    /**
     * @dev To withdraw tokens from the contract
     * @param _amountStakeToken The amount of stake token to withdraw
     * @param _amountUSDC The amount of USDC to withdraw
     */
    function withdrawTokens(
        uint256 _amountStakeToken,
        uint256 _amountUSDC
    ) public onlyOwner {
        if (_amountStakeToken > 0)
            stakeToken.safeTransfer(msg.sender, _amountStakeToken);
        if (_amountUSDC > 0) USDC.safeTransfer(msg.sender, _amountUSDC);
    }

    // -- Migration functions - -

    /**
     * @dev Hydrate pool stakers from previous contract.
     * @param _addresses The addresses of the users
     * @param _amounts The amounts of tokens staked by the users
     * @param _stakedTimes The staked times of the users
     * @param _lastUpdatedBlocks The last updated blocks of the users
     * @param _harvestedRewards The harvested rewards of the users
     * @param _rewardDebts The reward debts of the users
     */
    function hydratePoolStakers(
        address[] calldata _addresses,
        uint256[] calldata _amounts,
        uint256[] calldata _stakedTimes,
        uint256[] calldata _lastUpdatedBlocks,
        uint256[] calldata _harvestedRewards,
        uint256[] calldata _rewardDebts
    ) public onlyOwner {
        require(migrated == 0, "Already migrated");
        uint256 length = _addresses.length;

        require(_amounts.length == length, "Amounts length mismatch");
        require(_stakedTimes.length == length, "Staked times length mismatch");
        require(
            _lastUpdatedBlocks.length == length,
            "Last updated blocks length mismatch"
        );
        require(
            _harvestedRewards.length == length,
            "Harvested rewards length mismatch"
        );
        require(_rewardDebts.length == length, "Reward debts length mismatch");

        for (uint256 i = 0; i < length; i++) {
            address _address = _addresses[i];
            PoolStaker storage staker = poolStakers[_address];

            staker.amount = _amounts[i];
            staker.stakedTime = _stakedTimes[i];
            staker.lastUpdatedBlock = _lastUpdatedBlocks[i];
            staker.harvestedRewards = _harvestedRewards[i];
            staker.rewardDebt = _rewardDebts[i];
        }
    }

    /**
     * @dev Complete migration
     */
    function completeMigration() public onlyOwner {
        require(migrated == 0, "Already migrated");
        migrated = 1;
    }
}
