// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

import "./StrategyEuler.sol";
import "../../Manager.sol";

contract EulerWithdrawAgent is Ownable, Constants {
    address public immutable strategyEuler;
    address public immutable manager;
    address public operator;

    address public constant EVault = 0xC41f2Ba7102e9F9F2d603eb951F955aE205ed272;

    error InsufficientBalance();

    modifier ownerOrOperator() {
        require(msg.sender == owner() || msg.sender == operator, "Not owner or operator");
        _;
    }

    constructor(address _owner, address _operator, address _strategyEuler, address _manager) Ownable(_owner) {
        strategyEuler = _strategyEuler;
        manager = _manager;
        operator = _operator;
    }

    function setOperator(address _newOperator) external onlyOwner {
        require(_newOperator != address(0), "Invalid operator");
        operator = _newOperator;
    }

    function withdrawIfPossible(uint256 _minAmt) external ownerOrOperator {
        // Steps: First check if the EVault have enough balance
        uint256 usd1Balance_ = IEVault(EVault).cash();
        // Then read our strategy balance
        uint256 shareBalance_ = IEVault(EVault).balanceOf(strategyEuler);
        uint256 assets_ = IEVault(EVault).convertToAssets(shareBalance_);
        if (assets_ < usd1Balance_) {
            usd1Balance_ = assets_;
        }
        if (usd1Balance_ < _minAmt) {
            revert InsufficientBalance();
        }
        // Call withdraw on StrategyEuler
        bytes memory withdrawData = abi.encodeWithSelector(
            StrategyEuler.withdraw.selector,
            usd1Balance_
        );
        bytes[] memory calls = new bytes[](1);
        calls[0] = withdrawData;
        address[] memory targets = new address[](1);
        targets[0] = strategyEuler;
        Manager(manager).multiCall(targets, calls);
    }
}