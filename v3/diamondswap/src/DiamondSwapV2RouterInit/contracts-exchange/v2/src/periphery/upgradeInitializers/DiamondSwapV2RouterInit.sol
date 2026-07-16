// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { ERC165Base, ERC165BaseStorage } from "@solidstate/introspection/ERC165/base/ERC165Base.sol";

import { IDiamondSwapV2Router02 } from "../interfaces/IDiamondSwapV2Router02.sol";
import { IDiamondSwapV2Router01 } from "../interfaces/IDiamondSwapV2Router01.sol";
import { IInitializer } from "@internal/eip2535/IInitializer.sol";

contract DiamondSwapV2RouterInit is IInitializer, ERC165Base {
    function init() external {
        initERC165();
    }

    using ERC165BaseStorage for ERC165BaseStorage.Layout;

    function initERC165() internal {
        _setSupportsInterface(type(IDiamondSwapV2Router01).interfaceId, true);
        _setSupportsInterface(type(IDiamondSwapV2Router02).interfaceId, true);
    }
}
