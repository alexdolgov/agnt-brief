// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {BlastERC20RebasingYield} from "../Blast/BlastERC20RebasingYield.sol";
import {ConditionalTokens} from "./ConditionalTokens.sol";

contract BlastConditionalTokens is ConditionalTokens, BlastERC20RebasingYield {
    constructor(
        address addressFinder_,
        address owner_,
        string memory uri_
    ) ConditionalTokens(uri_) BlastERC20RebasingYield(addressFinder_) {
        _grantRole(DEFAULT_ADMIN_ROLE, owner_);
    }

    function claimYield(address wethReceiver, address usdbReceiver) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _claimERC20RebasingYield(wethReceiver, usdbReceiver);
    }
}
