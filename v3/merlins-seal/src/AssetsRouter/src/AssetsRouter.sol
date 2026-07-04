// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.26;

import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {TransferHelper} from "@uniswap/v3-periphery/contracts/libraries/TransferHelper.sol";

import {IAssetsRouter} from "./interfaces/IAssetsRouter.sol";

import {Errors} from "./libraries/Errors.sol";

/// @title AssetsRouter
/// @author luoyhang003
/// @notice Routes incoming ERC20 token transfers to a designated recipient address.
/// @dev Supports both automatic routing to the active recipient or manual routing by operators.
///      Access is controlled via roles:
///      - DEFAULT_ADMIN_ROLE: manages role assignments
///      - ROUTER_ADMIN_ROLE: can add/remove route recipients
///      - ROUTER_OPERATOR_ROLE: can change active recipient, enable/disable auto-route, or manually route assets
contract AssetsRouter is IAssetsRouter, AccessControl {
    /*//////////////////////////////////////////////////////////////////////////
                                    STATE VARIABLES
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Role identifier for router admins (manage recipients list).
    /// @dev Only addresses with this role can call `addRouteRecipient` and `removeRouteRecipient`
    /// @dev Calculated as keccak256("ROUTER_ADMIN_ROLE").
    bytes32 public constant ROUTER_ADMIN_ROLE = keccak256("ROUTER_ADMIN_ROLE");

    /// @notice Role identifier for router operators (manage routing settings).
    /// @dev Only addresses with this role can call `setActiveRecipient`, `setAutoRouteEnabled` and `manualRoute`
    /// @dev Calculated as keccak256("ROUTER_OPERATOR_ROLE").
    bytes32 public constant ROUTER_OPERATOR_ROLE =
        keccak256("ROUTER_OPERATOR_ROLE");

    /// @dev List of approved route recipients.
    address[] private _routeRecipients;

    /// @dev Mapping for quick lookup of approved recipients.
    mapping(address => bool) private _isRouteRecipient;

    /// @dev The currently active recipient address where tokens are routed automatically.
    address private _activeRecipient;

    /// @dev Flag indicating whether automatic routing is enabled.
    bool private _isAutoRouteEnabled;

    /*//////////////////////////////////////////////////////////////////////////
                                    CONSTRUCTOR
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Deploys the AssetsRouter contract.
    /// @param _defaultAdmin Address assigned as DEFAULT_ADMIN_ROLE.
    /// @param _adminRole Address granted the ROUTER_ADMIN_ROLE.
    /// @param _operatorRole Address granted the ROUTER_OPERATOR_ROLE.
    /// @param _recipients Initial list of valid route recipients.
    /// @param _active The active recipient address for auto-routing.
    constructor(
        address _defaultAdmin,
        address _adminRole,
        address _operatorRole,
        address[] memory _recipients,
        address _active
    ) {
        if (
            _defaultAdmin == address(0) ||
            _adminRole == address(0) ||
            _operatorRole == address(0)
        ) revert Errors.ZeroAddress();

        _grantRole(DEFAULT_ADMIN_ROLE, _defaultAdmin);
        _grantRole(ROUTER_ADMIN_ROLE, _adminRole);
        _grantRole(ROUTER_OPERATOR_ROLE, _operatorRole);

        uint256 i;
        uint256 length = _recipients.length;

        for (i; i < length; i++) {
            address recipient = _recipients[i];

            if (recipient == address(0)) revert Errors.ZeroAddress();

            _isRouteRecipient[recipient] = true;
            _routeRecipients.push(recipient);

            emit RouteRecipientAdded(recipient);
        }

        if (!_isRouteRecipient[_active]) revert Errors.NotRouterRecipient();
        _activeRecipient = _active;
        _isAutoRouteEnabled = true;

        emit SetActiveRecipient(_activeRecipient);
        emit SetAutoRouteEnabled(true);
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    PERMISSIONLESS FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Deposit tokens into the router and optionally forward them to the active recipient.
    /// @param _token The ERC20 token address being routed.
    /// @param _amount The amount of tokens to transfer.
    /// @dev Pulls tokens from msg.sender into this contract.
    ///      If auto-route is enabled, immediately forwards them to `_activeRecipient`.
    function route(address _token, uint256 _amount) external {
        if (_token == address(0)) revert Errors.ZeroAddress();
        if (_amount == 0) revert Errors.ZeroAmount();

        TransferHelper.safeTransferFrom(
            _token,
            msg.sender,
            address(this),
            _amount
        );
        emit AssetsReceived(_token, msg.sender, _amount);

        if (_isAutoRouteEnabled) {
            TransferHelper.safeTransfer(_token, _activeRecipient, _amount);

            emit AssetsRouted(_token, _activeRecipient, _amount);
        }
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Returns the list of approved route recipients.
    /// @dev Returns the full list of route recipients currently registered in the router.
    /// @return routeRecipients_ The array of all registered recipient addresses.
    function getRouteRecipients()
        external
        view
        returns (address[] memory routeRecipients_)
    {
        return _routeRecipients;
    }

    /// @notice Checks if an address is a valid route recipient.
    /// @dev Checks if a given address is a registered route recipient.
    /// @param _addr The address to check.
    /// @return True if the address is a valid route recipient, otherwise false.
    function isRouteRecipient(address _addr) external view returns (bool) {
        return _isRouteRecipient[_addr];
    }

    /// @notice Returns the currently active route recipient.
    /// @dev Returns the currently active route recipient where assets are routed automatically.
    /// @return activeRecipient_ The address of the active route recipient.
    function getActiveRecipient()
        external
        view
        returns (address activeRecipient_)
    {
        return _activeRecipient;
    }

    /// @notice Returns whether auto-routing is enabled.
    /// @dev Indicates whether automatic routing is currently enabled.
    /// @return enabled_ Boolean flag, true if auto-routing is enabled, false otherwise.
    function isAutoRouteEnabled() external view returns (bool enabled_) {
        return _isAutoRouteEnabled;
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    ADMIN FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Add a new valid route recipient.
    /// @param _recipient The address to add as a route recipient.
    /// @dev Callable only by ROUTER_ADMIN_ROLE.
    function addRouteRecipient(
        address _recipient
    ) external onlyRole(ROUTER_ADMIN_ROLE) {
        if (_recipient == address(0)) revert Errors.ZeroAddress();
        if (_isRouteRecipient[_recipient])
            revert Errors.RecipientAlreadyAdded();

        _isRouteRecipient[_recipient] = true;
        _routeRecipients.push(_recipient);

        emit RouteRecipientAdded(_recipient);
    }

    /// @notice Remove an existing route recipient.
    /// @param _recipient The address to remove from the recipients list.
    /// @dev Cannot remove the currently active recipient.
    function removeRouteRecipient(
        address _recipient
    ) external onlyRole(ROUTER_ADMIN_ROLE) {
        if (_recipient == address(0)) revert Errors.ZeroAddress();
        if (!_isRouteRecipient[_recipient])
            revert Errors.RecipientAlreadyRemoved();
        if (_recipient == _activeRecipient) revert Errors.RemoveActiveRouter();

        uint256 length = _routeRecipients.length;
        uint256 i;

        for (i; i < length; i++) {
            if (_routeRecipients[i] == _recipient) {
                _routeRecipients[i] = _routeRecipients[length - 1];
                _routeRecipients.pop();
                break;
            }
        }
        _isRouteRecipient[_recipient] = false;

        emit RouteRecipientRemoved(_recipient);
    }

    /// @notice Set the active recipient for auto-routing.
    /// @param _active The address to set as the active recipient.
    /// @dev Callable only by ROUTER_OPERATOR_ROLE.
    function setActiveRecipient(
        address _active
    ) external onlyRole(ROUTER_OPERATOR_ROLE) {
        if (!_isRouteRecipient[_active]) revert Errors.NotRouterRecipient();

        _activeRecipient = _active;
        emit SetActiveRecipient(_activeRecipient);
    }

    /// @notice Enable or disable automatic routing.
    /// @param _enabled Boolean flag to set auto-routing state.
    /// @dev Callable only by ROUTER_OPERATOR_ROLE.
    function setAutoRouteEnabled(
        bool _enabled
    ) external onlyRole(ROUTER_OPERATOR_ROLE) {
        if (_isAutoRouteEnabled == _enabled)
            revert Errors.InvalidRouteEnabledStatus();

        _isAutoRouteEnabled = _enabled;

        emit SetAutoRouteEnabled(_enabled);
    }

    /// @notice Manually route tokens to a specified recipient.
    /// @param _token The ERC20 token address to route.
    /// @param _recipient The destination recipient address.
    /// @param _amount The amount of tokens to transfer.
    /// @dev Callable only by ROUTER_OPERATOR_ROLE.
    function manualRoute(
        address _token,
        address _recipient,
        uint256 _amount
    ) external onlyRole(ROUTER_OPERATOR_ROLE) {
        if (_isAutoRouteEnabled) revert Errors.AutoRouteEnabled();
        if (_token == address(0)) revert Errors.ZeroAddress();
        if (_amount == 0) revert Errors.ZeroAmount();
        if (!_isRouteRecipient[_recipient]) revert Errors.NotRouterRecipient();

        TransferHelper.safeTransfer(_token, _recipient, _amount);

        emit AssetsRouted(_token, _recipient, _amount);
    }
}
