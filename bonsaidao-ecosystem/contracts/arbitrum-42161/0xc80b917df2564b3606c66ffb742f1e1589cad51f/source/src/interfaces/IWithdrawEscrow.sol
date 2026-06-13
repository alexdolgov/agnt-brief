// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.25;

interface IWithdrawEscrow {
    function initialize(address _gmxRewardRouter, address _vaultOwner) external;
    function acceptAccountTransfer(uint256 _ownerGmx, uint256 _ownerGlp) external;
    function signalTransfer(address _receiver) external;
}
