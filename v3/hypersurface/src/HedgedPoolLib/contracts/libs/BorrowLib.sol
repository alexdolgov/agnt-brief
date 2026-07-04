// SPDX-License-Identifier: None

pragma solidity >=0.8.18;

import {IHedgedPool} from "../interfaces/IHedgedPool.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

library BorrowLib {
    using SafeERC20 for IERC20;

    function borrowFromPoolAndTransfer(
        IHedgedPool hedgedPool,
        address token,
        uint256 amount
    ) internal {
        hedgedPool.borrowFromPool(token, amount);
        IERC20(token).safeTransferFrom(
            address(hedgedPool),
            address(this),
            amount
        );
    }

    function depositToPoolAndTransfer(
        IHedgedPool hedgedPool,
        address token,
        uint256 amount
    ) internal {
        IERC20(token).safeTransfer(address(hedgedPool), amount);
        hedgedPool.depositToPool(token, amount);
    }
}
