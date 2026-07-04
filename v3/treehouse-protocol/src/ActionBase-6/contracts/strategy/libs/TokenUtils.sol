// SPDX-License-Identifier: MIT

pragma solidity =0.8.24;

import '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import '@openzeppelin/contracts/interfaces/IERC20Metadata.sol';

library TokenUtils {
  using SafeERC20 for IERC20;

  address public constant AVAX_ADDR = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

  /// @dev Only approves the amount if allowance is lower than amount, does not decrease allowance
  function approveToken(address _tokenAddr, address _to, uint256 _amount) internal {
    if (_tokenAddr == AVAX_ADDR) return;

    if (IERC20(_tokenAddr).allowance(address(this), _to) < _amount) {
      IERC20(_tokenAddr).forceApprove(_to, _amount);
    }
  }

  function getBalance(address _tokenAddr, address _acc) internal view returns (uint256) {
    if (_tokenAddr == AVAX_ADDR) {
      return _acc.balance;
    } else {
      return IERC20(_tokenAddr).balanceOf(_acc);
    }
  }
}
