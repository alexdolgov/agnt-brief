// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { IERC20 } from "@openzeppelin/contracts/interfaces/IERC20.sol";

interface IDelegate {
    // Important functions
    function lockableToken(uint256 poolId) external view  returns (IERC20);
    function lockedAmount(address user, uint256 poolId) external view returns (uint256);
    function deposit(address _adapter, uint256 poolId, uint256 amount) external;
    function withdraw(address, uint256 poolId, uint256 amount) external; 
    function claimReward(address, address userOfTarget, uint256 poolId) external; 
    function poolUpdate(address, uint256, uint256) external;  
}
