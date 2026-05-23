// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

library Helpers {
    /// @notice Return total balance if `amount_` is `MAX_UINT256`
    /// @param token_ The token
    /// @param amount_ The amount to check
    /// @return `amount_` value or balance
    function amountOrAllBalanceIfMax(IERC20 token_, uint256 amount_) internal view returns (uint256) {
        return amount_ == type(uint256).max ? token_.balanceOf(address(this)) : amount_;
    }
}
