// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

// Have fun reading it. Hopefully it's bug-free. God bless.
contract PreMining is Ownable, ReentrancyGuard {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    // Info of each user.
    struct UserInfo {
        uint256 amount; // How many tokens the user has provided.
        uint256 rewardDebt; // Reward debt. See explanation below.
        uint256 pendingReward; // Undistributed rewards.
        //
        // We do some fancy math here. Basically, any point in time, the amount of rewards
        // entitled to a user but is pending to be distributed is:
        //
        //   pending reward = (user.amount * pool.accRewardPerShare) - user.rewardDebt
        //
        // Whenever a user deposits or withdraws tokens to a pool. Here's what happens:
        //   1. The pool's `accRewardPerShare` (and `lastRewardTime`) gets updated.
        //   2. User receives the pending reward sent to his/her address.
        //   3. User's `amount` gets updated.
        //   4. User's `rewardDebt` gets updated.
    }

    // Info of each pool.
    struct PoolInfo {
        IERC20 stakeToken; // Address of stake token contract.
        uint256 allocPoint; // How many allocation points assigned to this pool. Reward to distribute per block.
        uint256 totalStaked; // Amount of tokens staked in given pool
        uint256 lastRewardTime; // Last timestamp rewards distribution occurs.
        uint256 accRewardPerShare; // Accumulated rewards per share, times 1e30. See below.
        uint16 depositFeeBP; // Deposit fee in basis points
    }

    // The reward TOKEN!
    IERC20 public reward;
    // Reward tokens distributed per second.
    uint256 public rewardPerSecond;
    // Deposit Fee address
    address public feeAddress;

    // Max emission rate
    uint256 public constant MAX_EMISSION_RATE = 50 ether;

    // Info of each pool.
    PoolInfo[] public poolInfo;

    // Info of each user that stakes tokens.
    mapping(uint256 => mapping(address => UserInfo)) public userInfo;
    // Total allocation points. Must be the sum of all allocation points in all pools.
    uint256 public totalAllocPoint;
    // The timestamp when rewards start.
    uint256 public startTime;
    // The timestamp when rewards end.
    uint256 public endTime;
    // Are rewards harvestable.
    bool public harvestEnable = false;

    event Deposit(address indexed user, uint256 indexed pid, uint256 amount);
    event Withdraw(address indexed user, uint256 indexed pid, uint256 amount);
    event EmergencyWithdraw(
        address indexed user,
        uint256 indexed pid,
        uint256 amount
    );
    event SetFeeAddress(address indexed user, address indexed newAddress);
    event SetDevAddress(address indexed user, address indexed newAddress);
    event UpdateEmissionRate(address indexed user, uint256 rewardPerSecond);
    event UpdateDevFee(address indexed user, uint256 newFee);

    event LogPoolAddition(
        uint256 indexed pid,
        uint256 allocPoint,
        IERC20 indexed stakeToken,
        uint16 depositFee
    );
    event LogSetPool(
        uint256 indexed pid,
        uint256 allocPoint,
        uint16 depositFee
    );
    event LogUpdatePool(
        uint256 indexed pid,
        uint256 lastRewardTime,
        uint256 stakeSupply,
        uint256 accRewardPerShare
    );

    constructor(
        IERC20 _reward,
        address _feeAddress,
        uint256 _rewardPerSecond,
        uint256 _startTime,
        uint256 _endTime
    ) {
        reward = _reward;
        feeAddress = _feeAddress;
        rewardPerSecond = _rewardPerSecond;
        startTime = _startTime;
        endTime = _endTime;
    }

    function poolLength() external view returns (uint256) {
        return poolInfo.length;
    }

    mapping(IERC20 => bool) public poolExistence;
    modifier nonDuplicated(IERC20 _stakeToken) {
        require(
            poolExistence[_stakeToken] == false,
            "nonDuplicated: duplicated"
        );
        _;
    }

    // Add a new token to the pool. Can only be called by the owner.
    function add(
        uint256 _allocPoint,
        IERC20 _stakeToken,
        uint16 _depositFeeBP,
        bool _withUpdate
    ) public onlyOwner nonDuplicated(_stakeToken) {
        require(_depositFeeBP <= 1000, "add: invalid deposit fee basis points");
        if (_withUpdate) {
            massUpdatePools();
        }

        uint256 lastRewardTime = block.timestamp > startTime
            ? block.timestamp
            : startTime;
        totalAllocPoint = totalAllocPoint.add(_allocPoint);
        poolExistence[_stakeToken] = true;

        poolInfo.push(
            PoolInfo({
                stakeToken: _stakeToken,
                allocPoint: _allocPoint,
                lastRewardTime: lastRewardTime,
                accRewardPerShare: 0,
                totalStaked: 0,
                depositFeeBP: _depositFeeBP
            })
        );

        emit LogPoolAddition(
            poolInfo.length.sub(1),
            _allocPoint,
            _stakeToken,
            _depositFeeBP
        );
    }

    // Update the given pool's allocation point and deposit fee. Can only be called by the owner.
    function set(
        uint256 _pid,
        uint256 _allocPoint,
        uint16 _depositFeeBP,
        bool _withUpdate
    ) public onlyOwner {
        require(_depositFeeBP <= 1000, "set: invalid deposit fee basis points");
        if (_withUpdate) {
            massUpdatePools();
        } else {
            updatePool(_pid);
        }

        totalAllocPoint = totalAllocPoint.sub(poolInfo[_pid].allocPoint).add(
            _allocPoint
        );
        poolInfo[_pid].allocPoint = _allocPoint;
        poolInfo[_pid].depositFeeBP = _depositFeeBP;

        emit LogSetPool(_pid, _allocPoint, _depositFeeBP);
    }

    // Return reward multiplier over the given _from to _to block.
    function getMultiplier(uint256 _from, uint256 _to)
        public
        view
        returns (uint256)
    {
        if (_to <= endTime) {
            return _to - _from;
        } else if (_from >= endTime) {
            return 0;
        } else {
            return endTime - _from;
        }
    }

    // View function to see pending rewards on frontend.
    function pendingRewards(uint256 _pid, address _user)
        external
        view
        returns (uint256 pending)
    {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][_user];
        uint256 accRewardPerShare = pool.accRewardPerShare;
        uint256 stakeSupply = pool.totalStaked;
        if (block.timestamp > pool.lastRewardTime && stakeSupply != 0) {
            uint256 multiplier = getMultiplier(
                pool.lastRewardTime,
                block.timestamp
            );
            uint256 tokenReward = (multiplier *
                rewardPerSecond *
                pool.allocPoint) / totalAllocPoint;
            accRewardPerShare =
                accRewardPerShare +
                ((tokenReward * 1e30) / stakeSupply);
        }
        pending =
            ((user.amount * accRewardPerShare) /
            1e30 -
            user.rewardDebt) + user.pendingReward;
    }

    // Update reward variables for all pools. Be careful of gas spending!
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
        uint256 stakeSupply = pool.totalStaked;
        if (stakeSupply == 0 || pool.allocPoint == 0) {
            pool.lastRewardTime = block.timestamp;
            return;
        }
        uint256 multiplier = getMultiplier(
            pool.lastRewardTime,
            block.timestamp
        );
        uint256 totalRewards = multiplier
            .mul(rewardPerSecond)
            .mul(pool.allocPoint)
            .div(totalAllocPoint);
        if (totalRewards == 0) return;

        pool.accRewardPerShare = pool.accRewardPerShare.add(
            totalRewards.mul(1e30).div(stakeSupply)
        );
        pool.lastRewardTime = block.timestamp;
        emit LogUpdatePool(
            _pid,
            pool.lastRewardTime,
            stakeSupply,
            pool.accRewardPerShare
        );
    }

    // Deposit tokens to PreMining for reward allocation.
    function deposit(uint256 _pid, uint256 _amount)
        public
        nonReentrant
    {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];
        uint256 finalDepositAmount;
        updatePool(_pid);
        if (user.amount > 0) {
            _harvest(_pid, msg.sender);
        }
        if (_amount > 0) {
            // Prefetch balance to account for transfer fees
            uint256 preStakeBalance = pool.stakeToken.balanceOf(address(this));
            pool.stakeToken.safeTransferFrom(
                address(msg.sender),
                address(this),
                _amount
            );
            finalDepositAmount =
                pool.stakeToken.balanceOf(address(this)) -
                preStakeBalance;

            if (pool.depositFeeBP > 0) {
                uint256 depositFee = finalDepositAmount
                    .mul(pool.depositFeeBP)
                    .div(10000);
                pool.stakeToken.safeTransfer(feeAddress, depositFee);
                finalDepositAmount = finalDepositAmount.sub(depositFee);
            }
            user.amount = user.amount.add(finalDepositAmount);
            pool.totalStaked = pool.totalStaked.add(finalDepositAmount);
        }
        user.rewardDebt = user.amount.mul(pool.accRewardPerShare).div(1e30);
        emit Deposit(msg.sender, _pid, finalDepositAmount);
    }

    // Withdraw tokens from PreMining.
    function withdraw(uint256 _pid, uint256 _amount)
        public
        nonReentrant
    {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];
        require(user.amount >= _amount, "withdraw: not good");
        updatePool(_pid);
        _harvest(_pid, msg.sender);
        if (_amount > 0) {
            user.amount = user.amount.sub(_amount);
            pool.totalStaked = pool.totalStaked.sub(_amount);
            pool.stakeToken.safeTransfer(address(msg.sender), _amount);
        }
        user.rewardDebt = user.amount.mul(pool.accRewardPerShare).div(1e30);
        emit Withdraw(msg.sender, _pid, _amount);
    }

    function _harvest(uint _pid, address _user) internal {
        UserInfo storage user = userInfo[_pid][_user];
        uint256 userPendingReward = user.pendingReward;
        uint256 pending = ((user.amount * poolInfo[_pid].accRewardPerShare) /
            1e30 -
            user.rewardDebt) + userPendingReward;
        if (harvestEnable) {
            if (pending > 0) {
                uint256 rewardBal = rewardBalance();
                if (pending > rewardBal) {
                    user.pendingReward = pending - rewardBal;
                    safeRewardTransfer(_user, rewardBal);
                } else {
                    if(userPendingReward != 0) { user.pendingReward = 0; }
                    safeRewardTransfer(_user, pending);
                }
            }
        } else {
            user.pendingReward = pending;
        }
    }

    // Withdraw without caring about rewards. EMERGENCY ONLY.
    function emergencyWithdraw(uint256 _pid) public nonReentrant {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];
        uint256 amount = user.amount;
        user.amount = 0;
        user.rewardDebt = 0;
        user.pendingReward = 0;
        pool.totalStaked = pool.totalStaked.sub(amount);
        pool.stakeToken.safeTransfer(address(msg.sender), amount);
        emit EmergencyWithdraw(msg.sender, _pid, amount);
    }

    /// Obtain the reward balance of this contract
    /// @return wei balance of contract
    function rewardBalance() public view returns (uint256) {
        return reward.balanceOf(address(this));
    }

    // Safe reward transfer function, just in case if rounding error causes pool to not have enough rewards.
    function safeRewardTransfer(address _to, uint256 _amount) internal {
        uint256 rewardBal = reward.balanceOf(address(this));
        bool transferSuccess = false;
        if (_amount > rewardBal) {
            transferSuccess = reward.transfer(_to, rewardBal);
        } else {
            transferSuccess = reward.transfer(_to, _amount);
        }
        require(transferSuccess, "safeRewardTransfer: transfer failed");
    }

    /// @param _startTime The block to start mining
    /// @notice can only be changed if mining has not started already
    function setStartTime(uint256 _startTime) external onlyOwner {
        require(startTime > block.timestamp, "Mining started");
        uint256 length = poolInfo.length;
        for (uint256 pid = 0; pid < length; ++pid) {
            PoolInfo storage pool = poolInfo[pid];
            pool.lastRewardTime = _startTime;
        }
        startTime = _startTime;
    }

    function setFeeAddress(address _feeAddress) public {
        require(msg.sender == feeAddress, "setFeeAddress: FORBIDDEN");
        feeAddress = _feeAddress;
        emit SetFeeAddress(msg.sender, _feeAddress);
    }

    function _updateEmissionRate(uint256 _rewardPerSecond) internal {
        require(
            _rewardPerSecond <= MAX_EMISSION_RATE,
            "Updated emissions are more than maximum rate"
        );
        rewardPerSecond = _rewardPerSecond;
        emit UpdateEmissionRate(msg.sender, _rewardPerSecond);
    }

    function updateEmissionRate(uint256 _rewardPerSecond) public onlyOwner {
        _updateEmissionRate(_rewardPerSecond);
        massUpdatePools();
    }
    
    function enableHarvest() public onlyOwner {
        harvestEnable = true;
    }
}
