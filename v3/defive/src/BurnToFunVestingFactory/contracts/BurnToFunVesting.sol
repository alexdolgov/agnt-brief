// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/// @title BurnToFunVesting
/// @notice Minimal linear vesting with a cliff, designed to be deployed as a clone via a factory.
/// @dev
/// - The implementation contract is "constructor-locked" so it can't be initialized.
/// - Each clone must call `initialize(...)` exactly once.
/// - No admin functions; callers (e.g. the campaign) enforce who/when a clone is created.
/// - Uses a tiny nonReentrant guard and custom errors to keep bytecode small.
contract BurnToFunVesting {
    // -------- Storage (same layout for implementation & clones) --------
    address public token; // ERC20 being vested
    address public beneficiary; // receiver of vested tokens
    uint256 public cliffTime; // timestamp when linear vesting starts
    uint256 public vestingEndTime; // timestamp when fully vested
    uint256 public totalAllocation; // total tokens subject to vesting
    uint256 public claimed; // amount already released

    // Initialization + reentrancy flags
    bool private _initialized;
    bool private _entered;

    // -------- Events --------
    event Initialized(
        address indexed token,
        address indexed beneficiary,
        uint256 cliffTime,
        uint256 vestingEndTime,
        uint256 totalAllocation
    );
    event Released(uint256 amount);

    // -------- Errors --------
    error AlreadyInitialized();
    error InvalidParams();
    error NoTokensToRelease();
    error Reentrancy();
    error TransferFailed();

    /// @dev Lock the *implementation* so it cannot be initialized directly.
    /// Clones DO NOT run this constructor, so they start with `_initialized == false`.
    constructor() {
        _initialized = true;
    }

    // -------- Setup --------

    /// @notice One-shot setup for a fresh clone.
    /// @dev Reverts if called twice or with invalid params.
    function initialize(
        address _token,
        address _beneficiary,
        uint256 _cliffTime,
        uint256 _vestingEndTime,
        uint256 _totalAllocation
    ) external {
        if (_initialized) revert AlreadyInitialized();
        if (
            _token == address(0) ||
            _beneficiary == address(0) ||
            _cliffTime >= _vestingEndTime ||
            _vestingEndTime <= block.timestamp ||
            _totalAllocation == 0
        ) revert InvalidParams();

        token = _token;
        beneficiary = _beneficiary;
        cliffTime = _cliffTime;
        vestingEndTime = _vestingEndTime;
        totalAllocation = _totalAllocation;

        _initialized = true;
        emit Initialized(_token, _beneficiary, _cliffTime, _vestingEndTime, _totalAllocation);
    }

    // -------- Views --------

    /// @notice Amount currently releasable (0 before cliff, full remainder after end).
    function releasableAmount() public view returns (uint256) {
        if (block.timestamp < cliffTime) return 0;

        if (block.timestamp >= vestingEndTime) {
            unchecked {
                return totalAllocation - claimed;
            }
        }

        uint256 timeElapsed;
        uint256 totalDuration;
        unchecked {
            timeElapsed = block.timestamp - cliffTime;
            totalDuration = vestingEndTime - cliffTime;
        }
        uint256 vested = (totalAllocation * timeElapsed) / totalDuration;

        unchecked {
            return vested - claimed;
        }
    }

    // -------- Actions --------

    /// @notice Release all currently releasable tokens to the beneficiary.
    /// @dev Anyone can call; tokens always go to `beneficiary`.
    function release() external {
        if (_entered) revert Reentrancy();
        _entered = true;

        uint256 amount = releasableAmount();
        if (amount == 0) revert NoTokensToRelease();

        unchecked {
            claimed += amount;
        }

        bool ok = IERC20(token).transfer(beneficiary, amount);
        if (!ok) revert TransferFailed();

        emit Released(amount);
        _entered = false;
    }
}
