// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IWFBTC is IERC20 {
    function mint(address to, uint256 amount) external;
    function burn(address user, uint256 amount) external;
    function burnFromWrapper(address user, uint256 amount) external;
}
