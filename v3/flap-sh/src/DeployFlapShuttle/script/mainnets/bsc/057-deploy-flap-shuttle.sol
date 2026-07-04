// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

// forge script --sender $(cast wallet address --account deployer) --account deployer --rpc-url https://bsc-dataseed.bnbchain.org --broadcast script/mainnets/bsc/057-deploy-flap-shuttle.sol
// FOUNDRY_PROFILE=bsc forge v 0x09CD2C1393c12CDF08c19bCb3d68A3CeeFcb90bc --show-standard-json-input DeployFlapShuttle > ~/Downloads/x.json

import {Script, console2} from "forge-std/Script.sol";
import {FlapShuttle} from "src/tools/FlapShuttle.sol";

/**
 * @title DeployFlapShuttle
 * @notice Script to deploy the FlapShuttle contract on BSC Mainnet
 * @dev This contract provides a utility to batch eradicate multiple tokens from FlapBlackHole
 */
contract DeployFlapShuttle is Script {
    function run() external {
        vm.startBroadcast();

        // Deploy the FlapShuttle contract
        FlapShuttle shuttle = new FlapShuttle();

        console2.log("FlapShuttle deployed at:", address(shuttle));
        console2.log("FlapBlackHole address:", shuttle.FLAP_BLACK_HOLE());

        vm.stopBroadcast();
    }
}
