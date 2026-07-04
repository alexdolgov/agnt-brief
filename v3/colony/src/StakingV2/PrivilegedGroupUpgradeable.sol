// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

import "./OwnableUpgradeable.sol";

contract PrivilegedGroupUpgradeable is OwnableUpgradeable {
    mapping(address => bool) private privileged;

    event PrivilegeUpdated(address indexed account, bool enabled);

    // solhint-disable-next-line func-name-mixedcase
    function __PrivilegedGroupUpgradeable_init() internal onlyInitializing {
        __Ownable_init();
        __PrivilegedGroupUpgradeable_init_unchained();
    }

    // solhint-disable-next-line func-name-mixedcase, no-empty-blocks
    function __PrivilegedGroupUpgradeable_init_unchained() internal onlyInitializing {
    }

    function updatePrivileged(address account, bool enabled) public onlyOwner {
        privileged[account] = enabled;
        emit PrivilegeUpdated(account, enabled);
    }

    modifier onlyPrivileged() {
        require(privileged[_msgSender()], "Caller is not privileged");
        _;
    }

    modifier onlyOwnerOrPrivileged()  {
        require(
            owner() == _msgSender() || privileged[_msgSender()],
            "Caller is not owner/privileged"
        );
        _;
    }
}
