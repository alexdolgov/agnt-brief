// SPDX-License-Identifier: AGPL-3.0

import {IRewardDistributor} from "src/interfaces/dao/IRewardDistributor.sol";

pragma solidity 0.8.26;

interface IPollenSwapper {
    function swap(IRewardDistributor.SwapParams calldata params, uint256 inputAmount) external;
    function addWhitelistedSwapper(address _swapRouter, bool status) external;
}