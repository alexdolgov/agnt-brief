// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

import "@openzeppelin/contracts/utils/math/Math.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import "./interfaces/IRewardPool.sol";
import "./interfaces/IStakingConfig.sol";

contract RewardPool is IRewardPool {

    using Math for uint256;

    address public manager;
    uint128 internal _totalClaimed;
    IStakingConfig internal _config;

    modifier emptyManager() {
        require(manager == address(0x00), "RewardPool: manager already set");
        _;
    }

    modifier onlyManager() {
        require(msg.sender == manager, "RewardPool: manager not allowed");
        _;
    }

    function initAndObtainOwnership(IStakingConfig config) external emptyManager {
        manager = msg.sender;
        _config = config;
    }

    receive() external payable {
        require(false, "RewardPool: cannot receive");
    }

    function claimReward(address recipient, uint128 amount) external override onlyManager {
        require(getBalance() >= amount, "RewardPool: not enough balance");
        if (_config.isNative()) {
            address payable wallet = payable(recipient);
            require(wallet.send(amount), "RewardPool: cannot send reward");
        } else {
            require(_config.getStakeToken().transfer(recipient, amount), "RewardPool: cannot send reward");
        }
        _totalClaimed += amount;
        emit RewardClaimed(recipient, amount);
    }

    function getBalance() public override view returns (uint256) {
        return _config.isNative() ? address(this).balance : _config.getStakeToken().balanceOf(address(this));
    }

    function getTotalRewarded() external override view returns (uint256) {
        return getBalance() + _totalClaimed;
    }
}
