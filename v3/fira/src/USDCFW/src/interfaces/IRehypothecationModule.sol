// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

interface IRehypothecationModule {
    function phiMax() external view returns (uint256);

    function phiMin() external view returns (uint256);

    function phiTarget() external view returns (uint256);

    function updateRehypothecationParams(uint256 _phiMax, uint256 _phiMin, uint256 _phiTarget) external;
}
