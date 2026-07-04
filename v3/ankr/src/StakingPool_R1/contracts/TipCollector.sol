// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

import "@openzeppelin/contracts/utils/math/Math.sol";

import "./interfaces/IStakingPool.sol";
import "./interfaces/ITipCollector.sol";

contract TipCollector is ITipCollector {

    using Math for uint256;

    address public manager; // aka owner
    uint128 public totalClaimed;

    modifier emptyManager() {
        require(manager == address(0x00), "TipCollector: manager already set");
        _;
    }

    modifier onlyManager() {
        require(msg.sender == manager, "TipCollector: manager not allowed");
        _;
    }

    function initAndObtainOwnership() external emptyManager {
        manager = msg.sender;
    }

    receive() external payable {
      revert("TipCollector: cannot receive");
    }

    function claimReward(address recipient, uint128 reward) external override onlyManager {
        require(address(this).balance >= reward, "TipCollector: not enough balance");
        address payable wallet = payable(recipient);
        require(wallet.send(reward), "TipCollector: cannot send reward");
        totalClaimed += reward;
        emit RewardClaimed(recipient, reward);
    }

    function getTotalRewarded() external override view returns (uint256) {
        return address(this).balance + totalClaimed;
    }
}
