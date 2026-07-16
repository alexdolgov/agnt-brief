// SPDX-License-Identifier: MIT

pragma solidity ^0.8.12;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

import "./ComponentERC20.sol";
import "./ISettingsStore.sol";

contract ComponentExtractor {
  using SafeERC20 for IERC20;

  event ComponentExtracted(address playerId, address component, uint256 quantity, uint256 nonce);

  ISettingsStore settings;
  mapping(address => bool) public canExtract;
  uint256 nextNonce = 1000;

  constructor(ISettingsStore _settings) {
    settings = _settings;
  }

  function setCanExtract(address token, bool value) external {

    require(settings.isPermittedTo(msg.sender, "ComponentExtractor", "SetCanExtract"));

    canExtract[token] = value;
  }

  function __gold() private view returns (address) {
    return settings.resolve("gold-erc20.playeternity.io");
  }

  function __treasury() private view returns (address) {
    return settings.resolve("treasury.playeternity.io");
  }

  function extract(address erc20, uint256 quantity) external {

    require(canExtract[erc20], "400|UnsupportedToken");

    IERC20(erc20).safeTransferFrom(msg.sender, address(this), quantity);
    emit ComponentExtracted(msg.sender, erc20, quantity, nextNonce++);
    IERC20(erc20).safeTransfer(__treasury(), quantity);
  }
}
