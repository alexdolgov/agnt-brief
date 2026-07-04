// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// forge script --sender $(cast wallet address --account deployer) --account deployer --rpc-url https://bsc-dataseed.bnbchain.org --broadcast script/mainnets/bsc/034-deploy-simple-consumer.sol
// forge v 0x09CD2C1393c12CDF08c19bCb3d68A3CeeFcb90bc --show-standard-json-input SimpleAIConsumer > ~/Downloads/x.json

import {Script, console2} from "forge-std/Script.sol";
import {SimpleAIConsumer} from "../../../src/plugins/AIProvider/SimpleAIConsumer.sol";
import {Deployed} from "./deployed.sol";

/// @title DeploySimpleConsumer
/// @notice Deploys the SimpleAIConsumer contract on BSC Mainnet.
contract DeploySimpleConsumer is Script, Deployed {
    function run() public {
        vm.startBroadcast();

        console2.log("Deployer:         ", msg.sender);
        console2.log("FlapAIProvider:   ", flapAIProvider);

        SimpleAIConsumer consumer = new SimpleAIConsumer();
        console2.log("SimpleAIConsumer: ", address(consumer));

        vm.stopBroadcast();
    }
}
