// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "./IBucketTracker.sol";

interface IStakingPool {
    function getStakedAmounts(address user) external view returns (uint256);
    function esXaiStakeBucket() external view returns (IBucketTracker);

    function distributeDividends(uint256 amount) external;
}
