// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { Authorizable } from "@auth/Authorizable.sol";
import { Facet } from "@internal/eip2535/Facet.sol";
import { SolidStateERC20 } from "@solidstate/token/ERC20/SolidStateERC20.sol";

contract DYORFacet is Authorizable, Facet, SolidStateERC20 {
    function mint(uint256 amount, address to) external requiresAuthorization {
        _mint(to, amount);
    }

    function burn(uint256 amount, address from) external requiresAuthorization {
        _burn(from, amount);
    }
}
