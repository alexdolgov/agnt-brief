// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.20;

import {IERC3156FlashBorrower} from "openzeppelin-contracts/interfaces/IERC3156FlashBorrower.sol";

/**
 * @title IFlashloanModule
 * @notice Interface for the FlashloanModule contract that handles flashloan operations
 */
interface IFlashloanModule is IERC3156FlashBorrower {
    // ============ Errors ============

    /**
     * @dev Error thrown when the lender is not a registered PT
     */
    error InvalidFlashloanLender(address lender);

    /**
     * @dev Error thrown when onFlashLoan is called directly
     */
    error DirectOnFlashloanCall();

    /**
     * @dev Error thrown when onFlashLoan is called by an unauthorized caller
     */
    error UnauthorizedOnFlashloanCaller();

    // ============ Flashloan Functions ============

    /**
     * @dev Executes a flashloan operation
     * @param lender The address of the lender
     * @param token The address of the token
     * @param amount The amount of the token to borrow
     * @param data The data to be passed to the flashloan
     */
    function flashLoan(address lender, address token, uint256 amount, bytes calldata data) external payable;

    /**
     * @dev ERC-3156 flashloan callback function
     * @param initiator The initiator of the flashloan
     * @param _token The token being borrowed
     * @param _amount The amount being borrowed
     * @param _fee The fee for the flashloan
     * @param _data The data passed to the flashloan
     * @return The success hash as defined by ERC-3156
     */
    function onFlashLoan(address initiator, address _token, uint256 _amount, uint256 _fee, bytes calldata _data)
        external
        returns (bytes32);
}
