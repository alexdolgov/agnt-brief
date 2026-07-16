// SPDX-License-Identifier: SYMM-Core-Business-Source-License-1.1
// This contract is licensed under the SYMM Core Business Source License 1.1
// Copyright (c) 2025 Symmetry Labs AG
// For more information, see https://docs.symm.io/legal-disclaimer/license

pragma solidity >=0.8.19;

/**
 * @title  ISwapper
 * @notice Standard interface for swap adapters that convert between ERC-20 tokens
 *         and/or the native coin of the chain.
 *
 * @dev    Key Features
 * ──────────────────────────────────────────────────────────────────────────────
 * • Provides a single `execute` entry-point that implementers wire to any DEX,
 *   aggregator, or custom router by passing arbitrary calldata.
 * • Emits canonical events (`Swapped`, `TokensWithdrawn`, `NativeWithdrawn`,
 *   `ConfigUpdated`) to simplify indexing and analytics across multiple chains.
 * • Reverts with granular custom errors for gas-efficient debugging and precise
 *   failure handling in higher-level contracts.
 *
 * Integration Points
 * ──────────────────────────────────────────────────────────────────────────────
 * 1.  Liquidity Routers — Pass router-specific calldata in `_data`.
 * 2.  Access Control  — Optionally gate administrative functions using `Ownable`
 *     or role-based patterns when extending this interface.
 * 3.  Aggregators     — Off-chain services can listen for `ConfigUpdated` and
 *     `Swapped` to surface real-time swap metrics.
 */
interface ISwapper {
	/* ─────────────────────────────── Errors ─────────────────────────────── */

	/// @notice `msg.value` must be zero for ERC-20-to-ERC-20 swaps.
	error UnexpectedValue();

	/// @notice For native swaps, `msg.value` must equal `amountIn`.
	error InvalidTokens();

	/// @notice Both token addresses cannot simultaneously be the zero address.
	error InsufficientValue();

	/// @notice Safe-transfer of ERC-20 tokens failed.
	error FailedTransfer();

	/// @notice A zero address was supplied where a valid address is required.
	error ZeroAddress();

	/// @notice Recipient address provided is not valid.
	error InvalidRecipient();

	/// @notice Output amount received is less than user-supplied minimum.
	error InvalidAmountOut();

	/// @notice Low-level swap call failed; reverts with returned data.
	error SwapFailed(bytes returnedData);

	/* ─────────────────────────────── Events ─────────────────────────────── */

	/**
	 * @notice Emitted after a successful swap.
	 * @param  inputTokenAddress  Address of the input token.
	 * @param  outputTokenAddress Address of the output token.
	 * @param  amountIn           Amount of input tokens/coins swapped.
	 * @param  amountOut          Amount of output tokens/coins received.
	 */
	event Swapped(address indexed inputTokenAddress, address indexed outputTokenAddress, uint256 amountIn, uint256 amountOut);

	/**
	 * @notice Emitted when the admin withdraws stranded ERC-20 tokens.
	 * @param  token   Address of the token withdrawn.
	 * @param  to      Recipient that receives the tokens.
	 * @param  amount  Amount withdrawn.
	 */
	event TokensWithdrawn(address indexed token, address indexed to, uint256 amount);

	/**
	 * @notice Emitted when the underlying DEX/aggregator router is updated.
	 * @param  router  Address of the new router.
	 */
	event ConfigUpdated(address indexed router);

	/**
	 * @notice Emitted when the admin withdraws native coins.
	 * @param  recipient  Address receiving the withdrawn coins.
	 * @param  amount     Amount of coins withdrawn.
	 */
	event NativeWithdrawn(address indexed recipient, uint256 amount);

	/* ──────────────────────── Swap-Execution Function ──────────────────────── */

	/**
	 * @notice Executes a token or native-coin swap.
	 * @dev    Implementers MUST:
	 *         - Validate token addresses and amounts.
	 *         - Transfer `amountIn` from the caller (for ERC-20 swaps) or rely
	 *           on `msg.value` for native swaps.
	 *         - Perform the low-level call to the configured router.
	 *         - Revert with {SwapFailed} on failure.
	 *         - Emit {Swapped} with the actual in/out amounts on success.
	 * @param  _data               Router-specific calldata to perform the swap.
	 * @param  inputTokenAddress   Address of the token being sold
	 *                             (use address(0) for native coin).
	 * @param  outputTokenAddress  Address of the token being bought
	 *                             (use address(0) for native coin).
	 *
	 * Requirements
	 * ──────────────────────────────────────────────────────────────────────────
	 * • If both token addresses are non-zero, `msg.value` MUST be zero.
	 * • If either token address is zero, the other MUST be non-zero.
	 * • Reverts with {InvalidAmountOut} if router returns less than expected.
	 */
	function execute(bytes calldata _data, address inputTokenAddress, address outputTokenAddress) external payable;
}
