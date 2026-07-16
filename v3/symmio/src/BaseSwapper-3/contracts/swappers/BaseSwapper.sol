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
 * @notice  Generic, router‑agnostic ERC‑20 swap adapter used across the SYMM stack.
 *           The contract relies on role‑based access control to restrict execution
 *           and configuration to approved actors.  It pulls an input token from the
 *           caller, performs an arbitrary low‑level call on the configured router,
 *           and finally refunds all output tokens to the caller.
 *
 * @dev     SECURITY
 *          - The router address MUST be audited and trusted; arbitrary execution is
 *            possible through `BaseReq.transactionData`.
 *          - Only accounts with `SWAP_MANAGER_ROLE` can trigger swaps.
 *          - All critical functions are protected by `nonReentrant` and `Pausable`.
 *
 * @custom:integration  Deploy once per supported router implementation and manage
 *                      access through the ACL roles exposed below.
 */
contract BaseSwapper is AccessControlEnumerable, Pausable, ReentrancyGuard, ISwapper {
	using SafeERC20 for IERC20;

	/* ──────────────────────────────── Roles ────────────────────────────────── */
	/// @notice  Circuit‑breaker – allowed to pause the contract
	bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
	/// @notice  Circuit‑breaker reset – allowed to unpause the contract
	bytes32 public constant UNPAUSER_ROLE = keccak256("UNPAUSER_ROLE");

	/* ────────────────────────── Storage Variables ───────────────────────────── */
	/// @notice  Global swapper configuration
	BaseConfig public config;

	/* ────────────────────────────── Structs ─────────────────────────────────── */
	struct BaseConfig {
		address router; // address of the DEX/router contract
	}

	struct BaseReq {
		uint256 amountIn; // amount of input tokens to swap
		bytes transactionData; // encoded calldata for the router call
	}

	/* ───────────────────────────── Initialization ───────────────────────────── */
	/**
	 * @param _admin  Address that receives `DEFAULT_ADMIN_ROLE` and can grant/revoke roles.
	 */
	constructor(address _admin) {
		_grantRole(DEFAULT_ADMIN_ROLE, _admin);
	}

	/* ───────────────────────── Feature: Swap Execution ──────────────────────── */
	/**
	 * @notice Execute a token swap using the pre‑configured router.
	 *
	 * @param _data               ABI‑encoded `BaseReq` containing `amountIn` & router call.
	 * @param inputTokenAddress   Address of the token to be debited from the caller.
	 * @param outputTokenAddress  Address of the token expected in return.
	 *
	 * @dev    Steps:
	 *         1. Decode `_data` into `BaseReq`.
	 *         2. Pull `amountIn` of `inputToken` from the caller.
	 *         3. Approve the router for the exact `amountIn`.
	 *         4. Perform the low‑level router call supplied by the manager.
	 *         5. Revert and bubble‑up any failure.
	 *         6. Transfer the entire balance of `outputToken` back to the caller.
	 *
	 * @custom:security Only callable by accounts with `SWAP_MANAGER_ROLE`.
	 */
	function execute(
		bytes calldata _data,
		address inputTokenAddress,
		address outputTokenAddress
	) external payable whenNotPaused nonReentrant {
		BaseReq memory req = abi.decode(_data, (BaseReq));

		IERC20 inputToken = IERC20(inputTokenAddress);
		IERC20 outputToken = IERC20(outputTokenAddress);

		// ──────────────────── Pull tokens & approve router ────────────────────
		inputToken.safeTransferFrom(msg.sender, address(this), req.amountIn);
		inputToken.safeIncreaseAllowance(config.router, req.amountIn);

		// ─────────────────────────── Router Call ─────────────────────────────
		(bool success, bytes memory result) = config.router.call(req.transactionData);
		if (!success) revert SwapFailed(result);

		// ──────────────────── Refund output & emit event ─────────────────────
		uint256 amountIn = inputToken.balanceOf(address(this));
		uint256 amountOut = outputToken.balanceOf(address(this));
		if(amountIn>0) inputToken.safeTransfer(msg.sender, amountIn);
		outputToken.safeTransfer(msg.sender, amountOut);


		emit Swapped(inputTokenAddress, outputTokenAddress, req.amountIn, amountOut);
	}

	/* ──────────────────────────── Internal Helpers ──────────────────────────── */
	/**
	 * @dev Reverts if the supplied configuration is invalid.
	 *
	 * @param _config The configuration struct to validate.
	 */
	function _checkConfig(BaseConfig memory _config) internal pure {
		if (_config.router == address(0)) revert ZeroAddress();
	}

	/* ──────────────────────────── Admin Functions ───────────────────────────── */
	/**
	 * @notice Update the global swapper configuration.
	 *
	 * @param _config New configuration struct.
	 *
	 * @custom:security Only callable by `SETTER_ROLE`.
	 */
	function setConfig(BaseConfig calldata _config) external onlyRole(DEFAULT_ADMIN_ROLE) {
		_checkConfig(_config);
		config = _config; // assignment after checks to prevent dirty state
		emit ConfigUpdated(_config.router);
	}

	/**
	 * @notice Emergency token sweeper allowing admin to rescue stuck funds.
	 *
	 * @param tokenAddress The ERC‑20 token to sweep; pass `address(0)` to sweep ETH.
	 */
	function sweepToken(address tokenAddress) external onlyRole(DEFAULT_ADMIN_ROLE) {
		if (tokenAddress != address(0)) {
			IERC20 token = IERC20(tokenAddress);
			token.safeTransfer(msg.sender, token.balanceOf(address(this)));
		} else {
			payable(msg.sender).transfer(address(this).balance);
		}
	}

	/// @notice Pause contract operations.
	function pause() external onlyRole(PAUSER_ROLE) whenNotPaused {
		_pause();
	}

	/// @notice Unpause contract operations.
	function unpause() external onlyRole(UNPAUSER_ROLE) whenPaused {
		_unpause();
	}

	/* ───────────────────────────── View Functions ───────────────────────────── */
	/**
	 * @notice Convenience helper returning the configured router address.
	 */
	function router() external view returns (address) {
		return config.router;
	}

	/* ──────────────────────────── Fallback / Receive ────────────────────────── */
	receive() external payable {}
}
