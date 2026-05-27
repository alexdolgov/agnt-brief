//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import {IBlast, YieldMode, GasMode} from "./IBlast.sol";

library BlastClaimer {

    function configure(address _blast, address _governor) internal {
        IBlast(_blast).configure(
            YieldMode.CLAIMABLE,
            GasMode.CLAIMABLE,
            _governor
        );
    }

}