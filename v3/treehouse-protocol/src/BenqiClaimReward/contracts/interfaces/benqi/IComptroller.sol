// SPDX-License-Identifier: MIT
pragma solidity =0.8.24;

/// @dev Benqi Comptroller interface for market management
interface IComptroller {
  function enterMarkets(address[] calldata qiTokens) external returns (uint[] memory);

  function exitMarket(address qiToken) external returns (uint);

  function getAccountLiquidity(address account) external view returns (uint, uint, uint);

  function claimReward(
    uint8 rewardType,
    address payable[] memory holders,
    address[] memory qiTokens,
    bool borrowers,
    bool suppliers
  ) external payable;
}
