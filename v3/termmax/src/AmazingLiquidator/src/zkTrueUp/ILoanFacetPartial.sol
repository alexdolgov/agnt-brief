// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

struct Loan {
    uint128 collateralAmt;
    uint128 lockedCollateralAmt;
    uint128 debtAmt;
}

/**
 * @title Term Structure Loan Facet Interface
 * @author Term Structure Labs
 */
interface ILoanFacet {
    /// @notice Liquidate the loan
    /// @param loanId The id of the loan to be liquidated
    /// @param repayAmt The amount of debt to be repaid
    /// @return liquidatorRewardAmt The amount of collateral to be returned to the liquidator
    /// @return protocolPenaltyAmt The amount of collateral to be returned to the protocol
    function liquidate(bytes12 loanId, uint128 repayAmt)
        external
        payable
        returns (uint128 liquidatorRewardAmt, uint128 protocolPenaltyAmt);

    /// @notice Return the health factor of the loan
    /// @param loanId The id of the loan
    /// @return healthFactor The health factor of the loan
    function getHealthFactor(bytes12 loanId) external view returns (uint256 healthFactor);

    /// @notice Return the half liquidation threshold
    /// @dev The halfLiquidationThreshold is the threshold of the liquidation price (USD), i.e. 1e4 = 10000 USD
    /// @return halfLiquidationThreshold The half liquidation threshold
    function getHalfLiquidationThreshold() external view returns (uint16 halfLiquidationThreshold);

    /// @notice Return the loan by the loan id
    /// @param loanId The id of the loan
    /// @return loan The loan
    function getLoan(bytes12 loanId) external view returns (Loan memory loan);

    /// @notice Return the liquidation info of the loan
    /// @param loanId The id of the loan
    /// @return _isLiquidable Whether the loan is liquidable
    /// @return debtToken The debt token of the loan
    /// @return maxRepayAmt The maximum amount of the debt to be repaid
    function getLiquidationInfo(bytes12 loanId)
        external
        view
        returns (bool _isLiquidable, IERC20 debtToken, uint128 maxRepayAmt);

    /// @notice Return the borrow fee rate
    /// @return borrowFeeRate The borrow fee rate
    function getBorrowFeeRate() external view returns (uint32);

    /// @notice Check if the roll function is activated
    /// @return isActivate If the roll function is activated
    function isActivatedRoller() external view returns (bool isActivate);

    /// @notice Return the loan id by the loan info
    /// @param accountId The id of the account
    /// @param maturityTime The maturity time of the loan
    /// @param debtTokenId The id of the debt token
    /// @param collateralTokenId The id of the collateral token
    /// @return loanId The id of the loan
    function getLoanId(uint32 accountId, uint32 maturityTime, uint16 debtTokenId, uint16 collateralTokenId)
        external
        pure
        returns (bytes12 loanId);

    /// @notice Resolve the loan id
    /// @param loanId The loan id
    /// @return accountId The account id
    /// @return maturityTime The maturity time
    /// @return debtTokenId The debt token id
    /// @return collateralTokenId The collateral token id
    function resolveLoanId(bytes12 loanId)
        external
        pure
        returns (uint32 accountId, uint32 maturityTime, uint16 debtTokenId, uint16 collateralTokenId);
}
