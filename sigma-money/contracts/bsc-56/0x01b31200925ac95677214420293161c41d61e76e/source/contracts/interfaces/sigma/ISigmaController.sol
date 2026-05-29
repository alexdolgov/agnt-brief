// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

interface ISigmaController {
  /// @param _pool FX Pool address to interact with
  /// @param positionId Existing position ID (0 to create new)
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

  /// @param collToken Address of collateral token (slisBNB, wBNB, BNB)
  /// @param collAmount Amount of collateral token
  struct OpDebt {
    address debtToken;
    uint256 debtAmount;
  }

  /// @param receiver Address to receive tokens and position NFT
  /// @param slippageTolerance Slippage tolerance for ltv, multiplied by 1e9
  struct OpParameter {
    address receiver;
    uint256 slippageTolerance;
  }

  struct PositionEntryPrice {
    uint256 entryPrice;
    uint256 positionColl;
    uint256 positionDebt;
  }
}
