// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.25;

interface IGmxReader {
    function getVestingInfo(address _account, address[] memory _vesters) external view returns (uint256[] memory);
}
