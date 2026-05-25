// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import {IERC20} from "erc20/interfaces/IERC20.sol";

interface IGETToken is IERC20 {
    function burn(uint256 amount) external;
}
