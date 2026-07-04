// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.23;

import { IBAMMERC20 } from "./interfaces/IBAMMERC20.sol";
import { ERC20Permit, ERC20 } from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";

/// @dev supports OZ 5.0 interface
contract BAMMERC20 is IBAMMERC20, ERC20Permit, Ownable {
    constructor(
        string memory name_,
        string memory symbol_
    ) ERC20(name_, symbol_) ERC20Permit(name_) Ownable(msg.sender) {}

    function mint(address account, uint256 value) external onlyOwner {
        _mint(account, value);
    }

    function burn(address account, uint256 value) external onlyOwner {
        _burn(account, value);
    }
}
