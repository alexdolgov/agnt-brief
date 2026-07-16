// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.26;

interface IVeFunderGaugeFactory {
    /// @notice create a ve funder gauge
    /// @param _receiver the address of the receiver
    /// @param _maxEmission the maximum emission
    /// @return newGauge is the address of the created gauge
    function createGauge(address _receiver, uint256 _maxEmission) external returns (address newGauge);
}
