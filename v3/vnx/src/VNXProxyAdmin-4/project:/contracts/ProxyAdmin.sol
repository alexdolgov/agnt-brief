// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

import "@openzeppelin/contracts/proxy/transparent/ProxyAdmin.sol";
import "@openzeppelin/contracts/proxy/transparent/TransparentUpgradeableProxy.sol";
import "./IRBAC.sol";

/**
 * @dev This is an auxiliary contract meant to be assigned as the admin of a {TransparentUpgradeableProxy}. For an
 * explanation of why you would want to use this see the documentation for {TransparentUpgradeableProxy}.
 */
contract VNXProxyAdmin is ProxyAdmin {
    uint8 private upgraderRole;
    IRBAC public rbacManager;

    constructor(uint8 role, address rbac)
    {
      require(rbac!=address(0), "RBAC address!");

      upgraderRole = role;
      rbacManager = IRBAC(rbac);
    }

    /**
     * @dev Throws if called by any account other than the admin
     */
    modifier onlyUpgradeAdmin() {
      require(isUpgradeAdmin(), "RBAC: caller is not the admin");
      _;
    }

    /**
     * @dev Returns true if the caller is the admin role
     */
    function isUpgradeAdmin() public view returns (bool) {
      return rbacManager.hasRole(msg.sender, upgraderRole);
    }

    /**
     * @dev Changes the admin of `proxy` to `newAdmin`.
     *
     * Requirements:
     *
     * - This contract must be the current admin of `proxy`.
     */
    function changeProxyAdmin(TransparentUpgradeableProxy proxy, address newAdmin) public override onlyUpgradeAdmin {
        proxy.changeAdmin(newAdmin);
    }

    /**
     * @dev Upgrades `proxy` to `implementation`. See {TransparentUpgradeableProxy-upgradeTo}.
     *
     * Requirements:
     *
     * - This contract must be the admin of `proxy`.
     */
    function upgrade(TransparentUpgradeableProxy proxy, address implementation) public override onlyUpgradeAdmin {
        proxy.upgradeTo(implementation);
    }

    /**
     * @dev Upgrades `proxy` to `implementation` and calls a function on the new implementation. See
     * {TransparentUpgradeableProxy-upgradeToAndCall}.
     *
     * Requirements:
     *
     * - This contract must be the admin of `proxy`.
     */
    function upgradeAndCall(TransparentUpgradeableProxy proxy, address implementation, bytes memory data) public payable override onlyUpgradeAdmin {
        proxy.upgradeToAndCall{value: msg.value}(implementation, data);
    }
}
