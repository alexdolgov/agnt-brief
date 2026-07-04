// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.23;

import "../PendleERC4626UpgSYV2.sol";

contract PendleConcreteVaultSY is PendleERC4626UpgSYV2 {
    error ConcreteInsufficientInstantAmountOut();

    uint256 public immutable LAST_RATE;

    constructor(address _concreteVault, uint256 _lastRate) PendleERC4626UpgSYV2(_concreteVault) {
        LAST_RATE = _lastRate;
    }

    function _redeem(
        address receiver,
        address tokenOut,
        uint256 amountSharesToRedeem
    ) internal override returns (uint256 amountTokenOut) {
        if (tokenOut == yieldToken) {
            amountTokenOut = amountSharesToRedeem;
            _transferOut(yieldToken, receiver, amountTokenOut);
        } else {
            uint256 preBalance = IERC20(tokenOut).balanceOf(receiver);
            amountTokenOut = IERC4626(yieldToken).redeem(amountSharesToRedeem, receiver, address(this));
            uint256 instantAmountOut = IERC20(tokenOut).balanceOf(receiver) - preBalance;

            if (instantAmountOut < amountTokenOut) {
                revert ConcreteInsufficientInstantAmountOut();
            }
        }
    }

    function exchangeRate() public view virtual override returns (uint256) {
        return LAST_RATE;
    }
}
