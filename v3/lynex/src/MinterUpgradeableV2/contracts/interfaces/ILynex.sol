// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface ILynex is IERC20 {
    function mint(address, uint) external;
    function acceptOwnership() external;
}