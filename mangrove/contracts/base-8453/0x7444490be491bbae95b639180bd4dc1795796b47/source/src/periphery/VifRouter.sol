// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

import {IVif} from "../interfaces/IVif.sol";
import {ILockCallback} from "../interfaces/ILockCallback.sol";
import {Dispatcher, DispatchResult} from "./dispatcher/Dispatcher.sol";
import {LibBytes} from "lib/solady/src/utils/LibBytes.sol";
import {ReentrancyGuardTransient} from "lib/solady/src/utils/ReentrancyGuardTransient.sol";
import {LibPausable} from "../libraries/LibPausable.sol";
import {Ownable} from "lib/solady/src/auth/Ownable.sol";
import {IVifRouter} from "../interfaces/periphery/IVifRouter.sol";

//    ░██    ░██ ░██    ░████ ░█████████                           ░██
//    ░██    ░██       ░██    ░██     ░██                          ░██
//    ░██    ░██ ░██░████████ ░██     ░██  ░███████  ░██    ░██ ░████████  ░███████  ░██░████
//    ░██    ░██ ░██   ░██    ░█████████  ░██    ░██ ░██    ░██    ░██    ░██    ░██ ░███
//     ░██  ░██  ░██   ░██    ░██   ░██   ░██    ░██ ░██    ░██    ░██    ░█████████ ░██
//      ░██░██   ░██   ░██    ░██    ░██  ░██    ░██ ░██   ░███    ░██    ░██        ░██
//       ░███    ░██   ░██    ░██     ░██  ░███████   ░█████░██     ░████  ░███████  ░██

/// @title VifRouter
/// @notice Router contract for the Vif protocol.
/// @dev Implements the IVifRouter interface.
/// @dev Handles the execution of commands and the setting of the paused state.
contract VifRouter is IVifRouter, ILockCallback, Dispatcher, ReentrancyGuardTransient, Ownable {
  using LibBytes for bytes;

  error InvalidCaller();
  error TransactionExpired();

  IVif public immutable VIF;

  constructor(address vif, address weth, address owner) Dispatcher(weth) {
    VIF = IVif(vif);
    _initializeOwner(owner);
  }

  /// @inheritdoc Ownable
  function _guardInitializeOwner() internal pure override returns (bool) {
    return true;
  }

  /// @inheritdoc ReentrancyGuardTransient
  function _useTransientReentrancyGuardOnlyOnMainnet() internal pure override returns (bool) {
    return false;
  }

  /// @dev internal function to execute the commands
  /// @param commands The commands to execute.
  /// @param args The arguments to the commands.
  /// @return result The result of the commands.
  function _execute(bytes calldata commands, bytes[] calldata args)
    internal
    nonReentrant
    returns (DispatchResult[] memory result)
  {
    LibPausable.checkNotPaused();
    bytes memory action = abi.encode(msg.sender, commands, args);
    bytes memory rawResult = VIF.lock(action);
    return abi.decode(rawResult, (DispatchResult[]));
  }

  /// @inheritdoc IVifRouter
  function execute(bytes calldata commands, bytes[] calldata args, uint256 deadline)
    external
    payable
    returns (DispatchResult[] memory result)
  {
    if (block.timestamp > deadline) revert TransactionExpired();
    return _execute(commands, args);
  }

  /// @inheritdoc IVifRouter
  function execute(bytes calldata commands, bytes[] calldata args)
    external
    payable
    returns (DispatchResult[] memory result)
  {
    return _execute(commands, args);
  }

  /// @inheritdoc ILockCallback
  function lockCallback(bytes calldata data) external returns (bytes memory result) {
    LibPausable.checkNotPaused();
    if (msg.sender != address(VIF)) revert InvalidCaller();
    (address sender, bytes memory commands, bytes[] memory args) = abi.decode(data, (address, bytes, bytes[]));

    uint256 len = commands.length;
    DispatchResult[] memory results = new DispatchResult[](len);

    for (uint256 i = 0; i < len; i++) {
      results[i] = _dispatch(sender, commands[i], args[i]);
    }
    return abi.encode(results);
  }

  /// @inheritdoc IVifRouter
  function setPaused(bool paused) external {
    _checkOwner();
    LibPausable.setPaused(paused);
  }

  /// @inheritdoc IVifRouter
  function isPaused() external view returns (bool result) {
    result = LibPausable.isPaused();
  }
}
