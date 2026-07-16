// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { ERC20MetadataStorage } from "@solidstate/token/ERC20/metadata/ERC20MetadataStorage.sol";
import { IInitializer } from "@internal/eip2535/IInitializer.sol";

contract DYORInit is IInitializer {
    function init(string memory name, string memory symbol, uint8 decimals) external {
        ERC20MetadataStorage.Layout storage l = ERC20MetadataStorage.layout();
        l.name = name;
        l.symbol = symbol;
        l.decimals = decimals;
    }
}
