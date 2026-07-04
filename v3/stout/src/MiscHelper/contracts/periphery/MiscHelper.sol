// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

import {Ownable} from "../abstract/Ownable.sol";
import {ReentrancyGuard} from "../abstract/ReentrancyGuard.sol";
import {Rebase, AuxRebase} from "../library/AuxRebase.sol";
import {IBaseContracts} from "../interface/IBaseContracts.sol";
import {IDynamicInterestRate} from "../interface/IDynamicInterestRate.sol";
import {IERC20Custom} from "../interface/IERC20Custom.sol";
import {IFloor} from "../interface/IFloor.sol";
import {IFeesDistributor} from "../interface/IFees.sol";
import {IFeesWithdrawer} from "../interface/IFees.sol";
import {ILender} from "../interface/ILender.sol";
import {ILenderOwner} from "../interface/ILenderOwner.sol";
import {ILiquidationHelper} from "../interface/ILiquidationHelper.sol";
import {IMarketLens} from "../interface/IMarketLens.sol";
import {IPSM} from "../interface/IPSM.sol";
import {IRepayHelper} from "../interface/IRepayHelper.sol";
import {IStakedDUSX} from "../interface/IStakedDUSX.sol";
import {ISupplyHangingCalculator} from "../interface/ISupplyHangingCalculator.sol";
import {IVault} from "../interface/IVault.sol";

/**
 * @title MiscHelper
 * @dev Central coordinator for protocol operations and interactions
 * @notice Provides:
 * · Core protocol operation coordination
 * · Cross-contract interaction management
 * · System-wide parameter updates
 */
contract MiscHelper is Ownable, ReentrancyGuard {
    using AuxRebase for Rebase;
    /*//////////////////////////////////////////////////////////////
                            STORAGE
    //////////////////////////////////////////////////////////////*/
    /// @notice Precision constants
    uint256 public constant TENK_PRECISION = 10_000;
    /// @notice Repayment helper contract
    IRepayHelper public repayHelper;
    /// @notice Liquidation helper contract
    ILiquidationHelper public liquidationHelper;
    /// @notice Dynamic interest rate model
    IDynamicInterestRate public dynamicInterestRate;
    /// @notice Floor price contract
    IFloor public immutable floor;
    /// @notice Fees distribution contract
    IFeesDistributor public feesDistributor;
    /// @notice Fees withdrawal contract
    IFeesWithdrawer public feesWithdrawer;
    /// @notice Lender ownership management contract
    ILenderOwner public lenderOwner;
    /// @notice Market analytics contract
    IMarketLens public marketLens;
    /// @notice Array of peg stability module contracts
    IPSM[] public pegStabilityModules;
    /// @notice Staked DUSX token contract
    IStakedDUSX public immutable stDUSX;
    /// @notice Supply hanging calculator contract
    ISupplyHangingCalculator public supplyHangingCalculator;
    /// @notice Base contracts registry
    IBaseContracts public immutable baseContracts;
    /// @notice Vault contract reference
    IVault public immutable vault;
    /// @notice Flag to track if parameters have been initialized
    bool public parametersSet;
    /*//////////////////////////////////////////////////////////////
                            CUSTOM ERRORS
    //////////////////////////////////////////////////////////////*/
    /// @notice Thrown when a zero address is provided
    error ZeroAddress();
    /// @notice Thrown when parameters are already set
    error AlreadyInitialized();
    /*//////////////////////////////////////////////////////////////
                            MODIFIERS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Restricts function access to repay helper
     * @dev Reverts if caller is not the repay helper contract
     */
    modifier onlyRepayHelper() {
        if (address(repayHelper) != _msgSender()) {
            revert UnauthorizedAccount(_msgSender());
        }
        _;
    }
    /**
     * @notice Restricts function access to liquidation helper
     * @dev Reverts if caller is not the liquidation helper contract
     */
    modifier onlyLiquidationHelper() {
        if (address(liquidationHelper) != _msgSender()) {
            revert UnauthorizedAccount(_msgSender());
        }
        _;
    }

    /*//////////////////////////////////////////////////////////////
                            CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Initializes the MiscHelper contract
     * @param baseContracts_ Base contracts registry address
     */
    constructor(IBaseContracts baseContracts_) {
        _ensureNonzeroAddress(address(baseContracts_));
        baseContracts = baseContracts_;
        vault = baseContracts.vault();
        floor = baseContracts.floor();
        stDUSX = baseContracts.stDUSX();
        supplyHangingCalculator = baseContracts.supplyCalculator();
        _ensureNonzeroAddress(address(vault));
        _ensureNonzeroAddress(address(floor));
        _ensureNonzeroAddress(address(stDUSX));
        _ensureNonzeroAddress(address(supplyHangingCalculator));
        // Initialize PSMs
        IPSM[] memory psms_ = new IPSM[](2);
        psms_[0] = baseContracts.psmCircle();
        psms_[1] = baseContracts.psmTether();
        if (address(psms_[0]) == address(0) || address(psms_[1]) == address(0))
            revert ZeroAddress();
        pegStabilityModules = psms_;
    }

    /*//////////////////////////////////////////////////////////////
                        CONFIGURATION FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Updates core protocol parameters by fetching from BaseContracts
     */
    function setParameters() external onlyOwner {
        if (parametersSet) {
            revert AlreadyInitialized();
        }
        // Get helper contracts
        repayHelper = baseContracts.repayHelper();
        liquidationHelper = baseContracts.liquidationHelper();
        marketLens = baseContracts.marketLens();
        // Get other contracts
        dynamicInterestRate = baseContracts.dynamicInterestRate();
        feesDistributor = baseContracts.feesDistributor();
        feesWithdrawer = baseContracts.feesWithdrawer();
        lenderOwner = baseContracts.lenderOwner();
        // Validate all addresses
        _ensureNonzeroAddress(address(repayHelper));
        _ensureNonzeroAddress(address(liquidationHelper));
        _ensureNonzeroAddress(address(marketLens));
        _ensureNonzeroAddress(address(dynamicInterestRate));
        _ensureNonzeroAddress(address(feesDistributor));
        _ensureNonzeroAddress(address(feesWithdrawer));
        _ensureNonzeroAddress(address(lenderOwner));
        parametersSet = true;
    }

    /*//////////////////////////////////////////////////////////////
                        FLOOR OPERATIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Deposits into the floor
     * @param amount Deposit amount
     * @dev Includes reentrancy protection
     *
     * Requirements:
     * · Valid deposit amount
     *
     * Effects:
     * · Deposits into floor
     * · Updates interest rates
     */
    function depositFloor(uint256 amount) external {
        floor.deposit(_msgSender(), amount);
        _updateInterestRateAndBorrowLimit();
    }

    /**
     * @notice Refunds from the floor
     * @param amount Refund amount
     * @dev Includes reentrancy protection
     *
     * Requirements:
     * · Valid refund amount
     *
     * Effects:
     * · Refunds from floor
     * · Updates interest rates
     */
    function refundFloor(uint256 amount) external nonReentrant {
        _distributeFees();
        floor.refund(_msgSender(), amount);
        _updateInterestRateAndBorrowLimit();
    }

    /*//////////////////////////////////////////////////////////////
                        STAKED DUSX OPERATIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Deposits into staked DUSX
     * @param amount Deposit amount
     * @dev Includes reentrancy protection
     *
     * Requirements:
     * · Valid deposit amount
     *
     * Effects:
     * · Deposits into staked DUSX
     * · Updates interest rates
     */
    function depositStakedDUSX(uint256 amount) external nonReentrant {
        _distributeFees();
        stDUSX.deposit(_msgSender(), _msgSender(), amount);
        _updateInterestRateAndBorrowLimit();
    }

    /**
     * @notice Withdraws from staked DUSX
     * @dev Includes reentrancy protection
     *
     * Requirements:
     * · Valid withdrawal amount
     *
     * Effects:
     * · Withdraws from staked DUSX
     * · Updates interest rates
     */
    function withdrawStakedDUSX() external nonReentrant {
        _distributeFees();
        stDUSX.withdraw(_msgSender());
        _updateInterestRateAndBorrowLimit();
    }

    /*//////////////////////////////////////////////////////////////
                        PSM OPERATIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Swaps DUSX for stable using PSM
     * @param psm PSM contract
     * @param receiver Receiver address
     * @param amountDUSX DUSX amount
     * @dev Includes reentrancy protection
     *
     * Requirements:
     * · Valid PSM contract
     * · Valid receiver address
     * · Valid DUSX amount
     *
     * Effects:
     * · Swaps DUSX for stable
     * · Updates interest rates
     */
    function psmSwapDUSXForStable(
        IPSM psm,
        address receiver,
        uint256 amountDUSX
    ) external nonReentrant {
        psm.swapDUSXForStable(_msgSender(), receiver, amountDUSX);
        _updateInterestRateAndBorrowLimit();
    }

    /**
     * @notice Swaps stable for DUSX using PSM
     * @param psm PSM contract
     * @param receiver Receiver address
     * @param amountStable Stable amount
     * @dev Includes reentrancy protection
     *
     * Requirements:
     * · Valid PSM contract
     * · Valid receiver address
     * · Valid stable amount
     *
     * Effects:
     * · Swaps stable for DUSX
     * · Updates interest rates
     */
    function psmSwapStableForDUSX(
        IPSM psm,
        address receiver,
        uint256 amountStable
    ) external nonReentrant {
        psm.swapStableForDUSX(_msgSender(), receiver, amountStable);
        _updateInterestRateAndBorrowLimit();
    }

    /*//////////////////////////////////////////////////////////////
                        LENDER OPERATIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Withdraws from lender vault
     * @param lender Lender contract
     * @param amount Withdrawal amount
     * @dev Includes reentrancy protection
     *
     * Requirements:
     * · Valid lender contract
     * · Valid withdrawal amount
     *
     * Effects:
     * · Withdraws from lender vault
     * · Updates interest rates
     */
    function lenderBorrowVaultWithdraw(
        ILender lender,
        uint256 amount
    ) external nonReentrant {
        lender.borrowVaultWithdraw(_msgSender(), amount);
        _updateInterestRateAndBorrowLimit();
    }

    /**
     * @notice Borrows from lender
     * @param lender Lender contract
     * @param amount Borrow amount
     * @dev Includes reentrancy protection
     *
     * Requirements:
     * · Valid lender contract
     * · Valid borrow amount
     *
     * Effects:
     * · Borrows from lender
     * · Updates interest rates
     */
    function lenderBorrow(
        ILender lender,
        uint256 amount
    ) external nonReentrant {
        lender.borrow(_msgSender(), amount);
        _updateInterestRateAndBorrowLimit();
    }

    /**
     * @notice Repays lender
     * @param lender Lender contract
     * @param payer Payer address
     * @param to Repayment recipient address
     * @param skim Skimming flag
     * @param part Repayment part
     * @dev Only callable by repay helper
     *
     * Requirements:
     * · Valid lender contract
     * · Valid payer address
     * · Valid repayment recipient address
     * · Valid repayment part
     *
     * Effects:
     * · Repays lender
     * · Updates interest rates
     */
    function lenderRepay(
        ILender lender,
        address payer,
        address to,
        bool skim,
        uint256 part
    ) external nonReentrant onlyRepayHelper {
        lender.repay(payer, to, skim, part);
        _updateInterestRateAndBorrowLimit();
    }

    /**
     * @notice Liquidates lender
     * @param lender Lender contract
     * @param liquidator Liquidator address
     * @param users User addresses
     * @param maxBorrowParts Maximum borrow parts
     * @param to Liquidation recipient address
     * @dev Only callable by liquidation helper
     *
     * Requirements:
     * · Valid lender contract
     * · Valid liquidator address
     * · Valid user addresses
     * · Valid maximum borrow parts
     * · Valid liquidation recipient address
     *
     * Effects:
     * · Liquidates lender
     * · Updates interest rates
     */
    function lenderLiquidate(
        ILender lender,
        address liquidator,
        address[] memory users,
        uint256[] memory maxBorrowParts,
        address to
    ) external nonReentrant onlyLiquidationHelper {
        lender.liquidate(liquidator, users, maxBorrowParts, to);
        _updateInterestRateAndBorrowLimit();
    }

    /*//////////////////////////////////////////////////////////////
                        VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Calculates APR for staked DUSX
     * @return APR value
     * @dev Includes reentrancy protection
     *
     * Requirements:
     * · Valid staked DUSX balance
     *
     * Effects:
     * · Calculates APR
     */
    function aprStakedDUSX() external view returns (uint256) {
        uint256 totalBorrowed = 0;
        address[] memory lenders = vault.getControllers();
        uint256 length = lenders.length;
        for (uint256 i; i < length; i++) {
            totalBorrowed += marketLens.getTotalBorrowed(ILender(lenders[i]));
        }
        if (IERC20Custom(address(stDUSX)).totalSupply() == 0) {
            return 0;
        } else {
            return
                ((totalBorrowed *
                    dynamicInterestRate.getInterestRate() *
                    (TENK_PRECISION - feesDistributor.floorAllocation())) /
                    TENK_PRECISION) /
                IERC20Custom(address(stDUSX)).totalSupply();
        }
    }

    /*//////////////////////////////////////////////////////////////
                        PRIVATE FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @dev Distributes fees
     * @notice Called before lending operations
     *
     * Effects:
     * · Distributes fees
     * · Updates fee state
     */
    function _distributeFees() private {
        feesWithdrawer.withdraw();
        feesDistributor.distribute();
    }

    /**
     * @dev Updates interest rates and borrow limits
     * @notice Called after lending operations
     *
     * Effects:
     * · Updates dynamic interest rates
     * · Adjusts borrow limits
     * · Maintains system stability
     */
    function _updateInterestRateAndBorrowLimit() private {
        uint256 supplyHanging = supplyHangingCalculator.getSupplyHanging();
        uint256 psmTotalCapital = 0;
        uint256 pegStabilityModulesLength = pegStabilityModules.length;
        for (uint256 i; i < pegStabilityModulesLength; i++) {
            psmTotalCapital += pegStabilityModules[i].dusxMinted();
        }
        uint256 newBorrowLimit = 0;
        if (supplyHanging < psmTotalCapital) {
            newBorrowLimit = psmTotalCapital - supplyHanging;
        }
        address[] memory lenders = vault.getControllers();
        uint256 lendersLength = lenders.length;
        for (uint256 i; i < lendersLength; i++) {
            uint256 totalBorrowed = marketLens.getTotalBorrowed(
                ILender(lenders[i])
            );
            uint256 adjustedBorrowLimit = totalBorrowed + newBorrowLimit;
            lenderOwner.changeInterestRate(
                ILender(lenders[i]),
                dynamicInterestRate.getInterestPerSecond()
            );
            if (
                !lenderOwner.deprecated(address(lenders[i])) &&
                !lenderOwner.manual(address(lenders[i]))
            ) {
                lenderOwner.changeBorrowLimit(
                    ILender(lenders[i]),
                    adjustedBorrowLimit,
                    adjustedBorrowLimit
                );
            }
        }
    }

    // Validates that an address is not zero
    function _ensureNonzeroAddress(address addr) private pure {
        if (addr == address(0)) {
            revert ZeroAddress();
        }
    }
}
