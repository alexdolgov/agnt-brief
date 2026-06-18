/**
 * Created by Pragma Labs
 * SPDX-License-Identifier: BUSL-1.1
 */
pragma solidity ^0.8.27;

import { AbstractStaker } from "./AbstractStaker.sol";
import { ERC20 } from "../../lib/openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * @title Arcadia Tranche Staker
 * @author Pragma Labs
 * @notice This contract handles the the staking, unstaking, and multi-reward distribution for staked tranche positions.
 */
contract TrancheStaker is AbstractStaker {
    /* //////////////////////////////////////////////////////////////
                              CONSTRUCTOR
    ////////////////////////////////////////////////////////////// */

    /**
     * @param tranche The contract address of the Arcadia Tranche.
     * @param maxRewards The maximum number of active rewards.
     */
    constructor(ERC20 tranche, uint256 maxRewards) AbstractStaker(tranche, maxRewards) { }
}
