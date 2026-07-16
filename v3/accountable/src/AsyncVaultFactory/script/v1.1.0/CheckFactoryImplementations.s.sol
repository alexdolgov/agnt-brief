// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script, console} from "forge-std/Script.sol";
import {DeployedContracts} from "./DeployedContracts.sol";
import "@credit-vaults-v1-1-0/factory/FixedTermFactory.sol";
import "@credit-vaults-v1-1-0/factory/OpenTermFactory.sol";
import "@credit-vaults-v1-1-0/factory/YieldStrategyFactory.sol";
import "@credit-vaults-v1-1-0/interfaces/IAccountableStrategy.sol";

contract CheckFactoryImplementations is Script {
    function run() external view {
        address fixedTermFactory = DeployedContracts.getFixedTermFactory(block.chainid);
        address openTermFactory = DeployedContracts.getOpenTermFactory(block.chainid);
        address yieldStrategyFactory = DeployedContracts.getYieldStrategyFactory(block.chainid);

        console.log("=== Factory Implementation Check ===");
        console.log("");

        // FixedTermFactory
        address fixedTermImpl = FixedTermFactory(fixedTermFactory).strategyImplementation();
        uint256 fixedTermVersion = IAccountableStrategy(fixedTermImpl).version();

        console.log("FixedTermFactory:", fixedTermFactory);
        console.log("  Implementation: %s", fixedTermImpl);
        console.log("  Version: %s", fixedTermVersion);
        console.log("");

        // OpenTermFactory
        address openTermImpl = OpenTermFactory(openTermFactory).strategyImplementation();
        uint256 openTermVersion = IAccountableStrategy(openTermImpl).version();

        console.log("OpenTermFactory:", openTermFactory);
        console.log("  Implementation: %s", openTermImpl);
        console.log("  Version: %s", openTermVersion);
        console.log("");

        // YieldStrategyFactory
        address yieldStrategyImpl = YieldStrategyFactory(yieldStrategyFactory).strategyImplementation();
        uint256 yieldStrategyVersion = IAccountableStrategy(yieldStrategyImpl).version();

        console.log("YieldStrategyFactory:", yieldStrategyFactory);
        console.log("  Implementation: %s", yieldStrategyImpl);
        console.log("  Version: %s", yieldStrategyVersion);
        console.log("");
    }
}
