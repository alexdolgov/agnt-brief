// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

library HelixErrors {
    string public constant NOT_ALLOWED_ZERO_ADDRESS = "0";
    string public constant CALLER_NOT_MANAGER = "1"; // 'The caller of the function is not a manager'
    string public constant DEAL_IS_CLOSED = "2";
    string public constant UPDATED_DEAL_STATUS_IS_THE_SAME = "3";
    string public constant INVESTMENT_HAS_BEEN_FINALIZED_OR_CANCELLED = "4";
    string public constant INVALID_INVESTMENT_PLACEHOLDER = "5";
    string public constant EXPIRED_INVESTMENT_PLACEHOLDER = "6";
    string public constant INVALID_INVESTMENT_SIGNATURE = "7";
    string public constant ONLY_ALLOWED_TO_CALL_BY_NON_ADMIN = "8";
    string public constant REPAYMENT_ALREADY_BOOKED = "9";
    string public constant KYC_CONDITION_NOT_SATISFIED = "10";
    string public constant INVALID_REPAYMENT = "11";
}
