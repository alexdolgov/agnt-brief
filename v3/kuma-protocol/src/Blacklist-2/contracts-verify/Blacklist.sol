// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import {Errors} from "./libraries/Errors.sol";
import {IAccessControl} from "lib/openzeppelin-contracts/contracts/access/IAccessControl.sol";
import {IBlacklist} from "./interfaces/IBlacklist.sol";
import {Roles} from "./libraries/Roles.sol";

/**
 * @title MCAG Blacklist
 * @author MIMO Labs
 * @notice This contract stores the blacklist for MCAG
 */
contract Blacklist is IBlacklist {
    IAccessControl public immutable accessController;

    mapping(address => bool) private _blacklisted;

    /**
     * @dev Throws if called by any account other than the blacklister
     */
    modifier onlyBlacklister() {
        if (!accessController.hasRole(Roles.MCAG_BLACKLIST_ROLE, msg.sender)) {
            revert Errors.BLACKLIST_CALLER_IS_NOT_BLACKLISTER();
        }
        _;
    }

    constructor(IAccessControl _accessController) {
        if (address(_accessController) == address(0)) {
            revert Errors.CANNOT_SET_TO_ADDRESS_ZERO();
        }
        accessController = _accessController;

        emit AccessControllerSet(address(_accessController));
    }

    /**
     * @dev Adds account to blacklist
     * @dev Caller must have MCAG_BLACKLIST_ROLE
     * @param account The address to blacklist
     */
    function blacklist(address account) external onlyBlacklister {
        if (_blacklisted[account]) {
            revert Errors.BLACKLIST_ACCOUNT_IS_BLACKLISTED(account);
        }
        _blacklisted[account] = true;
        emit Blacklisted(account);
    }

    /**
     * @dev Removes account from blacklist
     * @dev Caller must have MCAG_BLACKLIST_ROLE
     * @param account The address to remove from the blacklist
     */
    function unBlacklist(address account) external onlyBlacklister {
        if (!_blacklisted[account]) {
            revert Errors.BLACKLIST_ACCOUNT_IS_NOT_BLACKLISTED(account);
        }
        _blacklisted[account] = false;
        emit UnBlacklisted(account);
    }

    /**
     * @dev Checks if account is blacklisted
     * @param account The address to check
     * @return True if the given account is blacklisted, false otherwise
     */
    function isBlacklisted(address account) external view returns (bool) {
        return _blacklisted[account];
    }
}
