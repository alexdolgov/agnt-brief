// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.26;

interface ICompoundV3 {
    function borrowPerSecondInterestRateBase() external view returns (uint256);

    function supplyPerSecondInterestRateBase() external view returns (uint256);

    function borrowPerSecondInterestRateSlopeLow() external view returns (uint256);

    function supplyPerSecondInterestRateSlopeLow() external view returns (uint256);

    function borrowPerSecondInterestRateSlopeHigh() external view returns (uint256);

    function supplyPerSecondInterestRateSlopeHigh() external view returns (uint256);

    // 18 decimals
    function borrowKink() external view returns (uint256);

    function supplyKink() external view returns (uint256);

    function totalSupply() external view returns (uint256);

    function totalBorrow() external view returns (uint256);

    // 18 decimals
    function getUtilization() external view returns (uint256);
}
