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

    function addCustomRegistry(ICustomConnectorRegistry registry)
        external
        onlyAdmin
    {
        customRegistries.push(registry);
        emit CustomRegistryAdded(address(registry));
    }

    function removeCustomRegistry(uint256 index) external onlyAdmin {
        address registry = address(customRegistries[index]);
        delete customRegistries[index];
        emit CustomRegistryRemoved(registry);
    }

    function connectorOf(address target) external view returns (address) {
        address connector = connectors_[target];
        if (connector != address(0)) {
            return connector;
        }

        for (uint256 i; i != customRegistries.length;) {
            try customRegistries[i].connectorOf(target) returns (
                address _connector
            ) {
                if (_connector != address(0)) {
                    return _connector;
                }
            } catch {
                // Ignore
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

        return false;
    }
}
