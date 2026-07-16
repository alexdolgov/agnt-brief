// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.10;

import { RequestStatus } from "./RequestStatus.sol";

/// @notice Represents a single async deposit request.
/// @param depositor The address that initiated the request and will receive shares.
/// @param amount The asset amount deposited.
/// @param minSharesOut Minimum shares the depositor will accept on fulfillment (slippage protection).
/// @param status Current lifecycle status of the request.
struct DepositRequest {
    address depositor;
    uint256 amount;
    uint256 minSharesOut;
    RequestStatus status;
}
