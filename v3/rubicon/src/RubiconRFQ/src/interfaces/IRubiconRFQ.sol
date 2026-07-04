// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.19;

import {IGladiusReactor} from "../interfaces/IGladiusReactor.sol";
import {SignedOrder} from "../lib/SignedOrderLib.sol";

/// @notice Response received from RFQ's server:
/// https://docs.rubicon.finance/rubiconRfq#4-getting-match-response
struct Response {
    SignedOrder[] orders;
    uint256[] quantities;
    uint256 deadline;
}

/// @notice Functions a tagger could call.
struct Permissions {
    bool execute;
    bool fill;
}

/// @notice A quote to fill with `Response`.
struct Quote {
    address sellToken;
    address buyToken;
    uint256 sellAmt;
    uint256 buyAmt;
}

/// @notice RFQ wraps entry-points of 'GladiusReactor' and 'IReactor'.
interface IRubiconRFQ is IGladiusReactor {
    function fill(Quote calldata q, Response calldata r, bytes calldata signature) external;
}
