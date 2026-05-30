//          .8.              ,o888888o.    8 888888888o.   `8.`8888.      ,8' 8 888888888o   8888888 8888888888     ,o888888o.        d888888o.
//         .888.            8888     `88.  8 8888    `88.   `8.`8888.    ,8'  8 8888    `88.       8 8888        . 8888     `88.    .`8888:' `88.
//        :88888.        ,8 8888       `8. 8 8888     `88    `8.`8888.  ,8'   8 8888     `88       8 8888       ,8 8888       `8b   8.`8888.   Y8
//       . `88888.       88 8888           8 8888     ,88     `8.`8888.,8'    8 8888     ,88       8 8888       88 8888        `8b  `8.`8888.
//      .8. `88888.      88 8888           8 8888.   ,88'      `8.`88888'     8 8888.   ,88'       8 8888       88 8888         88   `8.`8888.
//     .8`8. `88888.     88 8888           8 888888888P'        `8. 8888      8 888888888P'        8 8888       88 8888         88    `8.`8888.
//    .8' `8. `88888.    88 8888           8 8888`8b             `8 8888      8 8888               8 8888       88 8888        ,8P     `8.`8888.
//   .8'   `8. `88888.   `8 8888       .8' 8 8888 `8b.            8 8888      8 8888               8 8888       `8 8888       ,8P  8b   `8.`8888.
//  .888888888. `88888.     8888     ,88'  8 8888   `8b.          8 8888      8 8888               8 8888        ` 8888     ,88'   `8b.  ;8.`8888
// .8'       `8. `88888.     `8888888P'    8 8888     `88.        8 8888      8 8888               8 8888           `8888888P'      `Y8888P ,88P'

// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.13;

// Using @openzeppelin/contracts-upgradeable@4.5.2
import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";

struct TokenToSwap {
    IERC20Upgradeable[] path;
    IUniswapRouter router;
}

library ACryptoSSwaps {
    using SafeERC20Upgradeable for IERC20Upgradeable;

    function add(
        TokenToSwap[] storage tokensToSwap,
        TokenToSwap[] memory _tokensToSwap
    ) internal {
        for (uint256 i = 0; i < _tokensToSwap.length; i++) {
            tokensToSwap.push(_tokensToSwap[i]);
        }
    }

    function swap(TokenToSwap[] storage tokensToSwap) internal {
        for (uint256 i = tokensToSwap.length; i > 0; i--) {
            swap(tokensToSwap[i - 1]);
        }
    }

    function swap(TokenToSwap storage tokenToSwap) internal {
        uint256 _amount = tokenToSwap.path[0].balanceOf(address(this));
        if (_amount > 0) {
            tokenToSwap.path[0].safeIncreaseAllowance(
                address(tokenToSwap.router),
                _amount
            );

            tokenToSwap.router.swapExactTokensForTokens(
                _amount,
                0,
                tokenToSwap.path,
                address(this),
                block.timestamp + 1800
            );
        }
    }
}

interface IUniswapRouter {
    function swapExactTokensForTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        IERC20Upgradeable[] calldata path,
        address to,
        uint256 deadline
    ) external returns (uint256[] memory amounts);
}
