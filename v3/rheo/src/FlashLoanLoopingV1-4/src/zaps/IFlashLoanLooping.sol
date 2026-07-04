// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {IFlashLoanLoopingFactory} from "src/zaps/IFlashLoanLoopingFactory.sol";

interface IFlashLoanLooping {
    function initialize(IFlashLoanLoopingFactory _flashLoanLoopingFactory, address _owner) external;
}
