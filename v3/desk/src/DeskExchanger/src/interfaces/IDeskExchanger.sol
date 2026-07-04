// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

interface IDeskExchanger {
  // Events
  event ExchangeToken(
    address user,
    address fromToken,
    address toToken,
    uint256 fromAmount,
    uint256 toAmount
  );

  // Functions
  function exchangeToken(address fromToken, uint256 amount) external returns (uint256);

  function desk() external returns (address);

  function bDesk() external returns (address);

  function hmx() external returns (address);

  function esHmx() external returns (address);

  function lhmx2() external returns (address);

  function lhmx3() external returns (address);

  function ldesk2() external returns (address);

  function ldesk3() external returns (address);

  function RATIO() external returns (uint256);

  function setWhitelisted(address _address, bool _whitelisted) external;
}
