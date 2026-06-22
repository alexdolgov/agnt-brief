// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

import "contracts/zaps/BaseZap.sol";
import "contracts/interfaces/ITroveManager.sol";
import "contracts/interfaces/IDebtToken.sol";
import "contracts/interfaces/IBorrowerOperations.sol";

/**
    @title Prisma Migrate Trove Zap
    @notice Zap to automate migrating to a different version of a Trove Manager
            for the same collateral.
 */
contract MigrateTroveZap is BaseZap {
    bytes32 private constant _RETURN_VALUE = keccak256("ERC3156FlashBorrower.onFlashLoan");
    uint256 public immutable DEBT_GAS_COMPENSATION;

    IBorrowerOperations public immutable borrowerOps;
    IDebtToken public immutable debtToken;
    // State  ---------------------------------------------------------------------------------------------------------
    mapping(address collateral => bool approved) public approvedCollaterals;
    // Events ---------------------------------------------------------------------------------------------------------

    event TroveMigrated(address account, address troveManagerFrom, address troveManagerTo, uint256 coll, uint256 debt);
    event NewTokenRegistered(address token);

    constructor(IBorrowerOperations _borrowerOps, IDebtToken _debtToken) {
        borrowerOps = _borrowerOps;
        debtToken = _debtToken;
        IDebtToken(debtToken).approve(address(_borrowerOps), type(uint256).max);
        IDebtToken(debtToken).approve(address(_debtToken), type(uint256).max);
        DEBT_GAS_COMPENSATION = _debtToken.DEBT_GAS_COMPENSATION();
    }

    // Public functions -------------------------------------------------------------------------------------------------

    /// @notice Flashloan callback function
    /// @dev This callback fails if there is any leftover collateral in the Zap
    function onFlashLoan(
        address originator,
        address,
        uint256 amount,
        uint256 fee,
        bytes calldata data
    ) external whenNotPaused returns (bytes32) {
        require(msg.sender == address(debtToken), "!DebtToken");
        require(originator == address(this), "!Zap");
        (
            address collateralFrom,
            address account,
            address troveManagerFrom,
            address troveManagerTo,
            uint256 maxFeePercentage,
            uint256 coll,
            address upperHint,
            address lowerHint
        ) = abi.decode(data, (address, address, address, address, uint256, uint256, address, address));
        uint256 toMint = amount + fee;
        uint256 balanceBefore = IERC20(collateralFrom).balanceOf(address(this));
        borrowerOps.closeTrove(troveManagerFrom, account);
        borrowerOps.openTrove(troveManagerTo, account, maxFeePercentage, coll, toMint, upperHint, lowerHint);
        require(IERC20(collateralFrom).balanceOf(address(this)) == balanceBefore, "Invalid migration amount");
        return _RETURN_VALUE;
    }

    /**
        @notice Migrates a trove to another TroveManager for the same collateral
        @param troveManagerFrom Trove manager to migrate the user trove from 
        @param troveManagerTo Trove manager to migrate the user trove to
        @param maxFeePercentage Maximum fee accepted by the user for this operation
        @param upperHint Upper Hint for locating the trove in the list of troves
        @param lowerHint Lower Hint for locating the trove in the list of troves
     */
    function migrateTrove(
        ITroveManager troveManagerFrom,
        ITroveManager troveManagerTo,
        uint256 maxFeePercentage,
        address upperHint,
        address lowerHint
    ) external {
        (address collateralFrom, ) = borrowerOps.troveManagersData(address(troveManagerFrom));
        {
            (address collateralTo, ) = borrowerOps.troveManagersData(address(troveManagerTo));
            require(collateralFrom != address(0), "Invalid TM");
            require(address(troveManagerTo) != address(troveManagerFrom), "Cannot migrate to same TM");
            require(collateralFrom == collateralTo, "Migration not supported");
        }
        (uint256 coll, uint256 debt) = troveManagerFrom.getTroveCollAndDebt(msg.sender);
        require(debt > 0, "Trove not active");
        // One SLOAD to allow set and forget
        if (!approvedCollaterals[collateralFrom]) {
            IERC20(collateralFrom).approve(address(borrowerOps), type(uint256).max);
            approvedCollaterals[collateralFrom] = true;
        }
        debtToken.flashLoan(
            address(this),
            address(debtToken),
            debt - DEBT_GAS_COMPENSATION,
            abi.encode(
                collateralFrom,
                msg.sender,
                address(troveManagerFrom),
                address(troveManagerTo),
                maxFeePercentage,
                coll,
                upperHint,
                lowerHint
            )
        );
        emit TroveMigrated(msg.sender, address(troveManagerFrom), address(troveManagerTo), coll, debt);
    }
}
