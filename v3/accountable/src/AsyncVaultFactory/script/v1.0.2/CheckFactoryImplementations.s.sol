// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script, console} from "forge-std/Script.sol";
import {DeployedContracts} from "./DeployedContracts.sol";
import "@credit-vaults-v1-0-2/factory/FixedTermFactory.sol";
import "@credit-vaults-v1-0-2/factory/OpenTermFactory.sol";
import "@credit-vaults-v1-0-2/interfaces/IAccountableStrategy.sol";

contract CheckFactoryImplementations is Script {
    function run() external view {
        address fixedTermFactory = DeployedContracts.getFixedTermFactory(block.chainid);
        address openTermFactory = DeployedContracts.getOpenTermFactory(block.chainid);

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
    }
}
