pragma solidity 0.8.18;

// SPDX-License-Identifier: MIT

interface IBoosting {
    function getBoostMultiplier(address _user, uint256 _pid) external view returns (uint256 BoostingFactorBps);
}
