// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "prb-math/contracts/PRBMathUD60x18.sol";

import "./Five.sol";

// MasterFarmer is the master of FIVE. He can make FIVE and he is a fair guy.
contract MasterFarmer is Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    // Info of each pool.
    struct PoolInfo {
        IERC20 lpToken; // Address of LP token contract.
        uint256 allocPoint; // How many allocation points assigned to this pool.
        uint256 lastRewardBlockTime; // Last block time that FIVE distributions occur.
        uint256 accFivePerShare; // Accumulated FIVE per share, times 1e12.
    }

    // Info of each user.
    struct UserInfo {
        uint256 amount; // How many LP tokens the user has provided.
        uint256 rewardDebt; // Reward debt.
    }

    // Lock info for PID[0]
    struct LockInfo {
        uint256 lockAmount; // Amount of FIVE locked.
        uint256 unlockTime; // Timestamp when lock expires.
    }

    PoolInfo[] public poolInfo;
    mapping(IERC20 => bool) private poolExistence; // Added mapping for quick duplicate check.
    mapping(uint256 => mapping(address => UserInfo)) public userInfo;
    mapping(address => LockInfo) public lockInfo;

    uint256 public constant MAX_EMISSION = 5 * 1e18; // Max 5 FIVE per second
    uint256 public constant MAX_STAKING_PERCENTAGE = 30; // Max 30%
    uint256 public constant MAX_LOCK_TIME = 6 * 30 days; // Maximum lock duration: 6 months
    uint256 public constant MIN_LOCK_TIME = 300; // Minimum lock duration: 2 weeks

    FIVE public five;
    uint256 public emission = 5 * 1e18;
    uint256 public stakingPercentage = 30;
    uint256 public totalAllocPoint = 0;
    uint256 public startBlockTime;
    uint256 public totalLockedAmount; // Total amount of FIVE tokens locked
    uint256 public totalLockedUsers; // Total number of users who have locked their FIVE tokens
    uint256 public k; // Steepness of the decay curve

    event EmergencyWithdraw(address indexed user, uint256 indexed pid, uint256 amount);
    event SetTreasury(address indexed user, address indexed newTreasury);
    event SetDev(address indexed user, address indexed newDev);
    event Add(address indexed user, IERC20 indexed pair, uint256 indexed point);
    event Set(address indexed user, uint256 indexed pid, uint256 indexed point);
    event Deposit(address indexed user, uint256 indexed pid, uint256 amount);
    event Withdraw(address indexed user, uint256 indexed pid, uint256 amount);
    event EnterStaking(address indexed user, uint256 amount, uint256 lockTime);
    event LeaveStaking(address indexed user, uint256 amount);
    event EmissionUpdated(uint256 newRate);
    event StakingPercentageUpdated(uint256 newPercentage);
    event LockTimeExtended(address indexed user, uint256 extraLockTime, uint256 newUnlockTime);
    event KUpdated(uint256 oldK, uint256 newK);

    modifier nonDuplicated(IERC20 _lpToken) {
        require(!poolExistence[_lpToken], "Add: pool already exists!");
        _;
    }

    modifier onlyValidPool(uint256 _pid) {
        require(_pid < poolLength(), "Invalid pool ID");
        _;
    }

    constructor(address initialOwner, FIVE _five, uint256 _startBlockTime, uint256 initialK) Ownable(initialOwner) {
        require(initialK >= 1e18 && initialK <= 6 * 1e18, "initialK must be between 1 and 6 (scaled by 1e18)");
        require(_startBlockTime > block.timestamp, "_startBlockTime must be in the future");

        five = _five;
        startBlockTime = _startBlockTime;
        k = initialK; // Set the initial value for k

        // Staking pool
        poolInfo.push(
            PoolInfo({ lpToken: _five, allocPoint: 1000, lastRewardBlockTime: startBlockTime, accFivePerShare: 0 })
        );

        poolExistence[_five] = true; // Mark staking pool as existing.
        totalAllocPoint = 1000;
    }

    /// @notice Decrease the maximum supply of the FIVE token.
    /// @param newMaxSupply The new maximum supply, which must be less than the current max supply.
    function decreaseFiveMaxSupply(uint256 newMaxSupply) external onlyOwner {
        // Update all pools with the current max supply before changing it
        massUpdatePools();

        // Get the current maximum supply and total supply from the FIVE token contract.
        uint256 currentMaxSupply = five.maxSupply();
        uint256 currentTotalSupply = five.totalSupply();

        require(newMaxSupply < currentMaxSupply, "New max supply must be less than the current max supply");
        require(newMaxSupply >= currentTotalSupply, "New max supply must not be less than the current total supply");

        // Call the decreaseMaxSupply function in the FIVE token contract.
        five.decreaseMaxSupply(newMaxSupply);
    }

    // Set the emission rate (0 to MAX_EMISSION). Only owner can call this function.
    function setEmission(uint256 _emission) external onlyOwner {
        require(_emission <= MAX_EMISSION, "setEmission: exceeds max limit");

        // Update all pools with the current emission rate before changing it
        massUpdatePools();

        emission = _emission;
        emit EmissionUpdated(_emission);
    }

    // Set the staking percentage (0 to MAX_STAKING_PERCENTAGE). Only owner can call this function.
    function setStakingPercentage(uint256 _percentage) external onlyOwner {
        require(_percentage <= MAX_STAKING_PERCENTAGE, "setStakingPercentage: exceeds max limit");

        // Update all pools with the current staking percentage before changing it
        massUpdatePools();

        stakingPercentage = _percentage;
        emit StakingPercentageUpdated(_percentage);

        updateStakingPool();
    }

    function updateK(uint256 newK) external onlyOwner {
        require(newK >= 1e18 && newK <= 6 * 1e18, "updateK: k must be between 1 and 6 (scaled by 1e18)");

        // Update all pools to ensure rewards are calculated with the old k
        massUpdatePools();

        emit KUpdated(k, newK);
        k = newK;
    }

    // Add a new LP to the pool. Can only be called by the owner.
    function add(uint256 _allocPoint, IERC20 _lpToken, bool _withUpdate) public onlyOwner nonDuplicated(_lpToken) {
        if (_withUpdate) {
            massUpdatePools();
        }
        uint256 lastRewardBlockTime = block.timestamp > startBlockTime ? block.timestamp : startBlockTime;
        totalAllocPoint += _allocPoint;
        poolInfo.push(
            PoolInfo({
                lpToken: _lpToken,
                allocPoint: _allocPoint,
                lastRewardBlockTime: lastRewardBlockTime,
                accFivePerShare: 0
            })
        );
        poolExistence[_lpToken] = true;
        updateStakingPool();
        emit Add(msg.sender, _lpToken, _allocPoint);
    }

    function set(uint256 _pid, uint256 _allocPoint, bool _withUpdate) public onlyOwner {
        require(_pid != 0, "You can't set allocPoint for staking pool.");
        if (_withUpdate) {
            massUpdatePools();
        }
        if (poolInfo[_pid].allocPoint != _allocPoint) {
            uint256 prevAllocPoint = poolInfo[_pid].allocPoint;
            poolInfo[_pid].allocPoint = _allocPoint;
            totalAllocPoint = totalAllocPoint - prevAllocPoint + _allocPoint;
            updateStakingPool();
            emit Set(msg.sender, _pid, _allocPoint);
        }
    }

    function updateStakingPool() internal {
        uint256 length = poolLength();
        uint256 points = 0;
        for (uint256 pid = 1; pid < length; ++pid) {
            points += poolInfo[pid].allocPoint;
        }
        if (points != 0) {
            uint256 numerator = points * stakingPercentage * 1e12;
            uint256 denominator = 100 - stakingPercentage;
            uint256 stakingAlloc = numerator / denominator / 1e12;
            totalAllocPoint = totalAllocPoint - poolInfo[0].allocPoint + stakingAlloc;
            poolInfo[0].allocPoint = stakingAlloc;
        }
    }

    function fiveCanMint(uint256 _amount) internal view returns (uint256 fiveReward) {
        uint256 canMint = five.maxSupply() - five.totalSupply();
        if (canMint < _amount) {
            fiveReward = canMint;
        } else {
            fiveReward = _amount;
        }
    }

    function pendingFive(uint256 _pid, address _user) public view onlyValidPool(_pid) returns (uint256) {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][_user];
        uint256 accFivePerShare = pool.accFivePerShare;
        uint256 supply = _pid > 0 ? pool.lpToken.balanceOf(address(this)) : totalLockedAmount;

        if (block.timestamp > pool.lastRewardBlockTime && supply != 0) {
            uint256 timeElapsed = block.timestamp - pool.lastRewardBlockTime;
            uint256 rewardAmount = (timeElapsed * emission * pool.allocPoint) / totalAllocPoint;
            uint256 fiveReward = fiveCanMint(rewardAmount);
            accFivePerShare += (fiveReward * 1e12) / supply;
        }

        return (user.amount * accFivePerShare) / 1e12 - user.rewardDebt;
    }

    function decayedPendingFive(address _user) external view returns (uint256) {
        UserInfo storage user = userInfo[0][_user];
        uint256 pending = pendingFive(0, _user);

        // Scale getVeFIVE before dividing
        uint256 scaledVeFIVE = (getVeFIVE(_user) * 1e18) / user.amount;

        // Calculate the decayed pending rewards
        return (pending * scaledVeFIVE) / 1e18;
    }

    function massUpdatePools() public {
        uint256 length = poolLength();
        for (uint256 pid = 0; pid < length; ++pid) {
            updatePool(pid);
        }
    }

    function updatePool(uint256 _pid) public onlyValidPool(_pid) {
        PoolInfo storage pool = poolInfo[_pid];
        if (block.timestamp <= pool.lastRewardBlockTime) {
            return;
        }
        uint256 supply = _pid > 0 ? pool.lpToken.balanceOf(address(this)) : totalLockedAmount;

        if (supply == 0) {
            pool.lastRewardBlockTime = block.timestamp;
            return;
        }

        uint256 timeElapsed = block.timestamp - pool.lastRewardBlockTime;
        uint256 rewardAmount = (timeElapsed * emission * pool.allocPoint) / totalAllocPoint;
        uint256 fiveReward = fiveCanMint(rewardAmount);
        if (fiveReward > 0) {
            five.mint(address(this), fiveReward);
        }
        pool.accFivePerShare += (fiveReward * 1e12) / supply;
        pool.lastRewardBlockTime = block.timestamp;
    }

    function deposit(uint256 _pid, uint256 _amount) public nonReentrant onlyValidPool(_pid) {
        require(_pid != 0, "Deposit FIVE by staking");
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];
        updatePool(_pid);
        if (user.amount > 0) {
            uint256 pending = (user.amount * pool.accFivePerShare) / 1e12 - user.rewardDebt;
            if (pending > 0) {
                safeFiveTransfer(msg.sender, pending);
            }
        }
        if (_amount > 0) {
            pool.lpToken.safeTransferFrom(address(msg.sender), address(this), _amount);
            user.amount += _amount;
        }
        user.rewardDebt = (user.amount * pool.accFivePerShare) / 1e12;
        emit Deposit(msg.sender, _pid, _amount);
    }

    function withdraw(uint256 _pid, uint256 _amount) public nonReentrant onlyValidPool(_pid) {
        require(_pid != 0, "Withdraw FIVE by unstaking");
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];
        require(user.amount >= _amount, "Withdraw failed: Invalid operation");
        updatePool(_pid);
        uint256 pending = (user.amount * pool.accFivePerShare) / 1e12 - user.rewardDebt;
        if (pending > 0) {
            safeFiveTransfer(msg.sender, pending);
        }
        if (_amount > 0) {
            user.amount -= _amount;
            pool.lpToken.safeTransfer(address(msg.sender), _amount);
        }
        user.rewardDebt = (user.amount * pool.accFivePerShare) / 1e12;
        emit Withdraw(msg.sender, _pid, _amount);
    }

    // Stake and lock FIVE tokens in PID[0]
    function enterStaking(uint256 _amount, uint256 _lockDuration) public nonReentrant {
        PoolInfo storage pool = poolInfo[0];
        UserInfo storage user = userInfo[0][msg.sender];
        LockInfo storage lock = lockInfo[msg.sender];

        require(
            _lockDuration >= MIN_LOCK_TIME && _lockDuration <= MAX_LOCK_TIME,
            "Stake failed: Invalid Lock Duration"
        );

        updatePool(0);
        if (user.amount > 0 && block.timestamp <= lock.unlockTime) {
            uint maxPending = (user.amount * pool.accFivePerShare) / 1e12 - user.rewardDebt;
            uint256 pending = (maxPending * ((getVeFIVE(msg.sender) * 1e18) / user.amount)) / 1e18;
            if (pending > 0) {
                safeFiveTransfer(msg.sender, pending);
                if (maxPending > pending) {
                    five.burn(maxPending - pending);
                }
            }
        }
        if (_amount > 0) {
            five.transferFrom(address(msg.sender), address(this), _amount);
            user.amount += _amount;
            lock.lockAmount += _amount;

            // Update unlockTime if the new unlock time is greater
            uint256 newUnlockTime = block.timestamp + _lockDuration;
            if (newUnlockTime > lock.unlockTime) {
                lock.unlockTime = newUnlockTime;
            }

            // Update total locked amount
            totalLockedAmount += _amount;

            // Increment the user count if this is the first time locking
            if (lock.lockAmount == _amount) {
                totalLockedUsers++;
            }
        }
        user.rewardDebt = (user.amount * pool.accFivePerShare) / 1e12;

        emit EnterStaking(msg.sender, _amount, _lockDuration);
    }

    // Unstake FIVE tokens from PID[0]
    function leaveStaking() public nonReentrant {
        PoolInfo storage pool = poolInfo[0];
        UserInfo storage user = userInfo[0][msg.sender];
        LockInfo storage lock = lockInfo[msg.sender];

        require(user.amount > 0 && lock.lockAmount > 0, "Unstake failed: Invalid operation");
        updatePool(0);
        if (block.timestamp <= lock.unlockTime) {
            uint maxPending = (user.amount * pool.accFivePerShare) / 1e12 - user.rewardDebt;
            uint256 pending = (maxPending * ((getVeFIVE(msg.sender) * 1e18) / user.amount)) / 1e18;
            if (pending > 0) {
                safeFiveTransfer(msg.sender, pending);
                if (maxPending > pending) {
                    five.burn(maxPending - pending);
                }
            }
        } else {
            uint256 unclaimedRewards = (user.amount * pool.accFivePerShare) / 1e12 - user.rewardDebt;
            if (unclaimedRewards > 0) {
                five.burn(unclaimedRewards);
            }
            uint256 amountToTransfer = user.amount;
            user.amount = 0;
            lock.lockAmount = 0; // Reset lockAmount to 0
            lock.unlockTime = 0; // Reset unlockTime
            // Decrease total locked amount
            totalLockedAmount -= amountToTransfer;
            // Decrease the user count if the user has no locked tokens left
            totalLockedUsers--;
            safeFiveTransfer(msg.sender, amountToTransfer);

            emit LeaveStaking(msg.sender, amountToTransfer);
        }
        user.rewardDebt = (user.amount * pool.accFivePerShare) / 1e12;
    }

    function extendLockTime(uint256 _extraLockDuration) public nonReentrant {
        LockInfo storage lock = lockInfo[msg.sender];

        // Ensure that the current lock exists and is not expired
        require(lock.lockAmount > 0, "No active lock to extend");

        // Ensure the new unlock time does not exceed the maximum lock time
        uint256 newUnlockTime = lock.unlockTime + _extraLockDuration;
        require(newUnlockTime <= block.timestamp + MAX_LOCK_TIME, "Exceeds maximum lock duration");

        // Ensure the new unlock time is not lower than current time + minimum lock time
        require(newUnlockTime >= block.timestamp + MIN_LOCK_TIME, "Unlock time too short");

        // Extend the unlock time
        lock.unlockTime = newUnlockTime;

        emit LockTimeExtended(msg.sender, _extraLockDuration, lock.unlockTime);
    }

    function emergencyWithdraw(uint256 _pid) public nonReentrant onlyValidPool(_pid) {
        require(_pid != 0, "Unavailable for staking pool");
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];
        require(user.amount > 0, "No tokens to withdraw");
        uint256 amount = user.amount;
        user.amount = 0;
        user.rewardDebt = 0;
        pool.lpToken.safeTransfer(msg.sender, amount);
        emit EmergencyWithdraw(msg.sender, _pid, amount);
    }

    /**
     * @notice Calculate the veFIVE balance of a user.
     * @param _user The address of the user.
     * @return The veFIVE balance of the user based on locked amount and remaining lock time.
     */
    function getVeFIVE(address _user) public view returns (uint256) {
        LockInfo storage lock = lockInfo[_user];

        // Return 0 if the lock has expired or if the user has no locked tokens
        if (block.timestamp > lock.unlockTime || lock.lockAmount == 0) {
            return 0;
        }

        uint256 remainingTime = lock.unlockTime - block.timestamp;
        uint256 maxVeFIVE = lock.lockAmount; // Maximum veFIVE is the locked amount

        // Scale remainingTime and k to UD60x18 format for PRBMath
        uint256 scaledRemainingTime = PRBMathUD60x18.div(PRBMathUD60x18.mul(remainingTime, 1e18), MAX_LOCK_TIME);

        // Use k as a scaled value (e.g., 0.1 * 1e18 = 1e17)
        uint256 scaledX = PRBMathUD60x18.mul(k, scaledRemainingTime);

        // // Calculate exp(-x) using PRBMath (PRBMathUD60x18.exp assumes UD60x18 format)
        uint256 expValue = PRBMathUD60x18.div(1e18, PRBMathUD60x18.exp(scaledX));

        // // Calculate the normalization factor to ensure veFIVE = 100% at MAX_LOCK_TIME
        uint256 normalizationFactor = 1e18 - PRBMathUD60x18.div(1e18, PRBMathUD60x18.exp(k));

        // // Calculate veFIVE using the normalized asymptotic decay formula
        uint256 veFIVE = PRBMathUD60x18.mul(maxVeFIVE, PRBMathUD60x18.div(1e18 - expValue, normalizationFactor));

        return veFIVE;
    }

    function poolLength() public view returns (uint256) {
        return poolInfo.length;
    }

    function safeFiveTransfer(address _to, uint256 _amount) internal {
        uint256 fiveBalance = five.balanceOf(address(this));
        uint256 transferAmount = _amount > fiveBalance ? fiveBalance : _amount;

        // Perform the transfer before updating any state
        five.transfer(_to, transferAmount);
    }
}
