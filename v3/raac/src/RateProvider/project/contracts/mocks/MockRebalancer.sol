// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IRebalancer} from "../interfaces/IRebalancer.sol";

/// @title MockRebalancer
/// @notice Mock rebalancer that simulates pmUSD → savingsToken conversion with configurable slippage.
/// @dev Pulls pmUSD from the vault, "swaps" by minting savings token at the configured rate,
///      minus slippage. No real DEX routing — just arithmetic for testing.
contract MockRebalancer is IRebalancer {
    IERC20 public immutable pmUSD;
    address public immutable savingsToken;
    address public vault;

    /// @notice Slippage in basis points (e.g., 20 = 0.20%).
    uint256 public slippageBps;

    /// @notice If true, rebalance() always reverts (simulates broken DEX).
    bool public shouldFail;

    constructor(address _pmUSD, address _savingsToken, uint256 _slippageBps) {
        pmUSD = IERC20(_pmUSD);
        savingsToken = _savingsToken;
        slippageBps = _slippageBps;
    }

    function setVault(address _vault) external {
        vault = _vault;
    }

    function setSlippage(uint256 _bps) external {
        slippageBps = _bps;
    }

    function setShouldFail(bool _fail) external {
        shouldFail = _fail;
    }

    /// @notice Simulates pmUSD → savingsToken swap with slippage.
    /// @dev Pulls pmUSD from vault, mints savings token to vault (minus slippage).
    ///      The "lost" pmUSD from slippage is just burned (stays in rebalancer).
    function rebalance(uint256 pmUSDAmount) external override returns (uint256 savingsTokenReceived, uint256 pmUSDRemaining) {
        if (shouldFail) revert("MockRebalancer: forced failure");

        // Pull pmUSD from vault
        pmUSD.transferFrom(msg.sender, address(this), pmUSDAmount);

        // Compute savings token output after slippage
        // For simplicity: 1 pmUSD ≈ 1 underlying, but we lose slippageBps
        // The savings token has a price per share, so we need to account for that
        // We just mint (pmUSDAmount - slippage) worth of savings tokens at 1:1 underlying
        // Then the savings token's convertToAssets handles the share price
        uint256 afterSlippage = pmUSDAmount - (pmUSDAmount * slippageBps / 10000);

        // Mint savings token directly to the vault (simulating deposit into savings vault)
        // In reality: pmUSD → Curve → underlying → savings vault deposit
        // Here: just mint equivalent savings tokens
        IMockMintable(savingsToken).mint(msg.sender, afterSlippage);

        savingsTokenReceived = afterSlippage;
        pmUSDRemaining = 0;
    }
}

interface IMockMintable {
    function mint(address to, uint256 amount) external;
}
