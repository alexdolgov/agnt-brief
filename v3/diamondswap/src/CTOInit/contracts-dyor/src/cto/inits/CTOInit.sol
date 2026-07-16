// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { IERC165 } from "@solidstate/interfaces/IERC165.sol";
import { ERC165Base } from "@solidstate/introspection/ERC165/base/ERC165Base.sol";

import { IInitializer } from "@internal/eip2535/IInitializer.sol";

import { IERC1271 } from "@signatures/interfaces/IERC1271.sol";
import { IEIP712 } from "@signatures/interfaces/IEIP712.sol";

contract CTOInit is IInitializer, ERC165Base {
    function init() external {
        _setSupportsInterface(type(IERC165).interfaceId, true);
        _setSupportsInterface(type(IEIP712).interfaceId, true);
        _setSupportsInterface(type(IERC1271).interfaceId, true);
    }
}
