// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "../interfaces/IReserveAdapter.sol";
import "../interfaces/IChainlinkEthAdapter.sol";
import "../interfaces/IPriceFeedAggregator.sol";
import "./RebasingAdapter.sol";
import "../library/ExternalContractAddresses.sol";

contract RebasingLstAdapter is RebasingAdapter {
  using SafeERC20 for IERC20;

  constructor(
    address _reserveHolder,
    address _priceFeedAggregator,
    address _asset
  ) RebasingAdapter(_reserveHolder, _priceFeedAggregator, _asset) {}

  /// @inheritdoc IReserveAdapter
  function deposit(uint256 amount) external {
    IERC20(asset).safeTransferFrom(msg.sender, address(this), amount);
    totalDeposited += amount;
    emit Deposit(amount);
  }

  /// @inheritdoc IReserveAdapter
  function claimRewards(address receiver) external onlyReserveHolder returns (uint256) {
    uint256 balance = IERC20(asset).balanceOf(address(this));
    uint256 reward = balance - totalDeposited;
    IERC20(asset).safeTransfer(receiver, reward);

    emit ClaimRewards(receiver, reward);
    return reward;
  }
}
