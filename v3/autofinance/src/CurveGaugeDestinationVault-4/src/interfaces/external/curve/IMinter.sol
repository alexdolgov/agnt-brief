// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

/// @notice Holds common functions between Minter.vy (mainnet) and ChildGaugeFactory.vy (other chains)
interface IMinter {
    /// @notice Mints CRV tokens owed to `msg.sender` for the specified gauge.
    /// @param gaugeAddr `LiquidityGauge` address to get mintable amount from
    function mint(
        address gaugeAddr
    ) external;
}
