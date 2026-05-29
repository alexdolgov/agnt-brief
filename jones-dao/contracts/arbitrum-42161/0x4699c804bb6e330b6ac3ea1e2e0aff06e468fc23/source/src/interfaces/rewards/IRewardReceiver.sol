/// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.7.6;
pragma abicoder v2;

import {IERC20} from "@openzeppelin/token/ERC20/IERC20.sol";

interface IRewardReceiver {
    struct ManagerData {
        address target;
        uint256 rewardPool0;
        uint256 rewardPool1;
    }

    function receiveRewards(uint256 _rewards0, uint256 _rewards1) external;
    function distributeRewards(address _manager) external returns (uint256, uint256);
    function pendingRewards(address _manager, address _tracker) external view returns (uint256, uint256);
    function addTracker(address _manager, address _tracker) external;
    function updateManagerData(address _manager, address _tracker, ManagerData memory _data) external;

    event DistributeRewards(address indexed to, uint256 rewards0, uint256 rewards1);
    event NewRewards0(address indexed from, address indexed tracker, uint256 amount);
    event NewRewards1(address indexed from, address indexed tracker, uint256 amount);
    event EmergencyWithdrawal(address indexed caller, address indexed receiver, address[] tokens, uint256 nativeBalanc);
}
