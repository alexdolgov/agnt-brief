// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {IERC20} from "openzeppelin-contracts/token/ERC20/IERC20.sol";

interface IUSDC is IERC20 {
    function isBlacklisted(address _account) external view returns (bool);
}
