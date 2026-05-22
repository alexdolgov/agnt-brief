// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {FeeModuleV2} from "../ExchangeFee/FeeModuleV2.sol";
import {IConditionalTokens} from "./interfaces/IConditionalTokens.sol";

/// @title NegRiskFeeModuleV2
/// @notice A slightly modified version of FeeModule
/// @notice with added approvals for the NegRiskAdapter
contract NegRiskFeeModuleV2 is FeeModuleV2 {
    constructor(address _negRiskCtfExchange, address _negRiskAdapter, address _ctf) FeeModuleV2(_negRiskCtfExchange) {
        IConditionalTokens(_ctf).setApprovalForAll(_negRiskAdapter, true);
        IConditionalTokens(_ctf).setApprovalForAll(address(this), true);
    }
}
