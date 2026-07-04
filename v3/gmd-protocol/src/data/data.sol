// File: govdata.sol


pragma solidity ^0.7.6;
pragma abicoder v2;

 struct UserInfo {
   
        uint256 RPamount;
        uint256 amount;     // How many LP tokens the user has provided.
        uint256 rewardDebt; // Reward debt. See explanation below.
        uint256 RPrewardDebt; // Reward debt. See explanation below.
        //
        // We do some fancy math here. Basically, any point in time, the amount of WETHs
        // entitled to a user but is pending to be distributed is:
        //
        //   pending reward = (user.amount * pool.accWETHPerShare) - user.rewardDebt
        //
        // Whenever a user deposits or withdraws LP tokens to a pool. Here's what happens:
        //   1. The pool's `accWETHPerShare` (and `lastRewardBlock`) gets updated.
        //   2. User receives the pending reward sent to his/her address.
        //   3. User's `amount` gets updated.
        //   4. User's `rewardDebt` gets updated.
}


interface staking {
    function userInfo(uint256 _pid, address _user) external view returns(UserInfo memory);
}

contract data{

    function getUserPower(address _user, staking stake) external view returns(uint256){
        uint256 amount1 = stake.userInfo(0, _user).amount;
        uint256 amount2 = stake.userInfo(1, _user).amount;
        return  (amount1 + amount2);
    }

    function getUserPowerWRP(address _user, staking stake) external view returns(uint256){
        uint256 amount1 = stake.userInfo(0, _user).amount + stake.userInfo(0, _user).RPamount;
        uint256 amount2 = stake.userInfo(1, _user).amount+ stake.userInfo(0, _user).RPamount;
        return  (amount1 + amount2);
    }
}