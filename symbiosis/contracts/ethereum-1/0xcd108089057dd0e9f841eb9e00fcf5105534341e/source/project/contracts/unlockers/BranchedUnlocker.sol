// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import "../interfaces/IDepository.sol";
import "../interfaces/IRouter.sol";

import "hardhat/console.sol";

/// @title BranchedUnlocker
/// @notice Enables multiple unlock paths for a single deposit
/// @dev This is a meta-unlocker that wraps multiple child unlockers. The solver chooses
/// which branch to execute at unlock time, providing flexibility for different scenarios.
///
/// Use cases:
/// - Swap path with refund fallback: Branch 0 = TimedSwapUnlocker, Branch 1 = WithdrawUnlocker
/// - Multiple swap strategies: Different DEX routes as separate branches
/// - Time-gated options: Different unlockers with different time conditions
///
/// The solver picks the branch index and provides the solution for that specific branch.
contract BranchedUnlocker is IDepositUnlocker {
    /// @notice Condition containing multiple possible unlock paths
    /// @param branches Array of unlock conditions, each with its own unlocker and parameters
    struct Condition {
        DepositoryTypes.UnlockCondition[] branches;
    }

    /// @notice Solution specifying which branch to execute
    /// @param index The index of the branch to execute (0-based)
    /// @param solution The solution data for the selected branch's unlocker
    struct Solution {
        uint256 index;
        bytes solution;
    }

    /// @notice Thrown when the branch index is out of bounds
    /// @param index The invalid index that was provided
    /// @param unlockerCount The number of available branches
    error InvalidLockIndex(uint256 index, uint256 unlockerCount);

    /// @notice Emitted when a branch is selected for execution
    /// @param index The branch index that was executed
    event UnlockBranch(uint256 index);

    /// @inheritdoc IDepositUnlocker
    /// @dev Validates branch index, then delegates to the selected branch's unlocker
    function unlock(
        IRouter router,
        DepositoryTypes.Deposit calldata deposit,
        DepositoryTypes.BlockchainState calldata blockchainState,
        bytes calldata condition,
        bytes calldata solution
    ) external {
        Condition memory c = decodeCondition(condition);
        console.log("BranchedUnlocker.unlock(branches.length)", c.branches.length);
        Solution memory s = abi.decode(solution, (Solution));
        console.log("BranchedUnlocker.unlock(index)", s.index);
        require(s.index < c.branches.length, InvalidLockIndex(s.index, c.branches.length));
        emit UnlockBranch(s.index);
        DepositoryTypes.UnlockCondition memory conditionBranch = c.branches[s.index];
        conditionBranch.unlocker.unlock(router, deposit, blockchainState, conditionBranch.condition, s.solution);
    }

    // ============ Encoding Helpers ============

    /// @notice ABI-encode a Condition struct for use in lock()
    /// @param c The condition to encode
    /// @return The ABI-encoded condition bytes
    function encodeCondition(Condition calldata c) pure external returns (bytes memory) {
        return abi.encode(c);
    }

    /// @notice ABI-encode a Solution struct for use in unlock()
    /// @param s The solution to encode
    /// @return The ABI-encoded solution bytes
    function encodeSolution(Solution calldata s) pure external returns (bytes memory) {
        return abi.encode(s);
    }

    /// @notice Decode condition bytes into a Condition struct
    /// @param condition The ABI-encoded condition
    /// @return The decoded Condition struct
    function decodeCondition(bytes calldata condition) pure public returns (Condition memory) {
        return abi.decode(condition, (Condition));
    }
}