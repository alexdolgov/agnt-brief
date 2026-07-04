// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {IFlashRepayFactory} from "src/zaps/IFlashRepayFactory.sol";

interface IFlashRepay {
    function initialize(IFlashRepayFactory _flashRepayFactory, address _owner) external;
}
