// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;


/**
 * @title WithdrawalLogic
 * @author GoldLink
 *
 * @dev Logic for managing profit withdrawals.
 */
library WithdrawalLogic {
    struct WithdrawProfitParams {
        address market;
        uint256 amount;
        address recipient;
    }
}
