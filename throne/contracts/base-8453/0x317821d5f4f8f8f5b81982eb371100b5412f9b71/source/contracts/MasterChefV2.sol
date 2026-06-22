// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/Address.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

import "./interfaces/IOATH.sol";

contract MasterChefV2 is Ownable {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    // Info of each user.
    struct UserInfo {
        uint256 amount; // How many LP tokens the user has provided.
        uint256 rewardDebt; // Reward debt. See explanation below.
    }

    // Info of each pool.
    struct PoolInfo {
        IERC20 lpToken; // Address of LP token contract.
        uint256 allocPoint; // How many allocation points assigned to this pool. OATH to distribute per block.
        uint256 lastRewardTime; // Last block number that OATH distribution occurs.
        uint256 accPerShare; // Accumulated OATH per share, times 1e12. See below.
        uint256 totalDeposit;
        uint256 depositFee;
    }

    uint256 public constant DEPOSIT_FEE_PRECISION = 10000;
    uint256 public constant MAX_DEPOSIT_FEE = 500; // 5%

    IOATH public oath;

    address public treasury;

    // Total allocation points. Must be the sum of all allocation points in all pools.
    uint256 public totalAllocPoint = 0;

    // The block time when OATH mining starts.
    uint256 public startTime = type(uint256).max;

    // Info of each pool.
    PoolInfo[] public poolInfo;

    // Info of each user that stakes LP tokens.
    mapping(uint256 => mapping(address => UserInfo)) public userInfo;

    event Deposit(address indexed user, uint256 indexed pid, uint256 amount);
    event Withdraw(address indexed user, uint256 indexed pid, uint256 amount);
    event EmergencyWithdraw(address indexed user, uint256 indexed pid, uint256 amount);
    event SetTreasuryAddress(address indexed treasury);
    event Harvest(address indexed sender, address to, uint256 indexed pid, uint256 reward);

    constructor(IOATH _oath, address _treasury) {
        require(address(_oath) != address(0), "Zero address");

        oath = _oath;
        treasury = _treasury;
    }

    function setStartTime(uint256 _startTime) external onlyOwner {
        require(block.timestamp < _startTime && block.timestamp < _startTime, "!_startTime");
        startTime = _startTime;

        uint256 length = poolInfo.length;
        for (uint256 pid = 0; pid < length; ++pid) {
            poolInfo[pid].lastRewardTime = _startTime;
        }
    }

    function setTreasuryAddress(address _treasury) external onlyOwner {
        require(
            _treasury != address(0) && _treasury != address(1),
            "setDevAddress: _devAddr must not be address(0) or address(1)"
        );
        treasury = _treasury;
        emit SetTreasuryAddress(_treasury);
    }

    /*
     * @dev Returns OATH tokens's emission rate (allocated to this contract)
     */
    function emissionRate() public view returns (uint256) {
        return oath.masterV2EmissionRate();
    }

    // Add a new lp to the pool. Can only be called by the owner.
    // XXX DO NOT add the same LP token more than once. Rewards will be messed up if you do.
    function add(IERC20 _lpToken, uint256 _allocPoint, uint256 _depositFee, bool _withUpdate) public onlyOwner {
        require(_depositFee <= MAX_DEPOSIT_FEE, "add: deposit fee too high");

        if (_withUpdate) {
            massUpdatePools();
        }
        uint256 lastRewardTime = block.timestamp > startTime ? block.timestamp : startTime;
        totalAllocPoint = totalAllocPoint.add(_allocPoint);

        poolInfo.push(
            PoolInfo({
                lpToken: _lpToken,
                allocPoint: _allocPoint,
                lastRewardTime: lastRewardTime,
                accPerShare: 0,
                totalDeposit: 0,
                depositFee: _depositFee
            })
        );
    }

    // Update the given pool's OATH allocation point. Can only be called by the owner.
    function set(uint256 _pid, uint256 _allocPoint, uint256 _depositFee, bool _withUpdate) public onlyOwner {
        require(_depositFee <= MAX_DEPOSIT_FEE, "add: deposit fee too high");

        if (_withUpdate) {
            massUpdatePools();
        }
        totalAllocPoint = totalAllocPoint.sub(poolInfo[_pid].allocPoint).add(_allocPoint);

        poolInfo[_pid].allocPoint = _allocPoint;
        poolInfo[_pid].depositFee = _depositFee;
    }

    function poolLength() external view returns (uint256) {
        return poolInfo.length;
    }

    // Allows users to see if rewards have started
    function rewardsStarted() public view returns (bool) {
        return (block.timestamp >= startTime);
    }

    // Return reward multiplier over the given _from to _to block.
    function getMultiplier(uint256 _from, uint256 _to) public pure returns (uint256) {
        return _to.sub(_from);
    }

    // View function to see pending OATH on frontend.
    function pendingReward(uint256 _pid, address _user) public view returns (uint256) {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][_user];
        uint256 accPerShare = pool.accPerShare;
        uint256 lpSupply = pool.totalDeposit;

        if (block.timestamp > pool.lastRewardTime && lpSupply != 0) {
            uint256 multiplier = getMultiplier(pool.lastRewardTime, block.timestamp);
            uint256 reward = multiplier.mul(emissionRate()).mul(pool.allocPoint).div(totalAllocPoint);
            accPerShare = accPerShare.add(reward.mul(1e12).div(lpSupply));
        }

        return user.amount.mul(accPerShare).div(1e12).sub(user.rewardDebt);
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

        uint256 lpSupply = pool.totalDeposit;
        if (lpSupply == 0) {
            pool.lastRewardTime = block.timestamp;
            return;
        }

        uint256 multiplier = getMultiplier(pool.lastRewardTime, block.timestamp);
        uint256 reward = multiplier.mul(emissionRate()).mul(pool.allocPoint).div(totalAllocPoint);

        oath.claimMasterV2Rewards(reward);

        pool.accPerShare = pool.accPerShare.add(reward.mul(1e12).div(lpSupply));
        pool.lastRewardTime = block.timestamp;
    }

    // transfer pending rewards
    function transferPendingRewards(uint256 _pid, address _account) internal {
        uint256 pending = pendingReward(_pid, _account);
        if (pending > 0) {
            safeRewardTransfer(_account, pending);
            emit Harvest(msg.sender, _account, _pid, pending);
        }
    }

    // Harvest OREO earned from pools.
    function harvest(uint256 _pid) external {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];

        updatePool(_pid);
        if (user.amount > 0) {
            transferPendingRewards(_pid, msg.sender);
        }

        user.rewardDebt = user.amount.mul(pool.accPerShare).div(1e12);
    }

    // Deposit LP tokens to MasterChef for OATH allocation.
    function deposit(uint256 _pid, uint256 _amount) public {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];

        updatePool(_pid);
        if (user.amount > 0) {
            transferPendingRewards(_pid, msg.sender);
        }

        if (_amount > 0) {
            uint256 depositFeeAmount = _amount.mul(pool.depositFee).div(DEPOSIT_FEE_PRECISION);
            if (depositFeeAmount > 0) {
                _amount = _amount.sub(depositFeeAmount);
                pool.lpToken.safeTransferFrom(address(msg.sender), treasury, depositFeeAmount);
            }
            pool.lpToken.safeTransferFrom(address(msg.sender), address(this), _amount);
            user.amount = user.amount.add(_amount);
            pool.totalDeposit = pool.totalDeposit.add(_amount);
        }

        user.rewardDebt = user.amount.mul(pool.accPerShare).div(1e12);
        emit Deposit(msg.sender, _pid, _amount);
    }

    // Withdraw LP tokens from MasterChef.
    function withdraw(uint256 _pid, uint256 _amount) public {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];
        require(user.amount >= _amount, "withdraw: not good");
        updatePool(_pid);
        transferPendingRewards(_pid, msg.sender);

        if (_amount > 0) {
            user.amount = user.amount.sub(_amount);
            pool.lpToken.safeTransfer(address(msg.sender), _amount);
            pool.totalDeposit = pool.totalDeposit.sub(_amount);
        }
        user.rewardDebt = user.amount.mul(pool.accPerShare).div(1e12);

        emit Withdraw(msg.sender, _pid, _amount);
    }

    // Withdraw without caring about rewards. EMERGENCY ONLY.
    function emergencyWithdraw(uint256 _pid) public {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];
        pool.lpToken.safeTransfer(address(msg.sender), user.amount);
        emit EmergencyWithdraw(msg.sender, _pid, user.amount);
        user.amount = 0;
        user.rewardDebt = 0;
    }

    function safeRewardTransfer(address _to, uint256 _amount) internal {
        uint256 balance = oath.balanceOf(address(this));
        if (_amount > balance) {
            oath.transfer(_to, balance);
        } else {
            oath.transfer(_to, _amount);
        }
    }
}
