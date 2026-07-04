// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {ICCIPBase} from "../interfaces/ICCIPBase.sol";

/**
 * @title CCIPBase Contract
 * @dev The base contract for all CCIP contracts.
 */
abstract contract CCIPBase is ICCIPBase {
    address public immutable override CCIP_ROUTER;

    /**
     * @dev Sets the immutable values for the {CCIP_ROUTER} address.
     */
    constructor(address ccipRouter) {
        if (ccipRouter == address(0)) revert CCIPBaseInvalidParameters();

        CCIP_ROUTER = ccipRouter;
    }
}
