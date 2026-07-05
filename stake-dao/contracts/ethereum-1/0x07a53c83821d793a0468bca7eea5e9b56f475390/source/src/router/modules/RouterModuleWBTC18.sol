// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {RouterModuleBase} from "src/router/modules/RouterModuleBase.sol";
import {Common} from "@address-book/src/CommonEthereum.sol";

/// @title RouterModuleWBTC18
/// @notice Router module for wrapping/unwrapping WBTC <-> WBTC18
/// @dev WBTC18 is an 18-decimal wrapper around WBTC (8 decimals)
contract RouterModuleWBTC18 is RouterModuleBase {
    using SafeERC20 for IERC20;

    string public constant name = type(RouterModuleWBTC18).name;
    string public constant version = "1.0.0";

    address public constant WBTC = Common.WBTC;
    address public constant WBTC18 = Common.WBTC18;

    /// @notice Wrap WBTC to WBTC18 and send to specified account
    /// @param account Address to send wrapped WBTC18 to
    /// @param amount Amount of WBTC to wrap (8 decimals). Use type(uint256).max to wrap entire balance.
    function wrap(address account, uint256 amount) external onlyDelegateCall {
        if (amount == type(uint256).max) {
            amount = IERC20(WBTC).balanceOf(address(this));
        }
        IERC20(WBTC).forceApprove(WBTC18, amount);
        IWBTC18(WBTC18).depositFor(account, amount);
    }

    /// @notice Unwrap WBTC18 to WBTC and send to specified account
    /// @param account Address to send unwrapped WBTC to
    /// @param amount Amount of WBTC18 to unwrap (18 decimals). Use type(uint256).max to unwrap entire balance.
    function unwrap(address account, uint256 amount) external onlyDelegateCall {
        if (amount == type(uint256).max) {
            amount = IERC20(WBTC18).balanceOf(address(this));
        }
        IWBTC18(WBTC18).withdrawTo(account, amount);
    }
}

interface IWBTC18 {
    function depositFor(address account, uint256 amount) external returns (bool);
    function withdrawTo(address account, uint256 amount) external returns (bool);
}
