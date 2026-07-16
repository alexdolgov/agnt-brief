// SPDX-License-Identifier: BSD-3-Clause
pragma solidity ^0.8.20;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

// Gateway implementation for releasing locked funds during L3 -> L2 migration.
// Deployed as a new implementation for the Gateway and Bridge proxies.
// Restricted to a single authorized recipient (Ledger EOA).
contract GatewayFundRelease {
  using SafeERC20 for IERC20;

  address public immutable authorizedSender;
  address public immutable authorizedRecipient;

  error UnauthorizedSender(address sender);
  error ETHTransferFailed();

  constructor(address _authorizedSender, address _authorizedRecipient) {
    authorizedSender = _authorizedSender;
    authorizedRecipient = _authorizedRecipient;
  }

  modifier onlyAuthorizedSender() {
    if (msg.sender != authorizedSender) revert UnauthorizedSender(msg.sender);
    _;
  }

  function releaseFunds(address token, uint256 amount) external onlyAuthorizedSender {
    IERC20(token).safeTransfer(authorizedRecipient, amount);
  }

  function releaseETH(uint256 amount) external onlyAuthorizedSender {
    (bool sent, ) = authorizedRecipient.call{value: amount}("");
    if (!sent) revert ETHTransferFailed();
  }

  receive() external payable {}
}
