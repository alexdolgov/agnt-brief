// SPDX-License-Identifier: MIT
pragma solidity 0.7.6;
pragma experimental ABIEncoderV2;

import {IERC721Enumerable} from "@openzeppelin/contracts/token/ERC721/IERC721Enumerable.sol";

import {IFlatcoinVault} from "./IFlatcoinVault.sol";
import {IDelayedOrder} from "./IDelayedOrder.sol";

interface ILeverageModule is IERC721Enumerable {
  struct PositionSummary {
    int256 profitLoss;
    int256 accruedFunding;
    int256 marginAfterSettlement;
  }

  function getPositionSummary(uint256 tokenId) external view returns (PositionSummary memory positionSummary);

  function vault() external view returns (IFlatcoinVault vaultAddress);

  function executeOpen(address account, address keeper, IDelayedOrder.Order calldata order) external;

  function executeClose(address account, address keeper, IDelayedOrder.Order calldata order) external;
}
