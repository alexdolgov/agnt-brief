// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IBaseAssetNav} from "../interfaces/IBaseAssetNav.sol";

/// @title MockPmUSD
/// @notice Mock pmUSD base asset with configurable NAV for testing the
///         PSMVault circuit breaker (which calls `getNav(0)` on the base asset).
contract MockPmUSD is ERC20, IBaseAssetNav {
    uint8 private _decimals;
    uint256 public nav; // 18-decimal NAV (1e18 = $1.00)

    constructor(string memory name_, string memory symbol_, uint8 decimals_, uint256 initialNav_)
        ERC20(name_, symbol_)
    {
        _decimals = decimals_;
        nav = initialNav_;
    }

    function decimals() public view override returns (uint8) {
        return _decimals;
    }

    function mint(address to, uint256 amount) external {
        _mint(to, amount);
    }

    function setNav(uint256 newNav) external {
        nav = newNav;
    }

    /// @inheritdoc IBaseAssetNav
    function getNav(int256 /* multiplier */ ) external view override returns (uint256) {
        return nav;
    }
}
