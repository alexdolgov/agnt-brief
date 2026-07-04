// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.13;

import "@solidstate/contracts/utils/ReentrancyGuard.sol";
import "@solidstate/contracts/access/access_control/AccessControl.sol";
import "./dsq/DSQ_Common_Roles.sol";

interface ID2Vault {
    function asset() external view returns (address);
    function deposit(uint256 assets, address receiver) external;
    function withdraw(uint256 assets, address receiver, address owner) external;
}

interface ID2_Module {
    function d2_deposit(address vault, uint256 assets) external;
    function d2_withdraw(address vault, uint256 assets) external;
}

contract D2_Module is ID2_Module, AccessControl, ReentrancyGuard, DSQ_Common_Roles {
    function d2_deposit(address vault, uint256 assets) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        ID2Vault(vault).deposit(assets, address(this));
    }

    function d2_withdraw(address vault, uint256 assets) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        ID2Vault(vault).withdraw(assets, address(this), address(this));
    }
}
