// SPDX-License-Identifier: MIT

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

pragma solidity ^0.8.0;

interface IPartialPairERC20 is IERC20 {
    function token0() external view returns (address);
    function token1() external view returns (address);
}
