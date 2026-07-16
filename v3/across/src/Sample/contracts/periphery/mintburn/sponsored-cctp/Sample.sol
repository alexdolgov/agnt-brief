//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import { HyperCoreLib } from "../../../libraries/HyperCoreLib.sol";

contract Sample {
    function transferERC20EVMToCore(
        address erc20EVMAddress,
        uint64 erc20CoreIndex,
        address to,
        uint256 amountEVM,
        int8 decimalDiff,
        uint32 destinationDex
    ) public {
        HyperCoreLib.transferERC20EVMToCore(
            erc20EVMAddress,
            erc20CoreIndex,
            to,
            amountEVM,
            decimalDiff,
            destinationDex
        );
    }
    function transferERC20EVMToSelfOnCore(
        address erc20EVMAddress,
        uint64 erc20CoreIndex,
        uint256 amountEVM,
        int8 decimalDiff,
        uint32 destinationDex
    ) public {
        HyperCoreLib.transferERC20EVMToSelfOnCore(
            erc20EVMAddress,
            erc20CoreIndex,
            amountEVM,
            decimalDiff,
            destinationDex
        );
    }
    function transferERC20CoreToCore(
        uint64 erc20CoreIndex,
        address to,
        uint64 amountCore,
        uint32 sourceDex,
        uint32 destinationDex
    ) public {
        HyperCoreLib.transferERC20CoreToCore(erc20CoreIndex, to, amountCore, sourceDex, destinationDex);
    }
}
