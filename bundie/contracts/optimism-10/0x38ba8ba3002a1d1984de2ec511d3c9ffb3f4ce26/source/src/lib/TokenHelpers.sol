// SPDX-License-Identifier: MIT
//
//        ██████╗ ██╗   ██╗███╗   ██╗██████╗ ██╗███████╗
//        ██╔══██╗██║   ██║████╗  ██║██╔══██╗██║██╔════╝
//        ██████╔╝██║   ██║██╔██╗ ██║██║  ██║██║█████╗  
//        ██╔══██╗██║   ██║██║╚██╗██║██║  ██║██║██╔══╝  
//        ██████╔╝╚██████╔╝██║ ╚████║██████╔╝██║███████╗
//        ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝╚═════╝ ╚═╝╚══════╝
//
//        Cross-Chain Yield Aggregation Protocol
//
pragma solidity 0.8.34;

import {IERC20} from "lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import {Errors} from "./Errors.sol";

/// @title TokenHelpers
/// @author Bundie Team
/// @notice Token transfer helpers with fee-on-transfer support
/// @dev Some ERC20 tokens may:
///      - charge transfer fees (fee-on-transfer tokens like PAXG, USDT on some chains)
///      - have non-standard return values (old USDT doesn't return bool)
///      - implement rebasing (stETH, aTokens)
///      Using balance deltas provides a reliable "actual received" value regardless of token behavior.
///
/// ## Why balance-delta pattern?
/// If you transfer 100 tokens with a 1% fee:
/// - `amount` parameter = 100
/// - Actual received = 99
/// Without balance-delta, you'd assume 100 arrived but only 99 did.
///
/// ## Usage
/// ```solidity
/// uint256 actualAmount = token.safeTransferFromWithBalanceCheck(from, to, requestedAmount);
/// // actualAmount is guaranteed to be what `to` actually received
/// ```
library TokenHelpers {
    using SafeERC20 for IERC20;

    /// @notice Transfer tokens and return actual amount received
    /// @dev Computes `actualAmount` as the destination balance delta. This supports fee-on-transfer tokens.
    ///      Uses SafeERC20.safeTransferFrom which handles non-standard tokens (no return value, etc.).
    ///      The balance-delta pattern is the only reliable way to know what was actually received.
    /// @param token ERC20 token to transfer
    /// @param from Sender address (must have approved the caller for at least `requestedAmount`)
    /// @param to Recipient address (will receive `actualAmount` which may be < `requestedAmount`)
    /// @param requestedAmount Amount requested to transfer (may not equal `actualAmount` for fee-on-transfer)
    /// @return actualAmount Amount actually received by `to` (verified via balance delta)
    function safeTransferFromWithBalanceCheck(IERC20 token, address from, address to, uint256 requestedAmount)
        internal
        returns (uint256 actualAmount)
    {
        // Step 1: Snapshot the recipient's balance BEFORE the transfer
        // This is our baseline for calculating what was actually received
        uint256 balanceBefore = token.balanceOf(to);

        // Step 2: Execute the transfer using SafeERC20
        // SafeERC20 handles tokens that:
        // - Don't return a value (old USDT)
        // - Return false on failure instead of reverting
        token.safeTransferFrom(from, to, requestedAmount);

        // Step 3: Snapshot the recipient's balance AFTER the transfer
        uint256 balanceAfter = token.balanceOf(to);

        // Step 4: Calculate the actual amount received via balance delta
        // For fee-on-transfer tokens: actualAmount < requestedAmount
        // For normal tokens: actualAmount == requestedAmount
        // Underflow is impossible in Solidity 0.8+ unless token is malicious
        // (balanceAfter must be >= balanceBefore for a standard transfer into `to`)
        actualAmount = balanceAfter - balanceBefore;

        // Step 5: Sanity check - we must have received something
        // Zero received means the transfer effectively failed
        require(actualAmount > 0, Errors.NoFundsReceived());

        // Return the actual amount received (not the requested amount)
        return actualAmount;
    }
}
