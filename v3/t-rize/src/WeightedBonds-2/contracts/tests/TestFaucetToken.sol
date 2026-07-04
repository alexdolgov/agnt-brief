// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.24;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";

/* solhint-disable */
contract TestFaucetToken is ERC20, AccessControl {
    uint8 private immutable _decimals;

    constructor(
        string memory ticker,
        uint8 tokenDecimals
    ) ERC20(ticker, ticker) {
        _decimals = tokenDecimals;
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    function decimals() public view override returns (uint8) {
        return _decimals;
    }

    function mint(
        address account,
        uint256 amount
    ) public onlyRole(DEFAULT_ADMIN_ROLE) {
        _mint(account, amount);
    }

    function burn(
        address account,
        uint256 amount
    ) public onlyRole(DEFAULT_ADMIN_ROLE) {
        _burn(account, amount);
    }
}
