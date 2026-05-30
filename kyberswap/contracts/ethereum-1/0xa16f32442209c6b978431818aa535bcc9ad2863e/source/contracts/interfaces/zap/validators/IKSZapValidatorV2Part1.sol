// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

interface IKSZapValidatorV2Part1 {
  /// @notice Contains pool, posManage address
  /// posID = 0 -> minting a new position, otherwise increasing to existing one
  struct UniswapV3ZapInfo {
    address pool;
    address posManager;
    uint256 posID;
  }

  /// @notice Return data for validation purpose
  /// In case minting a new position: it calculates the current total supply
  struct UniswapV3ValidationData {
    UniswapV3ZapInfo zapInfo;
    uint256 initialLiquidity;
  }

  /// @notice Contains pool, posManage address
  /// posID = 0 -> minting a new position, otherwise increasing to existing one
  /// first 32 bytes: offset for tickLower, second 32 bytes: offset for tickUpper, third 32 bytes: offset for liquidity
  struct UniversalCLZapInfo {
    address pool;
    address posManager;
    uint256 posID;
    uint256 offsetPositionFields;
  }

  /// @notice Return data for validation purpose
  /// In case minting a new position: it calculates the current total supply
  struct UniversalCLValidationData {
    UniversalCLZapInfo zapInfo;
    uint256 initialLiquidity;
  }

  /// @notice Extra data to be used for validation after zapping
  struct UniswapV3ExtraData {
    address recipient;
    int24 tickLower;
    int24 tickUpper;
    uint256 minLiquidity;
  }

  /// @notice Validation data for ERC20 token
  struct ERC20ValidationData {
    ERC20ZapInfo zapInfo;
    uint256 initialBalance;
  }

  /// @notice Validation data for multi ERC20 token
  struct MultiERC20ValidationData {
    ERC20ZapInfo[] zapInfo;
    uint256[] initialBalances;
  }

  /// @notice ERC20 token zap info
  struct ERC20ZapInfo {
    address token;
    address recipient;
  }

  /// @notice Solidly V3 Zap Info
  struct SolidlyV3ZapInfo {
    address pool;
    address recipient;
    int24 tickLower;
    int24 tickUpper;
  }

  /// @notice Return Solidly V3 Zap Data, and initial liquidity of the recipient
  struct SolidlyV3ValidationData {
    SolidlyV3ZapInfo zapInfo;
    uint256 initialLiquidity;
  }

  /// @notice Contains pool, posManage address
  /// posID = 0 -> minting a new position, otherwise increasing to existing one
  struct UniswapV4ZapInfo {
    address posManager;
    uint256 tokenId;
  }

  /// @notice Return data for validation purpose
  /// In case minting a new position: it calculates the current total supply
  struct UniswapV4ValidationData {
    UniswapV4ZapInfo zapInfo;
    uint256 initialLiquidity;
  }

  /// @notice Extra data to be used for validation after zapping
  struct UniswapV4ExtraData {
    address recipient;
    int24 tickLower;
    int24 tickUpper;
    uint256 minLiquidity;
  }

  struct PancakeV4BinZapInfo {
    address posManager;
    address poolManager;
    bytes32 poolId;
    int24[] deltaIds;
    address recipient;
  }

  struct PancakeV4BinValidationData {
    PancakeV4BinZapInfo zapInfo;
    int24 activeId;
    uint256[] shares;
  }

  struct PancakeV4BinExtraData {
    uint256[] minReserveXs;
    uint256[] minReserveYs;
  }
}
