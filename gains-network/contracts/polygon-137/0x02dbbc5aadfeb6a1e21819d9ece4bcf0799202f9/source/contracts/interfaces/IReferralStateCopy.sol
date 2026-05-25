// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "../interfaces/prev/IGNSReferrals_Old.sol";
import "../interfaces/IGNSMultiCollatDiamond.sol";

interface IReferralStateCopy {
    struct ChainAddresses {
        IGNSReferrals_Old oldRef;
        IGNSMultiCollatDiamond diamond;
    }

    event ReferralStateCopied(address indexed trader, address indexed referrer);

    error Unauthorized();
    error ZeroAddress();
    error UnknownChain();
}
