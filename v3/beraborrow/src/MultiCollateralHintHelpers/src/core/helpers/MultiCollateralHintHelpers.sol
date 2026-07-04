// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import "../../interfaces/core/IBorrowerOperations.sol";
import "../../interfaces/core/IPositionManager.sol";
import "../../interfaces/core/ISortedPositions.sol";
import "../../interfaces/core/IFactory.sol";
import "../../dependencies/PropBase.sol";
import "../../dependencies/PropMath.sol";

contract MultiCollateralHintHelpers is PropBase {
    IBorrowerOperations public immutable borrowerOperations;

    constructor(address _borrowerOperationsAddress, uint256 _gasCompensation) PropBase(_gasCompensation) {
        borrowerOperations = IBorrowerOperations(_borrowerOperationsAddress);
    }

    // --- Functions ---

    /* getRedemptionHints() - Helper function for finding the right hints to pass to redeemCollateral().
     *
     * It simulates a redemption of `_debtAmount` to figure out where the redemption sequence will start and what state the final Position
     * of the sequence will end up in.
     *
     * Returns three hints:
     *  - `firstRedemptionHint` is the address of the first Position with ICR >= MCR (i.e. the first Position that will be redeemed).
     *  - `partialRedemptionHintNICR` is the final nominal ICR of the last Position of the sequence after being hit by partial redemption,
     *     or zero in case of no partial redemption.
     *  - `truncatedDebtAmount` is the maximum amount that can be redeemed out of the the provided `_debtAmount`. This can be lower than
     *    `_debtAmount` when redeeming the full amount would leave the last Position of the redemption sequence with less net debt than the
     *    minimum allowed value (i.e. MIN_NET_DEBT).
     *  - `redeemedCollateralAmount` is the collateral that would be drawn for `truncatedDebtAmount`, before redemption fees.
     *
     * The number of Positions to consider for redemption can be capped by passing a non-zero value as `_maxIterations`, while passing zero
     * will leave it uncapped.
     */

    function getRedemptionHints(
        IPositionManager positionManager,
        uint256 _debtAmount,
        uint256 _price,
        uint256 _maxIterations
    )
        external
        view
        returns (
            address firstRedemptionHint,
            uint256 partialRedemptionHintNICR,
            uint256 truncatedDebtAmount,
            uint256 redeemedCollateralAmount
        )
    {
        ISortedPositions sortedPositionsCached = ISortedPositions(positionManager.sortedPositions());

        uint256 remainingDebt = _debtAmount;
        address currentPositionuser = sortedPositionsCached.getLast();
        uint256 MCR = positionManager.MCR();

        while (currentPositionuser != address(0) && positionManager.getCurrentICR(currentPositionuser, _price) < MCR) {
            currentPositionuser = sortedPositionsCached.getPrev(currentPositionuser);
        }

        firstRedemptionHint = currentPositionuser;

        if (_maxIterations == 0) {
            _maxIterations = type(uint256).max;
        }

        uint256 minNetDebt = borrowerOperations.minNetDebt();
        while (currentPositionuser != address(0) && remainingDebt > 0 && _maxIterations-- > 0) {
            (uint256 debt, uint256 coll, , ) = positionManager.getEntireDebtAndColl(currentPositionuser);
            uint256 netDebt = _getNetDebt(debt);

            if (netDebt > remainingDebt) {
                if (netDebt > minNetDebt) {
                    uint256 maxRedeemableDebt = PropMath._min(remainingDebt, netDebt - minNetDebt);
                    uint256 collateralRedeemed = (maxRedeemableDebt * DECIMAL_PRECISION) / _price;

                    uint256 newColl = coll - collateralRedeemed;
                    uint256 newDebt = netDebt - maxRedeemableDebt;

                    uint256 compositeDebt = _getCompositeDebt(newDebt);
                    partialRedemptionHintNICR = PropMath._computeNominalCR(newColl, compositeDebt);

                    redeemedCollateralAmount += collateralRedeemed;
                    remainingDebt = remainingDebt - maxRedeemableDebt;
                }
                break;
            } else {
                uint256 collateralRedeemed = (netDebt * DECIMAL_PRECISION) / _price;
                redeemedCollateralAmount += collateralRedeemed;
                remainingDebt = remainingDebt - netDebt;
            }
            // Otherwise, _maxIterations-- underflows
            require(_maxIterations != 0, "Hints not found");

            currentPositionuser = sortedPositionsCached.getPrev(currentPositionuser);
        }

        truncatedDebtAmount = _debtAmount - remainingDebt;
    }

    /* getApproxHint() - return address of a Position that is, on average, (length / numTrials) positions away in the
    sortedPositions list from the correct insert position of the Position to be inserted.

    Note: The output address is worst-case O(n) positions away from the correct insert position, however, the function
    is probabilistic. Input can be tuned to guarantee results to a high degree of confidence, e.g:

    Submitting numTrials = k * sqrt(length), with k = 15 makes it very, very likely that the ouput address will
    be <= sqrt(length) positions away from the correct insert position.
    */
    function getApproxHint(
        IPositionManager positionManager,
        uint256 _CR,
        uint256 _numTrials,
        uint256 _inputRandomSeed
    ) external view returns (address hintAddress, uint256 diff, uint256 latestRandomSeed) {
        ISortedPositions sortedPositions = ISortedPositions(positionManager.sortedPositions());
        uint256 arrayLength = positionManager.getPositionOwnersCount();

        if (arrayLength == 0) {
            return (address(0), 0, _inputRandomSeed);
        }

        hintAddress = sortedPositions.getLast();
        diff = PropMath._getAbsoluteDifference(_CR, positionManager.getNominalICR(hintAddress));
        latestRandomSeed = _inputRandomSeed;

        uint256 i = 1;

        while (i < _numTrials) {
            latestRandomSeed = uint256(keccak256(abi.encodePacked(latestRandomSeed)));

            uint256 arrayIndex = latestRandomSeed % arrayLength;
            address currentAddress = positionManager.getPositionFromPositionOwnersArray(arrayIndex);
            uint256 currentNICR = positionManager.getNominalICR(currentAddress);

            // check if abs(current - CR) > abs(closest - CR), and update closest if current is closer
            uint256 currentDiff = PropMath._getAbsoluteDifference(currentNICR, _CR);

            if (currentDiff < diff) {
                diff = currentDiff;
                hintAddress = currentAddress;
            }
            i++;
        }
    }

    function computeNominalCR(uint256 _coll, uint256 _debt) external pure returns (uint256) {
        return PropMath._computeNominalCR(_coll, _debt);
    }

    function computeCR(uint256 _coll, uint256 _debt, uint256 _price) external pure returns (uint256) {
        return PropMath._computeCR(_coll, _debt, _price);
    }
}
