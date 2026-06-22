// SPDX-License-Identifier: MIT

pragma solidity 0.8.22;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

// Note that this pool has no minter key of BOMB (rewards).
// Instead, the governance will call BOMB distributeReward method and send reward to this pool at the beginning.
contract FarmClonable is Initializable {
    using SafeERC20 for IERC20;

    // governance
    address public operator;
    address public reserveFund;

    // Info of each user.
    struct UserInfo {
        uint256 amount; // How many tokens the user has provided.
        uint256 rewardDebt; // Reward debt. See explanation below.
    }

    // Info of each pool.
    struct PoolInfo {
        IERC20 token; // Address of LP token contract.
        uint256 allocPoint; // How many allocation points assigned to this pool. BOMB to distribute.
        uint256 lastRewardTime; // Last time that BOMB distribution occurs.
        uint256 accTokenPerShare; // Accumulated BOMB per share, times 1e18. See below.
        bool isStarted; // if lastRewardBlock has passed
        //  uint16 depositFeeBP; // Deposit fee in basis points
    }

    IERC20 public token;

    // Info of each pool.
    PoolInfo[] public poolInfo;

    // Info of each user that stakes LP tokens.
    mapping(uint256 => mapping(address => UserInfo)) public userInfo;

    // Mapping of deposit token to pool ID
    mapping(address => uint256) public depositTokenToPid;

    // Total allocation points. Must be the sum of all allocation points in all pools.
    uint256 public totalAllocPoint;

    // The time when BOMB mining starts.
    uint256 public poolStartTime;

    // The time when BOMB mining ends.
    uint256 public poolEndTime;

    uint256 public depositFee;

    uint256 public tokenPerSecond;
    uint256 public TOTAL_REWARDS;
    // END MAINNET
    uint256 public lastUpdateTime;

    event Deposit(address indexed user, uint256 indexed pid, uint256 amount);
    event Withdraw(address indexed user, uint256 indexed pid, uint256 amount);
    event EmergencyWithdraw(address indexed user, uint256 indexed pid, uint256 amount);
    event RewardPaid(address indexed user, uint256 amount);

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _token,
        uint256 _poolStartTime,
        uint256 _poolRunTime,
        uint256 _totalRewards,
        address _reserveFund,
        uint256 _depositFee
    ) public initializer {
        if (block.timestamp < _poolStartTime) {
            poolStartTime = _poolStartTime;
        } else {
            poolStartTime = block.timestamp;
        }
        if (_token != address(0)) token = IERC20(_token);

        poolStartTime = _poolStartTime;
        poolEndTime = poolStartTime + _poolRunTime;
        operator = msg.sender;
        reserveFund = _reserveFund;

        TOTAL_REWARDS = _totalRewards;
        tokenPerSecond = TOTAL_REWARDS / (_poolRunTime);

        totalAllocPoint = 0;

        depositFee = _depositFee;
    }

    modifier onlyOperator() {
        require(operator == msg.sender, "FarmClonable: caller is not the operator");
        _;
    }

    function checkPoolDuplicate(IERC20 _token) internal view {
        uint256 length = poolInfo.length;
        for (uint256 pid = 0; pid < length; ++pid) {
            require(poolInfo[pid].token != _token, "FarmClonable: existing pool?");
        }
    }

    function totalPools() public view returns (uint256) {
        return poolInfo.length;
    }

    function allPendingRewards(address _user) public view returns (uint256[] memory) {
        uint256 length = poolInfo.length;
        uint256[] memory pending = new uint256[](length);
        for (uint256 pid = 0; pid < length; ++pid) {
            pending[pid] = pendingReward(pid, _user);
        }
        return pending;
    }

    // Add a new token to the pool. Can only be called by the owner.
    function add(uint256 _allocPoint, IERC20 _token, bool _withUpdate, uint256 _lastRewardTime) public onlyOperator {
        checkPoolDuplicate(_token);
        if (_withUpdate) {
            massUpdatePools();
        }
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
        poolInfo.push(
            PoolInfo({
                token: _token,
                allocPoint: _allocPoint,
                lastRewardTime: _lastRewardTime,
                accTokenPerShare: 0,
                isStarted: _isStarted
            })
        );
        if (_isStarted) {
            totalAllocPoint = totalAllocPoint + (_allocPoint);
        }
        depositTokenToPid[address(_token)] = poolInfo.length - 1;
    }

    // Update the given pool's allocation point. Can only be called by the owner.
    function set(uint256 _pid, uint256 _allocPoint) public onlyOperator {
        massUpdatePools();
        PoolInfo storage pool = poolInfo[_pid];
        if (pool.isStarted) {
            totalAllocPoint = totalAllocPoint - (pool.allocPoint) + (_allocPoint);
        }
        pool.allocPoint = _allocPoint;
    }

    // Return accumulate rewards over the given _from to _to block.
    function getGeneratedReward(uint256 _fromTime, uint256 _toTime) public view returns (uint256) {
        if (_fromTime >= _toTime) return 0;
        if (_toTime >= poolEndTime) {
            if (_fromTime >= poolEndTime) return 0;
            if (_fromTime <= poolStartTime) return (poolEndTime - poolStartTime) * (tokenPerSecond);
            return (poolEndTime - _fromTime) * (tokenPerSecond);
        } else {
            if (_toTime <= poolStartTime) return 0;
            if (_fromTime <= poolStartTime) return (_toTime - poolStartTime) * (tokenPerSecond);
            return (_toTime - _fromTime) * (tokenPerSecond);
        }
    }

    // View function to see pending on frontend.
    function pendingReward(uint256 _pid, address _user) public view returns (uint256) {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][_user];
        uint256 accTokenPerShare = pool.accTokenPerShare;
        uint256 tokenSupply = pool.token.balanceOf(address(this));
        if (block.timestamp > pool.lastRewardTime && tokenSupply != 0) {
            uint256 _generatedReward = getGeneratedReward(pool.lastRewardTime, block.timestamp);
            uint256 _tokenReward = (_generatedReward * (pool.allocPoint)) / (totalAllocPoint);
            accTokenPerShare = accTokenPerShare + ((_tokenReward * (1e18)) / (tokenSupply));
        }
        return ((user.amount * (accTokenPerShare)) / (1e18)) - (user.rewardDebt);
    }

    // Update reward variables for all pools. Be careful of gas spending!
    function massUpdatePools() public {
        uint256 length = poolInfo.length;
        for (uint256 pid = 0; pid < length; ++pid) {
            updatePool(pid);
        }
    }

    function setReserveFund(address _reserveFund) external onlyOperator {
        reserveFund = _reserveFund;
    }

    // Update reward variables of the given pool to be up-to-date.
    function updatePool(uint256 _pid) public {
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
            totalAllocPoint = totalAllocPoint + (pool.allocPoint);
        }
        if (totalAllocPoint > 0) {
            uint256 _generatedReward = getGeneratedReward(pool.lastRewardTime, block.timestamp);
            uint256 _tokenReward = (_generatedReward * (pool.allocPoint)) / (totalAllocPoint);
            pool.accTokenPerShare = pool.accTokenPerShare + ((_tokenReward * (1e18)) / (tokenSupply));
        }
        pool.lastRewardTime = block.timestamp;
    }

    // Deposit LP tokens.
    function deposit(uint256 _pid, uint256 _amount) public {
        address _sender = msg.sender;
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][_sender];
        updatePool(_pid);
        if (user.amount > 0) {
            uint256 _pending = ((user.amount * (pool.accTokenPerShare)) / (1e18)) - (user.rewardDebt);
            if (_pending > 0) {
                safeTokenTransfer(_sender, _pending);
                emit RewardPaid(_sender, _pending);
            }
        }
        if (_amount > 0) {
            IERC20 _depositToken = pool.token;
            uint256 _before = _depositToken.balanceOf(address(this));
            _depositToken.safeTransferFrom(msg.sender, address(this), _amount);
            uint256 _after = _depositToken.balanceOf(address(this));
            _amount = _after - _before;
            uint256 _depositFee = (_amount * (depositFee)) / (10000);
            pool.token.safeTransfer(reserveFund, _depositFee);
            user.amount = user.amount + (_amount) - (_depositFee);
        }
        user.rewardDebt = (user.amount * (pool.accTokenPerShare)) / (1e18);
        emit Deposit(_sender, _pid, _amount);
    }

    // Withdraw LP tokens.
    function withdraw(uint256 _pid, uint256 _amount) public {
        address _sender = msg.sender;
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][_sender];
        require(user.amount >= _amount, "withdraw: not good");
        updatePool(_pid);
        uint256 _pending = ((user.amount * (pool.accTokenPerShare)) / (1e18)) - (user.rewardDebt);
        if (_pending > 0) {
            safeTokenTransfer(_sender, _pending);
            emit RewardPaid(_sender, _pending);
        }
        if (_amount > 0) {
            user.amount = user.amount - (_amount);
            pool.token.safeTransfer(_sender, _amount);
        }
        user.rewardDebt = (user.amount * (pool.accTokenPerShare)) / (1e18);
        emit Withdraw(_sender, _pid, _amount);
    }

    // Withdraw without caring about rewards. EMERGENCY ONLY.
    function emergencyWithdraw(uint256 _pid) public {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];
        uint256 _amount = user.amount;
        user.amount = 0;
        user.rewardDebt = 0;
        pool.token.safeTransfer(msg.sender, _amount);
        emit EmergencyWithdraw(msg.sender, _pid, _amount);
    }

    // Safe BOMB transfer function, just in case if rounding error causes pool to not have enough BOMBs.
    function safeTokenTransfer(address _to, uint256 _amount) internal {
        uint256 _tokenBalance = token.balanceOf(address(this));
        if (_tokenBalance > 0) {
            if (_amount > _tokenBalance) {
                token.safeTransfer(_to, _tokenBalance);
            } else {
                token.safeTransfer(_to, _amount);
            }
        }
    }

    function setOperator(address _operator) external onlyOperator {
        operator = _operator;
    }

    function governanceRecoverUnsupported(IERC20 _token, uint256 amount, address to) external onlyOperator {
        if (block.timestamp < poolEndTime + 90 days) {
            // do not allow to drain core token (BOMB or lps) if less than 90 days after pool ends
            require(_token != token, "token");
            uint256 length = poolInfo.length;
            for (uint256 pid = 0; pid < length; ++pid) {
                PoolInfo storage pool = poolInfo[pid];
                require(_token != pool.token, "pool.token");
            }
        }
        _token.safeTransfer(to, amount);
    }
}
