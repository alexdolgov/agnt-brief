// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.4;
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface ITreeFarm {
    function addReward(uint256 amount) external;
    function rewardToken() external returns (IERC20);
}
