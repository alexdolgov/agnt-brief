// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;
pragma experimental ABIEncoderV2;

interface IBoostContract {
    function getPreviousBoostValByUser(address _user, uint256 _pid) external view returns (uint256 boostVal);
    function getBoostValByUser(address _user, uint256 _pid) external view returns (uint256 boostVal);
}
