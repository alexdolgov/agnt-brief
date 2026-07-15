// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import { IERC20 } from "@openzeppelin-contracts-5/token/ERC20/IERC20.sol";

/**
 * @title Borrow Payment Callback
 * @notice Interface implemented by users of the `UniPoolPair` contract to transfer collateral during a `borrow`.
 */
interface IUniPoolPairBorrowCallback {
    /**
     * @notice Triggered by the `UniPoolPair` to retrieve a loan's collateral during the `borrow` action.
     * @dev Implementations must ensure that the `msg.sender` is the `UniPoolPair` contract for security purposes.
     * @param token The address of the ERC20 token to be transferred.
     * @param amount The amount of tokens to transfer to the `to` address.
     * @param to The recipient's address for the `amount`.
     * @param loanFee The amount of the fee, to be transferred to the `feeTo` address.
     * @param feeTo The recipient's address for the `loanFee`.
     * @param data Arbitrary data forwarded from the original caller of `borrow`.
     */
    function uniPoolPairBorrowCallback(
        IERC20 token,
        uint256 amount,
        address to,
        uint256 loanFee,
        address feeTo,
        bytes calldata data
    ) external;
}
