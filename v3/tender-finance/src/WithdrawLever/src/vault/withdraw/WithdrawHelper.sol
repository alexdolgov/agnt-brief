// SPDX-License-Identifier: MIT
pragma solidity >=0.8.10;

import {IERC20Metadata as IERC20} from "oz/interfaces/IERC20Metadata.sol";
import {IVault, IFlashLoanRecipient} from "src/interfaces/IFlashLoan.sol";
import {ICToken} from "src/interfaces/ICToken.sol";
import {SafeMath} from "oz/utils/math/SafeMath.sol";
import {PriceHelper} from "src/libraries/PriceHelper.sol";
import {CTokenHelper} from "src/libraries/CTokenHelper.sol";
import {GLPHelper} from "src/libraries/CTokenHelper.sol";
import {PendingExecutor} from 'src/vault/PendingExecutor.sol';
import {SwapProtector} from 'src/vault/SwapProtector.sol';

contract WithdrawLoanHelper is PendingExecutor, SwapProtector {
  using PriceHelper for IERC20;
  using CTokenHelper for ICToken;
  using SafeMath for uint;

  IVault public vault;
  uint public withdrawFee;
  address payable public feeRecipient;

  function redeemAllMarkets(
    address account,
    ICToken[] memory redeemMarkets,
    uint[] memory redeemAmounts
  ) internal returns (IERC20[] memory, uint[] memory) {
    IERC20[] memory redeemTokens = new IERC20[](redeemMarkets.length);
    uint[] memory redeemedAmounts = new uint[](redeemMarkets.length);

    for(uint i=0; i < redeemMarkets.length; i++) {
      redeemTokens[i] = redeemMarkets[i].underlying();
      ICToken market = redeemMarkets[i];
      uint redeemAmount = redeemAmounts[i];
      uint balance = market.underlying().balanceOf(address(this));
      // use return value in case of rounding errors
      market.redeemForAccount(account, redeemAmount);
      uint redeemedTokens = market.underlying().balanceOf(
        address(this)
      ).sub(balance);
      redeemedAmounts[i] = redeemedTokens;
    }
    return (redeemTokens, redeemedAmounts);
  }

  function repayAllMarkets(
    address account,
    ICToken[] memory repayMarkets,
    uint[] memory repayAmounts
  ) internal {
    for(uint i=0; i < repayMarkets.length; i++) {
      ICToken market = repayMarkets[i];
      uint repayAmount = repayAmounts[i];
      CTokenHelper.approveMarket(market, repayAmount);
      market.repayForAccount(account, repayAmount);
    }
  }

  function getSwapAmount(IERC20 tokenFrom, IERC20 tokenTo, uint amountIn, uint amountTo, uint loanFee) internal view returns (uint) {
    uint totalAfterWithdrawFees = tokenFrom.getUSDValue(amountIn)
      .mul(1e18-withdrawFee)
      .div(1e18);

    uint swapProportion = tokenTo.getUSDValue(amountTo+loanFee)
      .mul(1e18)
      .div(totalAfterWithdrawFees);

    return amountIn.mul(swapProportion).div(1e18);
  }
  function swapToLoanToken(
    IERC20[] memory redeemTokens,
    uint[] memory redeemedAmounts,
    IERC20 loanToken,
    uint loanAmount,
    uint loanFee,
    uint24 maxSlippage,
    uint[] memory userBalances
  ) internal returns (uint, uint[] memory) {
    uint swapBalance = 0;
    for(uint j = 0; j < redeemTokens.length; j++) {
      uint swapAmount = getSwapAmount(redeemTokens[j], loanToken, redeemedAmounts[j], loanAmount, loanFee);
      require(userBalances[j] > swapAmount, 'User will not recieve any of a token');
      userBalances[j] -= swapAmount;
      swapBalance += swap(redeemTokens[j], loanToken, swapAmount, maxSlippage);
    }
    return (swapBalance, userBalances);
  }
  function feeAndSwapRedeemed(
    IERC20[] memory redeemTokens,
    uint[] memory redeemedAmounts,
    IERC20[] memory loanTokens,
    uint[] memory loanAmounts,
    uint[] memory loanFees,
    uint24 maxSlippage
  ) internal returns (uint[] memory userBalances) {
    userBalances = redeemedAmounts;

    for(uint i = 0; i < loanTokens.length; i++) {
      uint swapBalance = 0;

      (swapBalance, userBalances) = swapToLoanToken(
        redeemTokens,
        userBalances,
        loanTokens[i],
        loanAmounts[i],
        loanFees[i],
        maxSlippage,
        userBalances
      );
      require(swapBalance >= loanAmounts[i]+loanFees[i], 'Not enough funds to repay');
      uint protocolFee = swapBalance.sub(loanAmounts[i]+loanFees[i]);

      // transfer fees here since we know we have enough to repay the loan after
      loanTokens[i].transfer(feeRecipient, protocolFee);
    }
    return userBalances;
  }

  // can only be called from within the flashloan callback
  function leveragedWithdraw(
    IERC20[] memory tokens,
    uint256[] memory amounts,
    uint256[] memory feeAmounts,
    WithdrawParams memory data
  ) internal {
    repayAllMarkets(
      data.account,
      data.repayMarkets,
      data.repayAmounts
    );

    (IERC20[] memory redeemTokens, uint[] memory redeemedAmounts) = redeemAllMarkets(
      data.account,
      data.redeemMarkets,
      data.redeemAmounts
    );

    uint[] memory userBalances = feeAndSwapRedeemed(
      redeemTokens,
      redeemedAmounts,
      tokens,
      amounts,
      feeAmounts,
      data.maxSlippage
    );

    for(uint i = 0; i < userBalances.length; i++) {
      IERC20 token = (redeemTokens[i] == GLPHelper.fsGLP)
        ? IERC20(address(GLPHelper.stakedGlp))
        : redeemTokens[i];
      token.transfer(data.account, userBalances[i]);
    }
  }
}
