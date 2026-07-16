// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract MockGauge is ERC20 {
  using SafeERC20 for IERC20;

  address public immutable stakingToken;

  constructor(address _stakingToken) ERC20("MockGauge", "MGauge") {
    stakingToken = _stakingToken;
  }

  function deposit(uint256 amount) external {
    _deposit(msg.sender, amount, msg.sender);
  }

  function deposit(uint256 amount, address receiver) external {
    _deposit(msg.sender, amount, receiver);
  }

  function withdraw(uint256 amount) external {
    _withdraw(msg.sender, amount, msg.sender);
  }

  function withdraw(uint256 amount, address receiver) external {
    _withdraw(msg.sender, amount, receiver);
  }

  function _deposit(address owner, uint256 amount, address receiver) internal {
    require(amount > 0, "DepositZeroAmount");

    // transfer in
    IERC20(stakingToken).safeTransferFrom(owner, address(this), amount);

    // mint shares
    _mint(receiver, amount);
  }

  function _withdraw(address owner, uint256 amount, address receiver) internal {
    require(amount > 0, "WithdrawZeroAmount");

    // burn shares
    _burn(owner, amount);

    // transfer out
    IERC20(stakingToken).safeTransfer(receiver, amount);
  }
}
