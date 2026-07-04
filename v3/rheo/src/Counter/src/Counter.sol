// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {CounterLibrary} from "./CounterLibrary.sol";
import {State} from "./State.sol";

contract Counter {
    using CounterLibrary for State;

    State public state;

    function setNumber(uint256 newNumber) public {
        state.setNumber(newNumber);
    }

    function number() public view returns (uint256) {
        return state.number;
    }

    function increment() public {
        state.increment();
    }

    function decrement() public {
        state.decrement();
    }

    function tryDecrement() public view {
        try state.validateDecrement() {} catch {}
    }
}
