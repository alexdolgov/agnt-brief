// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

import { Solarray } from "../libraries/Solarray.sol";
import { SafeCast } from "../libraries/SafeCast.sol";

/// @title GmiUtils
/// @author Umami Devs
library GmiUtils {
    /// @notice above accepted tolerance
    error AboveDepositTolerance();

    uint256 constant SCALE = 1e18;

    function valueToShares(uint256 assetValue, uint256 pps, uint256 decimals) internal pure returns (uint256) {
        return (10 ** decimals * assetValue) / pps;
    }

    function sharesToValue(uint256 shares, uint256 pps, uint256 decimals) internal pure returns (uint256) {
        return (shares * pps) / 10 ** decimals;
    }

    function pricePerShare(uint256 totalSupply, uint256 totalBalance, uint256 decimals)
        internal
        pure
        returns (uint256)
    {
        uint256 singleShare = 10 ** decimals;
        return totalSupply > 0 ? (singleShare * totalBalance) / totalSupply : singleShare;
    }

    function findWeightedBalances(uint256 total, uint256[] memory weights) internal pure returns (uint256[] memory) {
        uint256[] memory weightedBalances = new uint256[](weights.length);
        for (uint256 i = 0; i < weights.length; i++) {
            weightedBalances[i] = total * weights[i] / 1e18;
        }
        return weightedBalances;
    }

    /**
     * @dev finds the allocation to move the assets towards target weights
     */
    function adjustToBalance(
        uint256 shares,
        uint256 tvl,
        int256[] memory difference,
        uint256[] memory weights,
        uint256 totalSupply,
        uint256 indexSize
    ) internal pure returns (uint256[] memory) {
        uint256[] memory toBalanceAmount = new uint256[](indexSize);
        require(indexSize == difference.length, "GMI: indexSize != difference.length");
        uint256 shareValue = (shares * tvl + totalSupply - 1) / totalSupply;
        /// @dev round up div
        uint256 underAllocation = SafeCast.toUint256(Solarray.directionalSum(difference, true));

        if (shareValue <= underAllocation) {
            return Solarray.arrayAddProportion(toBalanceAmount, shareValue, difference, underAllocation, true);
        } else {
            toBalanceAmount =
                Solarray.arrayAddProportion(toBalanceAmount, underAllocation, difference, underAllocation, true);
            shareValue -= underAllocation;
        }

        int256[] memory balanceWeightings = new int256[](indexSize);
        for (uint256 i = 0; i < indexSize; i++) {
            if (difference[i] < 0) {
                for (uint256 j = 0; j < indexSize; j++) {
                    if (i != j) {
                        balanceWeightings[j] = balanceWeightings[j]
                            + SafeCast.toInt256((weights[j] * SafeCast.toUint256(-difference[i]) / weights[i]));
                    }
                }
            }
        }

        uint256 sumOfWeights = Solarray.arraySumWithSafeCast(balanceWeightings);

        if (sumOfWeights > shareValue) {
            toBalanceAmount =
                Solarray.arrayAddProportion(toBalanceAmount, shareValue, balanceWeightings, sumOfWeights, true);
            return toBalanceAmount;
        } else {
            shareValue -= Solarray.arraySumWithSafeCast(balanceWeightings);
            for (uint256 i = 0; i < indexSize; i++) {
                toBalanceAmount[i] += SafeCast.toUint256(balanceWeightings[i]) + shareValue * weights[i] / SCALE;
            }
            return toBalanceAmount;
        }
    }
}
