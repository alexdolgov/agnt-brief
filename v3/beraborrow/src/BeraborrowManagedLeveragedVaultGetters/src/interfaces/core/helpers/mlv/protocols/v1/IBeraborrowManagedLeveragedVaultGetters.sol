// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

interface IBeraborrowManagedLeveragedVaultGetters {
    function borrowerOperations() external view returns (address);
    function denManager() external view returns (address);
    function leverageRouter() external view returns (address);
    function deleverageRouter() external view returns (address);
}