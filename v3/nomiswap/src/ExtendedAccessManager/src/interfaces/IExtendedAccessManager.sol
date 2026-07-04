// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import {IAuthorizer} from "@balancer-labs/v2-interfaces/contracts/vault/IAuthorizer.sol";

interface IExtendedAccessManager is IAuthorizer {

    event TargetActionRoleUpdated(address indexed target, bytes32 actionId, uint64 indexed roleId);

    function getTargetActionRole(address target, bytes32 actionId) external returns(uint64);

    function setTargetActionRole(
        address target,
        bytes32 actionIdDisambiguators,
        bytes4[] calldata selectors,
        uint64 roleId
    ) external ;

}
