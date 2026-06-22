// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

import {RequestData, ProcessParam} from "src/core/Structs.sol";

interface ITaxModule {
  function getProcessParamDeposit(RequestData memory _req, uint256 _protocolAUM)
    external
    view
    returns (
      ProcessParam[] memory processParam,
      uint256 sharesToMint,
      uint256 taxInTRSY,
      uint256 totalUsdDeposit
    );

  function getProcessParamWithdraw(RequestData calldata _req, uint256 _protocolAUM)
    external
    view
    returns (
      ProcessParam[] memory processParam,
      uint256 totalSharesToBurn,
      uint256 sharesToBurnBeforeTax,
      uint256 taxInTRSY,
      uint256 totalUsdWithdraw
    );

  function getSwapAmountOut(
    address _assetIn,
    uint256 _amountIn,
    address _assetOut,
    uint256 _protocolAUM
  ) external view returns (uint256, int256);
}
