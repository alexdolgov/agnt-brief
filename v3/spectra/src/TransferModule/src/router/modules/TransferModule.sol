// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import {SafeERC20, IERC20} from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20Permit} from "openzeppelin-contracts/token/ERC20/extensions/IERC20Permit.sol";
import {LibExecutionModule} from "diamond-router/src/modules/libraries/LibExecutionModule.sol";
import {RouterCommandsUtilities} from "src/libraries/RouterCommandsUtilities.sol";
import {Constants} from "src/router/Constants.sol";
import {RayMath} from "core-v2/src/libraries/RayMath.sol";
import {ITransferModule} from "src/router/modules/interfaces/ITransferModule.sol";

/**
 * @title TransferModule
 * @notice Contract for executing various token transfer operations
 * @dev Provides functionality for ERC20 token transfers and native token transfers
 */
contract TransferModule is ITransferModule {
    using SafeERC20 for IERC20;

    function transferFrom(address token, uint256 value) external payable {
        IERC20(token).safeTransferFrom(LibExecutionModule.executionStorage().msgSender, address(this), value);
    }

    function transferFromWithPermit(address token, uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s)
        external
        payable
    {
        try IERC20Permit(token)
            .permit(LibExecutionModule.executionStorage().msgSender, address(this), value, deadline, v, r, s) {
        // Permit executed successfully, proceed
        }
        catch {
            // Check allowance to see if permit was already executed
            uint256 allowance = IERC20(token).allowance(LibExecutionModule.executionStorage().msgSender, address(this));
            if (allowance < value) {
                revert PermitFailed();
            }
        }
        IERC20(token).safeTransferFrom(LibExecutionModule.executionStorage().msgSender, address(this), value);
    }

    function transfer(address token, address recipient, uint256 value) public payable {
        recipient = RouterCommandsUtilities._resolveAddress(recipient);
        value = RouterCommandsUtilities._resolveTokenValue(token, value);
        if (value != 0) {
            IERC20(token).safeTransfer(recipient, value);
        }
    }

    function transferNative(address recipient, uint256 amount) external payable {
        recipient = RouterCommandsUtilities._resolveAddress(recipient);
        // Debit native budget; underflows if batch over-spends its credits.
        LibExecutionModule.executionStorage().msgValue -= amount;
        (bool success,) = payable(recipient).call{value: amount}("");
        if (!success) {
            revert NativeTransferFailed();
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

    //PREVIEW FUNCTIONS

    // View function for TRANSFER_FROM and TRANSFER_FROM_WITH_PERMIT commands
    function previewTransferFrom(
        bytes memory _inputs,
        bool _spot,
        RouterCommandsUtilities.TokenBalance[] memory balances
    ) external pure returns (uint256, RouterCommandsUtilities.TokenBalance[] memory) {
        if (!_spot) {
            (address token, uint256 value) = abi.decode(_inputs, (address, uint256));
            RouterCommandsUtilities._increasePreviewTokenValue(value, token, balances);
        }
        return (RayMath.RAY_UNIT, balances);
    }

    // View function for TRANSFER command
    function previewTransfer(bytes memory _inputs, bool _spot, RouterCommandsUtilities.TokenBalance[] memory balances)
        external
        view
        returns (uint256, RouterCommandsUtilities.TokenBalance[] memory)
    {
        if (!_spot) {
            (address token, address recipient, uint256 value) = abi.decode(_inputs, (address, address, uint256));
            recipient = RouterCommandsUtilities._resolveAddress(recipient);
            if (recipient != address(this)) {
                RouterCommandsUtilities._decreasePreviewTokenValue(value, token, balances);
            }
        }
        return (RayMath.RAY_UNIT, balances);
    }

    function previewAssertMinBalance(bytes calldata, bool, RouterCommandsUtilities.TokenBalance[] memory balances)
        external
        pure
        returns (uint256, RouterCommandsUtilities.TokenBalance[] memory)
    {
        return (RayMath.RAY_UNIT, balances);
    }
}
