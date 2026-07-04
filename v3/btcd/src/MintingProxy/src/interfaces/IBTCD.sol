// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/// @title IBTCD
/// @notice Interface for the BTCD token with mint/burn capabilities.
interface IBTCD is IERC20 {
    function mint(address to, uint256 amount) external;
    function burn(uint256 amount) external;
    function burnFrom(address account, uint256 amount) external;
    function minter() external view returns (address);
    function yieldMinter() external view returns (address);
}
