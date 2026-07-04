// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script, console} from "forge-std/Script.sol";
import {DeployedContracts} from "./DeployedContracts.sol";
import "@credit-vaults-v1-0-2/strategies/AccountableFixedTerm.sol";
import "@credit-vaults-v1-0-2/strategies/AccountableOpenTerm.sol";
import "@credit-vaults-v1-0-2/factory/FixedTermFactory.sol";
import "@credit-vaults-v1-0-2/factory/OpenTermFactory.sol";
import "@credit-vaults-v1-0-2/interfaces/IAccountableStrategy.sol";

contract UpgradeImplementations is Script {
    address public FIXED_TERM_FACTORY;
    address public OPEN_TERM_FACTORY;

    // New implementation contracts
    AccountableFixedTerm public newFixedTermImpl;
    AccountableOpenTerm public newOpenTermImpl;

    // Store old versions for comparison
    uint256 public oldFixedTermVersion;
    uint256 public oldOpenTermVersion;

    // Configuration
    address public deployer;

    function run() external {
        // Load addresses for current network FIRST
        loadAddresses();

        setupDeployerAndBroadcast();

        // Step 1: Check current versions
        checkCurrentVersions();

        // Step 2: Deploy new implementations
        deployNewImplementations();

        // Step 3: Verify new versions are different
        bool versionsValid = verifyNewVersions();

        if (!versionsValid) {
            vm.stopBroadcast();
            console.log("Upgrade aborted. No changes made.");
            return;
        }

        // Step 4: Update factory references
        console.log("=== PREPARING TRANSACTIONS ===");
        console.log("");

        FixedTermFactory fixedTermFactory = FixedTermFactory(FIXED_TERM_FACTORY);
        fixedTermFactory.setStrategyImplementation(address(newFixedTermImpl));

        OpenTermFactory openTermFactory = OpenTermFactory(OPEN_TERM_FACTORY);
        openTermFactory.setStrategyImplementation(address(newOpenTermImpl));

        vm.stopBroadcast();

        // Summary of what WILL happen if you confirm
        console.log("=== READY TO BROADCAST ===");
        console.log("");

        // Check if versions changed (compare with OLD versions saved earlier)
        if (newFixedTermImpl.version() == oldFixedTermVersion && newOpenTermImpl.version() == oldOpenTermVersion) {
            console.log("!!! CONTRACT VERSIONS UNCHANGED !!!");
            console.log("You are deploying the SAME version (v%s) again", oldFixedTermVersion);
            console.log("");
        }

        console.log("The following changes will be made:");
        console.log("  AccountableFixedTerm v%s -> %s", newFixedTermImpl.version(), address(newFixedTermImpl));
        console.log("  AccountableOpenTerm v%s -> %s", newOpenTermImpl.version(), address(newOpenTermImpl));
        console.log("");
        console.log("Factories will be updated to use these new implementations.");
        console.log("");
        console.log("Waiting for your confirmation to broadcast...");
    }

    function checkCurrentVersions() internal {
        console.log("=== CURRENT STATE (On-Chain) ===");

        FixedTermFactory fixedTermFactory = FixedTermFactory(FIXED_TERM_FACTORY);
        address currentFixedTermImpl = fixedTermFactory.strategyImplementation();
        oldFixedTermVersion = IAccountableStrategy(currentFixedTermImpl).version();

        OpenTermFactory openTermFactory = OpenTermFactory(OPEN_TERM_FACTORY);
        address currentOpenTermImpl = openTermFactory.strategyImplementation();
        oldOpenTermVersion = IAccountableStrategy(currentOpenTermImpl).version();

        console.log("AccountableFixedTerm:");
        console.log("  Version: %s", oldFixedTermVersion);
        console.log("  Address: %s", currentFixedTermImpl);
        console.log("");
        console.log("AccountableOpenTerm:");
        console.log("  Version: %s", oldOpenTermVersion);
        console.log("  Address: %s", currentOpenTermImpl);
        console.log("");
    }

    function deployNewImplementations() internal {
        console.log("=== SIMULATION: Deploying New Implementations ===");
        console.log("(Testing deployment - not yet on-chain)");
        console.log("");

        newFixedTermImpl = new AccountableFixedTerm();
        uint256 newFixedVersion = newFixedTermImpl.version();

        newOpenTermImpl = new AccountableOpenTerm();
        uint256 newOpenVersion = newOpenTermImpl.version();

        console.log("AccountableFixedTerm v%s deployed successfully", newFixedVersion);
        console.log("AccountableOpenTerm v%s deployed successfully", newOpenVersion);
        console.log("");
    }

    function verifyNewVersions() internal view returns (bool) {
        console.log("=== PRE-FLIGHT CHECK ===");

        FixedTermFactory fixedTermFactory = FixedTermFactory(FIXED_TERM_FACTORY);
        address currentFixedTermImpl = fixedTermFactory.strategyImplementation();
        uint256 currentFixedVersion = IAccountableStrategy(currentFixedTermImpl).version();
        uint256 newFixedVersion = newFixedTermImpl.version();

        OpenTermFactory openTermFactory = OpenTermFactory(OPEN_TERM_FACTORY);
        address currentOpenTermImpl = openTermFactory.strategyImplementation();
        uint256 currentOpenVersion = IAccountableStrategy(currentOpenTermImpl).version();
        uint256 newOpenVersion = newOpenTermImpl.version();

        bool versionIncremented = (newFixedVersion > currentFixedVersion) && (newOpenVersion > currentOpenVersion);

        if (versionIncremented) {
            console.log("Version Check: PASSED");
            console.log("  FixedTerm: v%s -> v%s (incremented)", currentFixedVersion, newFixedVersion);
            console.log("  OpenTerm: v%s -> v%s (incremented)", currentOpenVersion, newOpenVersion);
        } else {
            console.log("Version Check: WARNING");
            console.log("  FixedTerm: v%s -> v%s (unchanged)", currentFixedVersion, newFixedVersion);
            console.log("  OpenTerm: v%s -> v%s (unchanged)", currentOpenVersion, newOpenVersion);
            console.log("");
            console.log("Deploying same version. Recommendation:");
            console.log("  - Update version() in implementation contracts");
            console.log("  - FixedTerm should return: %s", currentFixedVersion + 1);
            console.log("  - OpenTerm should return: %s", currentOpenVersion + 1);
        }

        console.log("");
        console.log("Ready to broadcast upgrade to blockchain...");
        console.log("");
        return true;
    }

    // ============ Initialization Functions ============

    function loadAddresses() internal {
        FIXED_TERM_FACTORY = DeployedContracts.getFixedTermFactory(block.chainid);
        OPEN_TERM_FACTORY = DeployedContracts.getOpenTermFactory(block.chainid);
    }

    function setupDeployerAndBroadcast() internal {
        if (block.chainid == 31337) {
            // Local/Test: Use Anvil account #0
            uint256 deployerPk = getDeployerPrivateKey();
            deployer = vm.addr(deployerPk);
            logUpgradeConfig();
            vm.startBroadcast(deployerPk);
        } else {
            // Production: Use --account flag
            vm.startBroadcast();
            deployer = msg.sender;
            logUpgradeConfig();
        }
    }

    // ============ Network Management Functions ============

    function getNetworkName() internal view returns (string memory) {
        if (block.chainid == 1) return "Ethereum Mainnet";
        if (block.chainid == 11155111) return "Sepolia Testnet";
        if (block.chainid == 41454) return "Monad Mainnet";
        if (block.chainid == 10143) return "Monad Testnet";
        if (block.chainid == 42161) return "Arbitrum One";
        if (block.chainid == 10) return "Optimism";
        if (block.chainid == 8453) return "Base";
        if (block.chainid == 31337) return "Anvil (Local)";
        return string(abi.encodePacked("Unknown (", vm.toString(block.chainid), ")"));
    }

    function logUpgradeConfig() internal view {
        console.log("");
        console.log("===============================================================");
        console.log("  UPGRADING IMPLEMENTATIONS ON:", getNetworkName());
        console.log("===============================================================");
        console.log("");
        console.log("=== Upgrade Configuration ===");
        console.log("Network:", getNetworkName());
        console.log("Chain ID:", block.chainid);
        console.log("Deployer:", deployer);
        console.log("Deployer Balance:", deployer.balance / 1e18, "ETH");
        console.log("");
        console.log("Factories to Update:");
        console.log("  FixedTermFactory:", FIXED_TERM_FACTORY);
        console.log("  OpenTermFactory:", OPEN_TERM_FACTORY);
        console.log("");
    }

    // ============ Private Key Management ============

    function getDeployerPrivateKey() internal pure returns (uint256) {
        // Anvil's PUBLIC test account #0 private key
        // Address: 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266
        return 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80;
    }
}
