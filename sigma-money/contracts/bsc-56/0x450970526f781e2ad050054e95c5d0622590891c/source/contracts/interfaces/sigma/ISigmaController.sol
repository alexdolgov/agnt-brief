// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

interface ISigmaController {
  /// @param pool Pool address to interact with
  /// @param positionId Position ID (0 to create new)
  struct OpPosition {
    address pool;
    uint256 positionId;
  }

  /// @param collToken Address of collateral token (slisBNB, wBNB, BNB)
  /// @param collAmount Amount of collateral token
  struct OpColl {
    address collToken;
    uint256 collAmount;
  }

  /// @param debtToken Address of debt token (slisBNB, wBNB, BNB)
  /// @param debtAmount Amount of debt token
  struct OpDebt {
    address debtToken;
    uint256 debtAmount;
  }

  /// @param receiver Address to receive tokens and position NFT
  struct OpParameter {
    address receiver;
  }

  /// @param positionEntryPrice Entry price of the position, multiplied by 1e18
  /// @param positionColl Collateral amount of the position
  /// @param positionDebt Debt amount of the position
  struct PositionEntryPrice {
    uint256 entryPrice;
    uint256 positionColl;
    uint256 positionDebt;
  }
}
