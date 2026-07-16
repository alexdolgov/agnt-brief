// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.10;

import { RequestStatus } from "./RequestStatus.sol";

struct RedemptionRequest {
    // Address which will receive the assets upon request fulfillment.
    address redeemer;
    // Amount of shares to be redeemed. Held in this contract between initialization and cancelation or fulfillment.
    uint256 shares;
    // Minimum amount of assets out that must be delivered when this request is fulfilled.
    uint256 minAssetsOut;
    // Current status of the request.
    RequestStatus status;
}
