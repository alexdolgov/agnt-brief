// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.34;

import {IAccessControlEnumerable} from "@openzeppelin/contracts/access/extensions/IAccessControlEnumerable.sol";

/**
 * @notice Central role registry for the Harmonix ecosystem.
 * @dev Extends IAccessControlEnumerable — consumers call hasRole(role, account)
 *       to verify permissions instead of maintaining their own role storage.
 */
interface IAccessManager is IAccessControlEnumerable {
    struct PendingGrant {
        address account;
        uint40 scheduledAt;
    }

    event RoleGrantScheduled(bytes32 indexed role, address indexed account, uint256 executableAt);
    event RoleGrantCancelled(bytes32 indexed role, address indexed account, address indexed cancelledBy);
    event RoleTimelockSet(bytes32 indexed role, uint256 oldDelay, uint256 newDelay);

    function setRoleTimelock(bytes32 role, uint256 delay) external;
    function cancelPendingGrant(bytes32 role) external;
    function roleTimelocks(bytes32 role) external view returns (uint256 delay);
    function pendingGrants(bytes32 role) external view returns (address account, uint40 scheduledAt);
}
