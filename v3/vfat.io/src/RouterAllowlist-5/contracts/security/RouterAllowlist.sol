// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import { Admin } from "contracts/base/Admin.sol";
import { IRouterAllowlist } from "contracts/interfaces/IRouterAllowlist.sol";

/// @title RouterAllowlist
/// @notice On-chain registry of allowed DEX routers for MultiSwapRouter
contract RouterAllowlist is Admin, IRouterAllowlist {
    /// ERRORS ///

    error RouterNotAllowed(address router);

    /// EVENTS ///

    event RouterAllowed(address indexed router);
    event RouterBlocked(address indexed router);

    /// STORAGE ///

    mapping(address => bool) private _allowed;
    address[] private _allowedRouters;
    mapping(address => uint256) private _routerIndex;

    /// CONSTRUCTOR ///

    /// @param admin_ Address of the admin
    constructor(address admin_) Admin(admin_) {}

    /// READ FUNCTIONS ///

    /// @inheritdoc IRouterAllowlist
    function isAllowed(address router) external view override returns (bool) {
        return _allowed[router];
    }

    /// @inheritdoc IRouterAllowlist
    function requireAllowed(address router) external view override {
        if (!_allowed[router]) revert RouterNotAllowed(router);
    }

    /// @notice Get the number of allowed routers
    /// @return The number of allowed routers
    function allowedRoutersLength() external view returns (uint256) {
        return _allowedRouters.length;
    }

    /// @notice Get an allowed router by index
    /// @param index The index in the allowed routers array
    /// @return The router address at the given index
    function allowedRouters(uint256 index) external view returns (address) {
        return _allowedRouters[index];
    }

    /// WRITE FUNCTIONS ///

    /// @notice Set the allowed status for a single router
    /// @param router The router address
    /// @param allowed Whether the router is allowed
    function setRouter(address router, bool allowed) external onlyAdmin {
        _setRouter(router, allowed);
    }

    /// @notice Set the allowed status for multiple routers
    /// @param routers Array of router addresses
    /// @param allowed Array of allowed statuses
    function setRouters(
        address[] calldata routers,
        bool[] calldata allowed
    ) external onlyAdmin {
        uint256 length = routers.length;
        require(length == allowed.length, "length mismatch");
        for (uint256 i = 0; i < length;) {
            _setRouter(routers[i], allowed[i]);
            unchecked { ++i; }
        }
    }

    /// INTERNAL FUNCTIONS ///

    function _setRouter(address router, bool allowed) internal {
        bool currentlyAllowed = _allowed[router];
        if (currentlyAllowed == allowed) return;

        _allowed[router] = allowed;
        if (allowed) {
            _routerIndex[router] = _allowedRouters.length;
            _allowedRouters.push(router);
            emit RouterAllowed(router);
        } else {
            uint256 index = _routerIndex[router];
            uint256 lastIndex = _allowedRouters.length - 1;
            if (index != lastIndex) {
                address lastRouter = _allowedRouters[lastIndex];
                _allowedRouters[index] = lastRouter;
                _routerIndex[lastRouter] = index;
            }
            _allowedRouters.pop();
            delete _routerIndex[router];
            emit RouterBlocked(router);
        }
    }
}
