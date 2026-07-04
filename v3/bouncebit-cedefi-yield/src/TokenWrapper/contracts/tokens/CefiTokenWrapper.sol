// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.23;

import {TokenWrapper} from "./TokenWrapper.sol";

contract CefiTokenWrapper is TokenWrapper {
    /// @notice Unwrap the wrapped token for the sender
    /// @param wrappedAmount The amount of wrapped token to unwrap
    function unwrap(uint256 wrappedAmount) external nonReentrant whenNotPaused {
        _unwrap(wrappedAmount);
    }

    /// @notice Claim the profit for the sender
    /// @param totalProfit The total profit to claim
    /// @param proof The merkle proof for the claim
    function claimProfit(uint256 totalProfit, bytes32[] memory proof) external nonReentrant whenNotPaused {
        _claimProfit(totalProfit, proof);
    }
}
