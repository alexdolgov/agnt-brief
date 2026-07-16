// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "./base/Admin.sol";

error ConnectorNotRegistered(address target);

interface ICustomConnectorRegistry {
    function connectorOf(address target) external view returns (address);
}

contract ConnectorRegistry is Admin {
    event ConnectorChanged(address target, address connector);
    event CustomRegistryAdded(address registry);
    event CustomRegistryRemoved(address registry);

    ICustomConnectorRegistry[] public customRegistries;

    mapping(address target => address connector) private connectors_;

    constructor(address admin_) Admin(admin_) { }

    /// @notice Update connector addresses for a batch of targets.
    /// @dev Controls which connector contracts are used for the specified
    /// targets.
    /// @custom:access Restricted to protocol admin.
    function setConnectors(
        address[] calldata targets,
        address[] calldata connectors
    ) external onlyAdmin {
        for (uint256 i; i != targets.length;) {
            connectors_[targets[i]] = connectors[i];
            emit ConnectorChanged(targets[i], connectors[i]);

            unchecked {
                ++i;
            }
        }
    }

    function isCustomRegistry(address target) external view returns (bool) {
        for (uint256 i; i != customRegistries.length;) {
            if (address(customRegistries[i]) == target) {
                return true;
            }

            unchecked {
                ++i;
            }
        }

        return false;
    }

    /// @notice Append an address to the custom registries list.
    /// @custom:access Restricted to protocol admin.
    function addCustomRegistry(ICustomConnectorRegistry registry)
        external
        onlyAdmin
    {
        customRegistries.push(registry);
        emit CustomRegistryAdded(address(registry));
    }

    /// @notice Replace an address in the custom registries list.
    /// @custom:access Restricted to protocol admin.
    function replaceCustomRegistry(
        uint256 index,
        ICustomConnectorRegistry newRegistry
    ) external onlyAdmin {
        address oldRegistry = address(customRegistries[index]);
        emit CustomRegistryRemoved(oldRegistry);
        customRegistries[index] = newRegistry;
    }

    function connectorOf(address target) external view returns (address) {
        address connector = connectors_[target];
        if (connector != address(0)) {
            return connector;
        }

        for (uint256 i; i != customRegistries.length;) {
            if (address(customRegistries[i]) != address(0)) {
                try customRegistries[i].connectorOf(target) returns (
                    address _connector
                ) {
                    if (_connector != address(0)) {
                        return _connector;
                    }
                } catch {
                    // Ignore
                }
            }

            unchecked {
                ++i;
            }
        }

        revert ConnectorNotRegistered(target);
    }

    function hasConnector(address target) external view returns (bool) {
        if (connectors_[target] != address(0)) {
            return true;
        }

        for (uint256 i; i != customRegistries.length;) {
            if (address(customRegistries[i]) != address(0)) {
                try customRegistries[i].connectorOf(target) returns (
                    address _connector
                ) {
                    if (_connector != address(0)) {
                        return true;
                    }
                } catch {
                    // Ignore
                }

                unchecked {
                    ++i;
                }
            }
        }

        return false;
    }
}
