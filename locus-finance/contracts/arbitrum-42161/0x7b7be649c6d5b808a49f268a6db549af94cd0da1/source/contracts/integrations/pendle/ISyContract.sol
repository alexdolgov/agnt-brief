// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

interface ISyContract is IERC20 {
    function exchangeRate() external view returns(uint256);
}
