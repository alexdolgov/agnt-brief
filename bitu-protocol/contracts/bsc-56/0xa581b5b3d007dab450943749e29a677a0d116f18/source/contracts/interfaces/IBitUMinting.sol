// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "./IBitUMintingEvents.sol";

interface IBitUMinting is IBitUMintingEvents {

  // 
  struct Position {
    uint256 collateral_amount;
    uint256 collateral_ratio;
    uint256 bitu_amount;
    uint256 lastTimestamp;
  }

  error Duplicate();
  error InvalidAddress();
  error InvalidBITUAddress();
  error InvalidZeroAddress();
  error InvalidAssetAddress();
  error InvalidCustodianAddress();
  error InvalidRatio();
  error InvalidAffirmedAmount();
  error InvalidAmount();
  error InvalidPosition();
  error UnsupportedAsset();
  error NoAssetsProvided();
  error TransferFailed();
  error MaxMintPerBlockExceeded();
  error MaxRedeemPerBlockExceeded();
  error InvalidEqualLength();
  error InsufficientMint();
  error NoLiqiudationStatus();
  error PositionUpdateFail();
  error NotCooldown();
  error InvalidOracleAddress();
  error InvalidMintFee();

  function mint(Position calldata pos, address asset) external payable;

  function redeem(Position calldata pos, address asset) external;

  function liquidate(address user, address asset) external;
}
