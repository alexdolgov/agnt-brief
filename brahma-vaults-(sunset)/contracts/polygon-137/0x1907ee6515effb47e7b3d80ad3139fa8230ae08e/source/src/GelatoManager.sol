// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "ops/integrations/OpsTaskCreator.sol";

contract GelatoManager is OpsTaskCreator {
    constructor(address _ops) OpsTaskCreator(_ops, address(this)) {}

    function init(bytes memory resolverCalldata)
        internal
        returns (bytes32 currentTask)
    {
        ModuleData memory moduleData = ModuleData({
            modules: new Module[](3),
            args: new bytes[](3)
        });

        moduleData.modules[0] = Module.RESOLVER;
        moduleData.modules[1] = Module.TIME;
        moduleData.modules[2] = Module.PROXY;

        moduleData.args[0] = _resolverModuleArg(
            address(this),
            resolverCalldata
        );
        moduleData.args[1] = _timeModuleArg(block.timestamp, 300);
        moduleData.args[2] = _proxyModuleArg();

        currentTask = _createTask(
            address(this), // _execAddress
            abi.encodeCall(this.doNothing, ()), // _execDataOrSelector
            moduleData, // _moduleData
            ETH // _feeToken
        );
    }

    function doNothing() public {
        bool damn;
        damn = true;
    }
}
