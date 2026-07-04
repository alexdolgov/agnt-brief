// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

/**
 * @title Binary Access control
 * @author By CoMakery, Inc., Upside, Republic
 * @dev Binary equivalent to OpenZeppelin/AccessControl
 *  Uses bits for storing user roles, minify gas cost and contract size
 */
contract EasyAccessControl {
    uint8 public constant CONTRACT_ADMIN_ROLE = 1; // 0001
    uint8 public constant RESERVE_ADMIN_ROLE = 2; // 0010
    uint8 public constant WALLETS_ADMIN_ROLE = 4; // 0100
    uint8 public constant TRANSFER_ADMIN_ROLE = 8; // 1000

    /// @notice This event is emitted when a new role is granted or revoked to a user
    /// @param grantor The address of admin who granted the role
    /// @param grantee The address of user who received the role
    /// @param role The role that was granted as a bitmask
    /// @param status The status of the role (true = granted, false = revoked)
    event RoleChange(
        address indexed grantor,
        address indexed grantee,
        uint8 role,
        bool indexed status
    );

    mapping(address => uint8) admins; // address => binary roles

    uint8 public contractAdminCount; // counter of contract admins to keep at least one

    modifier validAddress(address addr) {
        require(addr != address(0), "Address cannot be 0x0");
        _;
    }

    modifier validRole(uint8 role) {
        require(role > 0, "Does not have valid role");
        _;
    }

    modifier onlyContractAdmin() {
        require(
            hasRole(msg.sender, CONTRACT_ADMIN_ROLE),
            "Does not have contract admin role"
        );
        _;
    }

    modifier onlyTransferAdmin() {
        require(
            hasRole(msg.sender, TRANSFER_ADMIN_ROLE),
            "Does not have transfer admin role"
        );
        _;
    }

    modifier onlyReserveAdmin() {
        require(
            hasRole(msg.sender, RESERVE_ADMIN_ROLE),
            "Does not have reserve admin role"
        );
        _;
    }

    modifier anyAdmin() {
        require(
            hasRole(msg.sender, RESERVE_ADMIN_ROLE) ||
                hasRole(msg.sender, WALLETS_ADMIN_ROLE) ||
                hasRole(msg.sender, TRANSFER_ADMIN_ROLE) ||
                hasRole(msg.sender, CONTRACT_ADMIN_ROLE),
            "Not admin"
        );
        _;
    }

    /**
     * @notice Constructor, init base role
     * @param contractAdmin_ address of contract admin
     */
    constructor(address contractAdmin_) validAddress(contractAdmin_) {
        setupRole(contractAdmin_, CONTRACT_ADMIN_ROLE);
    }

    /**
     * @notice Grant role/roles to address using role bitmask
     * @param addr to grant role
     * @param role bitmask of role/roles to grant
     */
    function grantRole(
        address addr,
        uint8 role
    ) public validRole(role) validAddress(addr) onlyContractAdmin {
        _grantRole(addr, role);
        emit RoleChange(msg.sender, addr, role, true);
    }

    /**
     * @notice Grant role/roles to address using role bitmask
     * @param addr to grant role
     *  @param role bitmask of role/roles to grant
     */
    function _grantRole(address addr, uint8 role) internal virtual {
        require(admins[addr] & role != role, "Already has role");
        if (
            admins[addr] & CONTRACT_ADMIN_ROLE == 0 &&
            role & CONTRACT_ADMIN_ROLE > 0
        ) contractAdminCount++;
        admins[addr] |= role;
    }

    /**
     * @notice Initialize role/roles to address using role bitmask
     * @param addr to grant role
     * @param role bitmask of role/roles to grant
     */
    function setupRole(address addr, uint8 role) internal {
        if (
            admins[addr] & CONTRACT_ADMIN_ROLE == 0 &&
            role & CONTRACT_ADMIN_ROLE > 0
        ) contractAdminCount++;
        admins[addr] |= role;
        emit RoleChange(msg.sender, addr, role, true);
    }

    /**
     * @notice Revoke role/roles from address using role bitmask
     * @param addr to revoke role
     * @param role bitmask of role/roles to revoke
     */
    function revokeRole(
        address addr,
        uint8 role
    ) public validRole(role) validAddress(addr) onlyContractAdmin {
        require(hasRole(addr, role), "Can not revoke role");
        if (role & CONTRACT_ADMIN_ROLE > 0) {
            require(
                contractAdminCount > 1,
                "Must have at least one contract admin"
            );
            contractAdminCount--;
        }
        admins[addr] ^= role;
        emit RoleChange(msg.sender, addr, role, false);
    }

    /**
     * @notice Check role/roles availability at address
     * @param addr to check role
     * @param role bitmask of role/roles to check
     * @return bool true or false
     */
    function hasRole(
        address addr,
        uint8 role
    ) public view validRole(role) validAddress(addr) returns (bool) {
        return admins[addr] & role == role;
    }
}
