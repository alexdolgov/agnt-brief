// SPDX-License-Identifier: MIT
pragma solidity <0.9.0;

import { IFees } from "../interfaces/IFees.sol";

abstract contract Fees is IFees {
    /// @notice Maximum fee rate that can be signed into an Order
    uint256 internal constant MAX_FEE_RATE_BIPS = 1000; // 1000 bips or 10%

    address public override treasury;

    /// @notice Returns the maximum fee rate for an order
    function getMaxFeeRate() public pure override returns (uint256) {
        return MAX_FEE_RATE_BIPS;
    }

    function _setTreasury(address _treasury) internal {
        treasury = _treasury;
    }
}
