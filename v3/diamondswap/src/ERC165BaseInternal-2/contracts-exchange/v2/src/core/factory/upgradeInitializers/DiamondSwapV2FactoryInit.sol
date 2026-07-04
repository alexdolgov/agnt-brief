// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { ERC165Base, ERC165BaseStorage } from "@solidstate/introspection/ERC165/base/ERC165Base.sol";
import { IInitializer } from "@internal/eip2535/IInitializer.sol";

import { IDiamondSwapV2Factory } from "../interfaces/IDiamondSwapV2Factory.sol";

contract DiamondSwapV2FactoryInit is IInitializer, ERC165Base {
    using ERC165BaseStorage for ERC165BaseStorage.Layout;

    function init() external {
        _setSupportsInterface(type(IDiamondSwapV2Factory).interfaceId, true);
    }
}
