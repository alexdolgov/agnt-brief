// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "./base/Admin.sol";

error ConnectorNotRegistered(address target);

interface ICustomConnectorRegistry {
    function connectorOf(address target) external view returns (address);
}

contract ConnectorRegistry is Admin {
    event ConnectorChanged(address target, address connector);

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
    }

    function removeCustomRegistry(uint256 index) external onlyAdmin {
        delete customRegistries[index];
    }

    function connectorOf(address target) external view returns (address) {
        address connector = connectors_[target];
        if (connector != address(0)) {
            return connector;
        }

        for (uint256 i; i != customRegistries.length;) {
            connector = customRegistries[i].connectorOf(target);
            if (connector != address(0)) {
                return connector;
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
            if (customRegistries[i].connectorOf(target) != address(0)) {
                return true;
            }

            unchecked {
                ++i;
            }
        }
        return false;
    }
}
