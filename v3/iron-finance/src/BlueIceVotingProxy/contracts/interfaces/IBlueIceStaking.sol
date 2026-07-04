// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

interface IBlueIceStaking {
    function userInfo(address _addr) external view returns (uint256 _amount, uint256 _rewardDebt, uint256 _reward, uint256 _accumulatedEarned);
}
