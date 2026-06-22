// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

import {RequestData, RebalanceParam, ProcessParam, AssetInfo} from "src/core/Structs.sol";

interface IFyde {
  function protocolData() external view returns (uint256, uint72, uint16, uint48, uint72, uint48);

  function assetInfo(address) external view returns (AssetInfo memory);

  function isAnyNotSupported(address[] calldata _assets) external view returns (address);

  function isSwapAllowed(address[] calldata _assets) external view returns (address);

  function computeProtocolAUM() external view returns (uint256);

  function getProtocolAUM() external view returns (uint256);

  function updateProtocolAUM(uint256) external;

  function processDeposit(uint256, RequestData calldata) external returns (uint256);

  function processWithdraw(uint256, RequestData calldata) external returns (uint256);

  function totalSupply() external view returns (uint256);

  function setOracleModule(address _oracle) external;

  function oracleModule() external view returns (address);

  function setRelayer(address _relayer) external;

  function RELAYER() external view returns (address);

  function totalAssetAccounting(address) external view returns (uint256);

  function proxyAssetAccounting(address) external view returns (uint256);

  function standardAssetAccounting(address) external view returns (uint256);

  function getQuote(address, uint256) external view returns (uint256);

  function getAssetDecimals(address) external view returns (uint8);

  function collectManagementFee() external;

  function getAssetsListLength() external view returns (uint256);

  function assetsList(uint256 index) external view returns (address);

  function processSwap(uint256, RequestData calldata) external returns (int256);

  function owner() external view returns (address);

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

  function acceptOwnership() external;

  // GOVERNANCE ACCESS FUNCTIONS

  function transferAsset(address _asset, address _recipient, uint256 _amount) external;

  function getRebalanceParams(address _asset) external view returns (RebalanceParam memory);

  function updateAssetProxyAmount(address _asset, uint256 _amount) external;
}
