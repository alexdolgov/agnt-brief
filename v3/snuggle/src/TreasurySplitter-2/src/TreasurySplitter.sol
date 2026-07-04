// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/access/Ownable2Step.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

/// @title TreasurySplitter
/// @notice Splits incoming ERC20 tokens between one or two treasury addresses.
///         Set as the vault's treasury address so all protocol fees land here,
///         then anyone can call distribute() to split/forward them.
/// @dev    Supports single-treasury mode (treasury2 == address(0)) where all
///         funds go to treasury1. splitBps is immutable (deal terms don't change).
///         Treasury addresses are updatable by owner via Ownable2Step for key
///         rotation safety.
contract TreasurySplitter is Ownable2Step, ReentrancyGuard {
    using SafeERC20 for IERC20;

    /// @notice First treasury (always required)
    address public treasury1;

    /// @notice Second treasury (can be address(0) for single-treasury mode)
    address public treasury2;

    /// @notice Split ratio in basis points for treasury1 (remainder goes to treasury2)
    /// @dev    5000 = 50/50. Immutable — the deal terms don't change.
    uint256 public immutable splitBps;

    /// @notice Maximum valid splitBps value
    uint256 public constant MAX_BPS = 10000;

    /// @notice Minimum token balance to bother distributing (dust protection)
    uint256 public constant MIN_DISTRIBUTE = 2;

    event Distributed(address indexed token, uint256 amount1, uint256 amount2);
    event Treasury1Updated(address indexed oldTreasury, address indexed newTreasury);
    event Treasury2Updated(address indexed oldTreasury, address indexed newTreasury);

    error ZeroAddress();
    error InvalidSplitBps();
    error NothingToDistribute();
    error DuplicateTreasury();

    /// @param _treasury1 First treasury address (always required)
    /// @param _treasury2 Second treasury address (can be address(0) for single-treasury mode)
    /// @param _splitBps  Basis points for treasury1's share (e.g. 5000 = 50%)
    constructor(address _treasury1, address _treasury2, uint256 _splitBps) {
        if (_treasury1 == address(0)) revert ZeroAddress();
        if (_splitBps == 0 || _splitBps >= MAX_BPS) revert InvalidSplitBps();
        // V19-I-05: Prevent duplicate treasury addresses in split mode
        if (_treasury2 != address(0) && _treasury1 == _treasury2) revert DuplicateTreasury();

        treasury1 = _treasury1;
        treasury2 = _treasury2;
        splitBps = _splitBps;
    }

    /// @notice Distribute the contract's balance of a token to treasury(ies)
    /// @dev    Permissionless — anyone can call. In split mode, treasury1 gets
    ///         floor(balance * splitBps / 10000), treasury2 gets the remainder.
    ///         In single-treasury mode (treasury2 == address(0)), all goes to treasury1.
    /// @param token The ERC20 token to distribute
    function distribute(address token) external nonReentrant {
        uint256 balance = IERC20(token).balanceOf(address(this));
        if (balance < MIN_DISTRIBUTE) revert NothingToDistribute();

        if (treasury2 == address(0)) {
            // Single-treasury mode: send everything to treasury1
            IERC20(token).safeTransfer(treasury1, balance);
            emit Distributed(token, balance, 0);
        } else {
            // Split mode
            uint256 amount1 = (balance * splitBps) / MAX_BPS;
            uint256 amount2 = balance - amount1;
            IERC20(token).safeTransfer(treasury1, amount1);
            IERC20(token).safeTransfer(treasury2, amount2);
            emit Distributed(token, amount1, amount2);
        }
    }

    /// @notice Update treasury1 address (owner only)
    /// @param newTreasury1 New address for treasury1 (cannot be zero)
    function setTreasury1(address newTreasury1) external onlyOwner {
        if (newTreasury1 == address(0)) revert ZeroAddress();
        // V20-I-06: Prevent duplicate treasury addresses in split mode
        if (treasury2 != address(0) && newTreasury1 == treasury2) revert DuplicateTreasury();
        emit Treasury1Updated(treasury1, newTreasury1);
        treasury1 = newTreasury1;
    }

    /// @notice Update treasury2 address (owner only)
    /// @param newTreasury2 New address for treasury2 (can be zero for single-treasury mode)
    function setTreasury2(address newTreasury2) external onlyOwner {
        // V20-I-06: Prevent duplicate treasury addresses in split mode
        if (newTreasury2 != address(0) && newTreasury2 == treasury1) revert DuplicateTreasury();
        emit Treasury2Updated(treasury2, newTreasury2);
        treasury2 = newTreasury2;
    }
}
