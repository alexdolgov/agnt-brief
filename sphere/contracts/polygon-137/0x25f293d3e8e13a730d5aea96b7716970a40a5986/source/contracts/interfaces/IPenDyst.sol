// SPDX-License-Identifier: MIT
pragma solidity 0.8.11;
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IPenDyst is IERC20 {
    function mint(address, uint256) external;

    function convertNftToPenDyst(uint256) external;
}
