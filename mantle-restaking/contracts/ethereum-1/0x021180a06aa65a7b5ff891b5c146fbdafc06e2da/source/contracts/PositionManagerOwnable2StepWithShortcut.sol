/* SPDX-License-Identifier: UNLICENSED */
pragma solidity ^0.8.0;

import './PositionManager.sol';
import '@itb/quant-common/contracts/solidity8/utils/Ownable2StepWithShortcut.sol';

contract PositionManagerOwnable2StepWithShortcut is PositionManager, Ownable2StepWithShortcut {
    constructor(address[] memory _executors, address payable _wnative, address _strategy_manager, address _delegation_manager, address _liquid_staking, address _underlying, address _delegate_to) PositionManager(_executors, _wnative, _strategy_manager, _delegation_manager, _liquid_staking, _underlying, _delegate_to) {}
}