// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

import "@openzeppelin/contracts/interfaces/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@interfaces/IHourglassDepositor.sol";

/// @title DepositRollover
/// @notice Contract to roll a matured deposit into a new deposit
/// - converts matured deposits into a new timestamp of the same deposit
/// - redeems the matured deposits from the earlier depositor and depositing directly into the specified later maturity

contract DepositRollover {
    using SafeERC20 for IERC20;

    /// @notice Roll a matured deposit into a new deposit
    /// @param underlyingToken The address of the underlying token
    /// @param maturedDepositor The address of the matured depositor
    /// @param maturedTimestamp The maturity timestamp of the matured depositor
    /// @param maturedAmount The amount of the matured depositor to roll
    /// @param maturedToken The address of the token to roll, either the principal or combined token
    /// @param isCombinedToken Whether the token is a combined token
    /// @param newDepositor The address of the new depositor
    /// @param newTimestamp The maturity timestamp of the new depositor
    /// @param receiveSplit Whether to receive the split of the deposit
    /// @return amountUnderlyingRolled The amount of the underlying token rolled
    function rollDeposit(
        address underlyingToken,
        address maturedDepositor,
        uint256 maturedTimestamp,
        uint256 maturedAmount,
        address maturedToken,
        bool isCombinedToken,
        address newDepositor,
        uint256 newTimestamp,
        bool receiveSplit
    ) external returns (uint256 amountUnderlyingRolled) {
        // check that the maturities are the correct values for the respective depositors as a sanity check
        if (IHourglassDepositor(maturedDepositor).maturity() != maturedTimestamp) revert MaturedDepositorMismatch();
        if (IHourglassDepositor(newDepositor).maturity() != newTimestamp) revert NewDepositorMismatch();
        if (newTimestamp < block.timestamp) revert NewDepositorMatured();

        // transfer `maturedAmount` of the correct token from caller
        IERC20(maturedToken).safeTransferFrom(msg.sender, address(this), maturedAmount);

        // `maturedToken` token must be either the combined token or the principal token, but will fail at depositor level if not

        // if this is the combined token, call the redeem combined function on the matured depositor
        if (isCombinedToken) {
            IHourglassDepositor(maturedDepositor).redeem(maturedAmount);
            // transfer the minted yield token to the caller
            IERC20(IHourglassDepositor(maturedDepositor).getPointToken()).safeTransfer(msg.sender, maturedAmount);
        } else {
            // if this is the principal token, call the redeem principal function on the matured depositor
            IHourglassDepositor(maturedDepositor).redeemPrincipal(maturedAmount);
        }

        // this address should now have the underlying deposit token for both depositors, if crossing depositors to new asset type, this will already revert
        amountUnderlyingRolled = IERC20(underlyingToken).balanceOf(address(this));

        // enter and utilize depositTo such that the token(s) mint directly to the user
        IHourglassDepositor(newDepositor).enter(amountUnderlyingRolled);
        // push in the deposit token to the new depositor
        IERC20(underlyingToken).safeTransfer(newDepositor, amountUnderlyingRolled);
        IHourglassDepositor(newDepositor).depositTo(msg.sender, msg.sender, amountUnderlyingRolled, receiveSplit);

        emit DepositRolled(msg.sender, maturedDepositor, maturedAmount, newDepositor, amountUnderlyingRolled);
    }

    ///// EVENTS /////
    event DepositRolled(
        address user, address maturedDepositor, uint256 maturedAmount, address newDepositor, uint256 newAmount
    );

    ///// ERRORS /////
    error MaturedDepositorMismatch();
    error NewDepositorMismatch();
    error NewDepositorMatured();
}
