pragma solidity ^0.8.26;

import {IUniswapV2Router02} from "node_modules/@uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IWETH} from "node_modules/@uniswap/v2-periphery/contracts/interfaces/IWETH.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {console2} from "forge-std/Test.sol";

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
    IERC20SwapperRecipient swapper;

    constructor(
        address initialOwner,
        IERC20SwapperRecipient _swapper
    ) Ownable(initialOwner) {
        swapper = _swapper;
    }

    /// Used to update the implementation
    function updateImplementation(IERC20SwapperRecipient _swapper) external onlyOwner {
        swapper = _swapper;
    }

    function swapEtherToToken(
        address token,
        uint minAmount
    ) public payable returns (uint) {
        // (bool success, bytes memory ret) = address(swapper).delegatecall(
        //     abi.encodeWithSelector(
        //         IERC20Swapper.swapEtherToToken.selector,
        //         token,
        //         minAmount
        //     )
        // );

        return swapper.swapEtherToTokenRecipient{value: msg.value}(token, minAmount, msg.sender);
    }
}
