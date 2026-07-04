// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.24;

interface IRedeemOperator {
    function registerWithdrawal(address _user, uint256 _shares) external;
}
