// SPDX-License-Identifier: MIT

pragma solidity 0.8.13;

import "./utils/ContractGuard.sol";
import "./lib/SafeMath.sol";
import "./interfaces/IEVICToken.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract EVICNodePool is ContractGuard {
    using SafeERC20 for IERC20;
    using SafeMath for uint256;

    address public operator;

    struct UserInfo {
        uint256 amount; // How many LP tokens the user has provided.
        uint256 rewardDebt; // Reward debt. See explanation below.
        uint256 amountAfterRebase;
    }

    // Info of each pool.
    struct PoolInfo {
        IERC20 token; // Address of LP token contract.
        uint256 allocPoint; // How many allocation points assigned to this pool. ChamToken to distribute per block.
        uint256 lastRewardTime; // Last time that ChamToken distribution occurs.
        uint256 accChamTokenPerShare; // Accumulated ChamToken per cham, times 1e18. See below.
        bool isStarted; // if lastRewardTime has passed
        uint256 totalPoolStaked; // total pool staked
    }

    IERC20 public chamToken;
    IEVICToken public evicToken;

    address public polWallet;

    // Info of each pool.
    PoolInfo[] public poolInfo;

    // Info of each user that stakes LP tokens.
    mapping(uint256 => mapping(address => UserInfo)) public userInfo;

    // Total allocation points. Must be the sum of all allocation points in all pools.
    uint256 public totalAllocPoint;

    uint256 public poolStartTime;
    uint256 public poolEndTime;

    uint256 public constant TOTAL_USER_REWARD = 300 ether;
    uint256 public chamTokenPerSecond;
    uint256 public constant runningTime = 21 days; // 21 days

    uint256 public taxRate = 5000;

    event Deposit(address indexed user, uint256 indexed pid, uint256 amount);
    event EmergencyWithdraw(address indexed user, uint256 indexed pid, uint256 amount);
    event RewardPaid(address indexed user, uint256 amount);
    event SetPolWallet(address oldWallet, address newWallet);
    event SetTaxRate(uint256 oldValue, uint256 newValue);
    event AdminWithdraw(address indexed token, uint256 amount);

    constructor(address _polWallet, address _chamToken, address _evicToken, uint256 _poolStartTime) {
        require(block.timestamp < _poolStartTime, "late");
        require(_chamToken != address(0), "!_chamToken");
        require(_evicToken != address(0), "!_evicToken");
        require(_polWallet != address(0), "!_polWallet");

        chamToken = IERC20(_chamToken);
        evicToken = IEVICToken(_evicToken);
        polWallet = _polWallet;

        totalAllocPoint = 0;
        poolStartTime = _poolStartTime;
        poolEndTime = poolStartTime + runningTime;
        chamTokenPerSecond = TOTAL_USER_REWARD.div(runningTime); // 300 tokens / (21 days * 24h * 60min * 60s)

        operator = msg.sender;
        add(TOTAL_USER_REWARD, _evicToken, 0);
    }

    modifier onlyOperator() {
        require(operator == msg.sender, "NodePool: caller is not the operator");
        _;
    }

    function checkPoolDuplicate(IERC20 _token) internal view {
        uint256 length = poolInfo.length;
        for (uint256 pid = 0; pid < length; ++pid) {
            bool isPoolDuplicate = poolInfo[pid].token == _token;
            require(!isPoolDuplicate, "NodePool is existed");
        }
    }

    // Add a new lp to the pool. Can only be called by the owner.
    function add(
        uint256 _allocPoint,
        address _token,
        uint256 _lastRewardTime
    ) internal onlyOperator {
        require(_token != address(0), "!_token");
        checkPoolDuplicate(IERC20(_token));
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
        bool _isStarted = (_lastRewardTime <= poolStartTime) ||
            (_lastRewardTime <= block.timestamp);
        
        poolInfo.push(
            PoolInfo({
                token: IERC20(_token),
                allocPoint: _allocPoint,
                lastRewardTime: _lastRewardTime,
                accChamTokenPerShare: 0,
                isStarted: _isStarted,
                totalPoolStaked: 0
            })
        );

        if (_isStarted) {
            totalAllocPoint = totalAllocPoint.add(_allocPoint);
        }
    }

    // Return accumulate rewards over the given _from to _to block. for all pool
    function getGeneratedReward(uint256 _fromTime, uint256 _toTime)
        public
        view
        returns (uint256)
    {   // invalid time range
        if (_fromTime >= _toTime) return 0;
        // reward end time greater than pool end time, using pool end time to calculate
        if (_toTime >= poolEndTime) {
            if (_fromTime >= poolEndTime) return 0;

            // from time less than pool start get reward in range (pool start time - pool end time)
            if (_fromTime <= poolStartTime)
                return poolEndTime.sub(poolStartTime).mul(chamTokenPerSecond);

            // from time less than pool start get reward in range (from time - pool end time)
            return poolEndTime.sub(_fromTime).mul(chamTokenPerSecond);
        } else {
            if (_toTime <= poolStartTime) return 0;

            // from time less than pool start get reward in range (pool start time - to time)
            if (_fromTime <= poolStartTime)
                return _toTime.sub(poolStartTime).mul(chamTokenPerSecond);

            // from time less than pool start get reward in range (from time - to time)
            return _toTime.sub(_fromTime).mul(chamTokenPerSecond);
        }
    }

    // View function to see pending CHAM on frontend.
    function pending(uint256 _pid, address _user)
        external
        view
        returns (uint256)
    {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][_user];
        uint256 accChamTokenPerShare = pool.accChamTokenPerShare;
        uint256 totalTokenStaked = pool.totalPoolStaked;
        if (block.timestamp > pool.lastRewardTime && totalTokenStaked != 0) {
            uint256 _generatedReward = getGeneratedReward(
                pool.lastRewardTime,
                block.timestamp
            );

            // reward cham by pool allocate point
            uint256 _shareTokenReward = _generatedReward.mul(pool.allocPoint).div(
                totalAllocPoint
            );
            
            // new cham for get reward
            accChamTokenPerShare = accChamTokenPerShare.add(
                _shareTokenReward.mul(1e18).div(totalTokenStaked)
            );
        }

        return user.amount.mul(accChamTokenPerShare).div(1e18).sub(user.rewardDebt);
    }

    // Update reward variables of the given pool to be up-to-date.
    function updatePool(uint256 _pid) internal {
        PoolInfo storage pool = poolInfo[_pid];
        if (block.timestamp <= pool.lastRewardTime) {
            return;
        }
        uint256 totalTokenStaked = pool.totalPoolStaked;
        if (totalTokenStaked == 0) {
            pool.lastRewardTime = block.timestamp;
            return;
        }

        if (!pool.isStarted) {
            // update allocate point
            pool.isStarted = true;
            totalAllocPoint = totalAllocPoint.add(pool.allocPoint);
        }

        // calculate reward
        if (totalAllocPoint > 0) {
            uint256 _generatedReward = getGeneratedReward(
                pool.lastRewardTime,
                block.timestamp
            );
            // cham reward for this pool
            uint256 _shareTokenReward = _generatedReward.mul(pool.allocPoint).div(
                totalAllocPoint
            );
            // accumulator reward/1staked in pool
            pool.accChamTokenPerShare = pool.accChamTokenPerShare.add(
                _shareTokenReward.mul(1e18).div(totalTokenStaked)
            );
        }
        pool.lastRewardTime = block.timestamp;
    }

    // Deposit tokens.
    function deposit(uint256 _pid, uint256 _amount) external onlyOneBlock {
        address _sender = msg.sender;
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][_sender];

        // update cham reward
        updatePool(_pid);
        
        if (user.amount > 0) {
            // cham token reward
            // paid reward
            uint256 _pending = user.amount.mul(pool.accChamTokenPerShare).div(1e18).sub(user.rewardDebt);
            if (_pending > 0) {
                chamToken.safeTransfer(_sender, _pending);
                emit RewardPaid(_sender, _pending);
            }
        }
        if (_amount > 0) {
            // transfer token
            pool.token.safeTransferFrom(_sender, address(this), _amount);
            pool.totalPoolStaked = pool.totalPoolStaked.add(_amount);
            user.amount = user.amount.add(_amount);
            uint256 gonsPerFragment = evicToken.TOTAL_GONS().div(evicToken.totalSupply());
            user.amountAfterRebase = user.amountAfterRebase.add(_amount.mul(gonsPerFragment));
        }
        // reward debt, is not of user in total staked of pool
        user.rewardDebt = user.amount.mul(pool.accChamTokenPerShare).div(1e18);
        emit Deposit(_sender, _pid, _amount);
    }

    function getUserAmount(uint256 _pid, address _sender) public view returns (uint256) {
        UserInfo storage user = userInfo[_pid][_sender];
        uint256 gonsPerFragment = evicToken.TOTAL_GONS().div(evicToken.totalSupply());
        return user.amountAfterRebase.div(gonsPerFragment);
    }

    // Claim reward tokens.
    function claimReward(uint256 _pid) external onlyOneBlock {
        address _sender = msg.sender;
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][_sender];
        updatePool(_pid); 
        uint256 _pending = user.amount.mul(pool.accChamTokenPerShare).div(1e18).sub(user.rewardDebt);
        if (_pending > 0) {
            chamToken.safeTransfer(_sender, _pending);
            emit RewardPaid(_sender, _pending);
        }
        user.rewardDebt = user.amount.mul(pool.accChamTokenPerShare).div(1e18);
    }

    // Withdraw without caring about rewards. EMERGENCY ONLY.
    function emergencyWithdraw(uint256 _pid) external onlyOneBlock {
        address _sender = msg.sender;
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][_sender];

        updatePool(_pid);
        uint256 _pending = user.amount.mul(pool.accChamTokenPerShare).div(1e18).sub(user.rewardDebt);
        if (_pending > 0) {
            chamToken.safeTransfer(_sender, _pending);
            emit RewardPaid(_sender, _pending);
        }

        uint256 amount = user.amount;
        uint256 userAmount = getUserAmount(_pid, _sender);
        uint256 taxAmount = userAmount.mul(taxRate).div(10000);
        uint256 userAmountToWithdraw = userAmount.sub(taxAmount);

        user.amount = 0;
        user.amountAfterRebase = 0;
        user.rewardDebt = 0;
        pool.totalPoolStaked = pool.totalPoolStaked.sub(amount);
        if (taxAmount > 0) {
            pool.token.safeTransfer(polWallet, taxAmount);
        }

        if (userAmountToWithdraw > 0) {
            pool.token.safeTransfer(_sender, userAmountToWithdraw);
        }

        emit EmergencyWithdraw(_sender, _pid, userAmount);
    }

    function setPolWallet(address _polWallet) external onlyOperator {
        require(_polWallet != address(0), "_polWallet address cannot be 0 address");
		emit SetPolWallet(polWallet, _polWallet);
        polWallet = _polWallet;
    }

    function setTaxRate(uint256 _value) external onlyOperator returns (bool) {
		require(_value <= 10000, "Tax equal or bigger to 100%");
		emit SetTaxRate(taxRate, _value);
        taxRate = _value;
        return true;
    }

    function adminWithdraw(address _token, uint256 _amount) external onlyOperator {
        uint256 tokenBalance = IERC20(_token).balanceOf(address(this));
        if (tokenBalance >= _amount) {
            IERC20(_token).safeTransfer(polWallet, _amount);
        } else {
            IERC20(_token).safeTransfer(polWallet, tokenBalance);
        }
        emit AdminWithdraw(_token, _amount);
    }
}
