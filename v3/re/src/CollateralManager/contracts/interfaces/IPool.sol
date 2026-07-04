//SPDX-License-Identifier: ISC
pragma solidity 0.8.20;
import {PoolToken} from "../token/PoolToken.sol";

interface IPool {
  struct FeePercentage {
    uint management;
    uint performance;
  }

  /// @dev Get collateral limit amount
  function getCollateralLimit() external view returns (uint);

  function getTransferDate() external view returns (uint);

  function requestCollateralReservation(
    address token,
    uint amount
  ) external returns (uint256);
  function requestCollateralTransfer(
    address token,
    uint amount
  ) external returns (uint256);

  function requestProfitReturn(
    address token,
    uint256 amount
  ) external returns (uint256);

  function cancelProfitReturn(uint256 requestId) external;

  /// @dev Request an increase to the pool's collateral limit
  function requestCollateralLimitIncrease(
    uint256 requestedLimit
  ) external returns (uint256);

  /// @dev Cancel a pending collateral limit increase request
  function cancelCollateralLimitIncrease(uint256 requestId) external;

  /// @dev Update the pool's collateral limit (called by CollateralProvider after approval)
  function updateCollateralLimit(uint256 newLimit) external;
}
