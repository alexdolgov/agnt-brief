// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

import {SafeTransferLib} from "lib/solady/src/utils/SafeTransferLib.sol";

import {IVifCore} from "../interfaces/base/IVifCore.sol";
import {ILockCallback} from "../interfaces/ILockCallback.sol";

import {LibLock} from "../libraries/LibLock.sol";
import {LibDeltas} from "../libraries/LibDeltas.sol";
import {LibAuthorization} from "../libraries/LibAuthorization.sol";
import {LibPausable} from "../libraries/LibPausable.sol";
import {LibBlackList} from "../libraries/LibBlackList.sol";
import {LibFees} from "../libraries/LibFees.sol";

//    ░██    ░██ ░██    ░████   ░██████
//    ░██    ░██       ░██     ░██   ░██
//    ░██    ░██ ░██░████████ ░██         ░███████  ░██░████  ░███████
//    ░██    ░██ ░██   ░██    ░██        ░██    ░██ ░███     ░██    ░██
//     ░██  ░██  ░██   ░██    ░██        ░██    ░██ ░██      ░█████████
//      ░██░██   ░██   ░██     ░██   ░██ ░██    ░██ ░██      ░██
//       ░███    ░██   ░██      ░██████   ░███████  ░██       ░███████

/// @title VifCore
/// @notice The module containing core functionnalities for the Vif protocol.
/// @dev Implements the IVifCore interface.
/// @dev Handles the locking and unlocking of the contract, as well as the settling debts/credits.
contract VifCore is IVifCore {
  using SafeTransferLib for address;
  using LibDeltas for address;
  using LibAuthorization for address;

  /// @dev throws when attempting to settle native with incorrect `msg.value` or `from` is not the caller
  error UnableToSettleNative();

  /// @dev throws when attempting to take/settle an amount that overflows
  error AmountOverflow();

  /// @inheritdoc IVifCore
  function lock(bytes calldata data) external returns (bytes memory result) {
    LibPausable.checkNotPaused();
    LibBlackList.checkNotBlacklisted(msg.sender);
    LibLock.lock();
    result = ILockCallback(msg.sender).lockCallback(data);
    LibDeltas.ensureSettled();
    LibLock.unlock();
  }

  /// @inheritdoc IVifCore
  function settle(address token, uint256 amount, address from) external payable {
    unchecked {
      LibLock.checkLocked();
      if (amount == 0) return;
      // forge-lint: disable-next-line(unsafe-typecast)
      if (amount > uint256(type(int256).max)) revert AmountOverflow();
      from.checkAuthorization(msg.sender);
      if (token == LibDeltas.NATIVE) {
        if (msg.value != amount || from != msg.sender) revert UnableToSettleNative();
      } else {
        token.safeTransferFrom(from, address(this), amount);
      }
      // forge-lint: disable-next-line(unsafe-typecast)
      token.applyDelta(int256(amount));
    }
  }

  /// @inheritdoc IVifCore
  function take(address token, uint256 amount, address receiver) external {
    unchecked {
      LibLock.checkLocked();
      if (amount == 0) return;
      // forge-lint: disable-next-line(unsafe-typecast)
      if (amount > uint256(type(int256).max)) revert AmountOverflow();
      // forge-lint: disable-next-line(unsafe-typecast)
      token.applyDelta(-int256(amount));
      if (token == LibDeltas.NATIVE) {
        receiver.safeTransferETH(amount);
      } else {
        token.safeTransfer(receiver, amount);
      }
    }
  }

  /// @inheritdoc IVifCore
  function clear(address token, uint256 amount) external {
    unchecked {
      LibLock.checkLocked();
      if (amount == 0) return;
      if (amount > uint256(type(int256).max)) revert AmountOverflow();
      // casting to 'int256' is safe because amount is less than max int256
      // forge-lint: disable-next-line(unsafe-typecast)
      token.applyDelta(-int256(amount));
      LibFees.addFees(token, amount);
    }
  }
}
