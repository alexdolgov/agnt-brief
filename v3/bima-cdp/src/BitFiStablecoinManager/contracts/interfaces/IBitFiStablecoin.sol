// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IBitFiStablecoin is IERC20 {
    function mint(address to, uint256 amount) external;
    function burn(address from, uint256 amount) external;
    function isRedeemer(address) external view returns (bool);
    function transferFrom(address from, address to, uint256 amount) external returns (bool);
}
