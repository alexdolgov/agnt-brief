// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.26;

import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";

import {IAccessRegistry} from "./interfaces/IAccessRegistry.sol";
import {Errors} from "./libraries/Errors.sol";

/// @title Access Registry
/// @author luoyhang003
/// @notice Manages whitelist and blacklist for protocol access control.
/// @dev Uses OpenZeppelin AccessControl for role-based permissions.
contract AccessRegistry is IAccessRegistry, AccessControl {
    /*//////////////////////////////////////////////////////////////////////////
                                    STATE VARIABLES
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Role identifier for admin accounts.
    /// @dev Calculated as keccak256("ADMIN_ROLE").
    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");

    /// @notice Role identifier for operator accounts.
    /// @dev Calculated as keccak256("OPERATOR_ROLE").
    bytes32 public constant OPERATOR_ROLE = keccak256("OPERATOR_ROLE");

    /// @notice Whitelist mapping to track approved users.
    /// @dev Address => true if whitelisted, false otherwise.
    mapping(address => bool) private _whitelist;

    /// @notice Blacklist mapping to track blocked users.
    /// @dev Address => true if blacklisted, false otherwise.
    mapping(address => bool) private _blacklist;

    /// @notice Whether the whitelist mode is enabled.
    /// @dev True if whitelist mode is enabled, false otherwise.
    bool public isWhitelistEnabled = true;

    /*//////////////////////////////////////////////////////////////////////////
                                    CONSTRUCTOR
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Deploys the contract and assigns initial admin and operator roles.
    /// @param _defaultAdmin Address to receive the DEFAULT_ADMIN_ROLE.
    /// @param _admin Address to receive the ADMIN_ROLE.
    /// @param _operator Address to receive the OPERATOR_ROLE.
    constructor(address _defaultAdmin, address _admin, address _operator) {
        if (_admin == address(0) || _operator == address(0))
            revert Errors.ZeroAddress();

        _grantRole(DEFAULT_ADMIN_ROLE, _defaultAdmin);
        _grantRole(ADMIN_ROLE, _admin);
        _grantRole(OPERATOR_ROLE, _operator);
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Checks whether a given address is whitelisted
    /// @param _account The address to check
    /// @return True if the address is whitelisted, false otherwise
    function isWhitelisted(address _account) external view returns (bool) {
        return !isWhitelistEnabled || _whitelist[_account];
    }

    /// @notice Checks whether a given address is blacklisted
    /// @param _account The address to check
    /// @return True if the address is blacklisted, false otherwise
    function isBlacklisted(address _account) external view returns (bool) {
        return _blacklist[_account];
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    WHITELIST LOGIC
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Add multiple users to the whitelist.
    /// @dev Only callable by accounts with OPERATOR_ROLE.
    /// @param _users Array of addresses to be whitelisted.
    function addWhitelist(
        address[] memory _users
    ) external onlyRole(OPERATOR_ROLE) {
        uint256 length = _users.length;
        if (length == 0) revert Errors.InvalidArrayLength();

        uint256 i;
        for (i; i < length; i++) {
            address _user = _users[i];
            if (_blacklist[_user]) revert Errors.AlreadyBlacklisted();

            _whitelist[_user] = true;
        }

        emit WhitelistAdded(_users);
    }

    /// @notice Remove multiple users from the whitelist.
    /// @dev Only callable by accounts with OPERATOR_ROLE.
    /// @param _users Array of addresses to be removed from whitelist.
    function removeWhitelist(
        address[] memory _users
    ) external onlyRole(OPERATOR_ROLE) {
        uint256 length = _users.length;
        if (length == 0) revert Errors.InvalidArrayLength();

        uint256 i;
        for (i; i < length; i++) {
            address _user = _users[i];
            delete _whitelist[_user];
        }

        emit WhitelistRemoved(_users);
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    BLACKLIST LOGIC
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Add multiple users to the blacklist.
    /// @dev Only callable by accounts with OPERATOR_ROLE.
    /// @param _users Array of addresses to be blacklisted.
    function addBlacklist(
        address[] memory _users
    ) external onlyRole(OPERATOR_ROLE) {
        uint256 length = _users.length;
        if (length == 0) revert Errors.InvalidArrayLength();

        uint256 i;
        for (i; i < length; i++) {
            address _user = _users[i];

            if (_user == address(0)) revert Errors.ZeroAddress();
            if (_whitelist[_user]) revert Errors.AlreadyWhitelisted();

            _blacklist[_user] = true;
        }

        emit BlacklistAdded(_users);
    }

    /// @notice Remove multiple users from the blacklist.
    /// @dev Only callable by accounts with OPERATOR_ROLE.
    /// @param _users Array of addresses to be removed from blacklist.
    function removeBlacklist(
        address[] memory _users
    ) external onlyRole(OPERATOR_ROLE) {
        uint256 length = _users.length;
        if (length == 0) revert Errors.InvalidArrayLength();

        uint256 i;
        for (i; i < length; i++) {
            address _user = _users[i];
            delete _blacklist[_user];
        }

        emit BlacklistRemoved(_users);
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    ADMIN FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Enables or disables the whitelist feature.
    /// @dev Only callable by accounts with the ADMIN_ROLE.
    /// @param _enabled Boolean flag - true to enable the whitelist, false to disable it.
    function setWhitelistEnabled(bool _enabled) external onlyRole(ADMIN_ROLE) {
        if (isWhitelistEnabled == _enabled) revert Errors.AlreadyInSameState();

        isWhitelistEnabled = _enabled;

        emit WhitelistToggled(_enabled);
    }
}
