// SPDX-License-Identifier: MIT

pragma solidity 0.8.28;

import {Constants} from "./lib/Constants.sol";

import {IERC20Mintable as IERC20} from "./interfaces/IERC20Mintable.sol";

import {IVault} from "./interfaces/IVault.sol";
import {ERC20} from "openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";
import {AccessControl} from "openzeppelin-contracts/contracts/access/AccessControl.sol";

contract mUSDC is ERC20, AccessControl {
    uint8 public immutable DECIMALS;

    constructor(string memory name, string memory symbol, address owner, address asset) ERC20(name, symbol) {
        DECIMALS = IERC20(asset).decimals();
        _grantRole(DEFAULT_ADMIN_ROLE, owner);
        _setRoleAdmin(Constants.MINTER_ROLE, DEFAULT_ADMIN_ROLE);
    }

    function _update(address from, address to, uint256 value) internal override onlyRole(Constants.MINTER_ROLE) {
        ERC20._update(from, to, value);
    }

    function mint(address account, uint256 value) public onlyRole(Constants.MINTER_ROLE) {
        _mint(account, value);
    }

    function burn(address account, uint256 value) public onlyRole(Constants.MINTER_ROLE) {
        _burn(account, value);
    }

    function decimals() public view override returns (uint8) {
        return DECIMALS;
    }
}
