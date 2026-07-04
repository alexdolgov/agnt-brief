// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {AdvancedTransactionExecutor} from "./AdvancedTransactionExecutor.sol";
import {IERC7579Account} from "kernel/interfaces/IERC7579Account.sol";
import {ExecLib} from "kernel/utils/ExecLib.sol";
import {Execution} from "kernel/types/Structs.sol";

contract CallOrderExecutor is AdvancedTransactionExecutor {
    enum Operator {
        NONE,
        EQ,
        NE,
        GT,
        LT,
        GE,
        LE
    }

    // Condition to considers an execution as valid based on its return
    // E.g., The balance of a given token after the order execution must be `>= 1_000e18`
    struct ReturnCondition {
        // The operator (e.g., `==`, `>`, `<`, etc)
        Operator operator;
        // The value for comparison
        uint248 expected;
    }

    // The smart account executions and their validity conditions
    struct AdditionalData {
        // The array of ERC-7579 execution/call objects
        Execution[] executions;
        // The array of validity conditions
        // The `conditions` array may be shorter than the `executions` length if only an initial subset of execution should be validated
        ReturnCondition[] conditions;
    }

    event CallOrderFilled();

    error InvalidArrays();
    error ReturnConditionFailed(uint256 actual, Operator operator, uint256 expected);

    constructor(address owner_) AdvancedTransactionExecutor(owner_) {}

    /*//////////////////////////////////////////////////////////////////////////
                                     MODULE LOGIC
    //////////////////////////////////////////////////////////////////////////*/

    /// @inheritdoc AdvancedTransactionExecutor
    function _validateAdditionalData(bytes memory additionalData_) internal pure override {
        AdditionalData memory _data = abi.decode(additionalData_, (AdditionalData));

        if (_data.executions.length == 0) revert InvalidArrays();
        if (_data.conditions.length > _data.executions.length) revert InvalidArrays();
    }

    /// @inheritdoc AdvancedTransactionExecutor
    function _fill(Order memory order_, bytes memory /*callbackData_*/) internal override {
        AdditionalData memory _data = abi.decode(order_.additionalData, (AdditionalData));

        // Note: It'll revert if any execution fails
        bytes[] memory _returnData = IERC7579Account(order_.smartAccount).executeFromExecutor(
            ExecLib.encodeSimpleBatch(),
            ExecLib.encodeBatch(_data.executions)
        );

        uint256 _len = _data.conditions.length;

        for (uint256 i; i < _len; ++i) {
            bytes memory _return = _returnData[i];

            if (_return.length == 0) continue; // call without return value

            uint256 _actual = abi.decode(_return, (uint256));
            Operator _op = _data.conditions[i].operator;
            uint256 _expected = _data.conditions[i].expected;

            // if `none`, accepts any return data as valid
            if (_op == Operator.NONE) continue;
            else if (_op == Operator.EQ && _actual != _expected) revert ReturnConditionFailed(_actual, _op, _expected);
            else if (_op == Operator.NE && _actual == _expected) revert ReturnConditionFailed(_actual, _op, _expected);
            else if (_op == Operator.GT && _actual <= _expected) revert ReturnConditionFailed(_actual, _op, _expected);
            else if (_op == Operator.LT && _actual >= _expected) revert ReturnConditionFailed(_actual, _op, _expected);
            else if (_op == Operator.GE && _actual < _expected) revert ReturnConditionFailed(_actual, _op, _expected);
            else if (_op == Operator.LE && _actual > _expected) revert ReturnConditionFailed(_actual, _op, _expected);
        }

        emit CallOrderFilled();
    }

    /*//////////////////////////////////////////////////////////////////////////
                                     METADATA
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice The name of the module
    function name() external pure returns (string memory) {
        return "CallOrderExecutor";
    }

    /// @notice The version of the module
    function version() external pure returns (string memory) {
        return "0.0.1";
    }
}
