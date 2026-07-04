// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.13;

/**
 * @title PoolDataTypes library
 * @dev Defines the structs related to the positions
 */
library PositionDataTypes {
    struct PositionDetails {
        uint256 depositedAmount;
        uint256 rate;
        uint256 depositBlockNumber;
        bool hasWithdrawPartially;
    }
}
