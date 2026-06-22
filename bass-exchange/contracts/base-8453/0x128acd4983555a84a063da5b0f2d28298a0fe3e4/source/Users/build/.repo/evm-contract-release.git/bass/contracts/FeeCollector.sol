// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import '@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol';
import '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';

interface ISwapV2 {
    function swap(address fromToken, address toToken, uint256 amountIn, uint256 minAmountOut) external;
}

interface IDao {
    function notifyRewardAmount(address _token, uint256 _amount) external;
}

contract FeeCollector is OwnableUpgradeable {
    using SafeERC20 for IERC20;

    ISwapV2 public swapV2;

    function initialize(ISwapV2 _swapV2) external initializer {
        __Ownable_init();

        swapV2 = _swapV2;
    }

    function swap(address _fromToken, address _toToken) external onlyOwner {
        uint256 balance = IERC20(_fromToken).balanceOf(address(this));
        IERC20(_fromToken).safeIncreaseAllowance(address(swapV2), balance);
        swapV2.swap(_fromToken, _toToken, balance, 0);
    }

    function distrubute(address _dao, address _token, uint256 _amount) external onlyOwner {
        IERC20(_token).safeIncreaseAllowance(address(_dao), _amount);
        IDao(_dao).notifyRewardAmount(_token, _amount);
    }

    function setSwapV2(ISwapV2 _swapV2) external onlyOwner {
        swapV2 = _swapV2;
    }
}
