// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import { GudVaultV0, IERC20 } from "./GudVaultV0.sol";
import { IGudVaultV1 } from "./interfaces/IGudVaultV1.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract GudVaultV1 is GudVaultV0, IGudVaultV1 {

  using SafeERC20 for IERC20;

  function withdraw(IERC20 token, uint256 amount) external nonZeroCheck(amount) {
    if (
      (_supportedToken[token] == false && token != _ETH) ||
      token == _LIDO
    ) {
      revert UnsupportedToken();
    }
    _withdrawDeposits(token, msg.sender, amount);
  }

  function withdrawStETH(uint256 share) external nonZeroCheck(share) {
    address user = msg.sender;
    if (share > _stETHShares[user]) {
      revert ExceedDepositBalance();
    }
    uint256 amount = _LIDO.balanceOf(address(this)) * share / _stETHTotalShare;
    _burnShare(user, share);

    emit Withdraw(_LIDO, user, amount, share);

    _LIDO.safeTransfer(user, amount);
  }

  function _withdrawDeposits(IERC20 token, address user, uint256 amount) internal {
    if (_depositBalance[token][user] < amount ) {
      revert ExceedDepositBalance();
    }

    _depositBalance[token][user] -= amount;

    emit Withdraw(token, user, amount, 0);

    if (token != _ETH) {
      token.safeTransfer(user, amount);
    } else {
      (bool success, ) = user.call{ value: amount }("");
      if (!success) {
        revert EthWithdrawFailed();
      }
    }
  }
}