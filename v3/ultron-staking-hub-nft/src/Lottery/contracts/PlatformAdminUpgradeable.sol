//SPDX-License-Identifier: UNLICENSED

pragma solidity >0.8.0 <0.9.0;

import "./interfaces/access/IAccessControlUpgradeable.sol";
import "./interfaces/IPlatformAdmin.sol";
import "./security/PausableUpgradeable.sol";
import "./BaseUpgradeable.sol";

contract PlatformAdminUpgradeable is
    IPlatformAdmin,
    PausableUpgradeable,
    BaseUpgradeable
{
    address private _platformAddress;

    function __PlatformAdmin_init(address platformAddress)
        internal
        initializer
    {
        _platformAddress = platformAddress;
        __Pausable_init();
        __Base_init();
    }

    modifier onlyRole(bytes32 role) {
        require(
            IAccessControlUpgradeable(_platformAddress).hasRole(
                role,
                _msgSender()
            ),
            "PlatformAdmin: permission denied for msg.sender"
        );
        _;
    }

    function getPlatformAddress() public view override returns (address) {
        return _platformAddress;
    }
}
