// SPDX-License-Identifier: LGPL-3.0-or-later
pragma solidity ^0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IWrappedNativeToken is IERC20 {
    /// @dev Deposit native token in exchange for wrapped native tokens.
    function deposit() external payable;

    /// @dev Burn wrapped native tokens in exchange for native tokens.
    /// @param amount Amount of wrapped tokens to exchange for native tokens.
    function withdraw(uint256 amount) external;
}
