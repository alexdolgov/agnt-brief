// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

import {IPMViews} from "./IPMViews.sol";

interface IPositionsManager is IPMViews {
    /*//////////////////////////////////////////////////////////////
                                ERRORS
    //////////////////////////////////////////////////////////////*/

    error ftPositionManagerOnlyOwner();
    error ftPositionManagerOnlyEngine();
    error ftPositionManagerPerpPnlZero();
    error ftPositionManagerLensZero();
    error ftPositionManagerFtZero();
    error ftPositionManagerZeroAdmin();
    error ftPositionManagerZeroAddress();
    error ftPositionManagerAssetDisabled();
    error ftPositionManagerSupplyCap();
    error ftPositionManagerExpired();
    error ftPositionManagerBadSignature();
    error ftPositionManagerInsufficientLiquidity();
    error ftPositionManagerHealthFactor();
    error ftPositionManagerNoDebt();
    error ftPositionManagerBorrowPaused();
    error ftPositionManagerDepositPaused();
    error ftPositionManagerWithdrawPaused();
    error ftPositionManagerBorrowCap();
    error ftPositionManagerAccountDebtCap();
    error ftPositionManagerAccountUSDCap();
    error ftPositionManagerAmountZero();
    error ftPositionManagerHealthOk();
    error ftPositionManagerHealthBad();
    error ftPositionManagerHealthMaxBad();
    error ftPositionManagerHealthLiqBad();
    error ftPositionManagerHealthSafeBad();
    error ftPositionManagerNoCollateral();
    error ftPositionManagerUnreachableTarget();
    error ftPositionManagerInsufficientCollateral();
    error ftPositionManagerZeroTo();
    error ftPositionManagerZeroAmount();
    error ftPositionManagerInsufficientReserves();
    error ftPositionManagerInsufficientCash();
    error ftPositionManagerFtNotSet();
    error ftPositionManagerNoSupplierInterest();
    error ftPositionManagerExceedsSupplierInterest();
    error ftPositionManagerSkimFtDisabled();
    error ftPositionManagerNoSurplus();
    error ftPositionManagerSweepFTExceedsDust();
    error ftPositionManagerSweepFTBelowBuffer();
    error ftPositionManagerIdleNotEnabled();
    error ftPositionManagerIdlePoolZero();
    error ftPositionManagerIdleATokenZero();
    error ftPositionManagerIdleLossExceedsReserves();
    error ftPositionManagerIdleNothingToRebalance();
    error ftPositionManagerIdleMinRebalance();
    error ftPositionManagerDelegateFail();
    error ftPositionManagerIdleDelegateFail();

    // ========= User actions =========
    function deposit(address asset, uint256 amt) external;
    function depositWithPermit(
        address asset,
        address user,
        uint256 amount,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    )
        external;

    function withdraw(address asset, uint256 amt) external;

    function borrow(address asset, uint256 amt) external;

    function repay(address asset, uint256 amt) external;
    function metaUseNonce(address user, bytes32 typehash) external returns (uint256);
    function metaDeposit(address user, address asset, uint256 amount) external;
    function metaWithdraw(address user, address asset, uint256 amount) external;
    function metaBorrow(address user, address asset, uint256 amount) external;
    function metaRepay(address user, address asset, uint256 amount) external;

    // ========= Views =========
    function getBalance(
        address user,
        address token
    )
        external
        view
        returns (uint256 avail, uint256 hold);

    function previewBorrowIndexWad(address asset) external view returns (uint256);

    function accountValues(address user)
        external
        view
        returns (uint256 collUSD, uint256 debtUSD, uint256 collUSDNoLTV);

    function userCollateralAssets(address user) external view returns (address[] memory);
    function userDebtAssets(address user) external view returns (address[] memory);
    function supplyInterestOf(address user, address asset) external view returns (uint256);
    function setValuesLens(address lens) external;
    function setAccountBorrowCap(address user, address asset, uint256 capUnits) external;
    function setFTModule(address m) external;
    function accrue(address asset) external;
    function setSystemTokenFT(address ft) external;
    function settleSupplyInterestWithFT(
        address asset,
        uint256 expectedOutAsset,
        uint256 ftAmountIn
    )
        external;
    function setIdleModule(address m) external;
    function rebalanceIdle(address asset) external;
    function setCaps(address asset, uint256 supplyCap_, uint256 borrowCap_) external;
    function harvestIdle(address asset) external;
    function setDepositPaused(address asset, bool paused) external;
    function setWithdrawPaused(address asset, bool paused) external;
    function setBorrowPaused(address asset, bool paused) external;
    function depositFor(address beneficiary, address asset, uint256 amount) external;
    function repayFor(address borrower, address asset, uint256 amount) external;
    function debitAvail(address user, address asset, uint128 amt) external;
    function credit(address user, address asset, uint128 amt) external;
}
