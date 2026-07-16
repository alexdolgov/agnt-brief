// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

interface IZapExecutorPosition {
  // @notice Function execute zap
  /// @param _executorData bytes data and will be decoded into corresponding data depends on dex type
  /// @return zapResults result of the zap, depend on dex type
  function executeZap(
    bytes calldata _executorData
  ) external payable returns (bytes memory zapResults);
}
