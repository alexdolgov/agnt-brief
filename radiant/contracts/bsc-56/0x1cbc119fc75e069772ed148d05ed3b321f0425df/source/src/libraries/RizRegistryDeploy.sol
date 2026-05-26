// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

import { BadDebtManager } from "../BadDebtManager.sol";
import { TransparentUpgradeableProxy } from "@openzeppelin/contracts/proxy/transparent/TransparentUpgradeableProxy.sol";

/// @title Riz Registry Deploy library with misc functions
library RizRegistryDeploy {
    /// @notice Deploy a new Bad Debt Manager proxy
    /// @param proxyAdmin The address of the proxy admin
    /// @param lendingPool The address of the lending pool
    /// @param owner The address of the owner
    /// @param bdmImplementation The address of the Bad Debt Manager implementation
    function deployBDM(address proxyAdmin, address lendingPool, address owner, address bdmImplementation)
        external
        returns (address)
    {
        // Deploy bad debt manager as a new proxy
        TransparentUpgradeableProxy badDebtManager = new TransparentUpgradeableProxy(
            bdmImplementation, proxyAdmin, abi.encodeCall(BadDebtManager.initialize, (lendingPool, owner))
        );
        return address(badDebtManager);
    }
}
