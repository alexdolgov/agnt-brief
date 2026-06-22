// SPDX-License-Identifier: agpl-3.0
pragma solidity 0.7.4;

/**
 * @title Errors library
 * @author WOWSwap
 * @notice Defines the error messages emitted by the different contracts of the WOWSwap protocol
 * @dev Error messages prefix glossary:
 *  - VL = ValidationLogic
 *  - MATH = Math libraries
 *  - CT = Common errors between tokens
 *  - LP = LiquidityProvider token (pool tokens)
 *  - DT = DebtToken
 *  - P = Pool
 *  - RL = ReserveLogic
 *  - F = Factory
 */
library Errors {
    string public constant MATH_MULTIPLICATION_OVERFLOW = "MATH_MULTIPLICATION_OVERFLOW";
    string public constant MATH_ADDITION_OVERFLOW = "MATH_ADDITION_OVERFLOW";
    string public constant MATH_DIVISION_BY_ZERO = "MATH_DIVISION_BY_ZERO";
    string public constant RL_ALREADY_INITIALIZED = "Reserve is already initialized";
    string public constant RC_INVALID_LTV = "";
    string public constant RC_INVALID_LIQ_THRESHOLD = "";
    string public constant RC_INVALID_LIQ_BONUS = "";
    string public constant RC_INVALID_DECIMALS = "";
    string public constant RC_INVALID_RESERVE_FACTOR = "";
    string public constant RL_LIQUIDITY_RATE_OVERFLOW = "";
    string public constant RL_STABLE_BORROW_RATE_OVERFLOW = "";
    string public constant RL_VARIABLE_BORROW_RATE_OVERFLOW = "";

    string public constant F_ALREADY_REGISTERED_TRADABLE = "Tradable token is already registered";
    string public constant F_ALREADY_REGISTERED_LENDABLE = "Lendable token is already registered";
    string public constant F_NOT_TRADABLE_TOKEN = "Provided address is not tradable token";
    string public constant F_NOT_LENDABLE_TOKEN = "Provided address is not lendable token";
    string public constant F_NOT_REGISTERED_TOKEN = "Provided address is unknown token";
}
