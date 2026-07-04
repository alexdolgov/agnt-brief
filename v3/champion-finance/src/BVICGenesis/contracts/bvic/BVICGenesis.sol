// SPDX-License-Identifier: MIT

pragma solidity 0.8.13;

import "../utils/ContractGuard.sol";
import "../interfaces/IMainTokenV2.sol";
import "../lib/SafeMath.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

// Note that this pool has no minter key of BVICToken (rewards).
// Instead, the governance will call BVICToken distributeReward method and send reward to this pool at the beginning.
contract BVICGenesis is ContractGuard, Ownable {
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
        uint256 allocPoint; // How many allocation points assigned to this pool. BVICToken to distribute.
        uint256 lastRewardTime; // Last time that BVICToken distribution occurs.
        uint256 accBVICTokenPerShare; // Accumulated BVICToken per share, times 1e18. See below.
        bool isStarted; // if lastRewardBlock has passed
        bool isUpdated;
    }

    address public bvicToken;

    // Info of each pool.
    PoolInfo[] public poolInfo;

    // Info of each user that stakes LP tokens.
    mapping(uint256 => mapping(address => UserInfo)) public userInfo;

    // Total allocation points. Must be the sum of all allocation points in all pools.
    uint256 public totalAllocPoint;
    // The time when BVICToken mining starts.
    uint256 public poolStartTime;
    // The time when BVICToken mining ends.
    uint256 public poolEndTime;

    bool public updatedPoolNextPhase;

    // Total reward phase 2: 2.25 * 75% * 2/3 = 1.125
    uint256 public constant TOTAL_REWARD_POOL_5_NEXT_PHASE = 0.675 ether; // 60% of (75% of 2.25 * 2/3) BVIC-WBTC.e
    uint256 public constant TOTAL_REWARD_POOL_4_NEXT_PHASE = 0.0984375 ether; // 8.75% of (75% of 2.25 * 2/3) CHAM-WAVAX
    uint256 public constant TOTAL_REWARD_POOL_3_NEXT_PHASE = 0.0984375 ether; // 8.75% of (75% of 2.25 * 2/3) UVIC-USDC.e
    uint256 public constant TOTAL_REWARD_POOL_2_NEXT_PHASE = 0.0984375 ether; // 8.75% of (75% of 2.25 * 2/3) EVIC-WETH.e
    uint256 public constant TOTAL_REWARD_POOL_1_NEXT_PHASE = 0.0984375 ether; // 8.75% of (75% of 2.25 * 2/3) CHAM
    uint256 public constant TOTAL_REWARD_POOL_0_NEXT_PHASE = 0.05625 ether; // 5% of (75% of 2.25 * 2/3) WBTC.e

    uint256 public constant runningTime = 3 days;
    uint256 public constant TOTAL_USER_REWARD = 1.6875 ether; // 75% of 2.25 Token
    uint256 public constant TOTAL_POL_REWARD = 0.3375 ether; // 15% of 2.25 Token
    uint256 public constant TOTAL_DAO_REWARD = 0.225 ether; // 10% of 2.25 Token
    uint256 public bvicTokenPerSecondForUser;
    uint256 public bvicTokenPerSecondForPol;
    uint256 public bvicTokenPerSecondForDao;
    uint256 lastPolRewardTime;
    uint256 lastDaoRewardTime;

    event Deposit(address indexed user, uint256 indexed pid, uint256 amount);
    event Withdraw(address indexed user, uint256 indexed pid, uint256 amount);
    event EmergencyWithdraw(address indexed user, uint256 indexed pid, uint256 amount);
    event RewardPaid(address indexed user, uint256 amount);

    constructor(address _token, uint256 _poolStartTime) {
        require(block.timestamp < _poolStartTime, "late");
        require(_token != address(0), "!_token");
        
        bvicToken = _token;
        totalAllocPoint = 0;
        updatedPoolNextPhase = false;
        poolStartTime = _poolStartTime;
        lastPolRewardTime = poolStartTime;
        poolEndTime = poolStartTime + runningTime;

        bvicTokenPerSecondForUser = TOTAL_USER_REWARD.div(runningTime); // 75% of Token / (2days * 24h * 60min * 60s)
        bvicTokenPerSecondForPol = TOTAL_POL_REWARD.div(runningTime); // 15% of Token / (2days * 24h * 60min * 60s)
        bvicTokenPerSecondForDao = TOTAL_DAO_REWARD.div(runningTime); // 10% of Token / (2days * 24h * 60min * 60s)

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
        poolInfo.push(PoolInfo({token: _token, allocPoint: _allocPoint, lastRewardTime: _lastRewardTime, accBVICTokenPerShare: 0, isStarted: _isStarted, isUpdated: false}));
        if (_isStarted) {
            totalAllocPoint = totalAllocPoint.add(_allocPoint);
        }
    }

    // Update the given pool's BVICToken allocation point. Can only be called by the owner.
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
            if (_fromTime <= poolStartTime) return poolEndTime.sub(poolStartTime).mul(bvicTokenPerSecondForUser);
            return poolEndTime.sub(_fromTime).mul(bvicTokenPerSecondForUser);
        } else {
            if (_toTime <= poolStartTime) return 0;
            if (_fromTime <= poolStartTime) return _toTime.sub(poolStartTime).mul(bvicTokenPerSecondForUser);
            return _toTime.sub(_fromTime).mul(bvicTokenPerSecondForUser);
        }
    }

    // View function to see pending BVICToken on frontend.
    function pending(uint256 _pid, address _user) external view returns (uint256) {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][_user];
        uint256 accBVICTokenPerShare = pool.accBVICTokenPerShare;
        uint256 tokenSupply = pool.token.balanceOf(address(this));
        if (block.timestamp > pool.lastRewardTime && tokenSupply != 0) {
            uint256 _generatedReward = getGeneratedReward(pool.lastRewardTime, block.timestamp);
            uint256 _bvicTokenReward = _generatedReward.mul(pool.allocPoint).div(totalAllocPoint);
            accBVICTokenPerShare = accBVICTokenPerShare.add(_bvicTokenReward.mul(1e18).div(tokenSupply));
        }
        
        uint256 polReward = pendingPol(lastPolRewardTime, block.timestamp, _user);
        uint256 daoReward = pendingDao(lastDaoRewardTime, block.timestamp, _user);

        uint256 pendingUser = user.amount.mul(accBVICTokenPerShare).div(1e18).sub(user.rewardDebt);
        return pendingUser.add(polReward).add(daoReward);
    }

    function pendingPol(uint256 _fromTime, uint256 _toTime, address _user) internal view returns (uint256) {
        if (IMainTokenV2(bvicToken).isPolWallet(_user)) {
            if (_fromTime >= _toTime) return 0;
            if (_toTime >= poolEndTime) {
                if (_fromTime >= poolEndTime) return 0;
                if (_fromTime <= poolStartTime) return poolEndTime.sub(poolStartTime).mul(bvicTokenPerSecondForPol);
                return poolEndTime.sub(_fromTime).mul(bvicTokenPerSecondForPol);
            } else {
                if (_toTime <= poolStartTime) return 0;
                if (_fromTime <= poolStartTime) return _toTime.sub(poolStartTime).mul(bvicTokenPerSecondForPol);
                return _toTime.sub(_fromTime).mul(bvicTokenPerSecondForPol);
            }
        }

        return 0;
    }

    function pendingDao(uint256 _fromTime, uint256 _toTime, address _user) internal view returns (uint256) {
        if (IMainTokenV2(bvicToken).isDaoFund(_user)) {
            if (_fromTime >= _toTime) return 0;
            if (_toTime >= poolEndTime) {
                if (_fromTime >= poolEndTime) return 0;
                if (_fromTime <= poolStartTime) return poolEndTime.sub(poolStartTime).mul(bvicTokenPerSecondForDao);
                return poolEndTime.sub(_fromTime).mul(bvicTokenPerSecondForDao);
            } else {
                if (_toTime <= poolStartTime) return 0;
                if (_fromTime <= poolStartTime) return _toTime.sub(poolStartTime).mul(bvicTokenPerSecondForDao);
                return _toTime.sub(_fromTime).mul(bvicTokenPerSecondForDao);
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
            uint256 _bvicTokenReward = _generatedReward.mul(pool.allocPoint).div(totalAllocPoint);
            pool.accBVICTokenPerShare = pool.accBVICTokenPerShare.add(_bvicTokenReward.mul(1e18).div(tokenSupply));
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
            uint256 _pending = user.amount.mul(pool.accBVICTokenPerShare).div(1e18).sub(user.rewardDebt);
            if (_pending > 0) {
                safeBVICTokenTransfer(_sender, _pending);
                emit RewardPaid(_sender, _pending);
            }
        }

        if (_amount > 0) {
            pool.token.safeTransferFrom(_sender, address(this), _amount);
            user.amount = user.amount.add(_amount);
        }
        user.rewardDebt = user.amount.mul(pool.accBVICTokenPerShare).div(1e18);
        emit Deposit(_sender, _pid, _amount);
    }

    // Withdraw LP tokens.
    function withdraw(uint256 _pid, uint256 _amount) external onlyOneBlock {
        address _sender = msg.sender;
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][_sender];
        require(user.amount >= _amount, "withdraw: not good");
        updatePool(_pid);
        uint256 _pending = user.amount.mul(pool.accBVICTokenPerShare).div(1e18).sub(user.rewardDebt);
        uint256 _polReward = pendingPol(lastPolRewardTime, block.timestamp, _sender);
        uint256 _daoReward = pendingDao(lastDaoRewardTime, block.timestamp, _sender);
        uint256 _reward = 0;

        if (_polReward > 0) {
            _reward = _reward.add(_polReward);
            lastPolRewardTime = block.timestamp;
        }

        if (_daoReward > 0) {
            _reward = _reward.add(_daoReward);
            lastDaoRewardTime = block.timestamp;
        }

        if (_pending > 0) {
            _reward = _reward.add(_pending);
        }

        if (_reward > 0) {
            safeBVICTokenTransfer(_sender, _reward);
            emit RewardPaid(_sender, _reward);
        }

        if (_amount > 0) {
            user.amount = user.amount.sub(_amount);
            pool.token.safeTransfer(_sender, _amount);
        }
        
        user.rewardDebt = user.amount.mul(pool.accBVICTokenPerShare).div(1e18);
        emit Withdraw(_sender, _pid, _amount);
    }

    // Safe BVICToken transfer function, just in case a rounding error causes pool to not have enough BVICTokens.
    function safeBVICTokenTransfer(address _to, uint256 _amount) internal {
        uint256 _bvicTokenBalance = IERC20(bvicToken).balanceOf(address(this));
        if (_bvicTokenBalance > 0) {
            if (_amount > _bvicTokenBalance) {
                IERC20(bvicToken).safeTransfer(_to, _bvicTokenBalance);
            } else {
                IERC20(bvicToken).safeTransfer(_to, _amount);
            }
        }
    }

    function updatePoolNextPhase() external onlyOperator {
        require(!updatedPoolNextPhase, "only can update once");
        updatedPoolNextPhase = true;
        set(5, TOTAL_REWARD_POOL_5_NEXT_PHASE);
        set(4, TOTAL_REWARD_POOL_4_NEXT_PHASE);
        set(3, TOTAL_REWARD_POOL_3_NEXT_PHASE);
        set(2, TOTAL_REWARD_POOL_2_NEXT_PHASE);
        set(1, TOTAL_REWARD_POOL_1_NEXT_PHASE);
        set(0, TOTAL_REWARD_POOL_0_NEXT_PHASE);
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
        lastPolRewardTime = poolStartTime;
    }
}