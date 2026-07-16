// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import { IAccessControl } from "@openzeppelin/contracts/access/IAccessControl.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/**
 * @title IConduit
 * @author Rain Team
 * @notice Interface for the Conduit.
 */
interface IConduit is IAccessControl {
    /* ========================== TYPES ========================== */

    /// @dev Represents the type of route.
    enum RouteType {
        UNISWAP_V2,
        UNISWAP_V3
    }

    /// @dev Represents swap specific data to achieve buybacks.
    struct Route {
        /// @custom:member routeType Type of route to perform.
        RouteType routeType;
        /// @custom:member path Encoded path to perform swaps.
        bytes path;
    }

    /// @dev Represents definition for low-level calls.
    struct Call {
        /// @custom:member to Target address of the call.
        address to;
        /// @custom:member data Calldata to execute on the target.
        bytes data;
        /// @custom:member value Payable value to send with the call.
        uint256 value;
    }

    /* ========================== EVENTS ========================== */

    /**
     * @dev Emitted when assets are accepted into the conduit.
     * @param asset Address of the asset being accepted.
     * @param assets Amount of assets accepted.
     */
    event Accept(address asset, uint256 assets);

    /**
     * @dev Emitted when buyback and burn is successfully executed for the protocol token.
     * @param asset Asset used to buyback protocol tokens.
     * @param assets Amount of assets used.
     * @param burned Amount of protocol tokens acquired from buyback and consequently burned.
     */
    event BuybackAndBurn(address asset, uint256 assets, uint256 burned);

    /**
     * @dev Emitted when buyback fails and the asset is sent to backup address.
     * @param asset Asset sent to backup address.
     * @param assets Amount of assets sent.
     */
    event BuybackAndBurnFallback(address asset, uint256 assets);

    /**
     * @dev Emitted when the value of the slippage tolerance is changed.
     * @param newSlippageBps Value of the new slippage tolerance.
     * @param oldSlippageBps Value of the previous slippage tolerance.
     */
    event UpdateSlippageBps(uint256 newSlippageBps, uint256 oldSlippageBps);

    /**
     * @dev Emitted when the address of the backup wallet is changed.
     * @param newBackup Address of the new backup wallet.
     * @param oldBackup Address of the previous backup wallet.
     */
    event UpdateBackup(address newBackup, address oldBackup);

    /**
     * @dev Emitted when route is added for a given asset.
     * @param asset Asset for which the route is added.
     * @param routeType Type of route added.
     * @param path Encoded path for the route.
     */
    event AddRoute(address asset, RouteType routeType, bytes path);

    /**
     * @dev Emitted when the route is removed for a given asset.
     * @param asset Asset for which the route is removed.
     */
    event RemoveRoute(address asset);

    /* ========================== ERRORS ========================== */

    /**
     * @dev Thrown when a route is being replaced for an asset that does not have an existing route.
     */
    error NoRouteToReplace();

    /* ========================== FUNCTIONS ========================== */

    /**
     * @notice Accepts assets and executes a predefined route to buyback and burn protocol tokens.
     *
     * NOTE: Assets are sent to the backup wallet in the case of a failure. No swap is executed when accepting the
     * protocol token itself.
     *
     * Requirements:
     *
     * - the caller must be an authority.
     *
     * @param asset Address of the asset being accepted.
     * @param assets Amount of assets accepted.
     */
    function accept(IERC20 asset, uint256 assets) external;

    /**
     * @notice Executes an arbitrary route to buyback protocol tokens, then burns the acquired tokens.
     *
     * NOTE: Assets are sent to the backup wallet in the case of a failure.
     *
     * Requirements:
     *
     * - the caller must be a manager.
     *
     * @param asset Asset on which the arbitrary route will be executed.
     * @param arbitraryRoute Arbitrary route to execute for acquiring protocol tokens.
     */
    function forceBuybackAndBurn(IERC20 asset, Call[] memory arbitraryRoute) external;

    /**
     * @notice Updates the value of the slippage tolerance.
     *
     * Requirements:
     *
     * - the caller must be an owner.
     * - `newSlippageBps` cannot be `0`.
     * - `newSlippageBps` cannot be equal to the existing slippage tolerance value.
     *
     * @param newSlippageBps Value of the new slippage tolerance.
     */
    function updateSlippageBps(uint256 newSlippageBps) external;

    /**
     * @notice Updates the address of the backup wallet.
     *
     * Requirements:
     *
     * - the caller must be an owner.
     * - `newBackup` cannot be the zero address.
     * - `newBackup` cannot be equal to the existing backup wallet address.
     *
     * @param newBackup Address of the new backup wallet.
     */
    function updateBackup(address newBackup) external;

    /**
     * @notice Adds or removes route for the given asset.
     * @dev Validates `newRoute` but does not validate `asset`. The caller must perform sanity checks for `asset`.
     *
     * NOTE: Route is not required for the protocol token, hence this returns early without changing state. When
     * removing a route, i.e. `state` is false, `newRoute` is ignored and not validated.
     *
     * Requirements:
     *
     * - the caller must be an authority.
     * - when adding, `newRoute` cannot have an empty path.
     *
     * @param asset Asset for which the route is added or removed.
     * @param newRoute Route to add. This is ignored when removing and can be left empty.
     * @param state Whether to add or remove the route.
     */
    function addRemoveRoute(IERC20 asset, Route memory newRoute, bool state) external;

    /**
     * @notice Replaces route for the given asset.
     *
     * NOTE: Route is not required for the protocol token, hence this returns early without changing state.
     *
     * Requirements:
     *
     * - the caller must be an owner.
     * - `asset` must have a pre-existing route.
     * - `asset` cannot be the zero address.
     * - `newRoute` cannot have an empty path.
     *
     * @param asset Asset for which the route is replaced.
     * @param newRoute Route to replace.
     */
    function replaceRoute(IERC20 asset, Route memory newRoute) external;

    /**
     * @notice Slippage tolerance in basis points.
     */
    function slippageBps() external view returns (uint256);

    /**
     * @notice Address of the backup wallet that receives assets when buyback and burn fails.
     */
    function backup() external view returns (address);

    /**
     * @notice Address of the protocol token.
     */
    function protocolToken() external view returns (address);

    /**
     * @notice Route of the given asset to buyback the protocol token.
     * @param asset Asset for which the buyback route is queried.
     * @return route Type and swap path of the buyback route.
     */
    function route(IERC20 asset) external view returns (Route memory route);
}
