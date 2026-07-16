// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity =0.7.6;

import {ISquadV3PoolManagerStates, ISquadV3PoolManagerActions} from './interfaces/ISquadV3PoolManager.sol';
import './interfaces/ISquadV3Pool.sol';
import '@openzeppelin/contracts/access/Ownable.sol';

contract SquadV3PoolManager is ISquadV3PoolManagerStates, ISquadV3PoolManagerActions, Ownable {
    event SetCustomFee(address pool, uint24 fee);
    event SetOperator(address operator);
    event ToggleCustomFee(address pool, bool enabled);
    mapping(address => uint24) public customFees;
    mapping(address => bool) public customFeeEnabled;
    address public operator;

    // max and min fee
    uint24 public constant MAX_FEE = 100000; // 10% fee
    uint24 public constant MIN_FEE = 1; // 0.0001% fee

    constructor(address _operator) Ownable() {
        operator = _operator;
    }

    modifier onlyOperator() {
        require(msg.sender == operator, 'only operator');
        _;
    }

    modifier feeValid(uint24 fee) {
        require(fee >= MIN_FEE && fee <= MAX_FEE, 'fee must be between 0.0001% and 10%');
        _;
    }

    function isCustomFee(address pool) public view returns (bool) {
        return customFeeEnabled[pool];
    }

    function setOperator(address _operator) public onlyOwner {
        operator = _operator;
        emit SetOperator(_operator);
    }

    function _setFee(address pool, uint24 fee) internal {
        customFees[pool] = fee;
        if (!customFeeEnabled[pool]) {
            customFeeEnabled[pool] = true;
            emit ToggleCustomFee(pool, true);
        }
        emit SetCustomFee(pool, fee);
    }

    function setFee(address pool, uint24 fee) public override onlyOperator feeValid(fee) {
        _setFee(pool, fee);
    }

    function setFeeBatch(address[] calldata pools, uint24 fee) public override onlyOperator feeValid(fee) {
        require(pools.length > 0, 'pools length must be greater than 0');
        for (uint256 i = 0; i < pools.length; i++) {
            _setFee(pools[i], fee);
        }
    }

    function toggleCustomFee(address pool) public override onlyOperator {
        customFeeEnabled[pool] = !customFeeEnabled[pool];
        emit ToggleCustomFee(pool, customFeeEnabled[pool]);
    }

    function getFee(address pool, uint24 defaultFee) public view override returns (uint24) {
        return isCustomFee(pool) ? customFees[pool] : defaultFee;
    }
}
