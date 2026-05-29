// SPDX-License-Identifier: MIT
pragma solidity =0.7.6;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IGrailTokenV2 is IERC20{
  function burn(uint256 amount) external;
}
