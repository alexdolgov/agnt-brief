// SPDX-License-Identifier: MIT

pragma solidity 0.8.28;

import {IERC20} from "openzeppelin-contracts/contracts/interfaces/IERC20.sol";

interface IERC20Mintable is IERC20 {
    function mint(address account, uint256 value) external;
    function burn(address account, uint256 value) external;
    function decimals() external returns (uint8);
}
