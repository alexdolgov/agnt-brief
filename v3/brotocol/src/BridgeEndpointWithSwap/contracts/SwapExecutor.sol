// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.8.17;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "./utils/ERC20Fixed.sol";
import "./utils/Errors.sol";

/**
 * @title SwapExecutor
 * @dev A stateless utility contract that provides secure token swap execution functionality.
 * This contract is permissionless and can be used by any other contract to safely execute
 * token swaps while ensuring proper token approvals, transfers and output validation.
 */
contract SwapExecutor is Ownable {
  using ERC20Fixed for ERC20;

  /**
   * @dev Constructor that sets the owner to the deploying contract
   */
  constructor() {
    _transferOwnership(msg.sender);
  }

  /**
   * @dev Wraps a token swap operation with approval, execution and output validation
   * @param tokenIn The input token
   * @param tokenOut The output token
   * @param target The target contract to approve and call
   * @param amountIn The amount of input tokens
   * @param amountOutMin The minimum amount of output tokens required
   * @param data The calldata for the swap
   * @return actualOutput The actual amount of output tokens received
   */
  function executeSwap(
    address tokenIn,
    address tokenOut,
    address target,
    uint256 amountIn,
    uint256 amountOutMin,
    bytes calldata data
  ) external onlyOwner returns (uint256 actualOutput) {
    _require(tokenIn != address(0), Errors.SWAP_INVALID_INPUT_TOKEN);
    _require(tokenOut != address(0), Errors.SWAP_INVALID_OUTPUT_TOKEN);
    _require(target != address(0), Errors.SWAP_INVALID_TARGET);
    _require(target != msg.sender, Errors.SWAP_INVALID_TARGET);

    // Get initial balance of output token for the caller
    uint256 balanceBefore = ERC20(tokenOut).balanceOfFixed(msg.sender);

    // Transfer tokens from caller to this contract for the swap
    ERC20(tokenIn).transferFromFixed(msg.sender, address(this), amountIn);

    // Approve the target to spend tokens
    ERC20(tokenIn).approveFixed(target, amountIn);

    // Execute the swap
    (bool success, ) = target.call(data);

    // Revoke approval regardless of success
    ERC20(tokenIn).approveFixed(target, 0);

    // Revert if swap fails
    if (!success) {
      _revert(Errors.SWAP_EXECUTION_FAILED);
    }

    // Calculate actual output amount
    uint256 outputBalance = ERC20(tokenOut).balanceOfFixed(address(this));

    // Revert if output amount is insufficient with detailed information
    if (outputBalance < amountOutMin) {
      revert(
        string.concat(
          "!insufficient-output,min:",
          Strings.toString(amountOutMin),
          ",got:",
          Strings.toString(outputBalance)
        )
      );
    }

    // Transfer any remaining input tokens back to caller
    uint256 remainingInput = ERC20(tokenIn).balanceOfFixed(address(this));
    if (remainingInput > 0) {
      ERC20(tokenIn).transferFixed(msg.sender, remainingInput);
    }

    // Transfer output tokens to the caller
    if (outputBalance > 0) {
      ERC20(tokenOut).transferFixed(msg.sender, outputBalance);
    }

    // Calculate final output amount from caller's perspective
    uint256 balanceAfter = ERC20(tokenOut).balanceOfFixed(msg.sender);
    actualOutput = balanceAfter - balanceBefore;

    return actualOutput;
  }
}
