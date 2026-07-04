// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import {Owned} from "solmate/auth/Owned.sol";
import {IUniswapV3Pool} from "v3-core/interfaces/IUniswapV3Pool.sol";

contract ThrusterRegistrar is Owned {

    event Notify(
        address thrusterPool,
        address bpool,
        address rewardRecipient
    );
    
    constructor() Owned(msg.sender) {}

    function register(
        address thrusterPool,
        address bpool,
        address rewardRecipient
    ) external onlyOwner {

        // verify bpool/pool
        require(bpool == IUniswapV3Pool(thrusterPool).token0(), "invalid params");

        emit Notify(thrusterPool, bpool, rewardRecipient);
    }
}