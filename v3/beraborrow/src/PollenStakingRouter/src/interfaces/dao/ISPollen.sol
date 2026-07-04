// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IMetaBeraborrowCore} from "src/interfaces/core/IMetaBeraborrowCore.sol";

interface ISPollen is IERC20 {
    function underlying() external view returns (IERC20);
    function metaBeraborrowCore() external view returns (IMetaBeraborrowCore);
    function depositFor(address account, uint256 amount) external returns (bool);
    function withdrawTo(address account, uint256 amount) external returns (bool);
    function recover(address account) external returns (uint256);
}