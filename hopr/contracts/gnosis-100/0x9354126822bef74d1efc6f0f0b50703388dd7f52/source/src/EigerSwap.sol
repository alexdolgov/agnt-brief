pragma solidity ^0.8.26;

import {IUniswapV2Router02} from "node_modules/@uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IWETH} from "node_modules/@uniswap/v2-periphery/contracts/interfaces/IWETH.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IERC20Swapper {
    /// @dev swaps the `msg.value` Ether to at least `minAmount` of tokens in `address`, or reverts
    /// @param token The address of ERC-20 token to swap
    /// @param minAmount The minimum amount of tokens transferred to msg.sender
    /// @return The actual amount of transferred tokens
    function swapEtherToToken(
        address token,
        uint minAmount
    ) external payable returns (uint);
}

interface IERC20SwapperRecipient {
    /// @dev swaps the `msg.value` Ether to at least `minAmount` of tokens in `address`, or reverts
    /// @param token The address of ERC-20 token to swap
    /// @param minAmount The minimum amount of tokens transferred to msg.sender
    /// @param to address to sent the received tokens to
    /// @return The actual amount of transferred tokens
    function swapEtherToTokenRecipient(
        address token,
        uint minAmount,
        address to
    ) external payable returns (uint);
}

/// Default implementation for UniSwap V2
contract UniswapV2Swapper is IERC20SwapperRecipient {
    IUniswapV2Router02 public router;

    constructor(IUniswapV2Router02 _router) {
        router = _router;
    }

    /// As the name says. Takes the sent amount of ETH and swaps it to
    /// at least `minAmount` of tokens managed by the token contract
    /// `token` and transfers them - if successful - to `to`.
    function swapEtherToTokenRecipient(
        address token,
        uint minAmount,
        address to
    ) public payable returns (uint) {
        address[] memory path = new address[](2);
        path[0] = router.WETH();
        path[1] = token;

        uint[] memory results = router.swapExactETHForTokens{value: msg.value}(
            minAmount,
            path,
            to,
            block.timestamp
        );

        return results[1];
    }
}

contract MyERC20Swapper is IERC20Swapper, Ownable {
    IERC20SwapperRecipient public swapper;

    constructor(
        address initialOwner,
        IERC20SwapperRecipient _swapper
    ) Ownable(initialOwner) {
        swapper = _swapper;
    }

    /// Updates the implementation of the DEX connector 
    /// - if that becomes necessary.
    function updateImplementation(
        IERC20SwapperRecipient _swapper
    ) external onlyOwner {
        swapper = _swapper;
    }

    /// Swaps the given amount of ETH to at least `minAmount`
    /// of `token` tokens.
    function swapEtherToToken(
        address token,
        uint minAmount
    ) public payable returns (uint) {
        return
            swapper.swapEtherToTokenRecipient{value: msg.value}(
                token,
                minAmount,
                msg.sender
            );
    }
}
