// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import {ApproxParams} from "../../../interfaces/IPAllActionTypeV3.sol";
import {PMath} from "../../libraries/math/PMath.sol";

/// @notice Represents the current stage of the binary search approximation
/// @dev The search progresses through stages: INITIAL -> RANGE_SEARCHING -> RESULT_FINDING
enum ApproxStage {
    /// @notice Starting stage where the initial guess is tested
    INITIAL,
    /// @notice Stage where the valid range is being expanded to find bounds
    RANGE_SEARCHING,
    /// @notice Final stage where binary search narrows down to the result
    RESULT_FINDING
}

/// @notice State structure tracking binary search approximation progress
/// @dev Maintains invariants: hardBounds[0] <= ranges[0] <= curGuess <= ranges[1] <= hardBounds[1]
struct ApproxState {
    /// @notice Current stage of the approximation algorithm
    ApproxStage stage;
    /// @notice Maximum number of iterations before reverting
    uint256 maxIteration;
    /// @notice Precision tolerance for accepting a result (scaled by 1e18)
    uint256 eps;
    /// @notice Initial guess value used as reference for range expansion
    uint256 startingGuess;
    /// @notice Current guess being evaluated
    uint256 curGuess;
    /// @notice Dynamic range [min, max] that constrains the search
    /// @dev Adjusted during search if result falls outside current range
    uint256[2] ranges;
    /// @notice Absolute bounds [min, max] that the result must fall within
    /// @dev Any value outside these bounds is considered invalid
    uint256[2] hardBounds;
}

using ApproxStateLib for ApproxState global;

/// @title ApproxStateLib
/// @notice Library for binary search approximation with dynamic range adjustment
/// @dev Determines the next guess from the current ApproxState, dynamically adjusting
///      the search range to fit within valid bounds.
///
///      Invariants to maintain:
///      - state.hardBounds should always include state.ranges
///      - state.ranges should always include state.curGuess
///      That is: hardBounds[0] <= ranges[0] <= curGuess <= ranges[1] <= hardBounds[1]
library ApproxStateLib {
    using PMath for uint256;
    using ApproxStateLib for ApproxState;

    /// @notice Percentage tweak applied to starting guess to create initial search range (5%)
    uint256 internal constant GUESS_RANGE_TWEAK = (5 * PMath.ONE) / 100;

    /// @notice Default maximum iterations for on-chain approximation without off-chain guess
    uint256 internal constant DEFAULT_MAX_ITERATION = 30;

    /// @notice Default precision epsilon for on-chain approximation (0.005%)
    uint256 internal constant DEFAULT_EPS = 5e13;

    /// @notice Initializes approximation state with an off-chain pre-computed guess
    /// @dev Starts directly in RESULT_FINDING stage since off-chain guess should be close to optimal.
    ///      Validates that guessMin <= guessOffchain <= guessMax and eps <= 1e18.
    /// @param approx Parameters containing guessMin, guessMax, guessOffchain, maxIteration, and eps
    /// @return Initialized ApproxState ready for binary search refinement
    function initWithOffchain(ApproxParams memory approx) internal pure returns (ApproxState memory) {
        if (approx.guessMin > approx.guessOffchain || approx.guessOffchain > approx.guessMax || approx.eps > PMath.ONE)
        {
            revert("Internal: INVALID_APPROX_PARAMS");
        }
        return ApproxState({
            stage: ApproxStage.RESULT_FINDING,
            ranges: [approx.guessMin, approx.guessMax],
            hardBounds: [approx.guessMin, approx.guessMax],
            curGuess: approx.guessOffchain,
            startingGuess: approx.guessOffchain,
            maxIteration: approx.maxIteration,
            eps: approx.eps
        });
    }

    /// @notice Initializes approximation state for on-chain search without an off-chain guess
    /// @dev Starts in INITIAL stage and creates a narrow initial range around the estimation
    ///      (±5% via GUESS_RANGE_TWEAK). Uses default iteration and epsilon values.
    /// @param estimation Initial estimate of the result, used as starting guess
    /// @param hardBounds Absolute [min, max] bounds that constrain valid results
    /// @return Initialized ApproxState ready to begin the search algorithm
    function initNoOffChain(uint256 estimation, uint256[2] memory hardBounds)
        internal
        pure
        returns (ApproxState memory)
    {
        assert(hardBounds[0] <= hardBounds[1]);

        uint256 startingGuess = PMath.clamp(estimation, hardBounds[0], hardBounds[1]);
        uint256 rangesLower = PMath.max(startingGuess.tweakDown(GUESS_RANGE_TWEAK), hardBounds[0]);
        uint256 rangesUpper = PMath.min(startingGuess.tweakUp(GUESS_RANGE_TWEAK), hardBounds[1]);
        return ApproxState({
            stage: ApproxStage.INITIAL,
            ranges: [rangesLower, rangesUpper],
            hardBounds: hardBounds,
            curGuess: startingGuess,
            startingGuess: startingGuess,
            maxIteration: DEFAULT_MAX_ITERATION,
            eps: DEFAULT_EPS
        });
    }

    /// @notice Transitions the search state downward (result is lower than current guess)
    /// @dev Behavior depends on current stage:
    ///      - INITIAL: Moves to RANGE_SEARCHING, sets guess to lower bound
    ///      - RANGE_SEARCHING: Either extends range downward or transitions to RESULT_FINDING
    ///      - RESULT_FINDING: Performs binary search step toward lower values
    ///      Reverts if range underflows past hardBounds[0].
    /// @param state The approximation state to modify
    /// @param excludeGuessFromRange If true, excludes current guess from the new range upper bound
    function transitionDown(ApproxState memory state, bool excludeGuessFromRange) internal pure {
        state.ranges[1] = state.curGuess;
        if (excludeGuessFromRange) state.ranges[1]--;

        if (state.stage == ApproxStage.INITIAL) {
            state.stage = ApproxStage.RANGE_SEARCHING;
            state.curGuess = state.ranges[0];
        } else if (state.stage == ApproxStage.RANGE_SEARCHING) {
            if (state.curGuess == state.hardBounds[0]) revert("Slippage: search range underflow");

            bool shouldExtend = state.curGuess == state.ranges[0];
            if (!shouldExtend) {
                state.stage = ApproxStage.RESULT_FINDING;
                moveGuessToMiddle(state);
                return;
            }
            uint256 distToStartingGuess = state.startingGuess - state.ranges[0];
            uint256 extendedLower = PMath.subWithLowerBound(state.ranges[0], distToStartingGuess, state.hardBounds[0]);
            state.ranges[0] = extendedLower;
            state.curGuess = extendedLower;
        } else if (state.stage == ApproxStage.RESULT_FINDING) {
            moveGuessToMiddle(state);
        } else {
            assert(false);
        }
    }

    /// @notice Transitions the search state upward (result is higher than current guess)
    /// @dev Behavior depends on current stage:
    ///      - INITIAL: Moves to RANGE_SEARCHING, sets guess to upper bound
    ///      - RANGE_SEARCHING: Either extends range upward or transitions to RESULT_FINDING
    ///      - RESULT_FINDING: Performs binary search step toward higher values
    ///      Reverts if range overflows past hardBounds[1].
    /// @param state The approximation state to modify
    /// @param excludeGuessFromRange If true, excludes current guess from the new range lower bound
    function transitionUp(ApproxState memory state, bool excludeGuessFromRange) internal pure {
        state.ranges[0] = state.curGuess;
        if (excludeGuessFromRange) state.ranges[0]++;

        if (state.stage == ApproxStage.INITIAL) {
            state.stage = ApproxStage.RANGE_SEARCHING;
            state.curGuess = state.ranges[1];
        } else if (state.stage == ApproxStage.RANGE_SEARCHING) {
            if (state.curGuess == state.hardBounds[1]) revert("Slippage: search range overflow");

            bool shouldExtend = state.curGuess == state.ranges[1];
            if (!shouldExtend) {
                state.stage = ApproxStage.RESULT_FINDING;
                moveGuessToMiddle(state);
                return;
            }
            uint256 distFromStartingGuess = state.ranges[1] - state.startingGuess;
            uint256 extendedUpper =
                (PMath.addWithUpperBound(state.ranges[1], distFromStartingGuess, state.hardBounds[1]));
            state.ranges[1] = extendedUpper;
            state.curGuess = extendedUpper;
        } else if (state.stage == ApproxStage.RESULT_FINDING) {
            moveGuessToMiddle(state);
        } else {
            assert(false);
        }
    }

    /// @notice Moves the current guess to the midpoint of the search range
    /// @dev Standard binary search step: curGuess = (ranges[0] + ranges[1]) / 2
    ///      Reverts if range is invalid (min > max).
    /// @param state The approximation state to modify
    function moveGuessToMiddle(ApproxState memory state) internal pure {
        if (state.ranges[0] > state.ranges[1]) revert("Slippage: guessMin > guessMax");
        state.curGuess = (state.ranges[0] + state.ranges[1]) / 2;
    }
}
