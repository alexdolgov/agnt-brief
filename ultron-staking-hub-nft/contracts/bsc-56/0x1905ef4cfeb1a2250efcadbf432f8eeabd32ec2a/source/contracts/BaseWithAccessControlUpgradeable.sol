// SPDX-License-Identifier: MIT

pragma solidity >0.8.0 <0.9.0;

import "@openzeppelin/contracts-upgradeable/utils/ContextUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";

contract BaseWithAccessControlUpgradeable is
    UUPSUpgradeable,
    AccessControlUpgradeable
{
    function __BaseWithAccessControl_init() internal onlyInitializing {
        __AccessControl_init();
        __UUPSUpgradeable_init();
    }

    modifier nonZeroAddress(address addr) {
        require(addr != address(0), "BASE: zero-address provided");
        _;
    }

    function _authorizeUpgrade(address newImplementation)
        internal
        override
        onlyRole(DEFAULT_ADMIN_ROLE)
    {}
}
