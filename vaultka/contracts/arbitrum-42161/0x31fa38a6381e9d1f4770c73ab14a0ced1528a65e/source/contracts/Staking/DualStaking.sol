// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import { Pausable } from "@openzeppelin/contracts/security/Pausable.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title Vaultka Tokenomics - DualStaking Contract
 * @notice  accept VKA and esVKA as staking token, and earn esVKA and USDC (Protocol Fee) as reward.
 * @author Vaultka
 **/

contract DualStaking is ReentrancyGuard, Pausable, Ownable {
    using SafeERC20 for IERC20;

    struct DebtRecord {
        uint256 debtUSDC;
        uint256 depositTimestamp;
    }

    /* ========== STATE VARIABLES ========== */
    IERC20 public immutable stakingToken1;
    IERC20 public immutable stakingToken2;
    IERC20 public immutable rewardToken;
    IERC20 public immutable usdcToken;
    uint256 public periodFinish;
    uint256 public rewardRate;
    uint256 public rewardsDuration = 7 days;
    uint256 public lastUpdateTime;
    uint256 public rewardTokenForDistribution;

    uint256 public rewardPerTokenStored;
    uint256 public totalStakedAmount;
    uint256 public accUSDCperTokens;

    uint256 public rewardsUSDC;

    uint256 public withdrawalTimeLock;
    mapping(address => uint256) public lastStakedTime;
    mapping(address => uint256) public userRewardPerTokenPaid;
    mapping(address => uint256) public rewards;
    mapping(address => mapping(address => uint256)) public depositBalances;
    mapping(address => uint256) public stakedAmounts;
    mapping(address => bool) public isTreasury;
    mapping(address => bool) public isHandler;
    mapping(address => DebtRecord) public debtRecord;

    /* ========== EVENTS ========== */
    event RewardAdded(uint256 reward);
    event Staked(address indexed user, uint256 amount);
    event Withdrawn(address indexed user, uint256 amount);
    event RewardPaid(address indexed user, uint256 reward);
    event RewardsDurationUpdated(uint256 newDuration);
    event ProtocolFeeClaimed(address indexed user, uint256 amount);
    event WithdrawalTimeLockUpdated(uint256 indexed newTimeLock);

    /* ========== MODIFIERS ========== */

    modifier updateReward(address account) {
        rewardPerTokenStored = rewardPerToken();
        lastUpdateTime = lastTimeRewardApplicable();
        if (account != address(0)) {
            rewards[account] = earned(account);
            userRewardPerTokenPaid[account] = rewardPerTokenStored;
        }
        _;
    }
    /**
     * @notice Throws if called by any account other than the Treasury.
     */

    modifier onlyTreasury() {
        require(isTreasury[msg.sender], "ONLY_TREASURY");
        _;
    }
    //add a handler modifier
    modifier onlyHandler() {
        require(isHandler[msg.sender], "DualStaking: caller is not the handler");
        _;
    }

    /* ========== CONSTRUCTOR ========== */

    /// @notice constructor
    /// @param _rewardToken reward token is esVKA in this case
    /// @param _VKAtoken governance token
    /// @param _esVKAtoken escrowed token
    /// @param _usdcToken USDC token
    constructor(address _rewardToken, address _VKAtoken, address _esVKAtoken, address _usdcToken) {
        require(
            _rewardToken != address(0) &&
                _VKAtoken != address(0) &&
                _esVKAtoken != address(0) &&
                _usdcToken != address(0),
            "No 0 addresses"
        );

        rewardToken = IERC20(_rewardToken);
        stakingToken1 = IERC20(_VKAtoken);
        stakingToken2 = IERC20(_esVKAtoken);
        usdcToken = IERC20(_usdcToken);
        isHandler[msg.sender] = true;
    }

    /* ========== RESTRICTED FUNCTIONS ========== */
    ///@notice set reward duration for the staking contract
    ///@param _rewardsDuration duration of the reward

    function setRewardsDuration(uint256 _rewardsDuration) external onlyOwner {
        require(
            block.timestamp > periodFinish,
            "Previous rewards period must be complete before changing the duration for the new period"
        );
        rewardsDuration = _rewardsDuration;
        emit RewardsDurationUpdated(rewardsDuration);
    }

    ///@notice set treasury address
    ///@param _treasury address of the treasury
    ///@param _isActive bool value to set the treasury active or inactive
    function setTreasury(address _treasury, bool _isActive) external onlyOwner {
        require(_treasury != address(0), "No 0 address");
        isTreasury[_treasury] = _isActive;
    }

    ///@notice set withdrawal time lock
    ///@param newTimeLock new withdrawal time lock
    function setWithdrawalTimeLock(uint256 newTimeLock) external onlyOwner {
        //the max withdraw time lock is 48 hours
        require(newTimeLock <= 172800, "Invalid time lock");
        withdrawalTimeLock = newTimeLock;
        emit WithdrawalTimeLockUpdated(newTimeLock);
    }

    ///@notice manage the reward distribution over a longer period of time, token will be transferred to this contract from the owner
    ///@param reward amount of reward to be distributed

    function notifyRewardAmount(uint256 reward) external updateReward(address(0)) onlyHandler {
        require(reward > 0, "Reward cannot be 0");

        if (block.timestamp >= periodFinish) {
            rewardRate = reward / rewardsDuration;
        } else {
            uint256 remaining = periodFinish - block.timestamp;
            uint256 leftover = remaining * rewardRate;
            rewardRate = (reward + leftover) / rewardsDuration;
        }

        rewardTokenForDistribution += reward;
        require(rewardRate <= rewardTokenForDistribution / rewardsDuration, "Provided reward too high");
        lastUpdateTime = block.timestamp;
        periodFinish = block.timestamp + rewardsDuration;

        //transfer the esVKA token into the contract
        rewardToken.safeTransferFrom(msg.sender, address(this), reward);

        emit RewardAdded(reward);
    }

    ///@notice function to receive protocol fees, only perform when there is a staked amount
    ///@param _amount amount of protocol fee to be received

    function receiveProtocolFees(uint256 _amount) external onlyTreasury {
        require(_amount > 0, "Protocol Fee less than 0");
        require(totalStakedAmount > 0, "No staked amount");

        accUSDCperTokens += (_amount * 1e18) / totalStakedAmount;

        usdcToken.safeTransferFrom(msg.sender, address(this), _amount);
    }

    /// @notice stake function to stake VKA or esVKA token
    /// @param amount amount of VKA or esVKA token to be staked
    /// @param token address of the token to be staked
    function stake(uint256 amount, address token) external nonReentrant whenNotPaused updateReward(msg.sender) {
        require(amount > 0, "Cannot stake 0");
        require(token == address(stakingToken1) || token == address(stakingToken2), "Invalid token");
        _claimProtocolFee();

        DebtRecord storage dr = debtRecord[msg.sender];
        totalStakedAmount += amount;
        stakedAmounts[msg.sender] += amount;
        depositBalances[msg.sender][token] += amount;
        dr.debtUSDC = (stakedAmounts[msg.sender] * accUSDCperTokens) / 1e18;
        lastStakedTime[msg.sender] = block.timestamp;

        IERC20(token).safeTransferFrom(msg.sender, address(this), amount);

        emit Staked(msg.sender, amount);
    }

    /// @notice withdraw function to withdraw VKA or esVKA token
    /// @param amount amount of VKA or esVKA token to be withdrawn
    /// @param token address of the token to be withdrawn

    function withdraw(uint256 amount, address token) external nonReentrant updateReward(msg.sender) {
        require(amount > 0, "Cannot withdraw 0");
        require(depositBalances[msg.sender][token] >= amount, "Withdrawal amount exceeds deposited amount");
        require(
            block.timestamp >= lastStakedTime[msg.sender] + withdrawalTimeLock,
            "Withdrawal timelock not yet passed"
        );
        _claimProtocolFee();

        DebtRecord storage dr = debtRecord[msg.sender];
        totalStakedAmount -= amount;
        stakedAmounts[msg.sender] -= amount;
        depositBalances[msg.sender][token] -= amount;
        dr.debtUSDC = (stakedAmounts[msg.sender] * accUSDCperTokens) / 1e18;

        IERC20(token).safeTransfer(msg.sender, amount);
        emit Withdrawn(msg.sender, amount);
    }

    /// @notice get reward function to get reward in esVKA token
    function getReward() public nonReentrant updateReward(msg.sender) {
        uint256 reward = rewards[msg.sender];
        if (reward > 0) {
            rewards[msg.sender] = 0;
            rewardTokenForDistribution -= reward;
            rewardToken.safeTransfer(msg.sender, reward);

            emit RewardPaid(msg.sender, reward);
        }
    }

    /// @notice function to claim protocol fee in USDC token
    function claimProtocolFee() public {
        uint256 USDCRewards;
        USDCRewards = pendingRewardsUSDC(msg.sender);
        if (USDCRewards > 0 && totalStakedAmount > 0) {
            DebtRecord storage dr = debtRecord[msg.sender];
            uint256 stakedToken = stakedAmounts[msg.sender];
            dr.debtUSDC = (stakedToken * accUSDCperTokens) / 1e18;
            rewardsUSDC += USDCRewards;
            IERC20(usdcToken).safeTransfer(msg.sender, USDCRewards);
            emit ProtocolFeeClaimed(msg.sender, USDCRewards);
        }
    }

    /// @notice function to claim protocol fee and re stake the esVKA rewards
    function compound() external nonReentrant updateReward(msg.sender) {
        _claimProtocolFee();
        uint256 reward = rewards[msg.sender];
        rewards[msg.sender] = 0;
        rewardTokenForDistribution -= reward;
        DebtRecord storage dr = debtRecord[msg.sender];
        totalStakedAmount += reward;
        stakedAmounts[msg.sender] += reward;
        depositBalances[msg.sender][address(rewardToken)] += reward;
        dr.debtUSDC = (stakedAmounts[msg.sender] * accUSDCperTokens) / 1e18;
        lastStakedTime[msg.sender] = block.timestamp;
        emit Staked(msg.sender, reward);
    }

    ///@notice function to check the last time reward applicable
    function lastTimeRewardApplicable() public view returns (uint256) {
        return block.timestamp < periodFinish ? block.timestamp : periodFinish;
    }

    /// @notice function to check the reward per token
    function rewardPerToken() public view returns (uint256) {
        if (totalStakedAmount == 0) {
            return rewardPerTokenStored;
        }

        uint256 timeDifference = lastTimeRewardApplicable() - lastUpdateTime;
        uint256 rewardForTimeDifference = timeDifference * rewardRate * 1e18;
        uint256 rewardPerTokenForTimeDifference = rewardForTimeDifference / totalStakedAmount;
        uint256 totalRewardPerToken = rewardPerTokenStored + rewardPerTokenForTimeDifference;

        return totalRewardPerToken;
    }

    /// @notice function to check the reward earned by a user
    /// @param account address of the user
    function earned(address account) public view returns (uint256) {
        // Calculate the difference between the current reward per token and the reward per token already paid to the account
        uint256 yetToBePaidRewardPerToken = rewardPerToken() - userRewardPerTokenPaid[account];

        // Multiply the account's balance with the yet-to-be-paid reward per token
        uint256 yetToBePaidReward = (stakedAmounts[account] * yetToBePaidRewardPerToken) / 1e18;

        // Add the already-accrued rewards of the account. The result is the total reward earned by the account
        uint256 totalRewardEarned = yetToBePaidReward + rewards[account];

        return totalRewardEarned;
    }

    function pendingRewardsESVKA(address account) public view returns (uint256 yetToBePaidReward) {
        if (totalStakedAmount == 0) {
            return 0;
        }
        uint256 yetToBePaidRewardPerToken = rewardPerToken() - userRewardPerTokenPaid[account];

        yetToBePaidReward = (stakedAmounts[account] * yetToBePaidRewardPerToken) / 1e18;

        return yetToBePaidReward;
    }

    ///@notice function to check the pending rewards in USDC
    ///@param account address of the user
    function pendingRewardsUSDC(address account) public view returns (uint) {
        if (totalStakedAmount == 0) {
            return 0;
        }
        DebtRecord storage dr = debtRecord[account];
        uint256 stakedToken = stakedAmounts[account];
        uint256 pendings = (stakedToken * accUSDCperTokens) / 1e18 - dr.debtUSDC;
        return (pendings);
    }

    ///@notice function to check the pending rewards in esVKA
    function getRewardForDuration() public view returns (uint256) {
        return rewardRate * rewardsDuration;
    }

    /// @notice function to claim protocol fee in USDC token
    ///@dev this function doesn't update the debt value as it will be done later in the withraw / deposit function.
    function _claimProtocolFee() internal {
        uint256 USDCRewards;
        USDCRewards = pendingRewardsUSDC(msg.sender);
        if (USDCRewards > 0 && totalStakedAmount > 0) {
            rewardsUSDC += USDCRewards;
            IERC20(usdcToken).safeTransfer(msg.sender, USDCRewards);
        }
        emit ProtocolFeeClaimed(msg.sender, USDCRewards);
    }
}
