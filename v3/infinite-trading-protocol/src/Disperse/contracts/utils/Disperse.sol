// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.7.6;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

// solhint-disable reason-string
contract Disperse {
  function disperseEther(address payable[] calldata recipients, uint256[] calldata values) external payable {
    require(recipients.length == values.length, "input length mismatch");
    for (uint256 i = 0; i < recipients.length; i++) recipients[i].transfer(values[i]);
    uint256 balance = address(this).balance;
    if (balance > 0) msg.sender.transfer(balance);
  }

  function disperseToken(
    address tokenAddress,
    address payable[] calldata recipients,
    uint256[] calldata values
  ) external {
    require(recipients.length == values.length, "input length mismatch");
    IERC20 token = IERC20(tokenAddress);
    uint256 total = 0;
    for (uint256 i = 0; i < recipients.length; i++) total += values[i];
    require(token.transferFrom(msg.sender, address(this), total));
    for (uint256 i = 0; i < recipients.length; i++) require(token.transfer(recipients[i], values[i]));
  }

  function disperseTokenSimple(
    address tokenAddress,
    address payable[] calldata recipients,
    uint256[] calldata values
  ) external {
    require(recipients.length == values.length, "input length mismatch");
    IERC20 token = IERC20(tokenAddress);
    for (uint256 i = 0; i < recipients.length; i++) require(token.transferFrom(msg.sender, recipients[i], values[i]));
  }
}
