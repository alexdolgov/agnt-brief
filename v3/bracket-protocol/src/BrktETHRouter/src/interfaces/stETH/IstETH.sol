//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.25;

import {IERC20} from "openzeppelin-contracts/interfaces/IERC20.sol";

interface IstETH is IERC20 {
    /**
     * @notice Send funds to the pool with optional _referral parameter
     * @dev This function is alternative way to submit funds. Supports optional referral address.
     * @return Amount of StETH shares generated
     */
    function submit(address _referral) external payable returns (uint256);

    /**
     * @notice Check staking state: whether it's paused or not
     */
    function isStakingPaused() external view returns (bool);

    /**
     * @notice Returns how much Ether can be staked in the current block
     * @dev Special return values:
     * - 2^256 - 1 if staking is unlimited;
     * - 0 if staking is paused or if limit is exhausted.
     */
    function getCurrentStakeLimit() external view returns (uint256);
}