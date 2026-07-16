// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

interface IFlash {
    function onFlash(bytes calldata data) external;
}

interface ILiquidationFlashCallback {
    function onLiquidationFlash(bytes calldata data) external;
}
