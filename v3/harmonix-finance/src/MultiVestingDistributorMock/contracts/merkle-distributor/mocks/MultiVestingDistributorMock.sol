// apps/contracts/contracts/merkle-distributor/mocks/MultiVestingDistributorMock.sol

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import {MultiVestingDistributor} from "../distribution/MultiVestingDistributor.sol";

/**
 * @title MultiVestingDistributorMock
 * @dev This is a simple, deployable version of the abstract VestingDistributor
 * contract, used specifically for testing purposes.
 */
contract MultiVestingDistributorMock is MultiVestingDistributor {}
