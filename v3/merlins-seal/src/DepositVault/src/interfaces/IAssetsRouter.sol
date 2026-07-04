// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.26;

interface IAssetsRouter {
    /*//////////////////////////////////////////////////////////////////////////
                                    EVENTS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Emitted when a new route recipient is added
    /// @param recipient The address of the recipient added
    event RouteRecipientAdded(address indexed recipient);

    /// @notice Emitted when a route recipient is removed
    /// @param recipient The address of the recipient removed
    event RouteRecipientRemoved(address indexed recipient);

    /// @notice Emitted when auto-routing is enabled or disabled
    /// @param enabled True if auto-routing is enabled, false otherwise
    event SetAutoRouteEnabled(bool enabled);

    /// @notice Emitted when the active recipient is changed
    /// @param recipient The new active recipient address
    event SetActiveRecipient(address indexed recipient);

    /// @notice Emitted when assets are received by the contract
    /// @param token The ERC20 token address received
    /// @param recipient The address sending the assets
    /// @param amount The amount of tokens received
    event AssetsReceived(
        address indexed token,
        address indexed recipient,
        uint256 amount
    );

    /// @notice Emitted when assets are routed to a recipient
    /// @param token The ERC20 token address routed
    /// @param recipient The address receiving the routed assets
    /// @param amount The amount of tokens routed
    event AssetsRouted(
        address indexed token,
        address indexed recipient,
        uint256 amount
    );

    /*//////////////////////////////////////////////////////////////////////////
                                    PERMISSIONLESS FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Deposit tokens into the router and optionally forward them to the active recipient.
    /// @param _token The ERC20 token address being routed.
    /// @param _amount The amount of tokens to transfer.
    /// @dev Pulls tokens from msg.sender into this contract.
    ///      If auto-route is enabled, immediately forwards them to `_activeRecipient`.
    function route(address _token, uint256 _amount) external;

    /*//////////////////////////////////////////////////////////////////////////
                                    VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Returns the list of approved route recipients.
    /// @dev Returns the full list of route recipients currently registered in the router.
    /// @return routeRecipients_ The array of all registered recipient addresses.
    function getRouteRecipients()
        external
        view
        returns (address[] memory routeRecipients_);

    /// @notice Checks if an address is a valid route recipient.
    /// @dev Checks if a given address is a registered route recipient.
    /// @param _addr The address to check.
    /// @return True if the address is a valid route recipient, otherwise false.
    function isRouteRecipient(address _addr) external view returns (bool);

    /// @notice Returns the currently active route recipient.
    /// @dev Returns the currently active route recipient where assets are routed automatically.
    /// @return activeRecipient_ The address of the active route recipient.
    function getActiveRecipient()
        external
        view
        returns (address activeRecipient_);

    /// @notice Returns whether auto-routing is enabled.
    /// @dev Indicates whether automatic routing is currently enabled.
    /// @return enabled_ Boolean flag, true if auto-routing is enabled, false otherwise.
    function isAutoRouteEnabled() external view returns (bool enabled_);
}
