// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {State} from "./State.sol";

library CounterLibrary {
    error InvalidDecrement();

    function setNumber(State storage self, uint256 newNumber) public {
        self.number = newNumber;
    }

    function increment(State storage self) public {
        self.number++;
    }

    function validateDecrement(State memory self) public pure {
        if (self.number == 0) {
            revert InvalidDecrement();
        }
    }

    function decrement(State storage self) public {
        validateDecrement(self);
        self.number--;
    }
}
