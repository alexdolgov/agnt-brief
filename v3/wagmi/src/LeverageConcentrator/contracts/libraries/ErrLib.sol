// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.23;

library ErrLib {
    enum ErrorCode {
        UNDERLYING_POOL_IS_NOT_CONFIGURED, // 0
        INVALID_OPERATION_LOGIC, // 1
        TOO_OLD_TRANSACTION, // 2
        INVALID_CALLER, // 3
        PRICE_DEVIATION_TOO_HIGH, // 4
        INVALID_INDEX_RANGE, // 5
        FORBIDDEN, // 6
        FAIL, // 7
        SWAP_TARGET_NOT_APPROVED, // 8
        PRICE_SLIPPAGE_CHECK, // 9
        OUTSIDE_TICK_RANGE, // 10
        INCORRECT_LENGTH, // 11
        ERC20_APPROVE_DID_NOT_SUCCEED, // 12
        MINT_ZERO_AMOUNTS // 13
    }

    error RevertErrorCode(ErrorCode code);

    /**
     * @dev Reverts with a custom error message based on the provided condition and error code.
     * @param condition The condition to check for reverting.
     * @param code The ErrorCode representing the specific error.
     */
    function revertError(bool condition, ErrorCode code) internal pure {
        if (condition) {
            revert RevertErrorCode(code);
        }
    }
}
