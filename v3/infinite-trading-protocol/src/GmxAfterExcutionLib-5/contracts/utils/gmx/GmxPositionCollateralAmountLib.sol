// SPDX-License-Identifier: MIT
pragma solidity 0.7.6;
pragma experimental ABIEncoderV2;

import {SafeMath} from "@openzeppelin/contracts/math/SafeMath.sol";
import {SignedSafeMath} from "@openzeppelin/contracts/math/SignedSafeMath.sol";
import {IGmxPosition} from "../../interfaces/gmx/IGmxPosition.sol";

library GmxPositionCollateralAmountLib {
  using SafeMath for uint256;
  using SignedSafeMath for int256;
  function getPositionCollateralAmount(
    IGmxPosition.PositionInfo memory positionInfo
  ) internal pure returns (uint256 collateralAmount) {
    collateralAmount = positionInfo.position.numbers.collateralAmount;
    // We use priceImpactDiffUsd + totalImpactUsd + basePnlUsd to get the total value of the position
    // priceImpactDiffUsd reflects the price of the collateral that will be able to be claimed after withdrawal
    // totalImpactUsd + basePnlUsd reflects the value of the position after the price impact
    // combining those three values we get the most accurate value of the position after withdrawal
    // https://docs.gmx.io/docs/trading/v2#price-impact-rebates
    if (positionInfo.executionPriceResult.priceImpactDiffUsd != 0) {
      // use collateralTokenPrice max to price in favour of the GMX protocol, so the value of the position is closer to the real value after position decrease would happen.
      // GMX protocol always prices in favour of itself, in order to prevent any potential price manipulation attacks.

      collateralAmount = collateralAmount.add(
        positionInfo.executionPriceResult.priceImpactDiffUsd.div(positionInfo.fees.collateralTokenPrice.max)
      );
    }

    int256 pnlAfterTotalImpactUsd = positionInfo.executionPriceResult.totalImpactUsd.add(positionInfo.basePnlUsd);
    if (pnlAfterTotalImpactUsd > 0) {
      collateralAmount = collateralAmount.add(
        uint256(pnlAfterTotalImpactUsd).div(positionInfo.fees.collateralTokenPrice.max)
      );
    } else {
      // use collateralTokenPrice min for loss; similar to the above, GMX protocol prices in favour of itself.
      uint256 lossCollateralAmount = uint256(-pnlAfterTotalImpactUsd).div(positionInfo.fees.collateralTokenPrice.min);
      // loss can be greater than collateral amount, then we don't include it all.
      // Debt is per position, not per account. That is why negative value is not included in the getDebtAssets() as only the deposited collateral can be recovered by the GMXV2 protocol.
      if (lossCollateralAmount < collateralAmount) {
        collateralAmount = collateralAmount.sub(lossCollateralAmount);
      } else {
        collateralAmount = 0;
      }
    }
    // Subtract the fees incurred by the position from the total collateral
    if (positionInfo.fees.totalCostAmount < collateralAmount) {
      collateralAmount = collateralAmount.sub(positionInfo.fees.totalCostAmount);
    } else {
      collateralAmount = 0;
    }
  }
}
