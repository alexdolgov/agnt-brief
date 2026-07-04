// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {
    AggregatorV3Interface
} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";
import "../../Errors/Errors.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
/**
 * @author  Renzo Protocol
 * @title   UsccDepositWithdrawalHelper
 * @dev     Helper contract for depositing and withdrawing USCC.  The main purpose is to track
 *          the value of in-flight deposits and withdrawals of USCC.
 *          Only one active deposit or one active withdrawal can be in flight at a time.
 *          Expected amounts are just used to ensure a 10% variance in the expected vs actual amounts - mainly to prevent dust attack tricking the accounting.
 *          The vault uses expected amounts to track TVL for in flight deposits and withdrawals.
 *          If the difference between the expected vs actual amount is too large, we want to stop processing and investigate the issue before continuing.
 * @notice  This contract is used to deposit and withdraw USCC from the managed vault to the superstate deposit address.
 */
contract UsccDepositWithdrawalHelper {
    using SafeERC20 for IERC20;

    IERC20 public immutable usdcToken;
    IERC20 public immutable usccToken;
    address public immutable managedVaultAddress;    
    uint256 public expectedWithdrawalAmountUsdc;
    uint256 public expectedDepositAmountUscc;

    // These addresses are set to 0x0 by default.  The vault can update them only once.
    address public superstateDepositAddress = address(0);
    address public superstateWithdrawAddress = address(0);


    event UsccWithdrawalStarted(uint256 usccAmount, uint256 expectedUsdcAmount);
    event UsccWithdrawalCompleted(uint256 expectedUsdcAmount);
    event UsccDepositStarted(uint256 usdcAmount, uint256 expectedUsccAmount);
    event UsccDepositCompleted(uint256 expectedUsccAmount);
    event ExpectedAmountsFixed(
        uint256 expectedWithdrawalAmountUsdc,
        uint256 expectedDepositAmountUscc
    );
    
    event SuperstateDepositAddressUpdated(address superstateDepositAddress);
    event SuperstateWithdrawAddressUpdated(address superstateWithdrawAddress);

    constructor(
        IERC20 _usdcToken,
        IERC20 _usccToken,
        address _managedVaultAddress
    ) {
        if (address(_usdcToken) == address(0)) revert InvalidZeroInput();
        if (address(_usccToken) == address(0)) revert InvalidZeroInput();
        if (_managedVaultAddress == address(0)) revert InvalidZeroInput();

        usdcToken = _usdcToken;
        usccToken = _usccToken;
        managedVaultAddress = _managedVaultAddress;
    }

    modifier onlyManagedVault() {
        if (msg.sender != managedVaultAddress) revert NotOwner();
        _;
    }

    function startUsccWithdrawal(
        uint256 usccAmount,
        uint256 expectedUsdcAmount
    ) external onlyManagedVault {

        // Verify that the superstate withdrawal address is set
        if (superstateWithdrawAddress == address(0)) revert InvalidZeroInput();

        // Verify amount is greater than 0
        if (usccAmount == 0) revert InvalidZeroInput();
        if (expectedUsdcAmount == 0) revert InvalidZeroInput();

        // Verify that there is no active withdrawal pending
        if (expectedWithdrawalAmountUsdc > 0) revert ActiveWithdrawalInProgress();

        // Transfer USCC from the managed vault to the super state deposit withdrawal address
        usccToken.safeTransferFrom(managedVaultAddress, superstateWithdrawAddress, usccAmount);

        // Set the expected withdrawal amount
        expectedWithdrawalAmountUsdc = expectedUsdcAmount;

        // Emit the withdrawal started event
        emit UsccWithdrawalStarted(usccAmount, expectedUsdcAmount);
    }

    function completeUsccWithdrawal() external onlyManagedVault {
        // Verify that there is an active withdrawal pending
        if (expectedWithdrawalAmountUsdc == 0) revert NoActiveWithdrawalInProgress();

        // Verify that the usdc balance on the contract is within +/-10% of the expected withdrawal amount
        uint256 balanceDiffOfExpected = expectedWithdrawalAmountUsdc >
            usdcToken.balanceOf(address(this))
            ? expectedWithdrawalAmountUsdc - usdcToken.balanceOf(address(this))
            : usdcToken.balanceOf(address(this)) - expectedWithdrawalAmountUsdc;
        if (balanceDiffOfExpected > (expectedWithdrawalAmountUsdc * 10) / 100)
            revert InvalidExpectedAmount();

        // Transfer USDC from the this account back to the managed vault
        usdcToken.safeTransfer(managedVaultAddress, usdcToken.balanceOf(address(this)));

        // Emit the withdrawal completed event before resetting the value
        emit UsccWithdrawalCompleted(expectedWithdrawalAmountUsdc);

        // Reset the expected withdrawal amount
        expectedWithdrawalAmountUsdc = 0;
    }

    function startUsdcDeposit(uint256 usdcAmount, uint256 expectedUsccAmount) external onlyManagedVault {
        // Verify that the superstate deposit address is set
        if (superstateDepositAddress == address(0)) revert InvalidZeroInput();

        // Verify amount is greater than 0
        if (usdcAmount == 0) revert InvalidZeroInput();
        if (expectedUsccAmount == 0) revert InvalidZeroInput();

        // Verify that there is no active deposit pending
        if (expectedDepositAmountUscc > 0) revert ActiveDepositInProgress();

        // Transfer USDC from the managed vault to the super state deposit withdrawal address
        usdcToken.safeTransferFrom(
            managedVaultAddress,
            superstateDepositAddress,
            usdcAmount
        );

        // Set the expected deposit amount
        expectedDepositAmountUscc = expectedUsccAmount;

        // Emit the deposit started event
        emit UsccDepositStarted(usdcAmount, expectedUsccAmount);
    }

    function completeUsdcDeposit() external onlyManagedVault {
        // Verify that there is an active deposit pending
        if (expectedDepositAmountUscc == 0) revert NoActiveDepositInProgress();

        // Verify that the uscc balance on the contract is within +/-10% of the expected deposit amount
        uint256 balanceDiffOfExpected = expectedDepositAmountUscc >
            usccToken.balanceOf(address(this))
            ? expectedDepositAmountUscc - usccToken.balanceOf(address(this))
            : usccToken.balanceOf(address(this)) - expectedDepositAmountUscc;
        if (balanceDiffOfExpected > (expectedDepositAmountUscc * 10) / 100)
            revert InvalidExpectedAmount();

        // Transfer USCC from to the managed vault
        usccToken.safeTransfer(managedVaultAddress, usccToken.balanceOf(address(this)));

        // Emit the deposit completed event before resetting the value
        emit UsccDepositCompleted(expectedDepositAmountUscc);

        // Reset the expected deposit amount
        expectedDepositAmountUscc = 0;
    }

    /**
     * @notice  Allows owner to update set superstate address.  This can only be done once.
     * @dev     only managed vault
     * @param   _superstateDepositAddress  .
     * @param   _superstateWithdrawAddress  .
     */
    function setSuperstateDepositWithdrawAddresses(
        address _superstateDepositAddress,
        address _superstateWithdrawAddress
    ) external onlyManagedVault {
        // Verify that the addresses are not already set
        if (superstateDepositAddress != address(0) || superstateWithdrawAddress != address(0)) revert SuperstateAddressAlreadySet();


        if (_superstateDepositAddress == address(0)) revert InvalidZeroInput();
        if (_superstateWithdrawAddress == address(0)) revert InvalidZeroInput();
        superstateDepositAddress = _superstateDepositAddress;
        superstateWithdrawAddress = _superstateWithdrawAddress;

        // Emit the event
        emit SuperstateDepositAddressUpdated(_superstateDepositAddress);
        emit SuperstateWithdrawAddressUpdated(_superstateWithdrawAddress);
    }

    /**
     * @notice  Allows owner to fix the expected amounts if they are incorrect - a large swing could impact price
     * @dev     only managed vault
     * @param   _expectedWithdrawalAmountUsdc  The expected withdrawal amount in USDC - can be zero
     * @param   _expectedDepositAmountUscc  The expected deposit amount in USCC - can be zero
     */
    function fixExpectedAmounts(
        uint256 _expectedWithdrawalAmountUsdc,
        uint256 _expectedDepositAmountUscc
    ) external onlyManagedVault {
        // Set the expected withdrawal amount
        expectedWithdrawalAmountUsdc = _expectedWithdrawalAmountUsdc;
        expectedDepositAmountUscc = _expectedDepositAmountUscc;

        // Emit the event
        emit ExpectedAmountsFixed(_expectedWithdrawalAmountUsdc, _expectedDepositAmountUscc);
    }
}
