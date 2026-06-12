// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import { BlurPool } from "src/pool/BlurPool.sol";

enum YieldMode {
    AUTOMATIC,
    VOID,
    CLAIMABLE
}

enum GasMode {
    VOID,
    CLAIMABLE
}

interface IBlast {
    function configure(YieldMode, GasMode, address) external;
}

/**
 * @title BlurPoolBlast
 * @dev ETH pool; funds can only be transferred by Exchange
 */
contract BlurPoolBlast is BlurPool {
    constructor(
        address exchange
    ) BlurPool(exchange, address(0), address(0), address(0), address(0)) {}

    function initialize(address governor) public initializer {
        initialize();
        IBlast(0x4300000000000000000000000000000000000002).configure(
            YieldMode.CLAIMABLE,
            GasMode.CLAIMABLE,
            governor
        );
    }
}
