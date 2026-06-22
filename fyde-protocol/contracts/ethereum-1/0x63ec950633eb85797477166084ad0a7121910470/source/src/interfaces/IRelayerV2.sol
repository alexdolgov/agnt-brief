// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

import {UserRequest} from "../core/Structs.sol";

interface IRelayerV2 {
  function governanceWithdraw(UserRequest memory _userRequest, address _user, uint256 _maxTRSYToPay)
    external
    payable;

  function withdraw(UserRequest[] memory _userRequest, uint256 _maxTRSYToPay) external payable;

  function deposit(UserRequest[] memory _userRequest, bool _keepGovRights, uint256 _minTRSYExpected)
    external
    payable;

  function swap(address _assetIn, uint256 _amountIn, address _assetOut, uint256 _minAmountOut)
    external
    payable;

  function isQuarantined(address _asset) external view returns (bool);

  function isIncentiveManager(address _incentiveManager) external view returns (bool);

  function isUser(address _asset) external view returns (bool);

  function isAnyQuarantined(address[] memory _assets) external view returns (address);

  function deviationThreshold() external view returns (uint16);

  function pauseProtocol() external;

  function updateProtocolAUM(uint256 nAum) external;
}
