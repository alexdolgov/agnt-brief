// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import { Admin } from "contracts/base/Admin.sol";
import { IRouterAllowlist } from "contracts/interfaces/IRouterAllowlist.sol";

/// @title RouterAllowlist
/// @notice On-chain registry of allowed DEX routers for MultiSwapRouter
contract RouterAllowlist is Admin, IRouterAllowlist {
    /// ERRORS ///

    error RouterNotAllowed(address router);
    error FactoryNotAllowed(address factory);
    error CustomDeployerNotAllowed(address factory, address deployer);
    error HookNotAllowed(address hook);
    error DataLengthMismatch();

    /// EVENTS ///

    event RouterAllowed(address indexed router);
    event RouterBlocked(address indexed router);
    event FactoryAllowed(address indexed factory);
    event FactoryBlocked(address indexed factory);
    event CustomDeployerAllowed(address indexed factory, address indexed deployer);
    event CustomDeployerBlocked(address indexed factory, address indexed deployer);
    event HookAllowed(address indexed hook);
    event HookBlocked(address indexed hook);

    /// STORAGE ///

    /// @inheritdoc IRouterAllowlist
    mapping(address => bool) public override isAllowed;
    address[] public allowedRouters;
    mapping(address => uint256) private _routerIndex;

    /// @inheritdoc IRouterAllowlist
    mapping(address => bool) public override isAllowedFactory;
    address[] public allowedFactories;
    mapping(address => uint256) private _factoryIndex;

    /// @inheritdoc IRouterAllowlist
    mapping(address => mapping(address => bool)) public override isAllowedCustomDeployer;
    /// @inheritdoc IRouterAllowlist
    mapping(address => bool) public override isAllowedHook;
    address[] public allowedHooks;
    mapping(address => uint256) private _hookIndex;

    /// CONSTRUCTOR ///

    /// @param admin_ Address of the admin
    constructor(address admin_) Admin(admin_) {}

    /// READ FUNCTIONS ///



    /// @inheritdoc IRouterAllowlist
    function requireAllowed(address router) external view override {
        if (!isAllowed[router]) revert RouterNotAllowed(router);
    }

    /// @inheritdoc IRouterAllowlist
    function requireAllowedFactory(address factory) external view override {
        if (!isAllowedFactory[factory]) revert FactoryNotAllowed(factory);
    }

    /// @inheritdoc IRouterAllowlist
    function requireAllowedCustomDeployer(
        address factory,
        address deployer
    ) external view override {
        if (!isAllowedCustomDeployer[factory][deployer]) {
            revert CustomDeployerNotAllowed(factory, deployer);
        }
    }

    /// @inheritdoc IRouterAllowlist
    function requireAllowedHook(address hook) external view override {
        if (!isAllowedHook[hook]) revert HookNotAllowed(hook);
    }

    /// @notice Get the number of allowed routers
    /// @return The number of allowed routers
    function allowedRoutersLength() external view returns (uint256) {
        return allowedRouters.length;
    }

    /// @notice Get the number of allowed factories
    /// @return The number of allowed factories
    function allowedFactoriesLength() external view returns (uint256) {
        return allowedFactories.length;
    }

    /// WRITE FUNCTIONS ///

    /// @notice Set the allowed status for a single router
    /// @param router The router address
    /// @param allowed Whether the router is allowed
    function setRouter(address router, bool allowed) external onlyAdmin {
        _setRouter(router, allowed);
    }

    /// @notice Set the allowed status for a single factory
    /// @param factory The factory address
    /// @param allowed Whether the factory is allowed
    function setFactory(address factory, bool allowed) external onlyAdmin {
        _setFactory(factory, allowed);
    }

    /// @notice Set the allowed status for multiple routers
    /// @param routers Array of router addresses
    /// @param allowed Array of allowed statuses
    function setRouters(
        address[] calldata routers,
        bool[] calldata allowed
    ) external onlyAdmin {
        uint256 length = routers.length;
        if (length != allowed.length) revert DataLengthMismatch();
        for (uint256 i; i < length;) {
            _setRouter(routers[i], allowed[i]);
            unchecked { ++i; }
        }
    }

    /// @notice Set the allowed status for multiple factories
    /// @param factories Array of factory addresses
    /// @param allowed Array of allowed statuses
    function setFactories(
        address[] calldata factories,
        bool[] calldata allowed
    ) external onlyAdmin {
        uint256 length = factories.length;
        if (length != allowed.length) revert DataLengthMismatch();
        for (uint256 i; i < length;) {
            _setFactory(factories[i], allowed[i]);
            unchecked { ++i; }
        }
    }

    /// @notice Set the allowed status for a custom pool deployer
    /// @param factory The factory address
    /// @param deployer The custom pool deployer address
    /// @param allowed Whether the custom deployer is allowed
    function setCustomDeployer(
        address factory,
        address deployer,
        bool allowed
    ) external onlyAdmin {
        _setCustomDeployer(factory, deployer, allowed);
    }

    /// @notice Set the allowed status for multiple custom pool deployers
    /// @param factory The factory address
    /// @param deployers Array of custom deployer addresses
    /// @param allowed Array of allowed statuses
    function setCustomDeployers(
        address factory,
        address[] calldata deployers,
        bool[] calldata allowed
    ) external onlyAdmin {
        uint256 length = deployers.length;
        if (length != allowed.length) revert DataLengthMismatch();
        for (uint256 i; i < length;) {
            _setCustomDeployer(factory, deployers[i], allowed[i]);
            unchecked { ++i; }
        }
    }

    /// @notice Set the allowed status for a v4 hook
    /// @param hook The hook address
    /// @param allowed Whether the hook is allowed
    function setHook(address hook, bool allowed) external onlyAdmin {
        _setHook(hook, allowed);
    }

    /// @notice Set the allowed status for multiple v4 hooks
    /// @param hooks Array of hook addresses
    /// @param allowed Array of allowed statuses
    function setHooks(address[] calldata hooks, bool[] calldata allowed) external onlyAdmin {
        uint256 length = hooks.length;
        if (length != allowed.length) revert DataLengthMismatch();
        for (uint256 i; i < length;) {
            _setHook(hooks[i], allowed[i]);
            unchecked { ++i; }
        }
    }

    /// @notice Get the number of allowed hooks
    /// @return The number of allowed hooks
    function allowedHooksLength() external view returns (uint256) {
        return allowedHooks.length;
    }

    /// INTERNAL FUNCTIONS ///

    function _setRouter(address router, bool allowed) internal {
        bool currentlyAllowed = isAllowed[router];
        if (currentlyAllowed == allowed) return;

        isAllowed[router] = allowed;
        if (allowed) {
            _routerIndex[router] = allowedRouters.length;
            allowedRouters.push(router);
            emit RouterAllowed(router);
        } else {
            uint256 index = _routerIndex[router];
            uint256 lastIndex = allowedRouters.length - 1;
            if (index != lastIndex) {
                address lastRouter = allowedRouters[lastIndex];
                allowedRouters[index] = lastRouter;
                _routerIndex[lastRouter] = index;
            }
            allowedRouters.pop();
            delete _routerIndex[router];
            emit RouterBlocked(router);
        }
    }

    function _setFactory(address factory, bool allowed) internal {
        bool currentlyAllowed = isAllowedFactory[factory];
        if (currentlyAllowed == allowed) return;

        isAllowedFactory[factory] = allowed;
        if (allowed) {
            _factoryIndex[factory] = allowedFactories.length;
            allowedFactories.push(factory);
            emit FactoryAllowed(factory);
        } else {
            uint256 index = _factoryIndex[factory];
            uint256 lastIndex = allowedFactories.length - 1;
            if (index != lastIndex) {
                address lastFactory = allowedFactories[lastIndex];
                allowedFactories[index] = lastFactory;
                _factoryIndex[lastFactory] = index;
            }
            allowedFactories.pop();
            delete _factoryIndex[factory];
            emit FactoryBlocked(factory);
        }
    }

    function _setCustomDeployer(
        address factory,
        address deployer,
        bool allowed
    ) internal {
        bool currentlyAllowed = isAllowedCustomDeployer[factory][deployer];
        if (currentlyAllowed == allowed) return;

        isAllowedCustomDeployer[factory][deployer] = allowed;
        if (allowed) {
            emit CustomDeployerAllowed(factory, deployer);
        } else {
            emit CustomDeployerBlocked(factory, deployer);
        }
    }

    function _setHook(address hook, bool allowed) internal {
        bool currentlyAllowed = isAllowedHook[hook];
        if (currentlyAllowed == allowed) return;

        isAllowedHook[hook] = allowed;
        if (allowed) {
            _hookIndex[hook] = allowedHooks.length;
            allowedHooks.push(hook);
            emit HookAllowed(hook);
        } else {
            uint256 index = _hookIndex[hook];
            uint256 lastIndex = allowedHooks.length - 1;
            if (index != lastIndex) {
                address lastHook = allowedHooks[lastIndex];
                allowedHooks[index] = lastHook;
                _hookIndex[lastHook] = index;
            }
            allowedHooks.pop();
            delete _hookIndex[hook];
            emit HookBlocked(hook);
        }
    }
}
