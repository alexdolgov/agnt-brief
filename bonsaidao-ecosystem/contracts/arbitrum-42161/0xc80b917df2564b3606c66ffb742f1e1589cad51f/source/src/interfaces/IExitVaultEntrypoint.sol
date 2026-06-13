// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.25;

interface IExitVaultEntrypoint {
    function withdrawEscrowImplementation() external view returns (address);
    function admin() external view returns (address);
}
