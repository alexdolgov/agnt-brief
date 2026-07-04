// SPDX-License-Identifier: None
pragma solidity ^0.8.19;

import {IERC20RebasingWrapper} from './IERC20RebasingWrapper.sol';

interface IWWETH is IERC20RebasingWrapper {
    function wrapNative() external payable returns (uint);

    function unwrapNative(uint _shares) external returns (uint);
}
