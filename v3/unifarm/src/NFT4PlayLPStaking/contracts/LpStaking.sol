// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";

// https://docs.synthetix.io/contracts/RewardsDistributionRecipient
abstract
contract RewardsDistributionRecipient is Ownable {
    address public rewardsDistribution;

    function notifyRewardAmount(uint256 reward) external virtual;

    modifier onlyRewardsDistribution() {
        require(msg.sender == rewardsDistribution, "Caller is not RewardsDistribution contract");
        _;
    }

    function setRewardsDistribution(address _rewardsDistribution) external onlyOwner {
        rewardsDistribution = _rewardsDistribution;
    }
}


interface IStakingRewards {
    // Views
    function lastTimeRewardApplicable() external view returns (uint256);

    function rewardPerToken() external view returns (uint256);

    function rewardEarned(address account) external view returns (uint256);

    function getRewardForDuration() external view returns (uint256);

    function totalSupply() external view returns (uint256);

    function balanceOf(address account) external view returns (uint256);

    // Mutative

    function stake(uint256 amount) external;

    function withdraw(uint256 amount, bool payingCharges) external;

    function getReward() external;

    function exit() external;
}


contract NFT4PlayLPStaking is IStakingRewards, RewardsDistributionRecipient, ReentrancyGuard, Pausable {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    /* ========== STATE VARIABLES ========== */

    
    IERC20 public rewardToken;
    IERC20 public LPToken;
    address public wallet;
    uint256 public periodFinish = 0;
    uint256 public rewardRate = 0;
    uint256 public rewardsDuration = 30 days;
    uint256 public lastUpdateTime;
    uint256 public rewardPerTokenStored;
    uint256 public coolDownPeriod = 604800;
    uint256 public withdrawCharges = 7;
    uint256 public minimumWithdraw = 0;
    uint256 public minstake = 0;
    uint256 public totalRequestedAmount = 0;

    mapping(address => uint256) public userRewardPerTokenPaid;
    mapping(address => uint256) public rewards;
    mapping(address => uint256) public requestedTime;
    mapping(address => uint256) public requestedAmount;

    uint256 private _totalSupply;
    mapping(address => uint256) private _balances;
    

    /* ========== CONSTRUCTOR ========== */

    constructor(
        address _rewardsDistribution,
        address _wallet,
        address _rewardToken,
        address _LPToken
    ) {
        rewardToken = IERC20(_rewardToken);
        LPToken = IERC20(_LPToken);
        rewardsDistribution = _rewardsDistribution;
        wallet = _wallet;
    }
    
    //Update the wallet
    function updateWallet(address _wallet) public onlyOwner {
        wallet = _wallet;
    }
    
    //Update withdraw charges
    function updateCharges(uint256 percentage) public onlyOwner {
        withdrawCharges = percentage;
    }
    
    //Update Cooldown period
    function updateCoolDownPeriod(uint256 NewPeriod) public onlyOwner {
        coolDownPeriod = NewPeriod.mul(86400);
    }

    //Update Minimum staking amount
    function updateMinStakeAmount(uint _minvalue) external onlyOwner{
        minstake = _minvalue;
    }

    /* ========== VIEWS ========== */

    function totalSupply() external view override returns (uint256) {
        return _totalSupply.sub(totalRequestedAmount);
    }

    function balanceOf(address account) external view override returns (uint256) {
        return _balances[account];
    }
    
    function lastTimeRewardApplicable() public view override returns (uint256) {
        return Math.min(block.timestamp, periodFinish);
    }

    function rewardPerToken() public view override returns (uint256) {
        if (_totalSupply.sub(totalRequestedAmount) == 0) {
            return rewardPerTokenStored;
        }
        return
            rewardPerTokenStored.add(
                lastTimeRewardApplicable().sub(lastUpdateTime).mul(rewardRate).mul(1e18).div((_totalSupply).sub(totalRequestedAmount))
            );
    }
    
    function rewardEarned(address account) public view override returns (uint256) {
        return (_balances[account].sub(requestedAmount[account])).mul(rewardPerToken().sub(userRewardPerTokenPaid[account])).div(1e18).add(rewards[account]);
    }

    function getRewardForDuration() external view override returns (uint256) {
        return rewardRate.mul(rewardsDuration);
    }
    

    /* ========== MUTATIVE FUNCTIONS ========== */

    function stake(uint256 amount) external override nonReentrant whenNotPaused updateReward(msg.sender) {
        require(amount > 0, "Cannot stake 0");
        require(_balances[msg.sender].add(amount) >= minstake, "Stake should be more than MinStakeValue");
        _totalSupply = _totalSupply.add(amount);
        _balances[msg.sender] = _balances[msg.sender].add(amount);
        LPToken.safeTransferFrom(msg.sender, address(this), amount);
        emit Staked(msg.sender, amount);
    }                                                  

    function withdraw(uint256 amount, bool payingCharges) public override nonReentrant updateReward(msg.sender)  {
        require(amount > minimumWithdraw, "Cannot withdraw 0");
        require(_balances[msg.sender] >= amount, "Not enough balance to withdraw amount");
        uint256 balance = _balances[msg.sender].sub(amount);
        uint256 flag = 0;
        if(balance < minstake || balance == 0){
            amount = _balances[msg.sender];
            flag = 1;
        }
        if(payingCharges == true){
            _balances[msg.sender] = _balances[msg.sender].sub(amount);
            _totalSupply = _totalSupply.sub(amount);
            uint256 fee = amount.mul(withdrawCharges).div(100);
            LPToken.safeTransfer(wallet, fee);
            amount = amount.sub(fee);
            LPToken.safeTransfer(msg.sender, amount);
            if(flag == 0){
                emit Withdrawn(msg.sender, amount);
            }
            else{
                emit WithdrawnAll(msg.sender, amount);
            }
            if(_balances[msg.sender] < requestedAmount[msg.sender] || _balances[msg.sender] == 0){
                totalRequestedAmount = totalRequestedAmount.sub(requestedAmount[msg.sender]);
                requestedAmount[msg.sender] = 0;
                requestedTime[msg.sender] = 0;
            }
        }
        else{ 
            require(requestedAmount[msg.sender] != amount,"amount already requested");
            totalRequestedAmount = totalRequestedAmount.sub(requestedAmount[msg.sender]).add(amount);
            requestedAmount[msg.sender] = amount;
            requestedTime[msg.sender] = block.timestamp;
            if(flag == 0){
                emit Requested(msg.sender, amount);
            }
            else{
                emit RequestedAll(msg.sender, amount);
            }
        }
    }
    
    function claim(bool payingCharges) public nonReentrant updateReward(msg.sender) {
        uint256 amount = requestedAmount[msg.sender];
        if(payingCharges == true){
            _balances[msg.sender] = _balances[msg.sender].sub(amount);
            _totalSupply = _totalSupply.sub(amount);
            uint256 fee = amount.mul(withdrawCharges).div(100);
            LPToken.safeTransfer(wallet, fee);
            amount = amount.sub(fee);
        }
        else{
            require(requestedTime[msg.sender].add(coolDownPeriod) <= block.timestamp, 'You can withdraw after 8 days of requesting otherwise pay charges first');
            _balances[msg.sender] = _balances[msg.sender].sub(amount);
            _totalSupply = _totalSupply.sub(amount);
        }
        LPToken.safeTransfer(msg.sender, amount);
        emit Withdrawn(msg.sender, amount);
        totalRequestedAmount = totalRequestedAmount.sub(requestedAmount[msg.sender]);
        requestedTime[msg.sender] = 0;
        requestedAmount[msg.sender] = 0;
    }
    
    function cancelWithdraw() public updateReward(msg.sender){
        totalRequestedAmount = totalRequestedAmount.sub(requestedAmount[msg.sender]);
        requestedAmount[msg.sender] = 0;
        requestedTime[msg.sender] = 0;
    }

    function getReward() public override nonReentrant updateReward(msg.sender) {
        uint256 reward = rewards[msg.sender];
        if (reward > 0) {
            rewards[msg.sender] = 0;
            rewardToken.safeTransfer(msg.sender, reward);
            emit RewardPaid(msg.sender, reward);
        }
    }

    function exit() external override {
        cancelWithdraw();
        withdraw(_balances[msg.sender], true);
        getReward();
    }

    /* ========== RESTRICTED FUNCTIONS ========== */

    function notifyRewardAmount(uint256 reward) external override onlyRewardsDistribution updateReward(address(0)) {
        if (block.timestamp >= periodFinish) {
            rewardRate = reward.div(rewardsDuration);
        } else {
            uint256 remaining = periodFinish.sub(block.timestamp);
            uint256 leftover = remaining.mul(rewardRate);
            rewardRate = reward.add(leftover).div(rewardsDuration);
        }

        // Ensure the provided reward amount is not more than the balance in the contract.
        // This keeps the reward rate in the right range, preventing overflows due to
        // very high values of rewardRate in the earned and rewardsPerToken functions;
        // Reward + leftover must be less than 2^256 / 10^18 to avoid overflow.
        uint balance = rewardToken.balanceOf(address(this));
        require(rewardRate <= balance.div(rewardsDuration), "Provided reward too high");

        lastUpdateTime = block.timestamp;
        periodFinish = block.timestamp.add(rewardsDuration);
        emit RewardAdded(reward);
    }

    // Added to support recovering LP Rewards from other systems to be distributed to holders
    function recoverERC20(address tokenAddress, uint256 tokenAmount) external onlyOwner {
        // Cannot recover the staking token or the rewards token
        require(
            tokenAddress != address(LPToken) &&tokenAddress != address(rewardToken),
            "Cannot withdraw the staking or rewards tokens"
        );
        IERC20(tokenAddress).safeTransfer(owner(), tokenAmount);
        emit Recovered(tokenAddress, tokenAmount);
    }

    function setRewardsDuration(uint256 _rewardsDuration) external onlyOwner {
        require(
            periodFinish == 0 || block.timestamp > periodFinish,
            "Previous rewards period must be complete before changing the duration for the new period"
        );
        rewardsDuration = _rewardsDuration;
        emit RewardsDurationUpdated(rewardsDuration);
    }
 
    /* ========== MODIFIERS ========== */

    modifier updateReward(address account) {
        rewardPerTokenStored = rewardPerToken();
        lastUpdateTime = lastTimeRewardApplicable();
        if (account != address(0)) {
            rewards[account] = rewardEarned(account);
            userRewardPerTokenPaid[account] = rewardPerTokenStored;
        }
        _;
    }

    /* ========== EVENTS ========== */

    event RewardAdded(uint256 reward);
    event Staked(address indexed user, uint256 amount);
    event Withdrawn(address indexed user, uint256 amount);
    event WithdrawnAll(address indexed user, uint amount);
    event Requested(address indexed user, uint amount);
    event RequestedAll(address indexed user, uint amount);
    event RewardPaid(address indexed user, uint256 reward);
    event RewardsDurationUpdated(uint256 newDuration);
    event Recovered(address token, uint256 amount);
}