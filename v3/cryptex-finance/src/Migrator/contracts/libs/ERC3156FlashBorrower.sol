//SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.13;

import { IERC3156FlashBorrower, IERC3156FlashBorrower6 } from "../interfaces/IERC3156FlashBorrower.sol";

abstract contract ERC3156FlashBorrowerBase {
    bytes32 internal constant ERC3156_ONFLASHLOAN_HASH = keccak256("ERC3156FlashBorrower.onFlashLoan");
}

abstract contract ERC3156FlashBorrower is ERC3156FlashBorrowerBase, IERC3156FlashBorrower { }
abstract contract ERC3156FlashBorrower6 is ERC3156FlashBorrowerBase, IERC3156FlashBorrower6 { }