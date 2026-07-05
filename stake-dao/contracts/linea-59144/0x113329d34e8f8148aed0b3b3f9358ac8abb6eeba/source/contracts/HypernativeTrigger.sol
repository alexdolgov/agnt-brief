// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import {IAaveOracle} from "@zerolendxyz/core-v3/contracts/interfaces/IAaveOracle.sol";
import {IAccessControl} from "@zerolendxyz/core-v3/contracts/dependencies/openzeppelin/contracts/IAccessControl.sol";
import {IACLManager} from "@zerolendxyz/core-v3/contracts/interfaces/IACLManager.sol";
import {AccessControlEnumerable} from "@openzeppelin/contracts/access/AccessControlEnumerable.sol";
import {IPoolAddressesProvider} from "@zerolendxyz/core-v3/contracts/interfaces/IPoolAddressesProvider.sol";
import {IPool} from "@zerolendxyz/core-v3/contracts/interfaces/IPool.sol";
import {IERC20} from "@zerolendxyz/core-v3/contracts/dependencies/openzeppelin/contracts/IERC20.sol";
import {IPoolConfigurator} from "@zerolendxyz/core-v3/contracts/interfaces/IPoolConfigurator.sol";
import {ConfiguratorInputTypes} from "@zerolendxyz/core-v3/contracts/interfaces/IPoolConfigurator.sol";

contract HypernativeTrigger is AccessControlEnumerable {
    bytes32 public RISK_MANAGER = keccak256("RISK_MANAGER");
    IPoolConfigurator public config;

    constructor(IPoolAddressesProvider provider) {
        config = IPoolConfigurator(provider.getPoolConfigurator());
    }

    function freeze() external onlyRole(RISK_MANAGER) {
        config.setPoolPause(true);
    }
}
