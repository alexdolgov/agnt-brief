// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import { ERC1967Utils } from "@openzeppelin/contracts/proxy/ERC1967/ERC1967Utils.sol";
import { AccessControl } from "@openzeppelin/contracts/access/AccessControl.sol";
import { Address } from "@openzeppelin/contracts/utils/Address.sol";

abstract contract SEFTeamVestingRecovery is AccessControl {

    /**
     * @dev Fallback function that delegates calls to the recovery module if any. Will run if no other
     * function in the contract matches the call data.
     */
    fallback(bytes calldata data) external returns (bytes memory) {
        ensureTeam();
        return Address.functionDelegateCall(ERC1967Utils.getImplementation(), data);
    }

    function updateModule (address guardian) external onlyRole(DEFAULT_ADMIN_ROLE) {
        updateModuleInternal(guardian);
    }

    function updateModuleInternal (address guardian) internal {
        ERC1967Utils.upgradeToAndCall(guardian, "");
    }

    function ensureTeam() virtual internal view;
}
