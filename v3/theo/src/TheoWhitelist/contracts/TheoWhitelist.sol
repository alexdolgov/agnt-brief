// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import {ITheoWhitelist} from "./interfaces/ITheoWhitelist.sol";
import {AccessControl, IAccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {IERC165} from "@openzeppelin/contracts/utils/introspection/IERC165.sol";

/**
 * @notice  TheoWhitelist contract for managing whitelists and blacklists for users.
 */

contract TheoWhitelist is ITheoWhitelist, AccessControl {
    /// @notice Role for managing whitelist
    bytes32 public constant WHITELIST_MANAGER_ROLE = keccak256("WHITELIST_MANAGER_ROLE");

    /// @notice Role for users with whitelisted status
    bytes32 public constant WHITELIST_ROLE = keccak256("WHITELIST_ROLE");

    /// @notice Role for users with blacklisted status
    bytes32 public constant BLACKLIST_ROLE = keccak256("BLACKLIST_ROLE");

    constructor() {
        _grantRole(DEFAULT_ADMIN_ROLE, _msgSender());
    }

    ///
    /// WHITELIST/BLACKLIST CHECKS
    ///

    /** @dev See {ITheoWhitelist-isWhitelisted} */
    function isWhitelisted(address _account) public view returns (bool) {
        return hasRole(WHITELIST_ROLE, _account);
    }

    /** @dev See {ITheoWhitelist-onlyWhitelisted} */
    function onlyWhitelisted(address _account) public view {
        if (!isWhitelisted(_account)) {
            revert TheoWhitelistNotWhitelisted(_account);
        }
    }

    /** @dev See {ITheoWhitelist-isBlacklisted} */
    function isBlacklisted(address _account) public view returns (bool) {
        return hasRole(BLACKLIST_ROLE, _account);
    }

    /** @dev See {ITheoWhitelist-onlyNotBlacklisted} */
    function onlyNotBlacklisted(address _account) public view {
        if (isBlacklisted(_account)) {
            revert TheoWhitelistBlacklisted(_account);
        }
    }

    ///
    /// Whitelist/Blacklist Roles Setters
    ///

    /** @dev See {ITheoWhitelist-setWhitelistManager} */
    function setWhitelistManager(address _whitelistManager, bool _status) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_status) {
            _grantRole(WHITELIST_MANAGER_ROLE, _whitelistManager);
        } else {
            _revokeRole(WHITELIST_MANAGER_ROLE, _whitelistManager);
        }
    }

    /* @dev See {ITheoWhitelist-grantWhitelist} */
    function grantWhitelist(address _account) external onlyRole(WHITELIST_MANAGER_ROLE) {
        _grantRole(WHITELIST_ROLE, _account);
        emit GrantWhitelist(_account);
    }

    /** @dev See {ITheoWhitelist-revokeWhitelist} */
    function revokeWhitelist(address _account) external onlyRole(WHITELIST_MANAGER_ROLE) {
        _revokeRole(WHITELIST_ROLE, _account);
        emit RevokeWhitelist(_account);
    }

    /** @dev See {ITheoWhitelist-grantBlacklist} */
    function grantBlacklist(address _account) external onlyRole(WHITELIST_MANAGER_ROLE) {
        _grantRole(BLACKLIST_ROLE, _account);
        emit GrantBlacklist(_account);
    }

    /** @dev See {ITheoWhitelist-revokeBlacklist} */
    function revokeBlacklist(address _account) external onlyRole(WHITELIST_MANAGER_ROLE) {
        _revokeRole(BLACKLIST_ROLE, _account);
        emit RevokeBlacklist(_account);
    }

    /// @notice Override supportsInterface
    function supportsInterface(bytes4 interfaceId) public view override(AccessControl, IERC165) returns (bool) {
        return interfaceId == type(ITheoWhitelist).interfaceId || super.supportsInterface(interfaceId);
    }

    /** @dev Cannot renounce your own role */
    function renounceRole(bytes32, address) public pure override(AccessControl, IAccessControl) {
        revert TheoWhitelistRenounceRoleNotAllowed();
    }
}
