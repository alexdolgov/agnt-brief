// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import { IERC20 } from "@openzeppelin-contracts-5/token/ERC20/IERC20.sol";

/**
 * @title Repayment Callback
 * @notice Interface implemented by users of the `UniPoolPair` contract to transfer collateral during a `repay`.
 */
interface IUniPoolPairRepayCallback {
    /**
     * @notice Triggered by the `UniPoolPair` to retrieve the amount to repay for a loan during the `repay` action.
     * @dev Implementations must ensure that the `msg.sender` is the `UniPoolPair` contract for security purposes.
     * @param token The address of the ERC20 token to be transferred.
     * @param amount The amount of tokens to transfer.
     * @param to The recipient's address.
     * @param data Arbitrary data forwarded from the original caller of `repay`.
     */
    function uniPoolPairRepayCallback(IERC20 token, uint256 amount, address to, bytes calldata data) external;
}
