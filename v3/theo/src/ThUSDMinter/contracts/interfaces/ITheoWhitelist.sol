// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import {IAccessControl} from "@openzeppelin/contracts/access/IAccessControl.sol";
import {IERC165} from "@openzeppelin/contracts/utils/introspection/IERC165.sol";

interface ITheoWhitelist is IAccessControl, IERC165 {
    /// @notice Account whitelisted
    event GrantWhitelist(address account);

    /// @notice Account whitelist revoked
    event RevokeWhitelist(address account);

    /// @notice Account blacklisted
    event GrantBlacklist(address account);

    /// @notice Account blacklist revoked
    event RevokeBlacklist(address account);

    /**
     * @dev Attempted to transfer tokens to an account that is not whitelisted.
     */
    error TheoWhitelistNotWhitelisted(address account);

    /**
     * @dev Attempted to transfer tokens to an account that is blacklisted.
     */
    error TheoWhitelistBlacklisted(address account);

    /**
     * @dev Attempted to renounce a role
     */
    error TheoWhitelistRenounceRoleNotAllowed();

    /// @notice returns if an account is whitelisted
    function isWhitelisted(address account) external view returns (bool);

    /// @notice reverts if not whitelisted
    function onlyWhitelisted(address account) external view;

    /// @notice returns if an account is blacklisted
    function isBlacklisted(address account) external view returns (bool);

    /// @notice reverts if blacklisted
    function onlyNotBlacklisted(address account) external view;

    /// @notice sets address that can manage the whitelist/blacklist
    function setWhitelistManager(address whitelistManager, bool status) external;

    /// @notice callable by whitelist manager to whitelist a user
    function grantWhitelist(address account) external;

    /// @notice callable by whitelist manager to revoke a user's whitelist status
    function revokeWhitelist(address account) external;

    /// @notice callable by whitelist manager to blacklist a user
    function grantBlacklist(address account) external;

    /// @notice callable by whitelist manager to revoke a user's blacklist status
    function revokeBlacklist(address account) external;
}
