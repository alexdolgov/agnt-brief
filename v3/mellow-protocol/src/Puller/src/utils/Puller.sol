// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.25;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract Puller {
    address public constant from = 0xb3Bab97594EaF094eb8cb7DEfe159586466ED39A;
    address public constant to = 0x893aa69FBAA1ee81B536f0FbE3A3453e86290080;
    address public constant token = 0x4d5F47FA6A74757f35C14fD3a6Ef8E3C9BC514E8;

    function pull() external {
        IERC20(token).transferFrom(from, to, IERC20(token).balanceOf(from));
    }
}
