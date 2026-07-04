// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

// Sorbettiere is a "semifredo of popsicle stand" this contract is created to provide single side farm for IFO of Popsicle Finance.
// The contract is based on famous Masterchef contract (Ty guys for that)
// It intakes one token and allows the user to farm another token. Due to the crosschain nature of Popsicle Stand we've swapped reward per block
// to reward per second. Moreover, we've implemented safe transfer of reward instead of mint in Masterchef.
// Future is crosschain...

// The contract is ownable untill the DAO will be able to take over. Popsicle community shows that DAO is coming soon.
// And the contract ownership will be transferred to other contract
contract Sorbettiere is Ownable {
    // Info of each user.
    struct UserInfo {
        uint256 amount; // How many LP tokens the user has provided.
        uint256 rewardDebt; // Reward debt. See explanation below.
        uint256 remainingTokenReward;  // Reward Tokens that weren't distributed for user per pool.
        //
        // We do some fancy math here. Basically, any point in time, the amount of reward token
        // entitled to a user but is pending to be distributed is:
        //
        //   pending reward = (user.amount * pool.accRewardTokenPerShare) - user.rewardDebt
        //
        // Whenever a user deposits or withdraws Staked tokens to a pool. Here's what happens:
        //   1. The pool's `accICEPerShare` (and `lastRewardTime`) gets updated.
        //   2. User receives the pending reward sent to his/her address.
        //   3. User's `amount` gets updated.
        //   4. User's `rewardDebt` gets updated.
    }
    // Info of each pool.
    struct PoolInfo {
        address stakingToken; // Contract address of staked token
        uint256 stakingTokenTotalAmount; //Total amount of deposited tokens
        uint256 accRewardTokenPerShare; // Accumulated ICE per share, times 1e12. See below.
        uint32 lastRewardTime; // Last timestamp number that ICE distribution occurs.
        uint16 allocPoint; // How many allocation points assigned to this pool. ICE to distribute per second.
        
        
    }
    
    address immutable public rewardToken; // The reward token!!
    
    uint256 public rewardTokenPerSecond; // Reward tokens vested per second.
    
    PoolInfo[] public poolInfo; // Info of each pool.
    
    mapping(uint256 => mapping(address => UserInfo)) public userInfo; // Info of each user that stakes tokens.
    
    uint256 public totalAllocPoint = 0; // Total allocation poitns. Must be the sum of all allocation points in all pools.
    
    uint32 public startTime; // The timestamp when reward farming starts.
    
    uint32 public endTime; // Time on which the reward calculation should end

    event Deposit(address indexed user, uint256 indexed pid, uint256 amount);
    event Withdraw(address indexed user, uint256 indexed pid, uint256 amount);
    event EmergencyWithdraw(address indexed user, uint256 indexed pid, uint256 amount);

    constructor(
        address _rewardToken,
        uint256 _rewardTokenPerSecond
    ) Ownable(msg.sender) {
        rewardToken = _rewardToken;
        
        rewardTokenPerSecond = _rewardTokenPerSecond;
    }
    
    function changeEndTime(uint32 addSeconds) external onlyOwner {
        endTime += addSeconds;
    }
    
    // Changes Ice token reward per second. Use this function to moderate the `lockup amount`. Essentially this function changes the amount of the reward
    // which is entitled to the user for his token staking by the time the `endTime` is passed.
    //Good practice to update pools without messing up the contract
    function setRewardTokenPerSecond(uint256 _rewardTokenPerSecond,  bool _withUpdate) external onlyOwner {
        if (_withUpdate) {
            massUpdatePools();
        }
        rewardTokenPerSecond = _rewardTokenPerSecond;
    }
// How many pools are in the contract
    function poolLength() external view returns (uint256) {
        return poolInfo.length;
    }

    // Add a new staking token to the pool. Can only be called by the owner.
    // VERY IMPORTANT NOTICE 
    // ----------- DO NOT add the same staking token more than once. Rewards will be messed up if you do. -------------
    // Good practice to update pools without messing up the contract
    function add(
        uint16 _allocPoint,
        address _stakingToken,
        bool _withUpdate
    ) external onlyOwner {
        if (_withUpdate) {
            massUpdatePools();
        }
        require(startTime != 0, "Sorbettiere: startTime is not set");
        uint256 lastRewardTime =
            block.timestamp > startTime ? block.timestamp : startTime;
        totalAllocPoint +=_allocPoint;
        poolInfo.push(
            PoolInfo({
                stakingToken: _stakingToken,
                stakingTokenTotalAmount: 0,
                allocPoint: _allocPoint,
                lastRewardTime: uint32(lastRewardTime),
                accRewardTokenPerShare: 0
            })
        );
    }

    function setStartTime(uint32 _startTime) external onlyOwner {
        startTime = _startTime;
        endTime = _startTime + 69 days;
    }

    // Update the given pool's ICE allocation point. Can only be called by the owner.
    // Good practice to update pools without messing up the contract
    function set(
        uint256 _pid,
        uint16 _allocPoint,
        bool _withUpdate
    ) external onlyOwner {
        if (_withUpdate) {
            massUpdatePools();
        }
        totalAllocPoint = totalAllocPoint - poolInfo[_pid].allocPoint + _allocPoint;
        poolInfo[_pid].allocPoint = _allocPoint;
    }

    // Return reward multiplier over the given _from to _to time.
    function getMultiplier(uint256 _from, uint256 _to)
        public
        view
        returns (uint256)
    {
        _from = _from > startTime ? _from : startTime;
        if (_from > endTime || _to < startTime) {
            return 0;
        }
        if (_to > endTime) {
            return endTime - _from;
        }
        return _to - _from;
    }

    // View function to see pending ICE on frontend.
    function pendingReward(uint256 _pid, address _user)
        external
        view
        returns (uint256)
    {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][_user];
        uint256 accRewardTokenPerShare = pool.accRewardTokenPerShare;
       
        if (block.timestamp > pool.lastRewardTime && pool.stakingTokenTotalAmount != 0) {
            uint256 multiplier =
                getMultiplier(pool.lastRewardTime, block.timestamp);
            uint256 reward =
                multiplier * rewardTokenPerSecond * pool.allocPoint / totalAllocPoint;
            accRewardTokenPerShare += reward * 1e12 / pool.stakingTokenTotalAmount;
        }
        return user.amount * accRewardTokenPerShare / 1e12 - user.rewardDebt + user.remainingTokenReward;
    }

    // Update reward vairables for all pools. Be careful of gas spending!
    function massUpdatePools() public {
        uint256 length = poolInfo.length;
        for (uint256 pid = 0; pid < length; ++pid) {
            updatePool(pid);
        }
    }

    // Update reward variables of the given pool to be up-to-date.
    function updatePool(uint256 _pid) public {
        PoolInfo storage pool = poolInfo[_pid];
        if (block.timestamp <= pool.lastRewardTime) {
            return;
        }

        if (pool.stakingTokenTotalAmount == 0) {
            pool.lastRewardTime = uint32(block.timestamp);
            return;
        }
        uint256 multiplier = getMultiplier(pool.lastRewardTime, block.timestamp);
        uint256 reward =
            multiplier * rewardTokenPerSecond * pool.allocPoint / totalAllocPoint;
        pool.accRewardTokenPerShare += reward * 1e12 / pool.stakingTokenTotalAmount;
        pool.lastRewardTime = uint32(block.timestamp);
    }

    // Deposit staking tokens to Sorbettiere for ICE allocation.
    function deposit(uint256 _pid, uint256 _amount) public {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];
        updatePool(_pid);
        if (user.amount > 0) {
            uint256 pending =
                user.amount * pool.accRewardTokenPerShare / 1e12 - user.rewardDebt + user.remainingTokenReward;
            user.remainingTokenReward = safeRewardTransfer(msg.sender, pending);
        }

        _safeTransferFrom(pool.stakingToken, msg.sender, _amount);
        user.amount += _amount;
        pool.stakingTokenTotalAmount += _amount;
        user.rewardDebt = user.amount * pool.accRewardTokenPerShare / 1e12;
        emit Deposit(msg.sender, _pid, _amount);
    }

    // Withdraw staked tokens from Sorbettiere.
    function withdraw(uint256 _pid, uint256 _amount) public {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];
        require(user.amount >= _amount, "Sorbettiere: you cant eat that much popsicles");
        updatePool(_pid);
        uint256 pending =
            user.amount * pool.accRewardTokenPerShare / 1e12 - user.rewardDebt + user.remainingTokenReward;
        user.remainingTokenReward = safeRewardTransfer(msg.sender, pending);
        user.amount -= _amount;
        pool.stakingTokenTotalAmount -= _amount;
        user.rewardDebt = user.amount * pool.accRewardTokenPerShare / 1e12;
        _safeTransfer(pool.stakingToken, msg.sender, _amount);
        emit Withdraw(msg.sender, _pid, _amount);
    }
    
    // Withdraw without caring about rewards. EMERGENCY ONLY.
    function emergencyWithdraw(uint256 _pid) public {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];
        uint256 userAmount = user.amount;
        pool.stakingTokenTotalAmount -= userAmount;
        delete userInfo[_pid][msg.sender];
        _safeTransfer(pool.stakingToken, msg.sender, userAmount);
        emit EmergencyWithdraw(msg.sender, _pid, userAmount);
    }

    // Safe ice transfer function. Just in case if the pool does not have enough ICE token,
    // The function returns the amount which is owed to the user
    function safeRewardTransfer(address _to, uint256 _amount) internal returns(uint256) {
        uint256 rewardTokenBalance = _safeBalanceOf(rewardToken);
        if (rewardTokenBalance == 0) { //save some gas fee
            return _amount;
        }
        if (_amount > rewardTokenBalance) { //save some gas fee
            _safeTransfer(rewardToken, _to, rewardTokenBalance);
            return _amount - rewardTokenBalance;
        }
        _safeTransfer(rewardToken, _to, _amount);
        return 0;
    }

    //////////////PRIVATE////////////////

    function _safeBalanceOf(address token) private view returns (uint256)  {
        (bool success, bytes memory response) = address(token).staticcall(
            abi.encodeWithSignature("balanceOf(address)", address(this))
        );
        require(success && response.length == 32);
        return abi.decode(response, (uint));
    }

    function _safeTransfer(address token, address to, uint256 value) private {
        if (value == 0) return;
        (bool success, bytes memory data) = token.call(
            abi.encodeWithSelector(IERC20.transfer.selector, to, value)
        );
        require(success && (data.length == 0 || abi.decode(data, (bool))), "Transfer failed");
    }

    function _safeTransferFrom(address token, address from, uint256 amount) private {
        if (amount == 0) return;
        (bool success, bytes memory data) = token.call(
            abi.encodeWithSelector(IERC20.transferFrom.selector, from, address(this), amount)
        );
        require(success && (data.length == 0 || abi.decode(data, (bool))), "TransferFrom failed");
    }


    // Rescue tokens
    function rescueTokens(
        address token,
        address to,
        uint256 amount
    ) public onlyOwner returns (bool) {
        // transfer to
        _safeTransfer(token, to, amount);
        return true;
    }

    function rescueETH() external onlyOwner {
        payable(msg.sender).transfer(address(this).balance);
    }


}