// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { IERC20 } from "@openzeppelin/contracts/interfaces/IERC20.sol";

interface IAdapter {
    // Target info
    function rewardTokenCount() external view returns (uint256);
    function rewardToken(uint256 id) external view returns (IERC20);
    function defaultToken() external view returns (IERC20);
    function poolCount() external view returns (uint256);

    // Pool info
    function lockableToken(uint256 poolId) external view returns (IERC20);
    function lockedAmount(address user, uint256 poolId) external view returns (uint256);

    // Service methods
    function poolAddress(uint256 poolId) external view returns (address);
    function earnedReward(address _adapter, uint256 poolId, address user, uint256 tokenId) external view returns (uint256);
    
}
