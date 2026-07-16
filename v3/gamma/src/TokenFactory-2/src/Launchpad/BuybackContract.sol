// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {PoolKey} from "v4-core/types/PoolKey.sol";
import {ISwapRouter} from "./interfaces/ISwapRouter.sol";
import {WhitelistableERC20} from "./WhitelistableERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

/// @title BuybackContract
/// @notice Buys back tokens using ETH and burns them
/// @dev Uses Uniswap V4 router to swap ETH for tokens, then burns the tokens
contract BuybackContract is Ownable {
    /// @notice Uniswap V4 swap router address (hardcoded)
    address public constant SWAP_ROUTER = 0x00000000000044a361Ae3cAc094c9D1b14Eece97;

    /// @notice The token to buy back and burn
    WhitelistableERC20 public immutable token;

    /// @notice The Uniswap V4 pool key for swaps
    PoolKey public poolKey;

    /// @notice The Uniswap V4 swap router
    ISwapRouter public immutable router = ISwapRouter(SWAP_ROUTER);

    /// @notice Total ETH used for buybacks
    uint256 public totalETHUsed;

    /// @notice Total tokens burned
    uint256 public totalTokenBurned;

    /// @notice Emitted when a buyback is executed
    event BuybackExecuted(
        uint256 ethUsed,
        uint256 tokensBurned,
        uint256 totalETHUsed,
        uint256 totalTokenBurned
    );

    error InvalidPercentage();
    error InsufficientBalance();
    error SwapFailed();

    /// @param _owner Owner who can trigger buybacks
    /// @param _poolKey Pool key for swaps
    /// @param _token Token to buy back and burn
    constructor(
        address _owner,
        PoolKey memory _poolKey,
        address _token
    ) Ownable(_owner) {
        require(_token != address(0), "Invalid token");

        poolKey = _poolKey;
        token = WhitelistableERC20(_token);
    }

    /// @notice Execute a buyback using a percentage of contract's ETH balance
    /// @param percentageToUse Percentage in basis points (5000 = 50%, 10000 = 100%)
    /// @param amountOutMin Minimum tokens to receive (slippage protection)
    function executeBuyback(
        uint24 percentageToUse,
        uint256 amountOutMin
    ) external onlyOwner {
        if (percentageToUse == 0 || percentageToUse > 10000) revert InvalidPercentage();

        uint256 contractBalance = address(this).balance;
        if (contractBalance == 0) revert InsufficientBalance();

        // Calculate ETH to use for buyback
        uint256 ethToUse = (contractBalance * percentageToUse) / 10000;
        if (ethToUse == 0) revert InsufficientBalance();

        // Execute swap: ETH (currency0) -> Token (currency1)
        // zeroForOne = true means swapping currency0 (ETH) for currency1 (token)
        try router.swapExactTokensForTokens{value: ethToUse}(
            ethToUse,
            amountOutMin,
            true,  // zeroForOne (ETH -> Token)
            poolKey,
            "",    // No hook data
            address(this),
            block.timestamp + 1000
        ) {
            // Get token balance received
            uint256 tokenBalance = token.balanceOf(address(this));

            if (tokenBalance == 0) revert SwapFailed();

            // Burn all received tokens
            token.burn(tokenBalance);

            // Update cumulative stats
            totalETHUsed += ethToUse;
            totalTokenBurned += tokenBalance;

            emit BuybackExecuted(ethToUse, tokenBalance, totalETHUsed, totalTokenBurned);
        } catch {
            revert SwapFailed();
        }
    }

    /// @notice Get current contract ETH balance
    /// @return uint256 ETH balance in wei
    function getETHBalance() external view returns (uint256) {
        return address(this).balance;
    }

    /// @notice Get buyback statistics
    /// @return ethUsed Total ETH used for buybacks
    /// @return tokensBurned Total tokens burned
    /// @return currentBalance Current ETH balance available for buybacks
    function getStats() external view returns (
        uint256 ethUsed,
        uint256 tokensBurned,
        uint256 currentBalance
    ) {
        return (totalETHUsed, totalTokenBurned, address(this).balance);
    }

    /// @notice Allow contract to receive ETH
    receive() external payable {}
}
