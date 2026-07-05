// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.18;

import {IVault} from "@yearn-vaults/interfaces/IVault.sol";

contract VaultRoleManagerHandoff {
    error ZeroAddress();

    IVault public immutable vault;
    address public immutable futureRoleManager;

    constructor(address _vault, address _futureRoleManager) {
        if (_vault == address(0) || _futureRoleManager == address(0)) {
            revert ZeroAddress();
        }

        vault = IVault(_vault);
        futureRoleManager = _futureRoleManager;
    }

    function acceptAndSetFutureRoleManager() external {
        vault.accept_role_manager();
        vault.transfer_role_manager(futureRoleManager);
    }
}
