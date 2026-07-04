// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.19;

interface IBurnCallback {

    function handleBurn(uint256 amount) external;

}