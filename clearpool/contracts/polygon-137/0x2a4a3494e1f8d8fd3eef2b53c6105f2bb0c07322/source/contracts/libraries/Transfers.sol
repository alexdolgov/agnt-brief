// SPDX-License-Identifier: MIT

pragma solidity 0.8.8;

import "@openzeppelin/contracts/utils/Address.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

library Transfers {
    using SafeERC20 for IERC20;
    using Address for address payable;

    function transferIn(
        address token,
        address from,
        uint256 amount
    ) internal {
        if (token == address(0)) {
            require(msg.value == amount, "ERR_INVALID_AMOUNT");
        } else {
            require(msg.value == 0, "eth amount must be zero");
            uint256 balanceBefore = IERC20(token).balanceOf(address(this));
            IERC20(token).safeTransferFrom(from, address(this), amount);
            require(
                IERC20(token).balanceOf(address(this)) - balanceBefore ==
                    amount,
                "invalid transfer result"
            );
        }
    }

    function transferOut(
        address token,
        address to,
        uint256 amount
    ) internal {
        if (token == address(0)) {
            payable(to).sendValue(amount);
        } else {
            IERC20(token).safeTransfer(to, amount);
        }
    }

    function approve(
        address token,
        address spender,
        uint256 amount
    ) internal {
        if (token == address(0)) {
            return;
        }

        uint256 allowance = IERC20(token).allowance(address(this), spender);
        if (allowance > 0) {
            // https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
            IERC20(token).safeApprove(spender, 0);
        }
        IERC20(token).safeIncreaseAllowance(spender, amount);
    }

    function getBalance(address token) internal view returns (uint256) {
        if (address(token) == address(0)) {
            return address(this).balance;
        } else {
            return IERC20(token).balanceOf(address(this));
        }
    }
}
