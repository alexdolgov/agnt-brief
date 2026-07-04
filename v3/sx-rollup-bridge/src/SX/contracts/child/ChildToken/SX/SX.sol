// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {ERC20PresetMinterPauserUpgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/presets/ERC20PresetMinterPauserUpgradeable.sol";

contract SX is UUPSUpgradeable, ERC20PresetMinterPauserUpgradeable {

    function initialize() initializer public {
        ERC20PresetMinterPauserUpgradeable.initialize("SX Network", "SX");
        __UUPSUpgradeable_init();
        __AccessControl_init();
        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    function _authorizeUpgrade(address) internal override onlyRole(DEFAULT_ADMIN_ROLE) {}

    function decimals() public view virtual override returns (uint8) {
        return 18;
    }

    function burn(address account, uint256 amount) public virtual {
        burnFrom(account, amount);
    }
}
