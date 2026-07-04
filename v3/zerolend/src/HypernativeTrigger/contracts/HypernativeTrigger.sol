// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import {AccessControlEnumerable} from "@openzeppelin/contracts/access/AccessControlEnumerable.sol";
import {IPoolAddressesProvider} from "@zerolendxyz/core-v3/contracts/interfaces/IPoolAddressesProvider.sol";
import {IPoolConfigurator} from "@zerolendxyz/core-v3/contracts/interfaces/IPoolConfigurator.sol";

contract HypernativeTrigger is AccessControlEnumerable {
    bytes32 public RISK_MANAGER = keccak256("RISK_MANAGER");
    IPoolConfigurator public config;

    event FreezeTriggered();

    constructor(IPoolAddressesProvider provider) {
        config = IPoolConfigurator(provider.getPoolConfigurator());
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    function freeze() external onlyRole(RISK_MANAGER) {
        config.setPoolPause(true);
        emit FreezeTriggered();
    }
}
