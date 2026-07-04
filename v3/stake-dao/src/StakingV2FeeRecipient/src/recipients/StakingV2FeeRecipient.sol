// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {Recipient} from "@lockers/src/Recipient.sol";

/// @title StakingV2FeeRecipient - Contract to receive side chain fees for StakingV2.
/// @notice This contract inherits from Recipient to manage fee collection and distribution
/// @dev Deploy using CREATE2 for deterministic addresses across chains
contract StakingV2FeeRecipient is Recipient {
    /// @notice Constructor initializes the Recipient with governance address
    /// @param _governance The address that will have governance rights
    constructor(address _governance) Recipient(_governance) {}
}