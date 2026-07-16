// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.29;

import {AmountConstraint, Operator} from "../types/SentryTypes.sol";

/// @title ParamValidator
/// @notice Library for validating calldata parameter constraints
library ParamValidator {
    error ParamConstraintViolation(uint8 paramIndex, uint256 actual, uint256 bound);
    error UnknownOperator(Operator op);

    /// @notice Extracts a uint256 parameter from calldata at the given index.
    /// @param calldata_ Full calldata including 4-byte selector
    /// @param paramIndex 0-based parameter index
    /// @return value The uint256 value at that position
    function extractParam(
        bytes calldata calldata_,
        uint8 paramIndex
    ) internal pure returns (uint256 value) {
        // offset = 4 + (paramIndex * 32)
        uint256 offset = 4 + uint256(paramIndex) * 32;
        require(calldata_.length >= 4 + (uint256(paramIndex) + 1) * 32, "calldata too short");
        assembly {
            value := calldataload(add(calldata_.offset, offset))
        }
    }

    /// @notice Validates a single amount constraint against an actual value.
    function validateConstraint(
        AmountConstraint calldata constraint,
        uint256 actual
    ) internal pure {
        Operator op = constraint.op;
        if (op == Operator.NONE) return;

        if (op == Operator.EQ) {
            if (actual != constraint.value) {
                revert ParamConstraintViolation(constraint.paramIndex, actual, constraint.value);
            }
        } else if (op == Operator.LTE) {
            if (actual > constraint.value) {
                revert ParamConstraintViolation(constraint.paramIndex, actual, constraint.value);
            }
        } else if (op == Operator.GTE) {
            if (actual < constraint.value) {
                revert ParamConstraintViolation(constraint.paramIndex, actual, constraint.value);
            }
        } else if (op == Operator.RANGE) {
            if (actual < constraint.minValue || actual > constraint.value) {
                revert ParamConstraintViolation(
                    constraint.paramIndex,
                    actual,
                    actual < constraint.minValue ? constraint.minValue : constraint.value
                );
            }
        } else {
            revert UnknownOperator(op);
        }
    }

    /// @notice Validates all amount constraints for an action.
    function validateAll(
        AmountConstraint[] calldata constraints,
        bytes calldata calldata_
    ) internal pure {
        for (uint256 i; i < constraints.length; ++i) {
            uint256 actual = extractParam(calldata_, constraints[i].paramIndex);
            validateConstraint(constraints[i], actual);
        }
    }
}
