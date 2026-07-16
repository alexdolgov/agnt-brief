// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./IRBAC.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
  @title VNXManager
  @author Eugene Rupakov <eugene.rupakov@vnx.io>
  @notice Implements runtime configurable Role Based Access Control, Contract Management.
*/
contract VNXManager is IRBAC, Ownable {
  /**
   * @dev Throws if called by any account other than the admin
   */
  modifier onlyAdmin() {
    require(isAdmin(), "RBAC: caller is not the admin");
    _;
  }

  /**
   * @dev Returns true if the caller is the admin role
   */
  function isAdmin() public view returns (bool) {
    return hasRole(msg.sender, 0);
  }

  function transferContractOwnership(address targetContract, address newOwner) onlyAdmin external returns(bool)
  {
    require(targetContract != address(0), "Target contract cannot be zero address");
    require(newOwner != address(0), "newOwner cannot be zero address");

    Ownable c = Ownable(targetContract);
    require(c.owner()!=newOwner, "New owner should differ from current");
    c.transferOwnership(newOwner);

    return true;
  }

  /**
   * @notice A role which will be used to group users.
   * @dev The role id is its position in the roles array.
   * @param description A description for the role.
   * @param admin The only role that can add or remove bearers from
   * this role. To have the role bearers to be also the role admins 
   * you should pass roles.length as the admin role.
   * @param bearers Addresses belonging to this role.
   * @param bearersCount total count of addresses belonging to this role.
   */
  struct Role {
    string description;
    uint256 admin;
    mapping (address => bool) bearers;
    uint256 bearersCount;
  }
  /**
   * @notice All roles ever created.
   */
  Role[] public roles;
  /**
   * @notice The contract constructor, empty as of now.
   */
  constructor() {
    addRootRole("Superadmin");
  }
  /**
   * @notice Create a new role that has itself as an admin. 
   * msg.sender is added as a bearer.
   * @param roleDescription The description of the role created.
   * @return The role id.
   */
  function addRootRole(string memory roleDescription)
    public override
    returns(uint256)
  {
    uint256 role = addRole(roleDescription, roles.length);
    roles[role].bearers[msg.sender] = true;
    roles[role].bearersCount++;
    emit BearerAdded(msg.sender, role);
    return role;
  }
  /**
   * @notice Create a new role.
   * @param roleDescription The description of the role created.
   * @param admin The role that is allowed to add and remove
   * bearers from the role being created.
   * @return The role id.
   */
  function addRole(string memory roleDescription, uint256 admin)
    public override
    returns(uint256)
  {
    require(admin <= roles.length, "Admin role doesn't exist.");
    Role storage r = roles.push();
    r.description = roleDescription;
    r.admin = admin;
    uint256 role = roles.length - 1;
    emit RoleCreated(role);
    return role;
  }
  /**
   * @notice Retrieve the number of roles in the contract.
   */
  function totalRoles()
    external override
    view
    returns(uint256)
  {
    return roles.length;
  }
  /**
   * @notice Verify whether an account is a bearer of a role
   * @param account The account to verify.
   * @param role The role to look into.
   * @return Whether the account is a bearer of the role.
   */
  function hasRole(address account, uint256 role)
    public override
    view
    returns(bool)
  {
    return role < roles.length && roles[role].bearers[account];
  }
  /**
   * @notice A method to add a bearer to a role
   * @param account The account to add as a bearer.
   * @param role The role to add the bearer to.
   */
  function addBearer(address account, uint256 role)
    external override
  {
    require(
      role < roles.length,
      "Role doesn't exist."
    );
    require(
      hasRole(msg.sender, roles[role].admin),
      "User can't add bearers."
    );
    require(
      !hasRole(account, role),
      "Account is bearer of role."
    );
    roles[role].bearers[account] = true;
    roles[role].bearersCount++;
    emit BearerAdded(account, role);
  }
  /**
   * @notice A method to remove a bearer from a role
   * @param account The account to remove as a bearer.
   * @param role The role to remove the bearer from.
   */
  function removeBearer(address account, uint256 role)
    external override
  {
    require(
      role < roles.length,
      "Role doesn't exist."
    );
    require(
      hasRole(msg.sender, roles[role].admin),
      "User can't remove bearers."
    );
    require(
      hasRole(account, role),
      "Account is not bearer of role."
    );
    if ( role == roles[role].admin && roles[role].bearersCount == 1) {
      revert("Cannot remove last role admin");
    }

    delete roles[role].bearers[account];
    roles[role].bearersCount--;
    emit BearerRemoved(account, role);
  }
}
