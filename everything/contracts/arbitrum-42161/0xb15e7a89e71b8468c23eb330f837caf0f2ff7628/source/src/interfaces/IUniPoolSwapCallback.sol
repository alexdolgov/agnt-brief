// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import { IERC20 } from "@openzeppelin-contracts-5/token/ERC20/IERC20.sol";
import { IERC165 } from "@openzeppelin-contracts-5/utils/introspection/IERC165.sol";

/**
 * @title Swap Payment Callback
 * @notice This interface can be implemented by contracts that wish to transfer tokens during swaps.
 * @dev The contract must implement the ERC-165 interface detection mechanism.
 */
interface IUniPoolSwapCallback is IERC165 {
    /**
     * @notice Function called to transfer tokens during the `swap`.
     * @param token The input token that needs to be paid to the pool.
     * @param amount The amount of tokens to be transferred.
     * @param data Arbitrary data forwarded from the original caller of `swap`.
     */
    function uniPoolSwapCallback(IERC20 token, uint128 amount, bytes calldata data) external;
}
