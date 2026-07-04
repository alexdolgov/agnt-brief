// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script, console} from "forge-std/Script.sol";
import {DeployedContracts} from "./DeployedContracts.sol";
import "@credit-vaults-v1-0-0/modules/FeeManager.sol";
import "@credit-vaults-v1-0-0/modules/GlobalRegistry.sol";
import "@credit-vaults-v1-0-0/factory/FixedTermFactory.sol";
import "@credit-vaults-v1-0-0/factory/OpenTermFactory.sol";

contract VerifyOwnership is Script {
    function run() external view {
        console.log("=== Ownership Verification ===");
        console.log("");

        // Contracts with owners
        address feeManager = DeployedContracts.getFeeManager(block.chainid);
        console.log("FeeManager:", feeManager);
        console.log("  Owner:", FeeManager(feeManager).owner());
        console.log("");

        address globalRegistry = DeployedContracts.getGlobalRegistry(block.chainid);
        console.log("GlobalRegistry:", globalRegistry);
        console.log("  Owner:", GlobalRegistry(globalRegistry).owner());
        console.log("");

        address fixedTermFactory = DeployedContracts.getFixedTermFactory(block.chainid);
        console.log("FixedTermFactory:", fixedTermFactory);
        console.log("  Owner:", FixedTermFactory(fixedTermFactory).owner());
        address pendingFixed = FixedTermFactory(fixedTermFactory).pendingOwner();
        if (pendingFixed != address(0)) {
            console.log("  Pending Owner:", pendingFixed);
        }
        console.log("");

        address openTermFactory = DeployedContracts.getOpenTermFactory(block.chainid);
        console.log("OpenTermFactory:", openTermFactory);
        console.log("  Owner:", OpenTermFactory(openTermFactory).owner());
        address pendingOpen = OpenTermFactory(openTermFactory).pendingOwner();
        if (pendingOpen != address(0)) {
            console.log("  Pending Owner:", pendingOpen);
        }
        console.log("");

        // Stateless factories (no owners)
        console.log("AsyncVaultFactory:", DeployedContracts.getAsyncVaultFactory(block.chainid));
        console.log("  Type: Stateless Factory (No Owner)");
        console.log("");

        console.log("RewardsFactory:", DeployedContracts.getRewardsFactory(block.chainid));
        console.log("  Type: Stateless Factory (No Owner)");
        console.log("");

        // Implementation contracts (no owners)
        console.log("AccountableFixedTerm (impl):", DeployedContracts.getFixedTermImpl(block.chainid));
        console.log("  Type: Implementation Contract (No Owner)");
        console.log("");

        console.log("AccountableOpenTerm (impl):", DeployedContracts.getOpenTermImpl(block.chainid));
        console.log("  Type: Implementation Contract (No Owner)");
        console.log("");
    }
}
