// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.28;

import {Script} from "forge-std/src/Script.sol";
import {MockERC20} from "forge-std/src/mocks/MockERC20.sol";

contract DeployMockToken is Script {
    function run() external returns (address token) {
        //////////////////////////////////////////////////////
        // --- SOURCE CHAIN (MAINNET)
        //////////////////////////////////////////////////////
        // vm.createSelectFork("base");
        vm.startBroadcast();

        token = address(new ERC20Mock("Mock Token", "MOCK", 18));

        vm.stopBroadcast();
    }
}

contract ERC20Mock is MockERC20 {
    constructor(string memory name_, string memory symbol_, uint8 decimals_) {
        initialize(name_, symbol_, decimals_);
    }

    function mint(address to, uint256 amount) public virtual {
        _mint(to, amount);
    }

    function burn(address from, uint256 amount) public {
        _burn(from, amount);
    }
}
