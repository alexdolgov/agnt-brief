// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.20;

import {SafeERC20, IERC20} from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";
import {AccessManagedUpgradeable} from "openzeppelin-contracts-upgradeable/access/manager/AccessManagedUpgradeable.sol";
import {Constants} from "src/router/Constants.sol";
import {LibExecutionModule} from "diamond-router/src/modules/libraries/LibExecutionModule.sol";
import {RouterCommandsUtilities} from "src/libraries/RouterCommandsUtilities.sol";
import {LibKyberSwapModule} from "src/router/modules/libraries/LibKyberSwapModule.sol";
import {IKyberSwapModule} from "src/router/modules/interfaces/IKyberSwapModule.sol";
import {Math} from "openzeppelin-contracts/utils/math/Math.sol";
import {RayMath} from "core-v2/src/libraries/RayMath.sol";

/**
 * @title KyberSwapModule
 * @notice Handles KyberSwap operations for the router
 */
contract KyberSwapModule is AccessManagedUpgradeable, IKyberSwapModule {
    using SafeERC20 for IERC20;
    using Math for uint256;
    using RayMath for uint256;

    /**
     * @notice Retrieves the current KyberSwap router address
     * @dev Returns the router address stored in the KyberSwap module storage
     * @return The address of the current KyberSwap router contract
     */
    function getKyberRouter() public view returns (address) {
        return LibKyberSwapModule.kyberswapStorage().kyberRouter;
    }

    /**
     * @notice Updates the KyberSwap router address used for swaps
     * @dev Only callable by authorized addresses (restricted modifier)
     *      Emits KyberRouterChange event before updating the storage
     * @param _kyberRouter The new KyberSwap router contract address
     * @custom:security Requires restricted access control
     * @custom:events Emits KyberRouterChange(oldRouter, newRouter)
     */
    function setKyberRouter(address _kyberRouter) external restricted {
        LibKyberSwapModule.setKyberRouter(_kyberRouter);
    }

    /**
     * @dev Executes a swap using KyberSwap
     * @param tokenIn The address of the input token
     * @param amountIn The amount of input token
     * @param tokenOut The address of the output token
     * @param targetData The data to be sent to the KyberSwap router
     */
    function kyberSwap(
        address tokenIn,
        uint256 amountIn,
        address tokenOut,
        uint256,
        /*minAmountOut*/
        bytes calldata targetData
    )
        external
        payable
    {
        if (getKyberRouter() == address(0)) {
            revert KyberRouterNotSet();
        }
        if (tokenOut == Constants.ETH) {
            revert AddressError();
        }

        if (tokenIn == Constants.ETH) {
            // Consume the caller's share of msg.value up front. Checked arithmetic
            // reverts if the batch over-budgets the available native balance.
            LibExecutionModule.executionStorage().msgValue -= amountIn;
            (bool success,) = getKyberRouter().call{value: amountIn}(targetData);
            if (!success) {
                revert KyberCallFailed();
            }
        } else {
            amountIn = RouterCommandsUtilities._resolveTokenValue(tokenIn, amountIn);
            IERC20(tokenIn).forceApprove(getKyberRouter(), amountIn);
            (bool success,) = getKyberRouter().call(targetData);
            if (!success) {
                revert KyberCallFailed();
            }
            IERC20(tokenIn).forceApprove(getKyberRouter(), 0);
        }
    }

    /**
     * @dev Checks if a token balance meets the required minimum value and reverts if not
     * @param token The ERC20 token contract address to check balance for
     * @param owner The address whose token balance will be checked
     * @param minValue The minimum required token balance
     * @notice Reverts with MinimumBalanceNotReached error if the balance is below the minimum
     */
    function assertMinBalance(address token, address owner, uint256 minValue) external view {
        owner = RouterCommandsUtilities._resolveAddress(owner);
        uint256 balance = IERC20(token).balanceOf(owner);
        if (balance < minValue) revert MinimumBalanceNotReached(token, owner, balance, minValue);
    }

    /* ---------------------------------------------------------------------------
    PREVIEW FUNCTIONS
    */

    // View function for KYBER_SWAP command
    function previewKyberSwap(bytes memory _inputs, bool, RouterCommandsUtilities.TokenBalance[] memory balances)
        external
        view
        returns (uint256, RouterCommandsUtilities.TokenBalance[] memory)
    {
        // Decode the input parameters
        (address tokenIn, uint256 amountIn, address tokenOut, uint256 expectedAmountOut) =
            abi.decode(_inputs, (address, uint256, address, uint256));

        if (getKyberRouter() == address(0)) {
            revert KyberRouterNotSet();
        }

        if (tokenOut == Constants.ETH) {
            revert AddressError();
        }

        if (tokenIn != Constants.ETH) {
            amountIn = RouterCommandsUtilities._decreasePreviewTokenValue(amountIn, tokenIn, balances);
        }

        RouterCommandsUtilities._increasePreviewTokenValue(expectedAmountOut, tokenOut, balances);

        // rate : expectedAmountOut * rayUnit / amountIn
        return (expectedAmountOut.mulDiv(RayMath.RAY_UNIT, amountIn), balances);
    }

    function previewAssertMinBalance(bytes calldata, bool, RouterCommandsUtilities.TokenBalance[] memory balances)
        external
        pure
        returns (uint256, RouterCommandsUtilities.TokenBalance[] memory)
    {
        return (RayMath.RAY_UNIT, balances);
    }
}
