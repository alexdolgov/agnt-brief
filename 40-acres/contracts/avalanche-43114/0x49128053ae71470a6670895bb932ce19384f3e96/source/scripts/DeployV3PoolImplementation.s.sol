// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {console} from "forge-std/console.sol";
import {Script} from "forge-std/Script.sol";
import {RamsesV3Pool} from "contracts/CL/core/RamsesV3Pool.sol";
import {IRamsesV3PoolDeployer} from "contracts/CL/core/interfaces/IRamsesV3PoolDeployer.sol";

/// @notice Mock deployer to provide parameters for RamsesV3Pool constructor
contract MockPoolDeployer is IRamsesV3PoolDeployer {
    address public immutable RamsesV3Factory;
    
    struct Parameters {
        address factory;
        address token0;
        address token1;
        uint24 fee;
        int24 tickSpacing;
    }
    
    Parameters public parameters;
    
    constructor(address _factory) {
        RamsesV3Factory = _factory;
    }
    
    function setParameters(address _factory, address _token0, address _token1, uint24 _fee, int24 _tickSpacing) external {
        parameters = Parameters({
            factory: _factory,
            token0: _token0,
            token1: _token1,
            fee: _fee,
            tickSpacing: _tickSpacing
        });
    }
    
    function deploy(address, address, int24) external pure returns (address) {
        revert("Not implemented");
    }
    
    function deployPool() external returns (address pool) {
        pool = address(new RamsesV3Pool());
        delete parameters;
        return pool;
    }
}

/// @notice This script deploys a raw RamsesV3Pool implementation contract
/// @dev This is useful for getting the implementation verified on Etherscan
/// @dev The pool is deployed with library dependencies properly linked
contract DeployV3PoolImplementation is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        
        // Use dummy addresses for the pool parameters
        address FACTORY = 0xAE6E5c62328ade73ceefD42228528b70c8157D0d; // Avalanche V3 Factory
        address TOKEN0 = 0xB31f66AA3C1e785363F0875A1B74E27b85FD66c7; // WAVAX
        address TOKEN1 = 0xB8CE59FC3717ada4C02eaDF9682A9e934F625ebb; // USDT0
        uint24 FEE = 500; // 0.05%
        int24 TICK_SPACING = 10;
        
        vm.startBroadcast(deployerPrivateKey);
        
        // Note: Libraries (Oracle, Position, ProtocolActions) are automatically
        // deployed and linked by Foundry when we deploy RamsesV3Pool
        console.log("========================================");
        console.log("Libraries will be auto-deployed and linked by Foundry");
        console.log("========================================");
        
        // Deploy mock deployer
        console.log("\n========================================");
        console.log("Deploying MockPoolDeployer...");
        console.log("========================================");
        MockPoolDeployer mockDeployer = new MockPoolDeployer(FACTORY);
        console.log("MockPoolDeployer deployed at:", address(mockDeployer));
        
        // Set parameters
        mockDeployer.setParameters(FACTORY, TOKEN0, TOKEN1, FEE, TICK_SPACING);
        
        // Deploy RamsesV3Pool implementation through mock deployer
        console.log("\n========================================");
        console.log("Deploying RamsesV3Pool implementation...");
        console.log("========================================");
        address poolAddress = mockDeployer.deployPool();
        RamsesV3Pool pool = RamsesV3Pool(poolAddress);
        console.log("RamsesV3Pool deployed at:", address(pool));
        
        console.log("\n========================================");
        console.log("Pool Details:");
        console.log("========================================");
        console.log("Factory:", pool.factory());
        console.log("Token0:", pool.token0());
        console.log("Token1:", pool.token1());
        console.log("Tick Spacing:", uint256(uint24(pool.tickSpacing())));
        console.log("Max Liquidity Per Tick:", pool.maxLiquidityPerTick());
        
        console.log("\n========================================");
        console.log("Deployment Complete!");
        console.log("========================================");
        console.log("Pool implementation verified at:", address(pool));
        console.log("This pool can now be used as a reference for verification");
        
        vm.stopBroadcast();
    }
}

