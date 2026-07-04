// SPDX-License-Identifier: MIT

pragma solidity 0.8.13;

import "../utils/ContractGuard.sol";
import "../interfaces/IEVICToken.sol";
import "../lib/SafeMath.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

// Note that this pool has no minter key of EVICToken (rewards).
// Instead, the governance will call EVICToken distributeReward method and send reward to this pool at the beginning.
contract EVICGenesis is ContractGuard, Ownable {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    address public operator;

    // Info of each user.
    struct UserInfo {
        uint256 amount; // How many tokens the user has provided.
        uint256 rewardDebt; // Reward debt. See explanation below.
    }

    // Info of each pool.
    struct PoolInfo {
        IERC20 token; // Address of LP token contract.
        uint256 allocPoint; // How many allocation points assigned to this pool. EVICToken to distribute.
        uint256 lastRewardTime; // Last time that EVICToken distribution occurs.
        uint256 accEVICTokenPerShare; // Accumulated EVICToken per share, times 1e18. See below.
        bool isStarted; // if lastRewardBlock has passed
        bool isUpdated;
    }

    address public evicToken;

    // Info of each pool.
    PoolInfo[] public poolInfo;

    // Info of each user that stakes LP tokens.
    mapping(uint256 => mapping(address => UserInfo)) public userInfo;

    // Total allocation points. Must be the sum of all allocation points in all pools.
    uint256 public totalAllocPoint;
    // The time when EVICToken mining starts.
    uint256 public poolStartTime;
    // The time when EVICToken mining ends.
    uint256 public poolEndTime;

    bool public updatedPoolNextPhase;

    // Total reward phase 2: 15 * 85% * 3/4 = 9.5625
    uint256 public constant TOTAL_REWARD_POOL_4_NEXT_PHASE = 5.7375 ether; // 60% of (85% of 15 * 3/4) EVIC-WETH
    uint256 public constant TOTAL_REWARD_POOL_3_NEXT_PHASE = 0.478125 ether; // 5% of (85% of 15 * 3/4) CHAM
    uint256 public constant TOTAL_REWARD_POOL_2_NEXT_PHASE = 1.434375 ether; // 15% of (85% of 15 * 3/4) CHAM-USDC
    uint256 public constant TOTAL_REWARD_POOL_1_NEXT_PHASE = 1.434375 ether; // 15% of (85% of 15 * 3/4) AVIC-USDC
    uint256 public constant TOTAL_REWARD_POOL_0_NEXT_PHASE = 0.478125 ether; // 5% of (85% of 15 * 3/4) WETH

    uint256 public constant runningTime = 2 days;
    uint256 public constant TOTAL_USER_REWARD = 12.75 ether; // 85% of 15 Token
    uint256 public constant TOTAL_AIRDROP_REWARD = 0.75 ether; // 5% of 15 Token
    uint256 public constant TOTAL_DAO_REWARD = 1.5 ether; // 10% of 15 Token
    uint256 public evicTokenPerSecondForUser;
    uint256 public evicTokenPerSecondForAirdrop;
    uint256 public evicTokenPerSecondForDao;
    uint256 lastAirdropRewardTime;
    uint256 lastDaoRewardTime;
    address public airdropWallet;

    event Deposit(address indexed user, uint256 indexed pid, uint256 amount);
    event Withdraw(address indexed user, uint256 indexed pid, uint256 amount);
    event EmergencyWithdraw(address indexed user, uint256 indexed pid, uint256 amount);
    event RewardPaid(address indexed user, uint256 amount);

    constructor(
        address _token,
        address _airdropWallet,
        uint256 _poolStartTime) {
        require(block.timestamp < _poolStartTime, "late");
        require(_token != address(0), "!_token");
        require(_airdropWallet != address(0), "!_airdropWallet");
        
        evicToken = _token;
        totalAllocPoint = 0;
        updatedPoolNextPhase = false;
        poolStartTime = _poolStartTime;
        lastAirdropRewardTime = poolStartTime;
        poolEndTime = poolStartTime + runningTime;
        airdropWallet = _airdropWallet;

        evicTokenPerSecondForUser = TOTAL_USER_REWARD.div(runningTime); // 85% of 15  Token / (2days * 24h * 60min * 60s)
        evicTokenPerSecondForAirdrop = TOTAL_AIRDROP_REWARD.div(runningTime); // 5% of 15  Token / (2days * 24h * 60min * 60s)
        evicTokenPerSecondForDao = TOTAL_DAO_REWARD.div(runningTime); // 10% of 15  Token / (2days * 24h * 60min * 60s)

        operator = msg.sender;
    }

    modifier onlyOperator() {
        require(operator == msg.sender, "GenesisPool: caller is not the operator");
        _;
    }

    function checkPoolDuplicate(IERC20 _token) internal view {
        uint256 length = poolInfo.length;
        for (uint256 pid = 0; pid < length; ++pid) {
            require(poolInfo[pid].token != _token, "GenesisPool: existing pool?");
        }
    }

    // Add a new token to the pool. Can only be called by the owner.
    function add(
        uint256 _allocPoint,
        IERC20 _token,
        uint256 _lastRewardTime
    ) public onlyOperator {
        checkPoolDuplicate(_token);
        massUpdatePools();
        if (block.timestamp < poolStartTime) {
            // chef is sleeping
            if (_lastRewardTime == 0) {
                _lastRewardTime = poolStartTime;
            } else {
                if (_lastRewardTime < poolStartTime) {
                    _lastRewardTime = poolStartTime;
                }
            }
        } else {
            // chef is cooking
            if (_lastRewardTime == 0 || _lastRewardTime < block.timestamp) {
                _lastRewardTime = block.timestamp;
            }
        }
        bool _isStarted = (_lastRewardTime <= poolStartTime) || (_lastRewardTime <= block.timestamp);
        poolInfo.push(PoolInfo({token: _token, allocPoint: _allocPoint, lastRewardTime: _lastRewardTime, accEVICTokenPerShare: 0, isStarted: _isStarted, isUpdated: false}));
        if (_isStarted) {
            totalAllocPoint = totalAllocPoint.add(_allocPoint);
        }
    }

    // Update the given pool's EVICToken allocation point. Can only be called by the owner.
    function set(uint256 _pid, uint256 _allocPoint) public onlyOperator {
        massUpdatePools();
        PoolInfo storage pool = poolInfo[_pid];
        if (pool.isStarted) {
            totalAllocPoint = totalAllocPoint.sub(pool.allocPoint).add(_allocPoint);
        }
        pool.allocPoint = _allocPoint;
        pool.isUpdated = true;
    }

    // Return accumulate rewards over the given _from to _to block.
    function getGeneratedReward(uint256 _fromTime, uint256 _toTime) public view returns (uint256) {
        if (_fromTime >= _toTime) return 0;
        if (_toTime >= poolEndTime) {
            if (_fromTime >= poolEndTime) return 0;
            if (_fromTime <= poolStartTime) return poolEndTime.sub(poolStartTime).mul(evicTokenPerSecondForUser);
            return poolEndTime.sub(_fromTime).mul(evicTokenPerSecondForUser);
        } else {
            if (_toTime <= poolStartTime) return 0;
            if (_fromTime <= poolStartTime) return _toTime.sub(poolStartTime).mul(evicTokenPerSecondForUser);
            return _toTime.sub(_fromTime).mul(evicTokenPerSecondForUser);
        }
    }

    // View function to see pending EVICToken on frontend.
    function pending(uint256 _pid, address _user) external view returns (uint256) {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][_user];
        uint256 accEVICTokenPerShare = pool.accEVICTokenPerShare;
        uint256 tokenSupply = pool.token.balanceOf(address(this));
        if (block.timestamp > pool.lastRewardTime && tokenSupply != 0) {
            uint256 _generatedReward = getGeneratedReward(pool.lastRewardTime, block.timestamp);
            uint256 _evicTokenReward = _generatedReward.mul(pool.allocPoint).div(totalAllocPoint);
            accEVICTokenPerShare = accEVICTokenPerShare.add(_evicTokenReward.mul(1e18).div(tokenSupply));
        }
        
        uint256 airdropReward = pendingAirdrop(lastAirdropRewardTime, block.timestamp, _user);
        uint256 daoReward = pendingDao(lastDaoRewardTime, block.timestamp, _user);

        uint256 pendingUser = user.amount.mul(accEVICTokenPerShare).div(1e18).sub(user.rewardDebt);
        return pendingUser.add(airdropReward).add(daoReward);
    }

    function pendingAirdrop(uint256 _fromTime, uint256 _toTime, address _user) internal view returns (uint256) {
        if (isAirdrop(_user)) {
            if (_fromTime >= _toTime) return 0;
            if (_toTime >= poolEndTime) {
                if (_fromTime >= poolEndTime) return 0;
                if (_fromTime <= poolStartTime) return poolEndTime.sub(poolStartTime).mul(evicTokenPerSecondForAirdrop);
                return poolEndTime.sub(_fromTime).mul(evicTokenPerSecondForAirdrop);
            } else {
                if (_toTime <= poolStartTime) return 0;
                if (_fromTime <= poolStartTime) return _toTime.sub(poolStartTime).mul(evicTokenPerSecondForAirdrop);
                return _toTime.sub(_fromTime).mul(evicTokenPerSecondForAirdrop);
            }
        }

        return 0;
    }

    function pendingDao(uint256 _fromTime, uint256 _toTime, address _user) internal view returns (uint256) {
        if (IEVICToken(evicToken).isDaoFund(_user)) {
            if (_fromTime >= _toTime) return 0;
            if (_toTime >= poolEndTime) {
                if (_fromTime >= poolEndTime) return 0;
                if (_fromTime <= poolStartTime) return poolEndTime.sub(poolStartTime).mul(evicTokenPerSecondForDao);
                return poolEndTime.sub(_fromTime).mul(evicTokenPerSecondForDao);
            } else {
                if (_toTime <= poolStartTime) return 0;
                if (_fromTime <= poolStartTime) return _toTime.sub(poolStartTime).mul(evicTokenPerSecondForDao);
                return _toTime.sub(_fromTime).mul(evicTokenPerSecondForDao);
            }
        }

        return 0;
    }

    // Update reward variables for all pools. Be careful of gas spending!
    function massUpdatePools() public onlyOperator {
        uint256 length = poolInfo.length;
        for (uint256 pid = 0; pid < length; ++pid) {
            updatePool(pid);
        }
    }

    // Update reward variables of the given pool to be up-to-date.
    function updatePool(uint256 _pid) internal {
        PoolInfo storage pool = poolInfo[_pid];
        if (block.timestamp <= pool.lastRewardTime) {
            return;
        }
        uint256 tokenSupply = pool.token.balanceOf(address(this));
        if (tokenSupply == 0) {
            pool.lastRewardTime = block.timestamp;
            return;
        }
        if (!pool.isStarted) {
            pool.isStarted = true;
            totalAllocPoint = totalAllocPoint.add(pool.allocPoint);
        }
        if (totalAllocPoint > 0) {
            uint256 _generatedReward = getGeneratedReward(pool.lastRewardTime, block.timestamp);
            uint256 _evicTokenReward = _generatedReward.mul(pool.allocPoint).div(totalAllocPoint);
            pool.accEVICTokenPerShare = pool.accEVICTokenPerShare.add(_evicTokenReward.mul(1e18).div(tokenSupply));
        }
        pool.lastRewardTime = block.timestamp;
    }

    // Deposit LP tokens.
    function deposit(uint256 _pid, uint256 _amount) external onlyOneBlock {
        address _sender = msg.sender;
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][_sender];
        updatePool(_pid);
        if (user.amount > 0) {
            uint256 _pending = user.amount.mul(pool.accEVICTokenPerShare).div(1e18).sub(user.rewardDebt);
            if (_pending > 0) {
                safeEVICTokenTransfer(_sender, _pending);
                emit RewardPaid(_sender, _pending);
            }
        }

        if (_amount > 0) {
            pool.token.safeTransferFrom(_sender, address(this), _amount);
            user.amount = user.amount.add(_amount);
        }
        user.rewardDebt = user.amount.mul(pool.accEVICTokenPerShare).div(1e18);
        emit Deposit(_sender, _pid, _amount);
    }

    // Withdraw LP tokens.
    function withdraw(uint256 _pid, uint256 _amount) external onlyOneBlock {
        address _sender = msg.sender;
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][_sender];
        require(user.amount >= _amount, "withdraw: not good");
        updatePool(_pid);
        uint256 _pending = user.amount.mul(pool.accEVICTokenPerShare).div(1e18).sub(user.rewardDebt);
        uint256 _airdropReward = pendingAirdrop(lastAirdropRewardTime, block.timestamp, _sender);
        uint256 _daoReward = pendingDao(lastDaoRewardTime, block.timestamp, _sender);
        uint256 _reward = 0;

        if (_airdropReward > 0) {
            _reward = _reward.add(_airdropReward);
            lastAirdropRewardTime = block.timestamp;
        }

        if (_daoReward > 0) {
            _reward = _reward.add(_daoReward);
            lastDaoRewardTime = block.timestamp;
        }

        if (_pending > 0) {
            _reward = _reward.add(_pending);
        }

        if (_reward > 0) {
            safeEVICTokenTransfer(_sender, _reward);
            emit RewardPaid(_sender, _reward);
        }

        if (_amount > 0) {
            user.amount = user.amount.sub(_amount);
            pool.token.safeTransfer(_sender, _amount);
        }
        
        user.rewardDebt = user.amount.mul(pool.accEVICTokenPerShare).div(1e18);
        emit Withdraw(_sender, _pid, _amount);
    }

    // Safe EVICToken transfer function, just in case a rounding error causes pool to not have enough EVICTokens.
    function safeEVICTokenTransfer(address _to, uint256 _amount) internal {
        uint256 _evicTokenBalance = IERC20(evicToken).balanceOf(address(this));
        if (_evicTokenBalance > 0) {
            if (_amount > _evicTokenBalance) {
                IERC20(evicToken).safeTransfer(_to, _evicTokenBalance);
            } else {
                IERC20(evicToken).safeTransfer(_to, _amount);
            }
        }
    }

    function updatePoolNextPhase() external onlyOperator {
        require(!updatedPoolNextPhase, "only can update once");
        updatedPoolNextPhase = true;
        set(4, TOTAL_REWARD_POOL_4_NEXT_PHASE);
        set(3, TOTAL_REWARD_POOL_3_NEXT_PHASE);
        set(2, TOTAL_REWARD_POOL_2_NEXT_PHASE);
        set(1, TOTAL_REWARD_POOL_1_NEXT_PHASE);
        set(0, TOTAL_REWARD_POOL_0_NEXT_PHASE);
    }

    function isAirdrop(address _address) internal view returns (bool) {
		return _address == airdropWallet;
	}

    // Withdraw without caring about rewards. EMERGENCY ONLY.
    function emergencyWithdraw(uint256 _pid) external onlyOneBlock {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];
        uint256 _amount = user.amount;
        user.amount = 0;
        user.rewardDebt = 0;
        pool.token.safeTransfer(msg.sender, _amount);
        emit EmergencyWithdraw(msg.sender, _pid, _amount);
    }

    function setPoolStartTime(uint256 _poolStartTime) external onlyOperator {
        require(block.timestamp < _poolStartTime, "late");
        require(block.timestamp < poolStartTime, "Pool is started. Not reset set time start");

        poolStartTime = _poolStartTime;
        poolEndTime = poolStartTime + runningTime;
        lastAirdropRewardTime = poolStartTime;
    }
}