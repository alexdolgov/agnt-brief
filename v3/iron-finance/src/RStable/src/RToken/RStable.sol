pragma solidity ^0.5.16;
import "./RErc20Delegate.sol";

interface IronStableCoin {
    function poolBurnFrom(address _address, uint256 _amount) external;

    function poolMint(address _address, uint256 _amount) external;

    function totalSupply() external returns (uint256);
}

/**
 * @title Iron's RStable Contract
 * @notice RToken which wraps Iron Stable Coin
 * @author IronFinance
 */
contract RStable is RErc20Delegate {
    /// @dev emit when MAX_TOTAL_SUPPLY changed
    event MaxTotalSupplyChanged(uint256 oldMaxTotalSupply, uint256 newMaxTotalSupply);

    uint256 public MAX_TOTAL_SUPPLY;

    /**
     * To compatible with current IRON implement
     */
    function hasPool(address _pool) external view returns (bool) {
        return _pool == address(this);
    }

    /* disable mint and redeem */
    function mint(uint256) external returns (uint256) {
        return uint256(Error.TOKEN_MINT_REDEEM_NOT_ALLOWED);
    }

    function redeem(uint256) external returns (uint256) {
        return uint256(Error.TOKEN_MINT_REDEEM_NOT_ALLOWED);
    }

    // mint and redeem underlying token instead of transfer
    function doTransferOut(address payable to, uint256 amount) internal {
        IronStableCoin iron = IronStableCoin(underlying);
        require(iron.totalSupply() + amount <= MAX_TOTAL_SUPPLY, "maxCapExceeded");
        iron.poolMint(to, amount);
    }

    function doTransferIn(address from, uint256 amount) internal returns (uint256) {
        IronStableCoin(underlying).poolBurnFrom(from, amount);
        return amount;
    }

    /**
     * Modified borrowFresh: remove check for market liquidity
     */
    function borrowFresh(address payable borrower, uint256 borrowAmount) internal returns (uint256) {
        /* Fail if borrow not allowed */
        uint256 allowed = ironController.borrowAllowed(address(this), borrower, borrowAmount);
        if (allowed != 0) {
            return failOpaque(Error.IRON_CONTROLLER_REJECTION, FailureInfo.BORROW_IRON_CONTROLLER_REJECTION, allowed);
        }

        /* Verify market's block number equals current block number */
        if (accrualBlockNumber != getBlockNumber()) {
            return fail(Error.MARKET_NOT_FRESH, FailureInfo.BORROW_FRESHNESS_CHECK);
        }

        BorrowLocalVars memory vars;

        /*
         * We calculate the new borrower and total borrow balances, failing on overflow:
         *  accountBorrowsNew = accountBorrows + borrowAmount
         *  totalBorrowsNew = totalBorrows + borrowAmount
         */
        (vars.mathErr, vars.accountBorrows) = borrowBalanceStoredInternal(borrower);
        if (vars.mathErr != MathError.NO_ERROR) {
            return
                failOpaque(
                    Error.MATH_ERROR,
                    FailureInfo.BORROW_ACCUMULATED_BALANCE_CALCULATION_FAILED,
                    uint256(vars.mathErr)
                );
        }

        (vars.mathErr, vars.accountBorrowsNew) = addUInt(vars.accountBorrows, borrowAmount);
        if (vars.mathErr != MathError.NO_ERROR) {
            return
                failOpaque(
                    Error.MATH_ERROR,
                    FailureInfo.BORROW_NEW_ACCOUNT_BORROW_BALANCE_CALCULATION_FAILED,
                    uint256(vars.mathErr)
                );
        }

        (vars.mathErr, vars.totalBorrowsNew) = addUInt(totalBorrows, borrowAmount);
        if (vars.mathErr != MathError.NO_ERROR) {
            return
                failOpaque(
                    Error.MATH_ERROR,
                    FailureInfo.BORROW_NEW_TOTAL_BALANCE_CALCULATION_FAILED,
                    uint256(vars.mathErr)
                );
        }

        doTransferOut(borrower, borrowAmount);

        accountBorrows[borrower].principal = vars.accountBorrowsNew;
        accountBorrows[borrower].interestIndex = borrowIndex;
        totalBorrows = vars.totalBorrowsNew;

        emit Borrow(borrower, borrowAmount, vars.accountBorrowsNew, vars.totalBorrowsNew);

        return uint256(Error.NO_ERROR);
    }

    // ========= OPERATING FUCNTIONS ========
    function _setMaxTotalSupply(uint256 newMaxTotalSupply) external {
        require(msg.sender == admin, "!admin");

        uint256 oldMaxTotalSupply = MAX_TOTAL_SUPPLY;
        MAX_TOTAL_SUPPLY = newMaxTotalSupply;
        emit MaxTotalSupplyChanged(oldMaxTotalSupply, newMaxTotalSupply);
    }
}
