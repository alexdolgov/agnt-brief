// SPDX-License-Identifier: BUSL-1.1

import "./interfaces/IAddressRegistry.sol";
import "lib/alm/lib/openzeppelin-contracts/contracts/access/AccessControl.sol";

pragma solidity 0.8.25;

contract AddressRegistry is AccessControl, IAddressRegistry {
    address public bot;
    address public helper;

    bytes32 public constant ADMIN_ROLE = keccak256("admin");

    error Forbidden();
    error AddressZero();

    constructor(address admin) {
        if (admin == address(0)) {
            revert AddressZero();
        }

        _grantRole(ADMIN_ROLE, admin);

        _setRoleAdmin(ADMIN_ROLE, ADMIN_ROLE);
    }

    function setBotAddress(address bot_) external {
        _requireAdmin();
        emit BotAddressUpdated(bot, bot_);
        bot = bot_;
    }

    function setHelperAddress(address helper_) external {
        _requireAdmin();
        emit HelperAddressUpdated(helper, helper_);
        helper = helper_;
    }

    // -------------------------  EXTERNAL, VIEW  ------------------------------
    /// @notice Checks if the address is ADMIN or ADMIN_DELEGATE.
    /// @param sender Address to check
    /// @return `true` if sender is an admin, `false` otherwise
    function isAdmin(address sender) public view returns (bool) {
        return hasRole(ADMIN_ROLE, sender);
    }

    // -------------------------  INTERNAL, VIEW  ------------------------------

    function _requireAdmin() internal view {
        if (!isAdmin(msg.sender)) {
            revert Forbidden();
        }
    }
}
