/**
 * Created by Pragma Labs
 * SPDX-License-Identifier: BUSL-1.1
 */
pragma solidity ^0.8.27;

/**
 * @title Withdrawal Request Logic.
 * @author Pragma Labs
 */
library RequestLogic {
    /* //////////////////////////////////////////////////////////////
                                CONSTANTS
    ////////////////////////////////////////////////////////////// */

    // Mask to extract the rightmost 64 bits.
    uint64 internal constant MASK_64_BITS = 0xFFFFFFFFFFFFFFFF;
    // Mask to extract the rightmost 32 bits.
    uint32 internal constant MASK_32_BITS = 0xFFFFFFFF;

    // Offset of the withdrawal period in a withdrawal request.
    uint8 internal constant WITHDRAWAL_PERIOD_OFFSET = 32;
    // Offset of the max withdrawal penalty in a withdrawal request.
    uint8 internal constant MAX_WITHDRAWAL_PENALTY_OFFSET = 64;
    // Offset of the amount in a withdrawal request.
    uint8 internal constant AMOUNT_OFFSET = 128;

    /* //////////////////////////////////////////////////////////////
                                GETTERS
    ////////////////////////////////////////////////////////////// */

    /**
     * @notice Returns the initiation time of a withdrawal request.
     * @param request The packed withdrawal request.
     * @return initiationTime_ The timestamp at which the withdrawal request was initiated.
     */
    function initiationTime(bytes32 request) internal pure returns (uint256 initiationTime_) {
        assembly {
            // Use bitmask to extract the initiationTime from the rightmost 32 bits.
            initiationTime_ := and(request, MASK_32_BITS)
        }
    }

    /**
     * @notice Returns the withdrawalPeriod_ of a withdrawal request.
     * @param request The packed withdrawal request.
     * @return withdrawalPeriod_ The time after which there is no longer an early withdrawal penalty.
     */
    function withdrawalPeriod(bytes32 request) internal pure returns (uint256 withdrawalPeriod_) {
        assembly {
            // Shift request to the right by 32 bits.
            // Then use bitmask to extract the withdrawalPeriod from the rightmost 32 bits.
            withdrawalPeriod_ := and(shr(WITHDRAWAL_PERIOD_OFFSET, request), MASK_32_BITS)
        }
    }

    /**
     * @notice Returns the maxWithdrawalPenalty_ of a withdrawal request.
     * @param request The packed withdrawal request.
     * @return maxWithdrawalPenalty_ The maximum early withdrawal penalty, with 18 decimals precision.
     */
    function maxWithdrawalPenalty(bytes32 request) internal pure returns (uint256 maxWithdrawalPenalty_) {
        assembly {
            // Shift request to the right by 64 bits.
            // Then use bitmask to extract the maxWithdrawalPenalty from the rightmost 64 bits.
            maxWithdrawalPenalty_ := and(shr(MAX_WITHDRAWAL_PENALTY_OFFSET, request), MASK_64_BITS)
        }
    }

    /**
     * @notice Returns the amount_ of a withdrawal request.
     * @param request The packed withdrawal request.
     * @return amount_ The amount_ of staked assets to withdraw.
     */
    function amount(bytes32 request) internal pure returns (uint256 amount_) {
        assembly {
            // Shift request to the right by 128 bits to extract the amount from the rightmost 128 bits.
            amount_ := shr(AMOUNT_OFFSET, request)
        }
    }

    /* //////////////////////////////////////////////////////////////
                                SETTERS
    ////////////////////////////////////////////////////////////// */

    /**
     * @notice Returns a packed withdrawal request.
     * @param initiationTime_ The timestamp at which the withdrawal request was initiated.
     * @param withdrawalPeriod_ The time after which there is no longer an early withdrawal penalty.
     * @param maxWithdrawalPenalty_ The maximum early withdrawal penalty, with 18 decimals precision.
     * @param amount_ The amount_ of staked assets to withdraw.
     * @return request The packed withdrawal request.
     */
    function packRequest(
        uint32 initiationTime_,
        uint32 withdrawalPeriod_,
        uint64 maxWithdrawalPenalty_,
        uint128 amount_
    ) internal pure returns (bytes32 request) {
        assembly {
            // Shift the withdrawalPeriod to the left by 32 bits.
            // Then OR the result with the initiationTime.
            request := or(shl(WITHDRAWAL_PERIOD_OFFSET, withdrawalPeriod_), initiationTime_)

            // Shift the maxWithdrawalPenalty to the left by 64 bits.
            // Then OR the result with the request.
            request := or(shl(MAX_WITHDRAWAL_PENALTY_OFFSET, maxWithdrawalPenalty_), request)

            // Shift the amount to the left by 128 bits.
            // Then OR the result with the request.
            request := or(shl(AMOUNT_OFFSET, amount_), request)
        }
    }
}
