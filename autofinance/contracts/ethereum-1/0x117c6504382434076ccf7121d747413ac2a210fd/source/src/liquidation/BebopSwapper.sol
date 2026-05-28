// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { BaseAsyncSwapper } from "src/liquidation/BaseAsyncSwapper.sol";

/**
 * @title BebopSwapper
 * @notice This contract is designed to be invoked via delegatecall. It does not implement its own reentrancy
 * protection.
 *
 * @dev WARNING: Any contract delegatecalling into this MUST implement its own ReentrancyGuard protection mechanism to
 * prevent potential reentrancy attacks.
 */
contract BebopSwapper is BaseAsyncSwapper {
    // solhint-disable-next-line var-name-mixedcase
    address public immutable APPROVE_TO;

    constructor(address aggregator, address approveTo) BaseAsyncSwapper(aggregator) {
        if (approveTo == address(0)) revert TokenAddressZero();
        APPROVE_TO = approveTo;
    }

    function _getApproveTo() internal virtual override returns (address) {
        return APPROVE_TO;
    }
}
