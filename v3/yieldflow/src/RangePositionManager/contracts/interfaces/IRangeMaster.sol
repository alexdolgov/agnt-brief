// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

// interface for the MasterChef
interface IRangeMaster {
    function getYieldManager() external view returns (address);
    function bonusToken() external view returns (address);
}
