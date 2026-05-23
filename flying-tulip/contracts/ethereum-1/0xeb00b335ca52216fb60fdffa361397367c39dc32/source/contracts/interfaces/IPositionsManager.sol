// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

import {IPMViews} from "./IPMViews.sol";

interface IPositionsManager is IPMViews {
    /*//////////////////////////////////////////////////////////////
                                ERRORS
    //////////////////////////////////////////////////////////////*/

    error ftPositionManagerOnlyOwner();
    error ftPositionManagerOnlyEngine();
    error ftPositionManagerLensZero();
    error ftPositionManagerHealthFactorBelowTarget();
    error ftPositionManagerHealthFactorNotBelowTarget();
    error ftPositionManagerZeroAdmin();
    error ftPositionManagerZeroAddress();
    error ftPositionManagerAssetNotConfigured();
    error ftPositionManagerAssetDisabled();
    error ftPositionManagerAssetNotBorrowable();
    error ftPositionManagerBorrowRequiresMM();
    error ftPositionManagerSupplyCap();
    error ftPositionManagerInsufficientLiquidity();
    error ftPositionManagerHealthFactor();
    error ftPositionManagerMinEquity();
    error ftPositionManagerNoDebt();
    error ftPositionManagerBorrowPaused();
    error ftPositionManagerDepositPaused();
    error ftPositionManagerWithdrawPaused();
    error ftPositionManagerBorrowCap();
    error ftPositionManagerAmountZero();
    error ftPositionManagerInsufficientCash();
    error ftPositionManagerInsufficientReserves();
    error ftPositionManagerNoSupplierInterest();
    error ftPositionManagerInsufficientEngineDebitAllowance();
    error ftPositionManagerInsufficientBorrowAllowance();
    error ftPositionManagerInsufficientEngineHeld();
    error ftPositionManagerEngineReentrancyLockNotOwner();
    error ftPositionManagerSelfTransfer();
    error ftPositionManagerRepayTooLow();
    error ftPositionManagerDepositTooLow();
    error ftPositionManagerNotInitialized();
    error ftPositionManagerAlreadyInitialized();
    error ftPositionManagerInvalidNonce();
    error ftPositionManagerThirdPartyNewCollateralAsset();

    function initializeAsset(address asset) external;

    // ========= User actions =========
    // Convenience overloads (user == msg.sender)
    function deposit(address asset, uint256 amt) external;
    function withdraw(address asset, uint256 amt) external;
    function borrow(address asset, uint256 amt) external;
    function repay(address asset, uint256 amt) external;
    function approveEngine(address engine, address asset, uint256 debitAllowance) external;
    function approveBorrow(address delegate, address asset, uint256 borrowAllowance) external;

    function withdraw(address user, address asset, uint256 amt, address to) external;
    function borrow(address user, address asset, uint256 amt, address to) external;
    function approveEngine(
        address user,
        address engine,
        address asset,
        uint256 debitAllowance
    )
        external;
    function approveBorrow(
        address user,
        address delegate,
        address asset,
        uint256 borrowAllowance
    )
        external;
    function borrowAllowance(
        address user,
        address delegate,
        address asset
    )
        external
        view
        returns (uint256);

    function engineDebitAllowanceOf(
        address user,
        address engine,
        address asset
    )
        external
        view
        returns (uint256);

    function borrowFlashAndDepositFor(
        address user,
        address borrowAsset,
        uint256 borrowAmount,
        address collateralAsset,
        uint256 minCollateralAmount,
        bytes calldata callbackData
    )
        external;
    function withdrawFlashAndRepayFor(
        address user,
        address collateralAsset,
        uint256 collateralAmount,
        address repayAsset,
        uint256 minRepayAmount,
        bytes calldata callbackData
    )
        external;

    function withdrawFlashAndDepositFor(
        address user,
        address collateralAsset,
        uint256 collateralAmount,
        address depositAsset,
        uint256 minDepositAmount,
        bytes calldata callbackData
    )
        external;
    function useTypedNonce(address user, bytes32 typehash) external returns (uint256 nonce);
    function invalidateTypedNonce(bytes32 typehash, uint256 newNonce) external;

    // ========= Views =========
    function getBalance(
        address user,
        address token
    )
        external
        view
        returns (uint256 avail, uint256 hold);

    function userCollateralAssets(address user) external view returns (address[] memory);
    function userDebtAssets(address user) external view returns (address[] memory);
    function setValuesLens(address lens) external;
    function settleEpoch(address asset, uint256 interest) external;
    function setCaps(address asset, uint256 supplyCap_, uint256 borrowCap_) external;
    function setDepositPaused(address asset, bool paused) external;
    function setWithdrawPaused(address asset, bool paused) external;
    function setBorrowPaused(address asset, bool paused) external;
    function depositFor(address beneficiary, address asset, uint256 amount) external;
    function repayFor(address borrower, address asset, uint256 amount) external;
    function engineTransferAvail(address from, address to, address asset, uint128 amt) external;
    function engineTransferHoldToAvail(
        address from,
        address to,
        address asset,
        uint128 amt
    )
        external;
    function skim(address asset) external;
    function withdrawReserves(address asset, address to, uint256 amount) external;
    function setEngine(address m, bool ok) external;
    function setTokenizer(address asset, address tokenizer_) external;
    function setAdmin(address _admin) external;
    function FT() external view returns (address);

    /// @notice Engine-only hook to toggle the PositionsManager reentrancy guard.
    ///         Used by external engines that perform flash-style callbacks (e.g., RFQ)
    ///         to block reentrant user actions into PM during the callback window.
    /// @param locked When true, subsequent `nonReentrant` PM entrypoints will revert
    ///               until unlocked (or transaction end, since the guard is transient).
    function setEngineReentrancyLock(bool locked) external;
    function setMetaModule(address module, bool ok) external;
    function setLiquidationModule(address module, bool ok) external;
    function liquidateFlash(
        address user,
        address seizeTo,
        address[] calldata seizeAssets,
        uint256[] calldata seizeAmounts,
        address[] calldata repayAssets,
        uint256[] calldata repayAmounts,
        bytes calldata callbackData
    )
        external
        returns (uint256[] memory repayUsed);
}
