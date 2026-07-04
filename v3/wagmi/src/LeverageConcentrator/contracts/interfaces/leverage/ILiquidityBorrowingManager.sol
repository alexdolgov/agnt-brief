// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.23;

interface ILiquidityBorrowingManager {
    struct FlashLoanParams {
        uint8 protocol;
        bytes data;
    }

    struct FlashLoanRoutes {
        bool strict;
        FlashLoanParams[] flashLoanParams;
    }

    struct RepayParams {
        /// @notice The activation of the emergency liquidity restoration, accessible only by the lender.
        bool isEmergency;
        /// @notice FlashLoanRoutes structs, detailing each route used in the repayment process.
        FlashLoanRoutes routes;
        /// @notice The unique identifier (borrowing key) associated with the specific loan being repaid.
        bytes32 borrowingKey;
        /// @notice The minimum amount of hold token that must be received when the loan is repaid.
        uint256 minHoldTokenOut;
        /// @notice The minimum amount of sale token that must be received when the loan is repaid.
        uint256 minSaleTokenOut;
    }

    struct LoanInfo {
        uint128 liquidity;
        uint256 tokenId;
    }

    struct BorrowingInfo {
        address borrower;
        address saleToken;
        address holdToken;
        /// @notice The amount borrowed by the borrower
        uint256 borrowedAmount;
        /// @notice The amount of liquidation bonus
        uint256 liquidationBonus;
        /// @notice The accumulated loan rate per share
        uint256 accLoanRatePerSeconds;
        /// @notice The daily rate collateral balance multiplied by COLLATERAL_BALANCE_PRECISION
        uint256 dailyRateCollateralBalance;
    }

    struct BorrowingInfoExt {
        /// @notice The main borrowing information.
        BorrowingInfo info;
        /// @notice An array of LoanInfo structs representing multiple loans
        LoanInfo[] loans;
        /// @notice The balance of the collateral.
        int256 collateralBalance;
        /// @notice The estimated lifetime of the loan.
        uint256 estimatedLifeTime;
        /// borrowing Key
        bytes32 key;
    }

    /// @notice Struct to hold parameters for swapping tokens
    struct SwapParams {
        /// @notice Address of the aggregator's router
        address swapTarget;
        /// @notice The maximum gas limit for the swap call
        uint256 maxGasForCall;
        /// @notice The aggregator's data that stores paths and amounts for swapping through
        bytes swapData;
    }

    /// @title BorrowParams
    /// @notice This struct represents the parameters required for borrowing.
    struct BorrowParams {
        /// @notice The pool fee level for the internal swap
        uint24 internalSwapPoolfee;
        /// @notice The address of the token that will be sold to obtain the loan currency
        address saleToken;
        /// @notice The address of the token that will be held
        address holdToken;
        /// @notice The minimum amount of holdToken that must be obtained
        uint256 minHoldTokenOut;
        /// @notice The maximum amount of margin deposit that can be provided
        uint256 maxMarginDeposit;
        /// @notice The maximum allowable daily rate
        uint256 maxDailyRate;
        /// @notice The SwapParams struct representing the external swap parameters
        SwapParams[] externalSwap;
        /// @notice An array of LoanInfo structs representing multiple loans
        LoanInfo[] loans;
    }

    function getLoansInfo(bytes32 borrowingKey) external view returns (LoanInfo[] memory loans);

    function collectLoansFees(address[] calldata tokens) external;

    function getLenderCreditsInfo(
        uint256 tokenId
    ) external view returns (BorrowingInfoExt[] memory extinfo);

    function getFeesInfo(
        address feesOwner,
        address[] calldata tokens
    ) external view returns (uint256[] memory fees);

    function borrow(
        BorrowParams calldata params,
        uint256 deadline
    )
        external
        returns (
            uint256 borrowedAmount,
            uint256 marginDeposit,
            uint256 liquidationBonus,
            uint256 dailyRateCollateral,
            uint256 holdTokenEntranceFee
        );

    function repay(
        RepayParams calldata params,
        uint256 deadline
    ) external returns (uint256 saleTokenOut, uint256 holdTokenOut);

    function underlyingPositionManager() external view returns (address);

    function lightQuoterV3Address() external view returns (address);

    function UNDERLYING_V3_FACTORY_ADDRESS() external view returns (address);

    function UNDERLYING_V3_POOL_INIT_CODE_HASH() external view returns (bytes32);

    function swapIsWhitelisted(address swapTarget) external view returns (bool IsWhitelisted);
}
