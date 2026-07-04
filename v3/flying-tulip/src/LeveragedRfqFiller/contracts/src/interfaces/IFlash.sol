// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

/// @notice Callback for LeverageRfqEngine flash fills.
interface IFlash {
    function onFlash(bytes calldata data) external;
}
