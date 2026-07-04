// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.28;

/// @title UniformBoostProvider
/// @notice Returns type(uint256).max for any adjusted_balance_of query, ensuring
///         all users receive uniform (1:1) working balances in LiquidityGaugeV4.
/// @dev Set as the delegation target on the veSDT Boost Proxy via set_delegation().
///      Gauge formula: lim = l*40/100 + L * voting_balance/voting_total * 60/100
///      When voting_balance >= voting_total, lim >= l, so min(l, lim) = l.
contract UniformBoostProvider {
    function adjusted_balance_of(address) external pure returns (uint256) {
        return type(uint256).max;
    }
}
