// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.24;

interface IVault {
    function redeemFromOperator(uint256 _amount) external;
}
