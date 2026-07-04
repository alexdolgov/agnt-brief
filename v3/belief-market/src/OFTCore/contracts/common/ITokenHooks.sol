// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import { IERC165 } from "@openzeppelin/contracts/interfaces/IERC165.sol";

interface ITokenHooks is IERC165 {
    function beforeTokenTransfer(address from, address to, uint256 amount) external;
    function afterTokenTransfer(address from, address to, uint256 amount) external;
}
