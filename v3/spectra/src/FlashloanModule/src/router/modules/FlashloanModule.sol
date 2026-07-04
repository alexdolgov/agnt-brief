// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.20;

import {SafeERC20, IERC20} from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC3156FlashBorrower} from "openzeppelin-contracts/interfaces/IERC3156FlashBorrower.sol";
import {IERC3156FlashLender} from "openzeppelin-contracts/interfaces/IERC3156FlashLender.sol";
import {IRegistry} from "core-v2/src/interfaces/IRegistry.sol";
import {IExecutor} from "diamond-router/src/interfaces/IExecutor.sol";
import {LibExecutionModule} from "diamond-router/src/modules/libraries/LibExecutionModule.sol";
import {LibFlashloanModule} from "src/router/modules/libraries/LibFlashloanModule.sol";
import {LibRegistryStorage} from "src/router/modules/libraries/LibRegistryStorage.sol";
import {IFlashloanModule} from "src/router/modules/interfaces/IFlashloanModule.sol";

/**
 * @title FlashloanModule
 * @notice Handles flashloan operations for the router
 */
contract FlashloanModule is IFlashloanModule {
    using SafeERC20 for IERC20;

    /* Flashloans
     *********************************************************************************************************/

    /**
     * @dev Executes a flashloan operation
     * @param lender The address of the lender
     * @param token The address of the token
     * @param amount The amount of the token to borrow
     * @param data The data to be passed to the flashloan
     */
    function flashLoan(address lender, address token, uint256 amount, bytes calldata data) external payable {
        if (!IRegistry(LibRegistryStorage.getRegistry()).isRegisteredPT(lender)) {
            revert InvalidFlashloanLender(lender);
        }

        // Store the flashloan lender in the execution context
        LibFlashloanModule.flashloanStorage().flashloanLender = lender;

        // Execute the flashloan
        IERC3156FlashLender(lender).flashLoan(IERC3156FlashBorrower(address(this)), token, amount, data);

        // Reset the flashloan lender in the execution context
        LibFlashloanModule.flashloanStorage().flashloanLender = address(0);
    }

    /**
     * @inheritdoc IERC3156FlashBorrower
     */
    function onFlashLoan(
        address,
        /* initiator */
        address _token,
        uint256 _amount,
        uint256 _fee,
        bytes calldata _data
    )
        external
        returns (bytes32)
    {
        // Validate the caller
        if (LibExecutionModule.getMsgSender() == address(0)) {
            revert DirectOnFlashloanCall();
        }
        if (msg.sender != LibFlashloanModule.flashloanStorage().flashloanLender) {
            revert UnauthorizedOnFlashloanCaller();
        }

        // Execute the flashloan logic first
        _executeFlashloanLogic(_data);

        // Handle repayment
        _handleRepayment(_token, _amount, _fee);

        return LibFlashloanModule.ON_FLASH_LOAN;
    }

    /**
     * @dev Internal function to execute the flashloan logic
     * @param _data The encoded commands and inputs
     */
    function _executeFlashloanLogic(bytes calldata _data) internal {
        // Parse the original data
        (bytes memory commands, bytes[] memory inputs) = abi.decode(_data, (bytes, bytes[]));

        bytes4 executeSelector = bytes4(keccak256("execute(bytes,bytes[])"));

        // Execute using call instead of delegatecall
        (bool success, bytes memory result) =
            address(this).call(abi.encodeWithSelector(executeSelector, commands, inputs));

        // Handle any errors from the call
        if (!success) {
            // Extract and propagate the error message
            assembly {
                let returnDataSize := mload(result)
                revert(add(32, result), returnDataSize)
            }
        }
    }

    /**
     * @dev Internal function to handle the repayment of the flashloan
     * @param _token The token to repay
     * @param _amount The amount borrowed
     * @param _fee The fee to pay
     */
    function _handleRepayment(address _token, uint256 _amount, uint256 _fee) internal {
        uint256 repayAmount = _amount + _fee;

        // Check and update token allowance if needed
        uint256 allowance = IERC20(_token).allowance(address(this), msg.sender);
        if (allowance < repayAmount) {
            // Approve the lender to pull the funds
            IERC20(_token).forceApprove(msg.sender, repayAmount);
        }

        // Check if we have enough balance to repay
        uint256 balance = IERC20(_token).balanceOf(address(this));
        if (balance < repayAmount) {
            // Collect remaining debt from the original sender if needed
            IERC20(_token).safeTransferFrom(LibExecutionModule.getMsgSender(), address(this), repayAmount - balance);
        }
    }
}
