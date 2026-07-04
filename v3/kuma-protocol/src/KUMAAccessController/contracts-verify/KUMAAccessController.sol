// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import {AccessControl} from "lib/openzeppelin-contracts/contracts/access/AccessControl.sol";
import {Roles} from "./libraries/Roles.sol";

/**
 * @title KUMAAccessController
 * @author MIMO Labs
 * @notice The access controller for the KUMA protocol.
 * @dev This is based on the OpenZeppelin AccessControl contract.
 */
contract KUMAAccessController is AccessControl {
    constructor() {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(Roles.KUMA_MANAGER_ROLE, msg.sender);
    }
}
