/* SPDX-License-Identifier: UNLICENSED */
pragma solidity ^0.8.0;

import './PositionManagerNoVault.sol';
import '@itb/quant-common/contracts/solidity8/utils/Ownable2StepWithShortcut.sol';

contract PositionManagerNoVaultOwnable2StepWithShortcut is PositionManagerNoVault, Ownable2StepWithShortcut {
    constructor(address[] memory _executors, address payable _wnative, address _collateral, address _underlying) PositionManagerNoVault(_executors, _wnative, _collateral, _underlying) {}
}