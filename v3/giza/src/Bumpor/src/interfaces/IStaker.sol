// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import {DepositCheckpoint, Deposit} from "src/Staker.sol";

interface IStaker {
    function notifyRewardAmount(uint256 amount) external;
    function getUserCheckpointHistory(address user) external view returns (DepositCheckpoint[] memory);
    function stakeOnBehalf(address user, uint256 amount) external;
    function getDepositorList() external view returns (address[] memory);
    function getUserDeposit(address user) external view returns (Deposit memory);
    function bumpEarningPower(address _user) external;
}
