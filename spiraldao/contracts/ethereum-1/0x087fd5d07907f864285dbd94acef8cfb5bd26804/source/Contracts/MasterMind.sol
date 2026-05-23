//SPDX-License-Identifier: MIT

pragma solidity 0.8.16;

import { IAdapter } from "./interfaces/IAdapter.sol";
import { IMasterMind } from "./interfaces/IMasterMind.sol";
import { Rewarder, SafeRewarder } from "./libraries/SafeRewarder.sol";
import { ITarget, Adapter } from "./libraries/Adapter.sol";

import { Initializable } from "@openzeppelin/contracts/proxy/utils/Initializable.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import { IERC20, SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract MasterMind is IMasterMind, ReentrancyGuard, Initializable {
    using SafeERC20 for IERC20;
    using Adapter for ITarget;
    using SafeRewarder for Rewarder;

    bytes32 internal constant _ROLES_SLOT = bytes32(uint256(keccak256("spiral.finance.mastermind.roles")) - 1);
    bytes32 internal constant _DRAIN_PROTECTION_SLOT = bytes32(uint256(keccak256("spiral.finance.mastermind.drainProtection")) - 1);
    bytes32 internal constant _DRAIN_ADDRESS_SLOT = bytes32(uint256(keccak256("spiral.finance.mastermind.drainAddress")) - 1);
    bytes32 internal constant _REWARDER_SLOT = bytes32(uint256(keccak256("spiral.finance.mastermind.rewarder")) - 1);
    bytes32 internal constant _USER_INFO_SLOT = bytes32(uint256(keccak256("spiral.finance.mastermind.userInfo")) - 1);
    bytes32 internal constant _POOL_INFO_SLOT = bytes32(uint256(keccak256("spiral.finance.mastermind.poolInfo")) - 1);

    constructor() {
        _disableInitializers();
    }
     
    function _roles() internal pure returns (RolesSlot storage r) {
        bytes32 slot = _ROLES_SLOT;
        assembly {
            r.slot := slot
        }
    }

    function _drainProtection() internal pure returns (DrainProtectionSlot storage r) {
        bytes32 slot = _DRAIN_PROTECTION_SLOT;
        assembly {
            r.slot := slot
        }
    }

    function _drainAddress() internal pure returns (DrainAddressSlot storage r) {
        bytes32 slot = _DRAIN_ADDRESS_SLOT;
        assembly {
            r.slot := slot
        }
    }

    function _rewarder() internal pure returns (RewarderSlot storage r) {
        bytes32 slot = _REWARDER_SLOT;
        assembly {
            r.slot := slot
        }
    }

    function _userInfo() internal pure returns (UserInfoSlot storage r) {
        bytes32 slot = _USER_INFO_SLOT;
        assembly {
            r.slot := slot
        }
    }

    function _poolInfo() internal pure returns (PoolInfoSlot storage r) {
        bytes32 slot = _POOL_INFO_SLOT;
        assembly {
            r.slot := slot
        }
    }

    function owner() external view override returns (address) {
        return _roles().owner;
    }

    function service() external view override returns (address) {
        return _roles().service;
    }

    function drainProtectionEnabled() external view override returns (bool) {
        return _drainProtection().enabled;
    }

    function allowedDrainer(address drainer) external view override returns (bool) {
        return _drainProtection().allowedDrainers[drainer];
    }

    function drainAddress() external view override returns (address) {
        return _drainAddress().value;
    }

    function rewarder() external view override returns (address) {
        return address(_rewarder().value);
    }

    function userInfo(uint256 poolId, address user) external view override returns (UserInfo memory) {
        return _userInfo().users[poolId][user];
    }

    function poolInfo(uint256 poolId) external view override returns (PoolInfo memory) {
        return _poolInfo().pools[poolId];
    }

    function poolCount() external view override returns (uint256) {
        return _poolInfo().count;
    }

    function lockableToken(uint256 poolId) external view override returns(address) {
        PoolInfo storage pool = _poolInfo().pools[poolId];
        return address(pool.target.lockableToken(pool.targetPoolId));
    }

    function userDeposits(uint256 poolId, address userAddress) external view override returns (uint256 rewardableDeposit) {
        UserInfo storage user = _userInfo().users[poolId][userAddress];
        rewardableDeposit = user.rewardableDeposit; 
    }

    function earnedRewards(uint256 poolId, address userOfTarget) external view override returns (address[] memory, uint256[] memory) {
        PoolInfo storage pool = _poolInfo().pools[poolId];
        IAdapter target = IAdapter(address(pool.adapter));
        uint256 rewardTokenCount = target.rewardTokenCount();
        uint256[] memory amounts = new uint256[](rewardTokenCount);
        address[] memory tokens = new address[](rewardTokenCount);
        for (uint i = 0; i < rewardTokenCount; i++) {
            amounts[i] = target.earnedReward(address(pool.adapter), pool.targetPoolId, userOfTarget, i);
            tokens[i] = address(target.rewardToken(i));
        }
        return (tokens, amounts); 
    }

    modifier onlyOwner() {
        require(_roles().owner == msg.sender, "not an owner");
        _;
    }


    modifier onlyService() {
        require( _roles().service == msg.sender || _roles().owner == msg.sender, "not a service");
        _;
    }

    modifier onlyAllowedDrainer() {
        require( 
            !_drainProtection().enabled ||
            _drainProtection().allowedDrainers[msg.sender] || 
            _roles().service == msg.sender || 
            _roles().owner == msg.sender, "not an allowed drainer");
        _;
    }

    function init(address newOwner) external override initializer {
        _roles().owner = newOwner;
    }

    function updateService(address newService) external override onlyService {
        _roles().service = newService;
    }

    function setDrainProtection(bool enabled) external override onlyService {
        _drainProtection().enabled = enabled;
    }

    function setDrainerAllowance(address drainer, bool allow) external override onlyService {
        _drainProtection().allowedDrainers[drainer] = allow;
    }

    function updateRewarder(address newRewarder) external override onlyOwner {
        _rewarder().value = Rewarder(newRewarder);
    }

    function updateDrainAddress(address newDrainAddress) external override onlyOwner {
        _drainAddress().value = newDrainAddress;
    }

    function updateOwner(address newOwner) external override onlyOwner {
        _roles().owner = newOwner;
    }   

    function updatePool(uint256 poolId, uint256 amount) external override onlyAllowedDrainer {
        PoolInfo storage pool = _poolInfo().pools[poolId];
        pool.target.poolUpdate(pool.targetPoolId, amount);
    }

    function addBulk(ITarget target, address adapter, uint256[] memory targetPids) external override onlyOwner {
        uint256 poolCount = _poolInfo().count;
        for (uint i = 0; i < targetPids.length; i++) {
            _poolInfo().pools[poolCount++] = PoolInfo({
                target: target,
                adapter: adapter,
                targetPoolId: targetPids[i],
                rewardableDeposits: 0
            });
        }
        _poolInfo().count = poolCount;
        emit AddBulk(_poolInfo().count - targetPids.length, _poolInfo().count);
    }

    function claim(uint256 poolId, address to) external override nonReentrant {
        _claim(poolId, to);
    }

    function _claim(uint256 poolId, address to) internal {
        _updateUser(poolId, msg.sender);
        _rewarder().value.claim(poolId, msg.sender, to);
    }

    function _updateTargetInfo(uint256 poolId, ITarget newTarget, address newAdapter, uint256 newTargetPoolId, bool restake) internal {
        PoolInfo storage pool = _poolInfo().pools[poolId];
        if(restake) {
            ITarget oldTarget = pool.target;
            uint256 oldTargetPoolId = pool.targetPoolId;
            require(oldTarget.lockableToken(oldTargetPoolId) == newTarget.lockableToken(newTargetPoolId), "updateTargetInfo: different lockable tokens");  
            oldTarget.withdraw(oldTargetPoolId, oldTarget.lockedAmount(oldTargetPoolId));
            newTarget.deposit(newTargetPoolId, newTarget.lockableToken(newTargetPoolId).balanceOf(address(this)));
        }

        pool.target = newTarget;
        pool.adapter = newAdapter;
        pool.targetPoolId = newTargetPoolId;
        emit UpdateTargetInfo(poolId);
    }

    function updateTargetInfo(uint256 poolId, ITarget newTarget, address newAdapter, uint256 newTargetPoolId, bool restake) external override onlyOwner {
        _updateTargetInfo(poolId, newTarget, newAdapter, newTargetPoolId, restake);
    }

    function massUpdateTarget(uint256[] memory poolId, ITarget[] memory newTarget, address[] memory newAdapter, uint256[] memory newTargetPoolId, bool[] memory restake) external override onlyOwner {
        for (uint i = 0; i < poolId.length; i++) {
            _updateTargetInfo(poolId[i], newTarget[i], newAdapter[i], newTargetPoolId[i], restake[i]);
        }
    }

    function massUpdateAdapter(uint256[] memory poolId, address newAdapter) external override onlyService {
        for (uint i = 0; i < poolId.length; i++) {
            _poolInfo().pools[poolId[i]].adapter = newAdapter;
            emit UpdateAdapter(poolId[i]);
        }
    }

    function _updateUser(uint256 poolId, address userAddress) internal {
        UserInfo storage user = _userInfo().users[poolId][userAddress];
        _rewarder().value.updateUser(poolId, userAddress, user.rewardableDeposit);
    }

    function _deposit(uint256 poolId,  uint256 rewardableAmount) internal returns (uint256) {
        PoolInfo storage pool = _poolInfo().pools[poolId];
        ITarget target = pool.target;
        uint256 targetPoolId = pool.targetPoolId;
        uint256 actualDepositAmount;
        {
            uint256 depositsBefore = target.lockedAmount(targetPoolId);
            target.deposit(targetPoolId, rewardableAmount);
            uint256 depositsAfter = target.lockedAmount(targetPoolId);
            actualDepositAmount = depositsAfter - depositsBefore;
        }
        pool.rewardableDeposits = pool.rewardableDeposits + actualDepositAmount;
        return (actualDepositAmount);
    }

    function _deposit(uint256 poolId, address userAddress, uint256 rewardableAmount) internal {
        (uint256 actualRewardableAmount) = _deposit(poolId,  rewardableAmount);

        UserInfo storage user = _userInfo().users[poolId][userAddress];
        user.rewardableDeposit = user.rewardableDeposit + actualRewardableAmount;
        user.lastDepositBlock = block.number;
    }

    function deposit(uint256 poolId, uint256 rewardableAmount, bool claimRewards) external override nonReentrant {
        require(rewardableAmount > 0, "deposit: amount must be greater than zero");
        
        if(claimRewards) {
            _claim(poolId, msg.sender);
        }

        PoolInfo storage pool = _poolInfo().pools[poolId];
        pool.target.lockableToken(pool.targetPoolId).safeTransferFrom(msg.sender, address(this), rewardableAmount);
        
        _deposit(poolId, msg.sender, rewardableAmount);
        _updateUser(poolId, msg.sender);


        emit Deposit(msg.sender, poolId, rewardableAmount);
    }

    function _withdraw(uint256 poolId, uint256 rewardableAmount) internal returns (uint256) {
        PoolInfo storage pool = _poolInfo().pools[poolId];
        ITarget target = pool.target;
        uint256 targetPoolId = pool.targetPoolId;
        uint256 poolLockedAmount = target.lockedAmount(targetPoolId);
        uint256 actualWithdrawAmount;
        {
            uint256 depositsBefore = poolLockedAmount;
            target.withdraw(targetPoolId, rewardableAmount);
            uint256 depositsAfter = target.lockedAmount(targetPoolId);
            actualWithdrawAmount = depositsBefore - depositsAfter;
        }
        pool.rewardableDeposits = pool.rewardableDeposits - actualWithdrawAmount;
        return (actualWithdrawAmount);
    }

    function _withdraw(uint256 poolId, address userAddress, uint256 rewardableAmount) internal returns (uint256) {
        (uint256 actualWithdrawAmount) = _withdraw(poolId, rewardableAmount);

        UserInfo storage user = _userInfo().users[poolId][userAddress];
        user.rewardableDeposit = user.rewardableDeposit - actualWithdrawAmount;
        return actualWithdrawAmount;
    }

    function withdraw(uint256 poolId,  uint256 rewardableAmount, bool claimRewards) external override nonReentrant {
        require(rewardableAmount > 0, "withdraw: amount must be greater than zero");

        if(claimRewards) {
            _claim(poolId, msg.sender);
        }

        uint256 actualWithdrawAmount = _withdraw(poolId, msg.sender,rewardableAmount);
        _updateUser(poolId, msg.sender);

        PoolInfo storage pool = _poolInfo().pools[poolId];
        pool.target.lockableToken(pool.targetPoolId).safeTransfer(msg.sender, actualWithdrawAmount);

        emit Withdraw(msg.sender, poolId, actualWithdrawAmount);
    }

    function drain(uint256[] memory poolIds) external override onlyAllowedDrainer {
        for (uint j = 0; j < poolIds.length; j++) {
            PoolInfo storage pool = _poolInfo().pools[poolIds[j]];
            ITarget target = pool.target;
            uint256 targetPoolId = pool.targetPoolId;
            target.claimReward(targetPoolId);
            IAdapter adapter = IAdapter(address(pool.adapter));
            uint256 rewardTokenCount = adapter.rewardTokenCount();
            for (uint i = 0; i < rewardTokenCount; i++) {
                IERC20 rewardToken =  adapter.rewardToken(i);
                uint256 tokenAmount = rewardToken.balanceOf(address(this));
                if (tokenAmount != 0) {
                    rewardToken.safeTransfer(_drainAddress().value, tokenAmount);
                    emit Drain(poolIds[j], address(rewardToken), tokenAmount);
                }
            }
        }
    }
}
