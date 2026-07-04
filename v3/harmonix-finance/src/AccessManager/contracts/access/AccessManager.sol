// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.34;

import {
    AccessControlEnumerableUpgradeable
} from "@openzeppelin/contracts-upgradeable/access/extensions/AccessControlEnumerableUpgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {IAccessControl} from "@openzeppelin/contracts/access/IAccessControl.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

import {IAccessManager} from "../interfaces/IAccessManager.sol";
import {ErrorsLib} from "../libraries/ErrorsLib.sol";

/**
 * @title AccessManager
 * @notice Central role registry for the Harmonix ecosystem.
 * @dev All contracts verify roles by calling hasRole() on this contract instead
 *      of maintaining their own AccessControl storage.
 *
 *      Role hierarchy:
 *        DEFAULT_ADMIN_ROLE — can grant/revoke any role, set role admins, upgrade.
 *        Any other role     — granted/revoked by whoever holds its adminRole
 *                             (DEFAULT_ADMIN_ROLE by default).
 *
 *      Per-role timelock:
 *        setRoleTimelock(role, delay) arms a delay on grantRole for that role.
 *        First grantRole call schedules the grant; second call (same address,
 *        after delay) executes it. Setting delay to 0 disables the timelock.
 *
 *      Enumeration: getRoleMemberCount(role) and getRoleMember(role, index)
 *      allow off-chain tooling to list all current holders of any role.
 */
contract AccessManager is IAccessManager, AccessControlEnumerableUpgradeable, UUPSUpgradeable {
    bytes32 public constant UPGRADER_ROLE = keccak256("UPGRADER_ROLE");
    bytes32 public constant SENTINEL_ROLE = keccak256("SENTINEL_ROLE");

    // slot 0 — OZ v5 bases use ERC-7201 namespaced storage, leaving linear slots free
    mapping(bytes32 role => uint256 delay) public roleTimelocks;
    // slot 1
    mapping(bytes32 role => PendingGrant) public pendingGrants;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /// @param admin Address that receives DEFAULT_ADMIN_ROLE and UPGRADER_ROLE.
    function initialize(address admin) external initializer {
        require(admin != address(0), ErrorsLib.ZeroAddress());

        __AccessControlEnumerable_init();

        _grantRole(DEFAULT_ADMIN_ROLE, admin);
        _grantRole(UPGRADER_ROLE, admin);
    }

    // ================== TIMELOCK ============================

    /// @dev Set delay to 0 to disable timelock for a role.
    ///      If a grant is in-flight, call cancelPendingGrant first to avoid an orphaned pending record.
    function setRoleTimelock(bytes32 role, uint256 delay) external onlyRole(DEFAULT_ADMIN_ROLE) {
        uint256 old = roleTimelocks[role];
        roleTimelocks[role] = delay;
        emit RoleTimelockSet(role, old, delay);
    }

    function cancelPendingGrant(bytes32 role) external onlyRole(SENTINEL_ROLE) {
        address account = pendingGrants[role].account;
        require(account != address(0), ErrorsLib.DataNotPending());
        delete pendingGrants[role];
        emit RoleGrantCancelled(role, account, msg.sender);
    }

    // ================== ACCESS CONTROL ======================

    function grantRole(bytes32 role, address account)
        public
        override(AccessControlUpgradeable, IAccessControl)
        onlyRole(getRoleAdmin(role))
    {
        require(account != address(0), ErrorsLib.ZeroAddress());

        uint256 delay = roleTimelocks[role];

        if (delay == 0) {
            _grantRole(role, account);
            return;
        }

        PendingGrant storage pending = pendingGrants[role];

        if (pending.account == account) {
            require(block.timestamp >= uint256(pending.scheduledAt) + delay, ErrorsLib.TimelockNotExpired());
            delete pendingGrants[role];
            _grantRole(role, account);
        } else {
            require(pending.account == address(0), ErrorsLib.DataAlreadyPending());
            pendingGrants[role] = PendingGrant({account: account, scheduledAt: uint40(block.timestamp)});
            emit RoleGrantScheduled(role, account, block.timestamp + delay);
        }
    }

    // ================== ADMIN ============================

    function setRoleAdmin(bytes32 role, bytes32 adminRole) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _setRoleAdmin(role, adminRole);
    }

    // =================== UUPS =============================

    function _authorizeUpgrade(address) internal override onlyRole(UPGRADER_ROLE) {}
}
