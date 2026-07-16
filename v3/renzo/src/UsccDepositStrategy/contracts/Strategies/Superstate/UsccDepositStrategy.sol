// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

import "../../Errors/Errors.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "../interfaces/IDelegateStrategy.sol";
import {
    AggregatorV3Interface
} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";
import "./UsccDepositWithdrawalHelper.sol";

/**
 * @author  Renzo Protocol
 * @title   UsccDepositStrategy
 * @dev     Underlying asset is USDC
 * @notice  This contract is used to deposit USDC for USCC and withdraw USCC for USDC
 */
contract UsccDepositStrategy is IDelegateStrategy {
    using SafeERC20 for IERC20;

    IERC20 public immutable usdcToken;
    IERC20 public immutable usccToken;
    AggregatorV3Interface public immutable usccPriceFeed;
    UsccDepositWithdrawalHelper public immutable usccDepositWithdrawalHelper;

    event USCCDepositStarted(uint256 usdcAmount, uint256 expectedUsccAmount);
    event USCCDepositCompleted(uint256 expectedUsccAmount);
    event USCCWithdrawalStarted(uint256 usccAmount, uint256 expectedUsdcAmount);
    event USCCWithdrawalCompleted(uint256 expectedUsdcAmount);

    constructor(
        IERC20 _usdcToken,
        IERC20 _usccToken,
        AggregatorV3Interface _usccPriceFeed,
        address _managedVaultAddress
    ) {
        if (address(_usdcToken) == address(0)) revert InvalidZeroInput();
        if (address(_usccToken) == address(0)) revert InvalidZeroInput();
        if (address(_usccPriceFeed) == address(0)) revert InvalidZeroInput();
        if (_managedVaultAddress == address(0)) revert InvalidZeroInput();

        // Enforce 6 decimals
        if (IERC20Metadata(address(_usdcToken)).decimals() != 6) revert InvalidDecimals();
        if (IERC20Metadata(address(_usccToken)).decimals() != 6) revert InvalidDecimals();
        if (_usccPriceFeed.decimals() != 6) revert InvalidDecimals();

        // Save off vars
        usdcToken = _usdcToken;
        usccToken = _usccToken;
        usccPriceFeed = _usccPriceFeed;

        // Deploy the helper contract
        usccDepositWithdrawalHelper = new UsccDepositWithdrawalHelper(
            _usdcToken,
            _usccToken,
            _managedVaultAddress
        );
    }

    /**
     * @notice  Send USDC via the helper contract to deposit for USCC
     * @dev     .
     * @param   usdcAmount  .
     */
    function startDepositUSDC(uint256 usdcAmount) external {
        // Verify amount is greater than 0
        if (usdcAmount == 0) revert InvalidZeroInput();

        // Verify it is less than the balance of the vault
        if (usdcAmount > usdcToken.balanceOf(address(this))) revert InvalidExpectedAmount();

        // Get the expected uscc amount
        uint256 expectedUsccAmount = getUsccFromUsdcAmount(usdcAmount);

        // Approve the helper to move the usdc amount
        usdcToken.safeApprove(address(usccDepositWithdrawalHelper), usdcAmount);

        // Start the deposit
        usccDepositWithdrawalHelper.startUsdcDeposit(usdcAmount, expectedUsccAmount);

        // Emit the event
        emit USCCDepositStarted(usdcAmount, expectedUsccAmount);
    }

    /**
     * @notice  Complete the outstanding deposit for USCC
     * @dev     .
     */
    function completeUsdcDeposit() external {
        // Cache the expected uscc amount
        uint256 expectedUsccAmount = usccDepositWithdrawalHelper.expectedDepositAmountUscc();

        // Complete the deposit
        usccDepositWithdrawalHelper.completeUsdcDeposit();

        // Emit the event
        emit USCCDepositCompleted(expectedUsccAmount);
    }

    /**
     * @notice  Send USCC via the helper contract to withdraw for USDC
     * @dev     .
     * @param   usccAmount  .
     */
    function startWithdrawUscc(uint256 usccAmount) external {
        // Verify amount is greater than 0
        if (usccAmount == 0) revert InvalidZeroInput();

        // Verify it is less than the balance of the vault
        if (usccAmount > usccToken.balanceOf(address(this))) revert InvalidExpectedAmount();

        // Get the expected usdc amount
        uint256 expectedUsdcAmount = getUsdcFromUsccAmount(usccAmount);

        // Approve the helper to move the uscc amount
        usccToken.safeApprove(address(usccDepositWithdrawalHelper), usccAmount);

        // Start the withdrawal
        usccDepositWithdrawalHelper.startUsccWithdrawal(usccAmount, expectedUsdcAmount);

        // Emit the event
        emit USCCWithdrawalStarted(usccAmount, expectedUsdcAmount);
    }

    /**
     * @notice  Complete the outstanding withdrawal to get USDC
     * @dev     .
     */
    function completeWithdrawUscc() external {
        // Cache the expected usdc amount
        uint256 expectedUsdcAmount = usccDepositWithdrawalHelper.expectedWithdrawalAmountUsdc();

        // Complete the withdrawal
        usccDepositWithdrawalHelper.completeUsccWithdrawal();

        // Emit the event
        emit USCCWithdrawalCompleted(expectedUsdcAmount);
    }

    /**
     * @notice  Update the superstate deposit withdrawal address in the helper contract
     * @dev
     * @param   _superstateDepositWithdrawAddress  new address
     */
    function setSuperstateDepositWithdrawAddress(
        address _superstateDepositAddress,
        address _superstateWithdrawAddress
    ) external {
        if (_superstateDepositAddress == address(0)) revert InvalidZeroInput();
        if (_superstateWithdrawAddress == address(0)) revert InvalidZeroInput();
        usccDepositWithdrawalHelper.setSuperstateDepositWithdrawAddresses(
            _superstateDepositAddress,
            _superstateWithdrawAddress
        );
    }

    /**
     * @notice  Fix the expected amounts in the helper contract
     * @dev     .
     * @param   _expectedWithdrawalAmountUsdc  amount in USDC expected to be withdrawn
     * @param   _expectedDepositAmountUscc  amount in USCC expected from deposit
     */
    function fixExpectedAmounts(
        uint256 _expectedWithdrawalAmountUsdc,
        uint256 _expectedDepositAmountUscc
    ) external {
        if (_expectedWithdrawalAmountUsdc == 0) revert InvalidZeroInput();
        if (_expectedDepositAmountUscc == 0) revert InvalidZeroInput();
        usccDepositWithdrawalHelper.fixExpectedAmounts(
            _expectedWithdrawalAmountUsdc,
            _expectedDepositAmountUscc
        );
    }

    /**
     * @notice  Convert USCC to USDC Value
     * @dev     Oracle is in USDC/USCC price terms
     * @param   usccAmount  Amount of USCC to convert to USDC
     * @return  uint256  USDC value of the USCC
     */
    function getUsdcFromUsccAmount(uint256 usccAmount) public view returns (uint256) {
        // Get the price of usccToken
        (, int256 price, , uint256 updatedAt, ) = usccPriceFeed.latestRoundData();

        // Verify the price is valid
        if (price <= 0) revert InvalidOraclePrice();

        // Verify the updatedAt is not more than 2 days old - this will cause operations to fail on the vault expectedly
        if (block.timestamp - updatedAt > 2 days) revert InvalidOraclePrice();

        // Convert the balance of usccToken to the underlying asset
        return (usccAmount * uint256(price)) / 1e6;
    }

    /**
     * @notice  Convert USDC to USCC Value
     * @dev     Oracle is in USDC/USCC price terms
     * @param   usdcAmount  Amount of USDC to convert to USCC
     * @return  uint256  USCC value of the USDC
     */
    function getUsccFromUsdcAmount(uint256 usdcAmount) public view returns (uint256) {
        // Get the price of usccToken
        (, int256 price, , uint256 updatedAt, ) = usccPriceFeed.latestRoundData();

        // Verify the price is valid
        if (price <= 0) revert InvalidOraclePrice();

        // Verify the updatedAt is not more than 2 days old - this will cause operations to fail on the vault expectedly
        if (block.timestamp - updatedAt > 2 days) revert InvalidOraclePrice();

        // Convert the balance of usccToken to the underlying asset
        return (usdcAmount * 1e6) / uint256(price);
    }

    /**
     * @notice  Returns the value of USCC in the vault in USDC price terms
     * @dev - The managed vault will use balanceOf(this) on the vault for USDC and add it to this return value
     * @param   _asset  Underlying asset should be USDC
     * @return  uint256  USDC value of the USCC in the vault
     */
    function underlyingValue(address _asset) external view returns (uint256) {
        if (_asset != address(usdcToken)) revert InvalidAsset();

        // Get the balance of usccToken in this contract
        uint256 usccBalance = usccToken.balanceOf(address(this));

        // Get the pending uscc from the helper
        uint256 pendingUscc = usccDepositWithdrawalHelper.expectedDepositAmountUscc();

        // Get any pending usdc from the helper
        uint256 pendingUsdc = usccDepositWithdrawalHelper.expectedWithdrawalAmountUsdc();

        return pendingUsdc + getUsdcFromUsccAmount(usccBalance + pendingUscc);
    }
}
