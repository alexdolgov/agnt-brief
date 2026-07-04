// SPDX-License-Identifier: SYMM-Core-Business-Source-License-1.1
// This contract is licensed under the SYMM Core Business Source License 1.1
// Copyright (c) 2025 Symmetry Labs AG
// For more information, see https://docs.symm.io/legal-disclaimer/license

pragma solidity >=0.8.19;

import { Address } from "@openzeppelin/contracts/utils/Address.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { Pausable } from "@openzeppelin/contracts/security/Pausable.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import { AccessControlEnumerable } from "@openzeppelin/contracts/access/AccessControlEnumerable.sol";

import { ISwapper } from "../interfaces/ISwapper.sol";

/**
 * @title BaseSwapper
 * @notice Generic, router-agnostic ERC-20 swap adapter used across the SYMM stack.
 * @dev
 * - Relies on an externally configured router address (see {setConfig}).
 * - Approves the router for the adapter’s CURRENT input token balance and invokes a low-level call.
 * - After the call, refunds the adapter’s entire balances of both input and output tokens to the caller.
 * - This implementation does NOT pull tokens from the caller; tokens must already be held by this contract.
 *
 * SECURITY NOTES
 * - The configured `router` MUST be trusted and audited. Arbitrary execution is possible via `BaseReq.transactionData`.
 * - This contract does not enforce a role check on {execute}; upstream orchestrators (e.g., SwapEngine or per-account vaults)
 *   are expected to gate who may call into this adapter.
 * - Critical paths use {Pausable} and {ReentrancyGuard}.
 *
 * INTEGRATION
 * - Deploy one adapter per router implementation (e.g., 0x, 1inch, UniV3 router wrapper) and manage access at the caller.
 */
contract BaseSwapper is AccessControlEnumerable, Pausable, ReentrancyGuard, ISwapper {
	using SafeERC20 for IERC20;

	/* ──────────────────────────────── Roles ────────────────────────────────── */
	/// @notice Allowed to pause the contract
	bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
	/// @notice Allowed to unpause the contract
	bytes32 public constant UNPAUSER_ROLE = keccak256("UNPAUSER_ROLE");

	/* ────────────────────────── Storage Variables ───────────────────────────── */
	/// @notice Global swapper configuration
	BaseConfig public config;

	/* ────────────────────────────── Structs ─────────────────────────────────── */
	struct BaseConfig {
		/// @notice Address of the DEX/router contract to call
		address router;
	}

	struct BaseReq {
		/// @notice ABI-encoded calldata for the router low-level call
		bytes transactionData;
	}

	/* ───────────────────────────── Initialization ───────────────────────────── */
	/**
	 * @param _admin Address that receives DEFAULT_ADMIN_ROLE (can grant/revoke roles, set config, sweep)
	 */
	constructor(address _admin) {
		_grantRole(DEFAULT_ADMIN_ROLE, _admin);
	}

	/* ───────────────────────── Feature: Swap Execution ──────────────────────── */
	/**
	 * @notice Execute a token swap using the configured router.
	 * @param _data ABI-encoded {BaseReq} containing the router call data.
	 * @param inputTokenAddress ERC-20 token the adapter already holds and will approve to the router.
	 * @param outputTokenAddress ERC-20 token expected to be received from the router.
	 * @param swapAccount Unused in this base adapter (present to satisfy the {ISwapper} interface).
	 * @dev Steps:
	 *  1) Decode `_data` → `BaseReq`.
	 *  2) Read this contract’s current `inputToken` balance and increase router allowance by that amount.
	 *  3) Perform a low-level call to `config.router` with the provided `transactionData`.
	 *  4) On success, reset router allowance to zero.
	 *  5) Refund the ENTIRE remaining balances of both `inputToken` and `outputToken` from this contract to `msg.sender`.
	 *
	 * IMPORTANT
	 * - This function does NOT transfer tokens in from the caller. The caller must have funded this adapter beforehand.
	 * - Any leftover/unspent input is also returned to `msg.sender`.
	 * - No role restriction is enforced here; upstream callers should enforce access control.
	 */
	function execute(
		bytes calldata _data,
		address inputTokenAddress,
		address outputTokenAddress,
		address swapAccount
	) external payable whenNotPaused nonReentrant {
		BaseReq memory req = abi.decode(_data, (BaseReq));

		IERC20 inputToken = IERC20(inputTokenAddress);
		IERC20 outputToken = IERC20(outputTokenAddress);

		// ──────────────────── Approve router for current input balance ────────────────────
		uint256 currentBalance = inputToken.balanceOf(address(this));
		inputToken.safeIncreaseAllowance(config.router, currentBalance);

		// ─────────────────────────── Router call ─────────────────────────────
		(bool success, bytes memory result) = config.router.call(req.transactionData);
		if (!success) revert SwapFailed(result);

		// ──────────────────── Reset allowance & refund balances ─────────────────────
		inputToken.safeApprove(config.router, 0);

		uint256 amountIn = inputToken.balanceOf(address(this)); // any leftover input after router call
		uint256 amountOut = outputToken.balanceOf(address(this)); // output produced by the router call

		inputToken.safeTransfer(swapAccount, amountIn);
		outputToken.safeTransfer(swapAccount, amountOut);
	}

	/* ──────────────────────────── Internal Helpers ──────────────────────────── */
	/**
	 * @dev Validate configuration values.
	 * @param _config Configuration to check
	 */
	function _checkConfig(BaseConfig memory _config) internal pure {
		if (_config.router == address(0)) revert ZeroAddress();
	}

	/* ──────────────────────────── Admin Functions ───────────────────────────── */
	/**
	 * @notice Update the global swapper configuration.
	 * @param _config New configuration struct
	 * @dev Only DEFAULT_ADMIN_ROLE may call.
	 */
	function setConfig(BaseConfig calldata _config) external onlyRole(DEFAULT_ADMIN_ROLE) {
		_checkConfig(_config);
		config = _config;
		emit ConfigUpdated(_config.router);
	}

	/**
	 * @notice Rescue tokens or ETH accidentally left in the adapter.
	 * @param tokenAddress ERC-20 token to sweep; use address(0) to sweep native ETH
	 * @dev Only DEFAULT_ADMIN_ROLE may call.
	 */
	function sweepToken(address tokenAddress) external onlyRole(DEFAULT_ADMIN_ROLE) {
		if (tokenAddress != address(0)) {
			IERC20 token = IERC20(tokenAddress);
			token.safeTransfer(msg.sender, token.balanceOf(address(this)));
			emit TokensWithdrawn(tokenAddress, msg.sender, token.balanceOf(address(this)));
		} else {
			Address.sendValue(payable(msg.sender), address(this).balance);
			emit NativeWithdrawn(msg.sender, address(this).balance);
		}
	}

	/// @notice Pause contract operations (only PAUSER_ROLE).
	function pause() external onlyRole(PAUSER_ROLE) whenNotPaused {
		_pause();
	}

	/// @notice Unpause contract operations (only UNPAUSER_ROLE).
	function unpause() external onlyRole(UNPAUSER_ROLE) whenPaused {
		_unpause();
	}

	/* ───────────────────────────── View Functions ───────────────────────────── */
	/// @notice Return the configured router address.
	function router() external view returns (address) {
		return config.router;
	}

	/* ──────────────────────────── Fallback / Receive ────────────────────────── */
	receive() external payable {}
}
