// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
 * @title TokenHelper Library
 * @dev A library for handling token transfers and native transfers.
 */
library TokenHelper {
    /* @dev Error thrown when a native transfer fails */
    error TokenHelperNativeTransferFailed();

    /**
     * @dev Refunds the excess native tokens to `to`.
     * The excess native tokens are the native tokens that are in the contract after the function has been executed.
     * This function should only be used in a contract that should not hold any native tokens after the function has been executed.
     */
    function refundExcessNative(address to) internal {
        if (msg.value > 0) {
            uint256 balance = address(this).balance;
            if (balance > 0) transferNative(to, balance);
        }
    }

    /**
     * @dev Transfers `amount` of native tokens to `to`.
     * If `amount` is zero, it does nothing.
     *
     * Requirements:
     *
     * - The native token transfer must not fail.
     */
    function transferNative(address to, uint256 amount) internal {
        if (amount == 0) return;

        (bool success,) = to.call{value: amount}(new bytes(0));
        if (!success) revert TokenHelperNativeTransferFailed();
    }
}
