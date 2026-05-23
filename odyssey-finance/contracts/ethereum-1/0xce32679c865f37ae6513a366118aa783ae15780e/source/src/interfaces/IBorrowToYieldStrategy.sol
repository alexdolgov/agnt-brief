// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {IBorrowStrategy} from "./IBorrowStrategy.sol";

interface IBorrowToYieldStrategy is IBorrowStrategy {
    /// @notice Deposit borrowed token to yield protocol
    /// @param params_ The feature's params
    /// The `params_` is protocol-related encoded params (See: `depositToYield` from the target strategy's implementation).
    function depositToYield(bytes memory params_) external;

    /// @notice Withdraw borrow token from yield protocol
    /// @param params_ The feature's params
    /// The `params_` is protocol-related encoded params (See: `withdrawFromYield` from the target strategy's implementation).
    function withdrawFromYield(bytes memory params_) external;
}
