// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface ISynthTokenV2 is IERC20 {
    function burnDead(uint256 amount) external;
}
