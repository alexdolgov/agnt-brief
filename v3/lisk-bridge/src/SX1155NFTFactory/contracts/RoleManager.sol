// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/access/AccessControl.sol";

/**
 * @title Contract for managing roles
 * @notice It is based on Openzeppelin AccessControl to manage users roles.
 */
abstract contract RoleManager is AccessControl {
    /// Following are the default roles, assinged when the contract is
    /// deployed.
    bytes32 public constant ISSUER_ROLE = keccak256("ISSUER");
    bytes32 public constant EDITOR_ROLE = keccak256("EDITOR");
    bytes32 public constant AGENT_ROLE = keccak256("AGENT");

    ///@dev Throws an error if passed zero address
    modifier isNotZeroAddress(address account) {
        require(account != address(0), "Passed address = zero address");
        _;
    }

    /// @dev Constructor for assigning default issuer and editor roles
    /// @param admin address to be assigned DEFAULT_ADMIN_ROLE role
    /// @param issuer address to be assigned ISSUER role
    /// @param editor adress to be assigned EDITOR role
    constructor(
        address admin,
        address issuer,
        address editor
    ) isNotZeroAddress(admin) isNotZeroAddress(issuer) isNotZeroAddress(editor) {
        _grantRole(DEFAULT_ADMIN_ROLE, admin);
        _grantRole(ISSUER_ROLE, issuer);
        _grantRole(EDITOR_ROLE, editor);
    }

    /**
     *  @dev Assigns an account to a given role. this is a generic function
     * to create and/or assign a role. This can be done only by DEFAULT_ADMIN_ROLE.
     * @param role role bytes, usually a keccak hash of a role string.
     * @param account account to which this role to be assigned
     */
    function grantRole(bytes32 role, address account) public override onlyRole(DEFAULT_ADMIN_ROLE) {
        _grantRole(role, account);
    }

    /// @dev Revoke a role of an account
    /// @param role role
    /// @param account account to remove from the role
    function revokeRole(bytes32 role, address account) public override onlyRole(DEFAULT_ADMIN_ROLE) {
        _revokeRole(role, account);
    }

    /// @dev Grants EDITOR role to a given account, only an ISSUER can do this.
    /// @param to account to which the role to be granted.
    function grantEditorRole(address to) external onlyRole(ISSUER_ROLE) {
        _grantRole(EDITOR_ROLE, to);
    }

    /// @dev Revokes EDITOR role to a given account, only ISSUER can do this.
    /// @param account address of the account to remove from the EDITOR role
    function revokeEditorRole(address account) external onlyRole(ISSUER_ROLE) {
        _revokeRole(EDITOR_ROLE, account);
    }

    /// @dev Grants ISSUER role to a given account, only an ISSUER can do this.
    /// @param to account to which the role to be granted.
    function grantIssuerRole(address to) external onlyRole(ISSUER_ROLE) {
        _grantRole(ISSUER_ROLE, to);
    }

    /// @dev Revokes ISSUER role to a given account, only ISSUER can do this.
    /// @param account address of the account to remove from the ISSUER role
    function revokeIssuerRole(address account) external onlyRole(ISSUER_ROLE) {
        _revokeRole(ISSUER_ROLE, account);
    }

    /// @dev Grants AGENT role to a given account, only an ISSUER can do this.
    /// @param to account to which the role to be granted.
    function grantAgentRole(address to) external onlyRole(ISSUER_ROLE) {
        _grantRole(AGENT_ROLE, to);
    }

    /// @dev Revokes AGENT role to a given account, only ISSUER can do this.
    /// @param account address of the account to remove from the AGENT role
    function revokeAgentRole(address account) external onlyRole(ISSUER_ROLE) {
        _revokeRole(AGENT_ROLE, account);
    }

    /// @dev Returns if this contract supports openzeppelin AccessControl
    /// interface.
    /// @param interfaceId interface ID to check against
    /// @return whether this contacts supports given interfaceId, true or false
    function supportsInterface(bytes4 interfaceId) public view virtual override(AccessControl) returns (bool) {
        return super.supportsInterface(interfaceId);
    }

    function _grantRole(bytes32 role, address account) internal override isNotZeroAddress(account) {
        require(!hasRole(role, account), "RM: Account already has role");

        super._grantRole(role, account);
    }

    function _revokeRole(bytes32 role, address account) internal override {
        require(hasRole(role, account), "RM: Account has no role");
        require(msg.sender != account, "RM: You can't revoke your role");

        super._revokeRole(role, account);
    }
}
