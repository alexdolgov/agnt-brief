// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

interface IAssetVault {
    function asset() external returns (address);
    function pauseDepositWithdraw() external;
    function unpauseDepositWithdraw() external;
}
