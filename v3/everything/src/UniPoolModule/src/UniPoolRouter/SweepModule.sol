// SPDX-License-Identifier: BUSL-1.1
pragma solidity >=0.8.0;

import { IERC20 } from "@openzeppelin-contracts-5/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin-contracts-5/token/ERC20/utils/SafeERC20.sol";
import { SafeTransferLib } from "solady-0.1/utils/SafeTransferLib.sol";

/// @title Sweep Module
abstract contract SweepModule {
    using SafeTransferLib for address;
    using SafeERC20 for IERC20;

    /// @dev Used as a flag for identifying the transfer of ETH instead of a token.
    address internal constant ETH = address(0);

    ///@dev The amount to sweep is insufficient.
    error SweepModuleInsufficientToken();

    ///@dev The amount to sweep is insufficient.
    error SweepModuleInsufficientETH();

    /// @dev The given address is zero.
    error SweepModuleZeroAddress();

    /**
     * @notice Sweeps all of the contract's ERC20 or ETH to an address.
     * @dev Minimum amount and threshold can be used to trigger the sweep.
     * @param token The token to sweep.
     * @param recipient The address that will receive the payment.
     * @param amountOutMin The minimum desired amount.
     * @param amountOutThreshold The minimum amount to trigger the sweep.
     */
    function _sweep(address token, address recipient, uint256 amountOutMin, uint256 amountOutThreshold) internal {
        if (token == ETH) {
            if (recipient == address(0)) {
                revert SweepModuleZeroAddress();
            }

            uint256 balance = address(this).balance;
            if (balance < amountOutMin) {
                revert SweepModuleInsufficientETH();
            }
            if (balance >= amountOutThreshold) {
                recipient.safeTransferETH(balance);
            }
        } else {
            uint256 balance = IERC20(token).balanceOf(address(this));
            if (balance < amountOutMin) {
                revert SweepModuleInsufficientToken();
            }
            if (balance >= amountOutThreshold) {
                IERC20(token).safeTransfer(recipient, balance);
            }
        }
    }
}
