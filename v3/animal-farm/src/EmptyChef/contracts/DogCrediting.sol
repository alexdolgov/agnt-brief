// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/interfaces/IERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

contract DogCrediting is Ownable, ReentrancyGuard {

    uint256 public payoutRate = 2;
    uint256 public APY = 35;
    uint256 public rewardRatio;

    IERC20 public RewardToken = IERC20(0xa0feB3c81A36E885B6608DF7f0ff69dB97491b58); //todo set to dog
    IERC20 public StakedToken = IERC20(0xa0feB3c81A36E885B6608DF7f0ff69dB97491b58); //set to busd/lp token

    uint256 public TESTING_STAKED_COUNT = 0;
    uint256 public TESTING_REWARD_COUNT = 0;
    uint256 public TESTING_DOGS_PAYED_ON_CREDIT = 0;
    bool public isCreditingActive = false;

    uint256 public rewardStartTime;

    // Info of each user.
    struct UserCreditingInfo {
        uint256 amount;
    }

    struct UserStakedInfo {
        uint256 claimed;
        uint256 staked;
        uint256 deposit_time;
        uint256 last_claim_time;
        uint256 last_reward_claim_time;
        uint256 reward_time_counter;
    }

    mapping(address => UserCreditingInfo) public userCreditInfo;
    mapping(address => UserStakedInfo) public userStakeInfo;

    constructor(uint256 _rewardRatio, uint256 _rewardStartTime){
        rewardRatio = _rewardRatio;
        require(_rewardStartTime > block.timestamp, 'must be in future');
        rewardStartTime = _rewardStartTime;
    }

    function creditLPToStaking(uint256 _percentageVested) external nonReentrant {
        require(isCreditingActive, 'not active yet');
        require(_percentageVested <= 100, 'invalid percentage');

        UserCreditingInfo storage user = userCreditInfo[msg.sender];
        require(user.amount > 0, 'nothing to credit');

        uint256 amountToVest = user.amount * _percentageVested / 100;
        userStakeInfo[msg.sender].staked = amountToVest;

        if(block.timestamp <= rewardStartTime){
            userStakeInfo[msg.sender].deposit_time = rewardStartTime;
            userStakeInfo[msg.sender].last_claim_time = rewardStartTime;
            userStakeInfo[msg.sender].last_reward_claim_time = rewardStartTime;
        }else{
            userStakeInfo[msg.sender].deposit_time = block.timestamp;
            userStakeInfo[msg.sender].last_claim_time = block.timestamp;
            userStakeInfo[msg.sender].last_reward_claim_time = block.timestamp;
        }

        if (user.amount - amountToVest > 0){
            payoutRewards(user.amount - amountToVest);
        }

        user.amount = 0;
    }

    function creditLpToStakingUser(address _user, uint256 _staked, uint256 rewardTime) external onlyOwner nonReentrant {
        require(isCreditingActive, 'not active yet');
        userStakeInfo[_user].staked = _staked;

        if(block.timestamp <= rewardStartTime){
            userStakeInfo[_user].deposit_time = rewardStartTime;
            userStakeInfo[_user].last_claim_time = rewardStartTime;
            userStakeInfo[_user].last_reward_claim_time = rewardStartTime;
        }else{
            userStakeInfo[_user].deposit_time = rewardTime;
            userStakeInfo[_user].last_claim_time = rewardTime;
            userStakeInfo[_user].last_reward_claim_time = rewardTime;
        }

    }

    function payoutRewards(uint256 _amountStakeToken) internal {
        RewardToken.transfer(msg.sender, ((_amountStakeToken * rewardRatio * 2) / 1e4));
    }

    function claim() external nonReentrant {
        require(isCreditingActive, 'not active yet');
        require(block.timestamp > rewardStartTime, 'rewards not active yet');

        UserStakedInfo storage user = userStakeInfo[msg.sender];
        require(user.staked > 0, 'nothing staked');

        uint256 payout = availableToClaim(msg.sender);
        user.claimed += payout;
        user.last_claim_time = block.timestamp;
        TESTING_STAKED_COUNT += payout;
        StakedToken.transfer(msg.sender, payout);
    }

    function claimDogs() external nonReentrant {
        require(block.timestamp > rewardStartTime, 'rewards not active yet');
        
        UserStakedInfo storage user = userStakeInfo[msg.sender];
        require(user.staked > 0, 'nothing staked');

        uint256 rewardPayout = pendingRewards(msg.sender);

        uint256 timePassed = block.timestamp - userStakeInfo[msg.sender].last_reward_claim_time;

        user.reward_time_counter += timePassed;
        if (user.reward_time_counter > 50 days){
            user.reward_time_counter = 50 days;
        }

        user.last_reward_claim_time = block.timestamp;
        RewardToken.transfer(msg.sender, rewardPayout);
    }

    function pendingRewards(address _user) public view returns(uint256){
        if (block.timestamp < rewardStartTime){
            return 0;
        }

        uint256 stakedRewards = (userStakeInfo[_user].staked - userStakeInfo[_user].claimed) * rewardRatio;
        uint256 rewardsPerYear = stakedRewards * APY / 100;
        uint256 rewardsPerSecond = rewardsPerYear / 365 days;
        uint256 timePassed = block.timestamp - userStakeInfo[_user].last_reward_claim_time;

        if (timePassed + userStakeInfo[_user].reward_time_counter > 50 days){
            timePassed = 50 days - userStakeInfo[_user].reward_time_counter;
        }

        uint256 earnedTotal = (rewardsPerSecond * timePassed) / 1e4;


        return earnedTotal;
    }

    function dogsInLp(address _user) public view returns(uint256){
        return userStakeInfo[_user].staked * rewardRatio;
    }

    function setUserCreditInfo(address[] memory _users, uint256[] memory _usersCreditingData) external onlyOwner {
        require(_users.length == _usersCreditingData.length);
        for (uint256 i = 0; i < _users.length; i++) {
            userCreditInfo[_users[i]].amount = _usersCreditingData[i];
        }
    }

    function availableToClaim(address _addr) public view returns(uint256 payout) {
        if (block.timestamp < rewardStartTime){
            return 0;
        }

        uint256 share = userStakeInfo[_addr].staked * (payoutRate * 1e18) / (100e18) / (24 hours); //divide the profit by payout rate and seconds in the day
        payout = share * (block.timestamp - userStakeInfo[_addr].last_claim_time);

        if (userStakeInfo[_addr].claimed + payout > userStakeInfo[_addr].staked) {
            payout = userStakeInfo[_addr].staked - userStakeInfo[_addr].claimed;
        }

        return payout;

    }


    // Admin Functions
    function toggleCreditingActive(bool _isActive) external onlyOwner {
        isCreditingActive = _isActive;
    }

    function updatePayoutRate(uint256 _payoutRate) external onlyOwner {
        payoutRate = _payoutRate;
    }

    function updateRewardStartTime(uint256 _rewardStartTime) external onlyOwner {
        rewardStartTime = _rewardStartTime;
    }

    function updateApy(uint256 _APY) external onlyOwner {
        APY = _APY;
    }

    function updateRewardRatio(uint256 _rewardRatio) external onlyOwner {
        rewardRatio = _rewardRatio;
    }

    function updateRewardToken(IERC20 _rewardToken) external onlyOwner {
        RewardToken = _rewardToken;
    }

    function updateStakedToken(IERC20 _stakedToken) external onlyOwner {
        StakedToken = _stakedToken;
    }

    function inCaseTokensGetStuck(address _token, uint256 _amount, address _to) external onlyOwner {
        IERC20(_token).transfer(_to, _amount);
    }
}