// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.4;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "../interfaces/IMinter.sol";
import "../interfaces/IUserLevel.sol";

contract Staking_PAN is Ownable {
    using SafeERC20 for IERC20;

    struct UserInfo {
        uint256 amount;
        uint256 bonus;
        int256 rewardDebt;
    }

    IERC20 public PAN;
    IMinter public minter;
    IUserLevel public userLevel;

    // governance
    address public reserveFund;

    uint256 public accRewardPerShare;
    uint256 public lastRewardBlock;
    uint256 public startRewardBlock;
    uint256 public totalBonus;

    uint256 public rewardPerBlock;
    uint256 private constant ACC_REWARD_PRECISION = 1e12;

    mapping (address => UserInfo) public userInfo;

    /* ========== Modifiers =============== */


    constructor(IERC20 _PAN, IMinter _minter, uint256 _startReward, uint256 _rewardPerBlock) {
        PAN = _PAN;
        lastRewardBlock = _startReward;
        startRewardBlock = _startReward;
        rewardPerBlock = _rewardPerBlock;
        minter = IMinter(_minter);
    }

    /* ========== INTERNAL FUNCTIONS ========== */

    function getBonus(uint256 _value, address account) internal view returns(uint256) {
        if (address(userLevel) != address(0)) {
            (uint256 _n, uint256 _d) = userLevel.getBonus(account, address(this));
            return _value * _n / _d;
        }
        return 0;
    }

    function _update(address account) internal {
        UserInfo storage user = userInfo[account];
        uint256 _oldBonus = user.bonus;
        uint256 _newBonus = getBonus(user.amount, account);
        if (_newBonus > _oldBonus) {
            user.rewardDebt += int256((_newBonus - _oldBonus) * accRewardPerShare / ACC_REWARD_PRECISION);
            totalBonus += _newBonus - _oldBonus;
        } else {
            user.rewardDebt -= int256((_oldBonus - _newBonus) * accRewardPerShare / ACC_REWARD_PRECISION);
            totalBonus -= _oldBonus - _newBonus;
        }
        user.bonus = _newBonus;
    }

    function totalLp() internal view  returns(uint256) {
        return PAN.balanceOf(address(this)) + totalBonus;
    }
    /* ========== PUBLIC FUNCTIONS ========== */

    /// @notice View function to see pending reward on frontend.
    /// @param _user Address of user.
    /// @return pending reward for a given user.
    function pendingReward(address _user) external view returns (uint256 pending) {
        UserInfo storage user = userInfo[_user];
        uint256 supply = totalLp();
        uint256 _accRewardPerShare = accRewardPerShare;
        if (block.number > lastRewardBlock && supply != 0) {
            uint256 rewardAmount = (block.number - lastRewardBlock) * rewardPerBlock;
            _accRewardPerShare += (rewardAmount * ACC_REWARD_PRECISION) / supply;
        }
        pending = uint256(int256((user.amount + user.bonus) * _accRewardPerShare / ACC_REWARD_PRECISION) - user.rewardDebt);
    }

    /// @notice Update reward variables of the given pool.
    function updatePool() public {
        if (block.number > lastRewardBlock) {
            uint256 supply = totalLp();
            if (supply > 0 && block.number > lastRewardBlock) {
                uint256 rewardAmount = (block.number - lastRewardBlock) * rewardPerBlock;
                accRewardPerShare += rewardAmount * ACC_REWARD_PRECISION / supply;
            }
            lastRewardBlock = block.number;
            emit LogUpdatePool(lastRewardBlock, supply, accRewardPerShare);
        }
    }

    /// @notice Deposit LP tokens to MCV2 for reward allocation.
    /// @param amount LP token amount to deposit.
    /// @param to The receiver of `amount` deposit benefit.
    function deposit(uint256 amount, address to) public {
        updatePool();
        UserInfo storage user = userInfo[to];

        // Effects
        user.amount += amount;
        user.rewardDebt += int256(amount * accRewardPerShare / ACC_REWARD_PRECISION);

        PAN.safeTransferFrom(msg.sender, address(this), amount);
        _update(msg.sender);
        emit Deposit(msg.sender, amount, to);
    }

    /// @notice Withdraw LP tokens from MCV2.
    /// @param amount LP token amount to withdraw.
    /// @param to Receiver of the LP tokens.
    function withdraw(uint256 amount, address to) public {
        updatePool();
        UserInfo storage user = userInfo[msg.sender];

        // Effects
        user.rewardDebt -= int256(amount * accRewardPerShare / ACC_REWARD_PRECISION);
        user.amount -= amount;

        _update(msg.sender);
        PAN.safeTransfer(to, amount);

        emit Withdraw(msg.sender, amount, to);
    }

    /// @notice Harvest proceeds for transaction sender to `to`.
    /// @param to Receiver of rewards.
    function harvest(address to) public {
        updatePool();
        UserInfo storage user = userInfo[msg.sender];
        int256 accumulatedReward = int256((user.amount + user.bonus) * accRewardPerShare / ACC_REWARD_PRECISION);
        uint256 _pendingReward = uint256(accumulatedReward - user.rewardDebt);

        // Effects
        user.rewardDebt = accumulatedReward;

        // Interactions
        if (_pendingReward > 0) {
            minter.transfer(to, _pendingReward);
        }
        emit Harvest(msg.sender, _pendingReward);
    }

    /// @notice Withdraw LP tokens from MCV2 and harvest proceeds for transaction sender to `to`.
    /// @param amount LP token amount to withdraw.
    /// @param to Receiver of the LP tokens and rewards.
    function withdrawAndHarvest(uint256 amount, address to) public {
        updatePool();
        UserInfo storage user = userInfo[msg.sender];
        int256 accumulatedReward = int256((user.amount + user.bonus) * accRewardPerShare / ACC_REWARD_PRECISION);
        uint256 _pendingReward = uint256(accumulatedReward - user.rewardDebt);

        // Effects
        user.rewardDebt = accumulatedReward - int256(amount * accRewardPerShare / ACC_REWARD_PRECISION);
        user.amount -= amount;

        // Interactions
        if (_pendingReward > 0) {
            minter.transfer(to, _pendingReward);
        }

        _update(msg.sender);
        PAN.safeTransfer(to, amount);

        emit Withdraw(msg.sender, amount, to);
        emit Harvest(msg.sender, _pendingReward);
    }

    /// @notice Withdraw without caring about rewards. EMERGENCY ONLY.
    /// @param to Receiver of the LP tokens.
    function emergencyWithdraw(address to) public {
        UserInfo storage user = userInfo[msg.sender];
        uint256 amount = user.amount;
        user.amount = 0;
        user.rewardDebt = 0;

        // Note: transfer can fail or succeed if `amount` is zero.
        PAN.safeTransfer(to, amount);
        emit EmergencyWithdraw(msg.sender, amount, to);
    }

    function update(address owner) public {
        updatePool();
        _update(owner);
    }

    function getUserInfo(address user) external view returns(UserInfo memory info) {
        info = userInfo[user];
    }
    /* ========== RESTRICTED FUNCTIONS ========== */

    /// @notice Sets the reward per second to be distributed. Can only be called by the owner.
    /// @param _rewardPerBlock The amount of reward to be distributed per second.
    function setRewardPerBlock(uint256 _rewardPerBlock) public onlyOwner {
        updatePool();
        uint256 oldRewardPerBlock = rewardPerBlock;
        rewardPerBlock = _rewardPerBlock;
        emit RewardPerBlockChanged(oldRewardPerBlock, _rewardPerBlock);
    }

    function changeMinter(address _newMinter) external onlyOwner {
        address oldMinter = address(minter);
        minter = IMinter(_newMinter);
        emit MinterChanged(oldMinter, _newMinter);
    }

    function setUserLevelAddress(address _userLevel) external onlyOwner {
        userLevel = IUserLevel(_userLevel);
        emit UserLevelChanged(_userLevel);
    }

    /* =============== EVENTS ==================== */

    event Deposit(address indexed user, uint256 amount, address indexed to);
    event Withdraw(address indexed user, uint256 amount, address indexed to);
    event EmergencyWithdraw(address indexed user, uint256 amount, address indexed to);
    event Harvest(address indexed user, uint256 amount);
    event LogUpdatePool(uint256 lastRewardBlock, uint256 lpSupply, uint256 accRewardPerShare);
    event RewardPerBlockChanged(uint256 oldRewardPerBlock, uint256 newRewardPerBlock);
    event FundRescued(address indexed receiver, uint256 amount);
    event MinterChanged(address indexed oldMinter, address indexed newMinter);
    event UserLevelChanged(address indexed userLevel);

}