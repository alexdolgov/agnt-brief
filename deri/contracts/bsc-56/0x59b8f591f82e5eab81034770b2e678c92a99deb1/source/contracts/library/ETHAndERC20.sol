// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

import '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import '@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol';
import '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import './Consts.sol';
import './Errors.sol';

/// Library for operating ERC20 and ETH in one logic

library ETHAndERC20 {

    using SafeERC20 for IERC20;

    function decimals(address token) internal view returns (uint8) {
        return token == Consts.TOKEN_ETH ? 18 : IERC20Metadata(token).decimals();
    }

    // @notice Get the balance of ERC20 tokens or Ether held by this contract
    function balanceOfThis(address token) internal view returns (uint256) {
        return token == Consts.TOKEN_ETH
            ? address(this).balance
            : IERC20(token).balanceOf(address(this));
    }

    function approveMax(address token, address spender) internal {
        if (token != Consts.TOKEN_ETH) {
            uint256 allowance = IERC20(token).allowance(address(this), spender);
            if (allowance != type(uint256).max) {
                if (allowance != 0) {
                    IERC20(token).approve(spender, 0);
                }
                IERC20(token).approve(spender, type(uint256).max);
            }
        }
    }

    function unapprove(address token, address spender) internal {
        if (token != Consts.TOKEN_ETH) {
            uint256 allowance = IERC20(token).allowance(address(this), spender);
            if (allowance != 0) {
                IERC20(token).approve(spender, 0);
            }
        }
    }

    // @notice Transfer ERC20 tokens or Ether from 'from' to this contract
    function transferIn(address token, address from, uint256 amount) internal {
        if (token == Consts.TOKEN_ETH) {
            require(amount == msg.value, Errors.WRONG_TOKEN_IN_AMOUNT);
        } else {
            uint256 balance1 = balanceOfThis(token);
            IERC20(token).safeTransferFrom(from, address(this), amount);
            uint256 balance2 = balanceOfThis(token);
            require(balance2 == balance1 + amount, Errors.WRONG_TOKEN_IN_AMOUNT);
        }
    }

    // @notice Transfer ERC20 tokens or Ether from this contract to 'to'
    function transferOut(address token, address to, uint256 amount) internal {
        uint256 balance1 = balanceOfThis(token);
        if (token == Consts.TOKEN_ETH) {
            (bool success, ) = payable(to).call{value: amount}('');
            require(success, Errors.TRANSFER_ETH_FAIL);
        } else {
            IERC20(token).safeTransfer(to, amount);
        }
        uint256 balance2 = balanceOfThis(token);
        require(balance1 == balance2 + amount, Errors.WRONG_TOKEN_OUT_AMOUNT);
    }

}
