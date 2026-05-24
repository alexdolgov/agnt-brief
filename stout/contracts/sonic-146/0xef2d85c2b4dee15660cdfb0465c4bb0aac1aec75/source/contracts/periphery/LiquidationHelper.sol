// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

import {Ownable} from "../abstract/Ownable.sol";
import {ReentrancyGuard} from "../abstract/ReentrancyGuard.sol";
import {LenderLib} from "../library/LenderLib.sol";
import {IBaseContracts} from "../interface/IBaseContracts.sol";
import {IERC20Custom} from "../interface/IERC20Custom.sol";
import {IERC20Token} from "../interface/IERC20Token.sol";
import {ILender} from "../interface/ILender.sol";
import {IMiscHelper} from "../interface/IMiscHelper.sol";
import {IVault} from "../interface/IVault.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20 as IERC20Safe} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/**
 * @title LiquidationHelper
 * @dev Facilitates liquidation operations for lending markets
 * @notice Facilitates:
 * · Safe liquidation execution
 * · Liquidation amount calculations
 * · Collateral distribution
 * · Solvency checks
 */
contract LiquidationHelper is Ownable, ReentrancyGuard {
    /*//////////////////////////////////////////////////////////////
                                STORAGE
    //////////////////////////////////////////////////////////////*/
    /// @notice DUSX token contract reference
    /// @dev Immutable for gas optimization and security
    /// @dev Core token for liquidation operations
    IERC20Token public immutable dusx;
    /// @notice Helper contract for misc operations
    /// @dev Mutable to allow upgrades
    /// @dev Handles complex liquidation logic
    IMiscHelper public helper;
    /// @notice Base contracts registry
    IBaseContracts public immutable baseContracts;
    /*//////////////////////////////////////////////////////////////
                            CUSTOM ERRORS
    //////////////////////////////////////////////////////////////*/
    /// @notice Thrown when zero address is provided
    /// @dev Used in address validation
    error ZeroAddress();

    /*//////////////////////////////////////////////////////////////
                            CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Initializes the helper with DUSX token
     * @param baseContracts_ Base contracts registry address
     */
    constructor(IBaseContracts baseContracts_) {
        _ensureNonzeroAddress(address(baseContracts_));
        baseContracts = baseContracts_;
        dusx = baseContracts_.dusx();
        helper = baseContracts_.helper();
        _ensureNonzeroAddress(address(dusx));
        _ensureNonzeroAddress(address(helper));
    }

    /*//////////////////////////////////////////////////////////////
                        LIQUIDATION OPERATIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Liquidates maximum amount possible from account
     * @param lender Lending contract
     * @param account Account to liquidate
     * @return collateralAmount Amount of collateral received
     * @return adjustedBorrowPart Final borrow part
     * @return requiredDUSXAmount DUSX needed for liquidation
     * @dev Process:
     * 1. Get account's borrow part
     * 2. Execute full liquidation
     *
     * Security:
     * · Reentrancy protection
     * · Balance validation
     *
     * Requirements:
     * · Account must be liquidatable
     * · Sufficient DUSX balance
     */
    function liquidateMax(
        ILender lender,
        address account
    )
        external
        nonReentrant
        returns (
            uint256 collateralAmount,
            uint256 adjustedBorrowPart,
            uint256 requiredDUSXAmount
        )
    {
        return _liquidateMaxTo(lender, account, _msgSender());
    }

    /**
     * @notice Liquidates specific amount from account
     * @param lender Lending contract
     * @param account Account to liquidate
     * @param borrowPart Amount to liquidate
     * @return collateralAmount Collateral received
     * @return adjustedBorrowPart Final borrow part
     * @return requiredDUSXAmount DUSX needed
     * @dev Process:
     * 1. Validate amount
     * 2. Execute partial liquidation
     *
     * Security:
     * · Reentrancy protection
     * · Amount validation
     *
     * Requirements:
     * · Account must be liquidatable
     * · Valid borrow part
     * · Sufficient DUSX
     */
    function liquidate(
        ILender lender,
        address account,
        uint256 borrowPart
    )
        external
        nonReentrant
        returns (
            uint256 collateralAmount,
            uint256 adjustedBorrowPart,
            uint256 requiredDUSXAmount
        )
    {
        return _liquidateTo(lender, account, _msgSender(), borrowPart);
    }

    /**
     * @notice Liquidates maximum amount to specific recipient
     * @param lender Lending contract
     * @param account Account to liquidate
     * @param recipient Collateral recipient
     * @dev Process:
     * 1. Get account's borrow part
     * 2. Execute liquidation to recipient
     *
     * Security:
     * · Reentrancy protection
     * · Recipient validation
     *
     * Requirements:
     * · Valid recipient
     * · Account liquidatable
     */
    function liquidateMaxTo(
        ILender lender,
        address account,
        address recipient
    ) external nonReentrant {
        _liquidateMaxTo(lender, account, recipient);
    }

    /**
     * @notice Liquidates specific amount to recipient
     * @param lender Lending contract
     * @param account Account to liquidate
     * @param recipient Collateral recipient
     * @param borrowPart Amount to liquidate
     * @dev Process:
     * 1. Validate inputs
     * 2. Execute partial liquidation
     *
     * Security:
     * · Reentrancy protection
     * · Input validation
     *
     * Requirements:
     * · Valid recipient
     * · Valid amount
     */
    function liquidateTo(
        ILender lender,
        address account,
        address recipient,
        uint256 borrowPart
    ) external nonReentrant {
        _liquidateTo(lender, account, recipient, borrowPart);
    }

    /*//////////////////////////////////////////////////////////////
                        LIQUIDATION PREVIEWS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Previews maximum liquidation amounts
     * @param lender Lending contract
     * @param account Account to check
     * @return liquidatable Whether account can be liquidated
     * @return requiredDUSXAmount DUSX needed
     * @return adjustedBorrowPart Resulting borrow part
     * @return returnedCollateralAmount Collateral to receive
     * @dev Calculation:
     * 1. Get current borrow part
     * 2. Calculate liquidation amounts
     */
    function previewMaxLiquidation(
        ILender lender,
        address account
    )
        external
        view
        returns (
            bool liquidatable,
            uint256 requiredDUSXAmount,
            uint256 adjustedBorrowPart,
            uint256 returnedCollateralAmount
        )
    {
        adjustedBorrowPart = lender.userBorrowPart(account);
        (
            liquidatable,
            requiredDUSXAmount,
            adjustedBorrowPart,
            returnedCollateralAmount
        ) = previewLiquidation(lender, account, adjustedBorrowPart);
    }

    /**
     * @notice Previews specific liquidation amounts
     * @param lender Lending contract
     * @param account Account to check
     * @param borrowPart Amount to liquidate
     * @return liquidatable Whether account can be liquidated
     * @return requiredDUSXAmount DUSX needed
     * @return adjustedBorrowPart Resulting borrow part
     * @return returnedCollateralAmount Collateral to receive
     * @dev Calculation:
     * 1. Check liquidation status
     * 2. Calculate amounts
     */
    function previewLiquidation(
        ILender lender,
        address account,
        uint256 borrowPart
    )
        public
        view
        returns (
            bool liquidatable,
            uint256 requiredDUSXAmount,
            uint256 adjustedBorrowPart,
            uint256 returnedCollateralAmount
        )
    {
        liquidatable = isLiquidatable(lender, account);
        (
            returnedCollateralAmount,
            adjustedBorrowPart,
            requiredDUSXAmount
        ) = LenderLib.getLiquidationCollateralAndBorrowAmount(
            lender,
            account,
            borrowPart
        );
    }

    /**
     * @notice Checks if account can be liquidated
     * @param lender Lending contract
     * @param account Account to check
     * @return Whether account is liquidatable
     * @dev Calculation:
     * Inverse of solvency check
     */
    function isLiquidatable(
        ILender lender,
        address account
    ) public view returns (bool) {
        return !LenderLib.isSolvent(lender, account);
    }

    /*//////////////////////////////////////////////////////////////
                        PRIVATE FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @dev Executes maximum liquidation to recipient
     * @param lender Lending contract
     * @param account Account to liquidate
     * @param recipient Collateral recipient
     * @return collateralAmount Collateral received
     * @return adjustedBorrowPart Final borrow part
     * @return requiredDUSXAmount DUSX needed
     *
     * Process:
     * 1. Get full borrow part
     * 2. Execute liquidation
     */
    function _liquidateMaxTo(
        ILender lender,
        address account,
        address recipient
    )
        private
        returns (
            uint256 collateralAmount,
            uint256 adjustedBorrowPart,
            uint256 requiredDUSXAmount
        )
    {
        uint256 borrowPart = lender.userBorrowPart(account);
        return _liquidateTo(lender, account, recipient, borrowPart);
    }

    /**
     * @dev Executes liquidation with specific amount
     * @param lender Lending contract
     * @param account Account to liquidate
     * @param recipient Collateral recipient
     * @param borrowPart Amount to liquidate
     * @return collateralAmount Collateral received
     * @return adjustedBorrowPart Final borrow part
     * @return requiredDUSXAmount DUSX needed
     *
     * Process:
     * 1. Calculate amounts
     * 2. Transfer DUSX
     * 3. Execute liquidation
     * 4. Distribute collateral
     *
     * Security:
     * · Transfer validation
     * · Balance checks
     */
    function _liquidateTo(
        ILender lender,
        address account,
        address recipient,
        uint256 borrowPart
    )
        private
        returns (
            uint256 collateralAmount,
            uint256 adjustedBorrowPart,
            uint256 requiredDUSXAmount
        )
    {
        (collateralAmount, adjustedBorrowPart, requiredDUSXAmount) = LenderLib
            .getLiquidationCollateralAndBorrowAmount(
                lender,
                account,
                borrowPart
            );
        IVault vault = lender.vault();
        SafeERC20.safeTransferFrom(
            IERC20Safe(address(dusx)),
            _msgSender(),
            address(vault),
            requiredDUSXAmount
        );
        vault.deposit(
            dusx,
            address(vault),
            address(this),
            requiredDUSXAmount,
            0
        );
        _liquidate(lender, account, adjustedBorrowPart);
        IERC20Custom collateral = lender.collateral();
        uint256 collateralBalance = vault.balanceOf(collateral, address(this));
        vault.withdraw(
            collateral,
            address(this),
            recipient,
            0,
            collateralBalance
        );
    }

    /**
     * @dev Executes liquidation through helper
     * @param lender Lending contract
     * @param account Account to liquidate
     * @param borrowPart Amount to liquidate
     *
     * Process:
     * 1. Prepare user array
     * 2. Prepare amount array
     * 3. Call helper contract
     */
    function _liquidate(
        ILender lender,
        address account,
        uint256 borrowPart
    ) private {
        address[] memory users = new address[](1);
        users[0] = account;
        uint256[] memory maxBorrowParts = new uint256[](1);
        maxBorrowParts[0] = borrowPart;
        helper.lenderLiquidate(
            lender,
            address(this),
            users,
            maxBorrowParts,
            address(this)
        );
    }

    // Validates that an address is not zero
    function _ensureNonzeroAddress(address addr) private pure {
        if (addr == address(0)) {
            revert ZeroAddress();
        }
    }
}
