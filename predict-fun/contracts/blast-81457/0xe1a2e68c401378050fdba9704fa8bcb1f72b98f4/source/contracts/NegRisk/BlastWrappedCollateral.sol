// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {BlastERC20RebasingYield} from "../Blast/BlastERC20RebasingYield.sol";
import {IAddressFinder} from "../Blast/interfaces/IAddressFinder.sol";
import {WrappedCollateral} from "./WrappedCollateral.sol";

contract BlastWrappedCollateral is WrappedCollateral, BlastERC20RebasingYield {
    IAddressFinder public immutable ADDRESS_FINDER;

    error NotYieldOperator();

    constructor(
        address _addressFinder,
        address _underlying,
        uint8 _decimals
    ) WrappedCollateral(_underlying, _decimals) BlastERC20RebasingYield(_addressFinder) {
        ADDRESS_FINDER = IAddressFinder(_addressFinder);
    }

    function claimYield(address wethReceiver, address usdbReceiver) external {
        if (ADDRESS_FINDER.getImplementationAddress("Governor") != msg.sender) {
            revert NotYieldOperator();
        }

        _claimERC20RebasingYield(wethReceiver, usdbReceiver);
    }
}
