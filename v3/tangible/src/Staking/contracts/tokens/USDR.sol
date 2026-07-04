// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.9;

import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/draft-ERC20PermitUpgradeable.sol";

import "../constants/roles.sol";
import "../interfaces/IUSDR.sol";

contract USDR is IUSDR, ERC20PermitUpgradeable, AccessControlUpgradeable {
    function burn(address account, uint256 amount) external {
        if (msg.sender != account) {
            _spendAllowance(account, msg.sender, amount);
        }
        _burn(account, amount);
    }

    function mint(address account, uint256 amount)
        external
        onlyRole(MINTER_ROLE)
    {
        _mint(account, amount);
    }

    function decimals() public pure override returns (uint8) {
        return 9;
    }

    function initialize() public initializer {
        __ERC20_init("USDR", "USDR");
        __ERC20Permit_init("USDR");
        __AccessControl_init();
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }
}
