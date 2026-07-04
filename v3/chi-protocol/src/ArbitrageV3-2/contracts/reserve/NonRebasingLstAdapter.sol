// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "../interfaces/IReserveAdapter.sol";
import "../interfaces/IChainlinkEthAdapter.sol";
import "../interfaces/IPriceFeedAggregator.sol";
import "../library/ExternalContractAddresses.sol";
import "./RebasingAdapter.sol";

contract NonRebasingLstAdapter is RebasingAdapter {
  using SafeERC20 for IERC20;

  constructor(
    address _reserveHolder,
    address _priceFeedAggregator,
    address _asset
  ) RebasingAdapter(_reserveHolder, _priceFeedAggregator, _asset) {}

  /// @inheritdoc IReserveAdapter
  function deposit(uint256 amount) external {
    IERC20(asset).safeTransferFrom(msg.sender, address(this), amount);
    IChainlinkEthAdapter chainlinkEthAdapter = IChainlinkEthAdapter(address(priceFeedAggregator.priceFeeds(asset)));
    uint256 assetEthExchangeRate = chainlinkEthAdapter.exchangeRate();

    uint256 amountInEth = Math.mulDiv(amount, assetEthExchangeRate, IERC20Metadata(asset).decimals());
    totalDeposited += amountInEth;

    emit Deposit(amount);
  }

  /// @inheritdoc IReserveAdapter
  function claimRewards(address receiver) external onlyReserveHolder returns (uint256) {
    IChainlinkEthAdapter chainlinkEthAdapter = IChainlinkEthAdapter(address(priceFeedAggregator.priceFeeds(asset)));
    uint256 assetEthExchangeRate = chainlinkEthAdapter.exchangeRate();

    uint256 totalBalanceInEth = Math.mulDiv(
      IERC20(asset).balanceOf(address(this)),
      assetEthExchangeRate,
      IERC20Metadata(asset).decimals()
    );
    uint256 totalRewardsInEth = totalBalanceInEth - totalDeposited;
    uint256 totalRewardsInAsset = Math.mulDiv(totalRewardsInEth, 1e18, assetEthExchangeRate);

    IERC20(asset).safeTransfer(receiver, totalRewardsInAsset);

    emit ClaimRewards(receiver, totalRewardsInAsset);
    return totalRewardsInAsset;
  }
}
