// SPDX-License-Identifier: MIT
pragma solidity =0.8.23;

import { UUPSUpgradeable } from
    "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import { ReentrancyGuardUpgradeable } from
    "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import { SafeERC20, IERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import { ConfigurableAddresses } from "../dependencies/ConfigurableAddresses.sol";

import { IAdminContract } from "../interfaces/IAdminContract.sol";
import { IBorrowerOperations } from "../interfaces/IBorrowerOperations.sol";
import { IDebtToken } from "../interfaces/IDebtToken.sol";
import { IFeeCollector } from "../interfaces/IFeeCollector.sol";
import { IFlashLoan } from "../interfaces/IFlashLoan.sol";
import { IFlashLoanReceiver } from "../interfaces/IFlashLoanReceiver.sol";
import { ISwapManager } from "../interfaces/ISwapManager.sol";
import { ITrenBoxManager } from "../interfaces/ITrenBoxManager.sol";

/// @title FlashLoan
/// @notice This contract provides functionality for executing flash loans.
contract FlashLoan is
    IFlashLoan,
    ReentrancyGuardUpgradeable,
    ConfigurableAddresses,
    UUPSUpgradeable
{
    using SafeERC20 for IERC20;

    /// @notice The name of contract.
    string public constant NAME = "FlashLoan";

    /// @notice The denominator to calculate fee percentage.
    uint256 public constant FEE_DENOMINATOR = 1000;

    // ------------------------------------------ Initializer -------------------------------------

    constructor() {
        _disableInitializers();
    }

    /// @dev Sets an intiial owner for the contract.
    /// @param initialOwner The address of initial owner.
    function initialize(address initialOwner) external initializer {
        __Ownable_init(initialOwner);
        __UUPSUpgradeable_init();
    }

    // ------------------------------------------ External functions ------------------------------

    /// @inheritdoc IFlashLoan
    function flashLoan(uint256 _amount) external nonReentrant {
        if (IAdminContract(adminContract).getFlashLoanMinNetDebt() > _amount) {
            revert FlashLoan__AmountBeyondMin();
        }
        if (IAdminContract(adminContract).getFlashLoanMaxNetDebt() < _amount) {
            revert FlashLoan__AmountBeyondMax();
        }

        mintTokens(_amount);
        uint256 balanceBefore = IDebtToken(debtToken).balanceOf(address(this));
        uint256 fee = calculateFee(_amount);

        IDebtToken(debtToken).transfer(msg.sender, _amount);

        IFlashLoanReceiver(msg.sender).executeOperation(_amount, fee, address(debtToken));

        if (IDebtToken(debtToken).balanceOf(address(this)) < balanceBefore + fee) {
            revert FlashLoan__LoanIsNotRepayable();
        }

        burnTokens(_amount);
        sendFeeToCollector();

        emit FlashLoanExecuted(msg.sender, _amount, fee);
    }

    /**
     * @notice Executes a flash loan specifically to repay a debt on the provided asset.
     * @param _asset The address of the asset for which the debt is to be repaid.
     * @dev This function initiates a flash loan transaction to repay a debt on the specified asset.
     */
    function flashLoanForRepay(address _asset) external nonReentrant {
        uint256 debt = ITrenBoxManager(trenBoxManager).getTrenBoxDebt(_asset, msg.sender);
        uint256 gasCompensation = IAdminContract(adminContract).getDebtTokenGasCompensation(_asset);
        uint256 refund = IFeeCollector(feeCollector).simulateRefund(msg.sender, _asset, 1 ether);
        uint256 netDebt = debt - gasCompensation - refund;

        mintTokens(netDebt);
        IDebtToken(debtToken).transfer(msg.sender, netDebt);

        uint256 fee = calculateFee(netDebt);

        IBorrowerOperations(borrowerOperations).repayDebtTokensWithFlashloan(_asset, msg.sender);

        uint256 collAmountIn = IERC20(_asset).balanceOf(address(this));
        uint256 debtTokensToGet = netDebt + fee;

        IERC20(_asset).approve(swapManager, collAmountIn);

        ISwapManager(swapManager).swap(_asset, collAmountIn, debtTokensToGet, msg.sender);

        if (IDebtToken(debtToken).balanceOf(address(this)) < debtTokensToGet) {
            revert FlashLoan__LoanIsNotRepayable();
        }

        burnTokens(netDebt);
        sendFeeToCollector();

        emit FlashLoanRepayExecuted(msg.sender, netDebt, fee);
    }

    /**
     * @notice Executes a flash loan to repay a part of the debt on the provided asset.
     * @param _asset The address of the asset for which the debt is to be repaid.
     * @param _amountToRepay The amount of debt to repay.
     */
    function flashLoanForPartialRepay(
        address _asset,
        uint256 _amountToRepay
    )
        external
        nonReentrant
    {
        mintTokens(_amountToRepay);
        IDebtToken(debtToken).transfer(msg.sender, _amountToRepay);

        uint256 fee = calculateFee(_amountToRepay);

        IBorrowerOperations(borrowerOperations).repayPartOfDebtTokensWithFlashloan(
            _asset,
            msg.sender,
            _amountToRepay,
            0x0000000000000000000000000000000000000000,
            0x0000000000000000000000000000000000000000
        );

        uint256 collAmountIn = IERC20(_asset).balanceOf(address(this));
        uint256 debtTokensToGet = _amountToRepay + fee;

        IERC20(_asset).approve(swapManager, collAmountIn);

        ISwapManager(swapManager).swap(_asset, collAmountIn, debtTokensToGet, msg.sender);

        if (IDebtToken(debtToken).balanceOf(address(this)) < debtTokensToGet) {
            revert FlashLoan__LoanIsNotRepayable();
        }

        burnTokens(_amountToRepay);
        sendFeeToCollector();

        emit FlashLoanPartialRepayExecuted(msg.sender, _amountToRepay, fee);
    }

    /**
     * @notice Gets the current flash loan rate.
     * @return The flash loan fee rate.
     */
    function getFlashLoanRate() external view returns (uint256) {
        return IAdminContract(adminContract).getFlashLoanFee();
    }

    function _authorizeUpgrade(address) internal override onlyOwner { }

    // ------------------------------------------ Private functions -------------------------------

    /**
     * @dev Calculates the fee for a given loan amount.
     * @param _amount The amount of the loan.
     * @return The calculated fee for the loan amount.
     */
    function calculateFee(uint256 _amount) private view returns (uint256) {
        uint256 _feeRate = IAdminContract(adminContract).getFlashLoanFee();
        return (_amount * _feeRate) / FEE_DENOMINATOR;
    }

    /// @dev Sends the collected fees to the fee collector.
    function sendFeeToCollector() private {
        address collector = IFeeCollector(feeCollector).getProtocolRevenueDestination();
        uint256 feeAmount = IDebtToken(debtToken).balanceOf(address(this));
        IDebtToken(debtToken).transfer(collector, feeAmount);
    }

    /// @dev Mints the specified amount of debt tokens.
    /// @param _amount The amount of debt tokens to mint.
    function mintTokens(uint256 _amount) private {
        IDebtToken(debtToken).mintFromWhitelistedContract(_amount);
    }

    /// @dev Burns the specified amount of debt tokens.
    /// @param _amount The amount of debt tokens to burn.
    function burnTokens(uint256 _amount) private {
        IDebtToken(debtToken).burnFromWhitelistedContract(_amount);
    }
}
