// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script, console} from "forge-std/Script.sol";
import {DeployedContracts} from "./DeployedContracts.sol";
import "@credit-vaults-v1-1-0/modules/FeeManager.sol";
import "@credit-vaults-v1-1-0/modules/GlobalRegistry.sol";
import "@credit-vaults-v1-1-0/factory/FixedTermFactory.sol";
import "@credit-vaults-v1-1-0/factory/OpenTermFactory.sol";
import "@credit-vaults-v1-1-0/factory/YieldStrategyFactory.sol";
import "@credit-vaults-v1-1-0/factory/DVNPublisherFactory.sol";

contract VerifyOwnership is Script {
    function run() external view {
        console.log("=== Ownership Verification ===");
        console.log("");

        // Contracts with owners
        address feeManager = DeployedContracts.getFeeManager(block.chainid);
        console.log("FeeManager:", feeManager);
        console.log("  Owner:", FeeManager(feeManager).owner());
        console.log("  Pending Owner:", FeeManager(feeManager).pendingOwner());
        console.log("");

        address globalRegistry = DeployedContracts.getGlobalRegistry(block.chainid);
        console.log("GlobalRegistry:", globalRegistry);
        console.log("  Owner:", GlobalRegistry(globalRegistry).owner());
        console.log("  Pending Owner:", GlobalRegistry(globalRegistry).pendingOwner());
        console.log("");

        address fixedTermFactory = DeployedContracts.getFixedTermFactory(block.chainid);
        console.log("FixedTermFactory:", fixedTermFactory);
        console.log("  Owner:", FixedTermFactory(fixedTermFactory).owner());
        console.log("  Pending Owner:", FixedTermFactory(fixedTermFactory).pendingOwner());
        console.log("");

        address openTermFactory = DeployedContracts.getOpenTermFactory(block.chainid);
        console.log("OpenTermFactory:", openTermFactory);
        console.log("  Owner:", OpenTermFactory(openTermFactory).owner());
        console.log("  Pending Owner:", OpenTermFactory(openTermFactory).pendingOwner());
        console.log("");

        address yieldStrategyFactory = DeployedContracts.getYieldStrategyFactory(block.chainid);
        console.log("YieldStrategyFactory:", yieldStrategyFactory);
        console.log("  Owner:", YieldStrategyFactory(yieldStrategyFactory).owner());
        console.log("  Pending Owner:", YieldStrategyFactory(yieldStrategyFactory).pendingOwner());
        console.log("");

        address dvnPublisherFactory = DeployedContracts.getDvnPublisherFactory(block.chainid);
        console.log("DvnPublisherFactory:", dvnPublisherFactory);
        console.log("  Owner:", DVNPublisherFactory(dvnPublisherFactory).owner());
        console.log("  Pending Owner:", DVNPublisherFactory(dvnPublisherFactory).pendingOwner());
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

        console.log("AccountableYield (impl):", DeployedContracts.getYieldStrategyImpl(block.chainid));
        console.log("  Type: Implementation Contract (No Owner)");
        console.log("");

        console.log("DVNPublisher (impl):", DeployedContracts.getDvnPublisherImpl(block.chainid));
        console.log("  Type: Implementation Contract (No Owner)");
        console.log("");
    }
}
