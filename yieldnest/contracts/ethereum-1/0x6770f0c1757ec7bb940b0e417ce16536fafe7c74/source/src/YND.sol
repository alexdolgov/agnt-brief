// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20PermitUpgradeable.sol";

contract YND is ERC20PermitUpgradeable {
    function initialize(address receiver, uint256 amount) public initializer {
        __ERC20_init("YieldNest", "YND");
        __ERC20Permit_init("YieldNest");
        _mint(receiver, amount);
    }
}
