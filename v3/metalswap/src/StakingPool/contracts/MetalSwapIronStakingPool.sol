
// "SPDX-License-Identifier: UNLICENSED"

pragma solidity ^0.8.7;
import'./StakingPoolPremium.sol';

contract MetalSwapIronStakingPool is StakingPoolPremium {

    constructor(IERC20 stakingToken)  StakingPool(stakingToken) {
        
    }

}
