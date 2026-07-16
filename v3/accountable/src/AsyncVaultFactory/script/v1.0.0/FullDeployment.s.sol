// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script, console} from "forge-std/Script.sol";
import "openzeppelin-foundry-upgrades/Upgrades.sol";
import "@credit-vaults-v1-0-0/modules/FeeManager.sol";
import "@credit-vaults-v1-0-0/modules/GlobalRegistry.sol";
import "@credit-vaults-v1-0-0/factory/AsyncVaultFactory.sol";
import "@credit-vaults-v1-0-0/factory/RewardsFactory.sol";
import "@credit-vaults-v1-0-0/factory/FixedTermFactory.sol";
import "@credit-vaults-v1-0-0/factory/OpenTermFactory.sol";
import "@credit-vaults-v1-0-0/strategies/AccountableFixedTerm.sol";
import "@credit-vaults-v1-0-0/strategies/AccountableOpenTerm.sol";

contract FullDeployment is Script {
    // Deployed contracts
    FeeManager public feeManager;
    GlobalRegistry public globals;
    AsyncVaultFactory public asyncVaultFactory;
    RewardsFactory public rewardsFactory;
    AccountableFixedTerm public fixedTermImpl;
    AccountableOpenTerm public openTermImpl;
    FixedTermFactory public fixedTermFactory;
    OpenTermFactory public openTermFactory;

    // Configuration addresses
    address public deployer;
    // Single multisig address for all protocol roles:
    // - FeeManager: owner, treasury
    // - GlobalRegistry: owner, treasury, securityAdmin, operationsAdmin
    // - FixedTermFactory: owner
    // - OpenTermFactory: owner
    address public accountableSafeWallet;

    function run() external {
        // Setup deployer and accountableSafeWallet based on network (Local/Production)
        setupDeployerAndBroadcast();

        // Step 1: Deploy FeeManager
        deployFeeManager();

        // Step 2: Deploy AsyncVaultFactory and RewardsFactory
        deployFactories();

        // Step 3: Deploy and configure GlobalRegistry
        deployGlobalRegistry();

        // Step 4: Deploy strategy implementations
        deployStrategyImplementations();

        // Step 5: Deploy and configure FixedTermFactory
        deployFixedTermFactory();

        // Step 6: Deploy and configure OpenTermFactory
        deployOpenTermFactory();

        // Step 7: Transfer ownership to multisig (if different from deployer)
        transferOwnership();

        vm.stopBroadcast();

        // Print deployment summary
        printDeploymentSummary();
    }

    function deployFeeManager() internal {
        console.log("=== Step 1: Deploying FeeManager ===");
        feeManager = new FeeManager(
            accountableSafeWallet,  // treasury - receives protocol fees
            deployer                // owner - deployer initially, transferred later
        );

        console.log("FeeManager deployed at:", address(feeManager));
        console.log("FeeManager owner:", feeManager.owner());
        console.log("");
    }

    function deployFactories() internal {
        console.log("=== Step 2: Deploying AsyncVaultFactory and RewardsFactory ===");
        asyncVaultFactory = new AsyncVaultFactory();
        console.log("AsyncVaultFactory deployed at:", address(asyncVaultFactory));

        rewardsFactory = new RewardsFactory();
        console.log("RewardsFactory deployed at:", address(rewardsFactory));
        console.log("");
    }

    function deployGlobalRegistry() internal {
        console.log("=== Step 3: Deploying and Configuring GlobalRegistry ===");

        address proxy;

        // For tests (Anvil/local), skip validation as tests don't produce full build-info files
        if (block.chainid == 31337) {
            Options memory opts;
            opts.unsafeSkipAllChecks = true;
            proxy = Upgrades.deployUUPSProxy(
                "src/modules/GlobalRegistry.sol:GlobalRegistry",
                abi.encodeCall(GlobalRegistry.initialize, (deployer)),
                opts
            );
        } else {
            // Production: use validation
            proxy = Upgrades.deployUUPSProxy(
                "src/modules/GlobalRegistry.sol:GlobalRegistry",
                abi.encodeCall(GlobalRegistry.initialize, (deployer))
            );
        }

        globals = GlobalRegistry(proxy);
        console.log("GlobalRegistry deployed at:", address(globals));

        // Wait for transaction confirmation before proceeding with configuration
        waitForBlockTime(3);

        // Configure GlobalRegistry with setters - one at a time with delays between transactions
        console.log("Setting Treasury...");
        globals.setTreasury(accountableSafeWallet);
        console.log("Treasury set to:", accountableSafeWallet);
        waitForBlockTime(2);

        console.log("Setting SecurityAdmin...");
        globals.setSecurityAdmin(accountableSafeWallet);
        console.log("SecurityAdmin set to:", accountableSafeWallet);
        waitForBlockTime(2);

        console.log("Setting OperationsAdmin...");
        globals.setOperationsAdmin(accountableSafeWallet);
        console.log("OperationsAdmin set to:", accountableSafeWallet);
        waitForBlockTime(2);

        console.log("Setting VaultFactory...");
        globals.setVaultFactory(address(asyncVaultFactory));
        console.log("VaultFactory set to:", address(asyncVaultFactory));
        waitForBlockTime(2);

        console.log("Setting RewardsFactory...");
        globals.setRewardsFactory(address(rewardsFactory));
        console.log("RewardsFactory set to:", address(rewardsFactory));
        console.log("");
    }

    function deployStrategyImplementations() internal {
        console.log("=== Step 4: Deploying Strategy Implementations ===");
        fixedTermImpl = new AccountableFixedTerm();
        console.log("AccountableFixedTerm implementation deployed at:", address(fixedTermImpl));

        openTermImpl = new AccountableOpenTerm();
        console.log("AccountableOpenTerm implementation deployed at:", address(openTermImpl));
        console.log("");
    }

    function deployFixedTermFactory() internal {
        console.log("=== Step 5: Deploying and Configuring FixedTermFactory ===");
        fixedTermFactory = new FixedTermFactory(
            address(globals),       // globals - global registry reference
            deployer                // owner - deployer initially, transferred later
        );
        console.log("FixedTermFactory deployed at:", address(fixedTermFactory));
        waitForBlockTime(3);

        console.log("Setting StrategyImplementation...");
        fixedTermFactory.setStrategyImplementation(address(fixedTermImpl));
        console.log("StrategyImplementation set to:", address(fixedTermImpl));
        waitForBlockTime(2);

        console.log("Setting FeeManager...");
        fixedTermFactory.setFeeManager(address(feeManager));
        console.log("FeeManager set to:", address(feeManager));
        console.log("");
    }

    function deployOpenTermFactory() internal {
        console.log("=== Step 6: Deploying and Configuring OpenTermFactory ===");
        openTermFactory = new OpenTermFactory(
            address(globals),       // globals - global registry reference
            deployer                // owner - deployer initially, transferred later
        );
        console.log("OpenTermFactory deployed at:", address(openTermFactory));
        waitForBlockTime(3);

        console.log("Setting StrategyImplementation...");
        openTermFactory.setStrategyImplementation(address(openTermImpl));
        console.log("StrategyImplementation set to:", address(openTermImpl));
        waitForBlockTime(2);

        console.log("Setting FeeManager...");
        openTermFactory.setFeeManager(address(feeManager));
        console.log("FeeManager set to:", address(feeManager));
        console.log("");
    }

    function transferOwnership() internal {
        // Only transfer if accountableSafeWallet is different from deployer
        if (accountableSafeWallet == deployer) {
            console.log("=== Step 7: Ownership Transfer ===");
            console.log("Deployer retains ownership (testnet deployment)");
            console.log("");
            return;
        }

        console.log("=== Step 7: Transferring Ownership to Accountable Safe Wallet ===");
        console.log("Transferring ownership from deployer to:", accountableSafeWallet);
        console.log("");

        // Transfer GlobalRegistry ownership
        console.log("Transferring GlobalRegistry ownership...");
        globals.transferOwnership(accountableSafeWallet);
        console.log("  > GlobalRegistry ownership transfer initiated");
        waitForBlockTime(2);

        // Transfer FeeManager ownership
        console.log("Transferring FeeManager ownership...");
        feeManager.transferOwnership(accountableSafeWallet);
        console.log("  > FeeManager ownership transfer initiated");
        waitForBlockTime(2);

        // Transfer FixedTermFactory ownership
        console.log("Transferring FixedTermFactory ownership...");
        fixedTermFactory.transferOwnership(accountableSafeWallet);
        console.log("  > FixedTermFactory ownership transfer initiated");
        waitForBlockTime(2);

        // Transfer OpenTermFactory ownership
        console.log("Transferring OpenTermFactory ownership...");
        openTermFactory.transferOwnership(accountableSafeWallet);
        console.log("  > OpenTermFactory ownership transfer initiated");

        console.log("");
        console.log("IMPORTANT: Multisig must accept ownership for all contracts");
        console.log("");
    }

    function printDeploymentSummary() internal view {
        console.log("=== Deployment Summary ===");
        console.log("Network:", getNetworkName());
        console.log("");
        console.log(">>> DEPLOYMENT BLOCK NUMBER:", block.number);
        console.log("");
        console.log("Contract Addresses:");
        console.log("  FeeManager:", address(feeManager));
        console.log("  AsyncVaultFactory:", address(asyncVaultFactory));
        console.log("  RewardsFactory:", address(rewardsFactory));
        console.log("  GlobalRegistry:", address(globals));
        console.log("  AccountableFixedTerm (impl):", address(fixedTermImpl));
        console.log("  AccountableOpenTerm (impl):", address(openTermImpl));
        console.log("  FixedTermFactory:", address(fixedTermFactory));
        console.log("  OpenTermFactory:", address(openTermFactory));
        console.log("");
        console.log("Configuration:");
        console.log("  Owner:", accountableSafeWallet);
        console.log("  Treasury:", accountableSafeWallet);
        console.log("  OperationalAdmin:", accountableSafeWallet);
        console.log("  SecurityAdmin:", accountableSafeWallet);
        console.log("");
        console.log("=== Deployment Complete ===");
    }

    // ============ Initialization Functions ============

    /// @notice Sets up deployer address and starts broadcasting
    /// @dev Local deployments (chainid 31337) use hardcoded Anvil private key.
    ///      Production deployments use --account flag from Makefile (secure cast wallet).
    function setupDeployerAndBroadcast() internal {
        if (block.chainid == 31337) {
            // Local/Test: Use Anvil account #0 with explicit private key
            uint256 deployerPk = getDeployerPrivateKey();
            deployer = vm.addr(deployerPk);
            accountableSafeWallet = getProtocolMultisig();
            logDeploymentConfig();
            vm.startBroadcast(deployerPk);
        } else {
            // Production: Use --account flag (encrypted cast wallet)
            vm.startBroadcast();
            deployer = msg.sender;
            accountableSafeWallet = getProtocolMultisig();
            logDeploymentConfig();
        }
    }

    // ============ Network Management Functions ============

    function getProtocolMultisig() internal view returns (address) {
        // Testnets - use mock multisig to test ownership transfer flow
        if (block.chainid == 10143) {
            // Monad Testnet - use account #2 as mock multisig
            return 0x3C44CdDdB6a900fa2b585dd299e03d12FA4293BC;
        }
        if (block.chainid == 5115) {
            // Citrea Testnet - use real multisig
            return 0x4B07AaA370189E5603DF56C84f59c5A59181BFB1;
        }
        if (block.chainid == 4114) {
            // Citrea Mainnet - require multisig from .env
            address multisig = vm.envAddress("PROTOCOL_MULTISIG_CITREA");
            require(multisig != address(0), "PROTOCOL_MULTISIG_CITREA not set in .env");
            return multisig;
        }
        if (block.chainid == 31337) {
            // Anvil - use account #1 as mock multisig
            return 0x70997970C51812dc3A010C7d01b50e0d17dc79C8;
        }

        // Networks with real Safe multisig: Require multisig address from .env (no fallback for security)
        if (block.chainid == 11155111) {
            // Sepolia Testnet
            address multisig = vm.envAddress("PROTOCOL_MULTISIG_SEPOLIA");
            require(multisig != address(0), "PROTOCOL_MULTISIG_SEPOLIA not set in .env");
            return multisig;
        }
        if (block.chainid == 143) {
            // Monad Mainnet
            address multisig = vm.envAddress("PROTOCOL_MULTISIG_MONAD");
            require(multisig != address(0), "PROTOCOL_MULTISIG_MONAD not set in .env");
            return multisig;
        }
        if (block.chainid == 42161) {
            // Arbitrum
            address multisig = vm.envAddress("PROTOCOL_MULTISIG_ARBITRUM");
            require(multisig != address(0), "PROTOCOL_MULTISIG_ARBITRUM not set in .env");
            return multisig;
        }
        if (block.chainid == 1) {
            // Ethereum
            address multisig = vm.envAddress("PROTOCOL_MULTISIG_ETHEREUM");
            require(multisig != address(0), "PROTOCOL_MULTISIG_ETHEREUM not set in .env");
            return multisig;
        }
        if (block.chainid == 60808) {
            // Bob
            address multisig = vm.envAddress("PROTOCOL_MULTISIG_BOB");
            require(multisig != address(0), "PROTOCOL_MULTISIG_BOB not set in .env");
            return multisig;
        }

        // Unknown network: use deployer with warning
        console.log("WARNING: Unknown network, using deployer as owner");
        return deployer;
    }

    function getNetworkName() internal view returns (string memory) {
        if (block.chainid == 1) return "Ethereum Mainnet";
        if (block.chainid == 11155111) return "Sepolia Testnet";
        if (block.chainid == 143) return "Monad Mainnet";
        if (block.chainid == 10143) return "Monad Testnet";
        if (block.chainid == 5115) return "Citrea Testnet";
        if (block.chainid == 4114) return "Citrea Mainnet";
        if (block.chainid == 42161) return "Arbitrum One";
        if (block.chainid == 10) return "Optimism";
        if (block.chainid == 8453) return "Base";
        if (block.chainid == 31337) return "Anvil (Local)";
        if (block.chainid == 60808) return "Bob";
        return string(abi.encodePacked("Unknown (", vm.toString(block.chainid), ")"));
    }

    /// @notice Gets the average block time in seconds for the current network
    /// @dev Returns 0 for networks that don't need delays (like local Anvil)
    /// @return Block time in seconds, or 0 to skip delays
    function getBlockTime() internal view returns (uint256) {
        if (block.chainid == 31337) return 0; // Anvil - no delays needed
        if (block.chainid == 143) return 1;    // Monad Mainnet - ~1 second blocks
        if (block.chainid == 10143) return 1;  // Monad Testnet - ~1 second blocks
        if (block.chainid == 5115) return 2;   // Citrea Testnet - ~2 second blocks
        if (block.chainid == 4114) return 2;   // Citrea Mainnet - ~2 second blocks
        if (block.chainid == 1) return 12;     // Ethereum Mainnet - ~12 second blocks
        if (block.chainid == 11155111) return 12; // Sepolia - ~12 second blocks
        if (block.chainid == 42161) return 0;  // Arbitrum - very fast, no delays needed
        if (block.chainid == 10) return 2;     // Optimism - ~2 second blocks
        if (block.chainid == 8453) return 2;   // Base - ~2 second blocks
        return 12; // Default to 12 seconds for unknown networks (conservative approach)
    }

    /// @notice Waits for the time equivalent to N blocks based on network block time
    /// @dev Uses time-based delays calculated from the network's average block time.
    ///      NOTE: This does NOT wait for actual block confirmations, only simulates the time
    ///      it would take for N blocks to be mined. This is a Foundry script limitation.
    ///      Delays are skipped on networks with 0 block time (like local Anvil).
    /// @param blocks Number of blocks worth of time to wait
    function waitForBlockTime(uint256 blocks) internal {
        uint256 blockTime = getBlockTime();

        if (blockTime == 0 || blocks == 0) {
            return; // Skip delays for fast networks or when blocks = 0
        }

        uint256 waitTimeSec = blocks * blockTime + 1; // +1 second buffer for RPC propagation
        vm.sleep(waitTimeSec * 1000); // Convert to milliseconds
    }

    function logDeploymentConfig() internal view {
        console.log("");
        console.log("===============================================================");
        console.log("  DEPLOYING TO:", getNetworkName());
        console.log("===============================================================");
        console.log("");
        console.log("=== Deployment Configuration ===");
        console.log("Network:", getNetworkName());
        console.log("Chain ID:", block.chainid);
        console.log("Deployer:", deployer);
        console.log("Deployer Balance:", deployer.balance / 1e18, "ETH");
        console.log("Owner:", accountableSafeWallet);
        console.log("Treasury:", accountableSafeWallet);
        console.log("OperationalAdmin:", accountableSafeWallet);
        console.log("SecurityAdmin:", accountableSafeWallet);
        console.log("");
    }

    // ============ Private Key Management ============

    /// @notice Gets the deployer private key for local/test deployments
    /// @dev Only used for chainid 31337 (Anvil). Production uses --account flag.
    /// @return Private key for Anvil account #0
    function getDeployerPrivateKey() internal pure returns (uint256) {
        // Anvil's PUBLIC test account #0 private ke
        // Address: 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266
        return 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80;
    }
}