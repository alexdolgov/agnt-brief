// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import { Initializable } from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import { IUrdMaster } from "../interfaces/IUrdMaster.sol";

/// @title UrDexDev Fund
/// @author UrDex
/// @notice Hold LP and stake to UrdMaster contract.
contract LockLiquidity is Initializable, OwnableUpgradeable {
    using SafeERC20 for IERC20;

    IERC20 public Reward;
    IERC20 public LP;
    IUrdMaster public URD_Master;
    uint256 public poolId;

    uint256 public constant DURATION = 30 * 6 days;
    uint256 public START;
    uint256 public claimedAmount;
    uint256 public totalReward;

    address public operator;

    modifier onlyOperator() {
        require(msg.sender == operator, "Only operator");
        _;
    }

    function initialize(address _operator, address _urdMaster, uint256 _poolId) external initializer {
        __Ownable_init();
        URD_Master = IUrdMaster(_urdMaster);
        Reward = IERC20(URD_Master.rewardToken());
        poolId = _poolId;
        LP = IERC20(URD_Master.lpToken(_poolId));
        operator = _operator;
        START = 1682517600;
    }

    /* ========== VIEW FUNCTIONS ========== */

    function claimableReward() public view returns (uint256) {
        return URD_Master.pendingReward(poolId, address(this)) + Reward.balanceOf(address(this));
    }

    function endTime() public view returns (uint256) {
        return START + DURATION;
    }

    function withdrawLP(uint256 _amount, address _receiver) external onlyOperator {
        require(block.timestamp >= endTime(), "invalid time");
        require(_receiver != address(0), "UrdDevFund::withdraw: invalid address");
        require(_amount != 0 && _amount <= LP.balanceOf(address(this)), "invalid amount");
        claimedAmount += _amount;
        LP.safeTransfer(_receiver, _amount);
        emit WithdrawnLP(_receiver, _amount);
    }

    function depositToMaster(uint256 _amount) external onlyOperator {
        require(_amount <= LP.balanceOf(address(this)), "insufficient balance");
        LP.safeIncreaseAllowance(address(URD_Master), _amount);
        URD_Master.deposit(poolId, _amount, address(this));
        emit Deposit(_amount);
    }

    function withdrawFromMaster(uint256 _amount) external onlyOperator {
        require(0 < _amount && _amount <= totalLpDeposit(), "invalid amount");
        URD_Master.withdraw(poolId, _amount, address(this));
        emit Withdraw(_amount);
    }

    function claimReward(address _receiver, uint256 _amount) external onlyOperator {
        require(_receiver != address(0), "invalid address");
        URD_Master.harvest(poolId, address(this));
        uint256 urdBalance = Reward.balanceOf(address(this));
        _amount = _amount > urdBalance ? urdBalance : _amount;
        totalReward += _amount;
        Reward.safeTransfer(_receiver, _amount);
        emit RewardClaimed(_receiver, _amount);
    }

    /* ========== INTERNAL FUNCTIONS ========== */

    function totalLpDeposit() internal view returns (uint256) {
        (uint256 amount, ) = URD_Master.userInfo(poolId, address(this));
        return amount;
    }

    /* ========== EVENTS ========== */

    event Deposit(uint256 _amount);
    event Withdraw(uint256 _amount);
    event WithdrawnLP(address indexed _receiver, uint256 _amount);
    event RewardClaimed(address indexed _receiver, uint256 _amount);
}
