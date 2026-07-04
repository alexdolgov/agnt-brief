// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

import {Ownable} from "lib/solady/src/auth/Ownable.sol";
import {SafeTransferLib} from "lib/solady/src/utils/SafeTransferLib.sol";

import {IVifManager} from "../interfaces/base/IVifManager.sol";

import {LibMarket, Market} from "../libraries/LibMarket.sol";
import {LibProvision} from "../libraries/LibProvision.sol";
import {LibFees} from "../libraries/LibFees.sol";
import {LibPausable} from "../libraries/LibPausable.sol";
import {LibBlackList} from "../libraries/LibBlackList.sol";
import {LibDeltas} from "../libraries/LibDeltas.sol";

//    ░██    ░██ ░██    ░████ ░███     ░███
//    ░██    ░██       ░██    ░████   ░████
//    ░██    ░██ ░██░████████ ░██░██ ░██░██  ░██████   ░████████   ░██████    ░████████  ░███████  ░██░████
//    ░██    ░██ ░██   ░██    ░██ ░████ ░██       ░██  ░██    ░██       ░██  ░██    ░██ ░██    ░██ ░███
//     ░██  ░██  ░██   ░██    ░██  ░██  ░██  ░███████  ░██    ░██  ░███████  ░██    ░██ ░█████████ ░██
//      ░██░██   ░██   ░██    ░██       ░██ ░██   ░██  ░██    ░██ ░██   ░██  ░██   ░███ ░██        ░██
//       ░███    ░██   ░██    ░██       ░██  ░█████░██ ░██    ░██  ░█████░██  ░█████░██  ░███████  ░██
//                                                                                  ░██
//                                                                            ░███████

/// @title VifManager
/// @notice The module containing functionnalities for the owner of the contract.
/// @dev Implements the IVifManager interface.
/// @dev Handles the opening of markets, setting fees, setting minimum outbound units, setting active status, setting provisions, and withdrawing fees.
contract VifManager is IVifManager, Ownable {
  using LibMarket for Market;
  using LibMarket for bytes32;
  using SafeTransferLib for address;

  /// @dev initializes the vif manager contract
  /// @dev initializes the owner and the provision
  /// @dev can only be called once, then reverts
  function _initializeVifManager(address owner, uint24 provision) internal {
    _initializeOwner(owner);
    LibProvision.setProvision(provision);
  }

  /// @inheritdoc Ownable
  function _guardInitializeOwner() internal pure override returns (bool) {
    return true;
  }

  /// @inheritdoc IVifManager
  function openMarket(
    address outboundToken,
    address inboundToken,
    uint64 outboundUnits,
    uint64 inboundUnits,
    uint16 tickSpacing,
    uint16 fees,
    uint32 minOutboundUnits
  ) external returns (bytes32 marketId) {
    _checkOwner();
    marketId = Market({
        outboundToken: outboundToken,
        outboundUnits: outboundUnits,
        minOutboundUnits: minOutboundUnits,
        inboundToken: inboundToken,
        inboundUnits: inboundUnits,
        tickSpacing: tickSpacing,
        fees: fees,
        active: true
      }).create();
  }

  /// @inheritdoc IVifManager
  function setFees(bytes32 marketId, uint16 fees) external {
    _checkOwner();
    marketId.setFees(fees);
  }

  /// @inheritdoc IVifManager
  function setMinOutboundUnits(bytes32 marketId, uint32 minOutboundUnits) external {
    _checkOwner();
    marketId.setMinOutboundUnits(minOutboundUnits);
  }

  /// @inheritdoc IVifManager
  function setActive(bytes32 marketId, bool active) external {
    _checkOwner();
    marketId.setActive(active);
  }

  /// @inheritdoc IVifManager
  function setProvisions(uint24 provision) external {
    _checkOwner();
    LibProvision.setProvision(provision);
  }

  /// @inheritdoc IVifManager
  function withdrawFees(address token, uint256 amount, address receiver) external {
    _checkOwner();
    LibFees.claimFees(token, amount);
    if (token == LibDeltas.NATIVE) {
      receiver.safeTransferETH(amount);
    } else {
      token.safeTransfer(receiver, amount);
    }
  }

  /// @inheritdoc IVifManager
  function setPaused(bool paused) external {
    _checkOwner();
    LibPausable.setPaused(paused);
  }

  /// @inheritdoc IVifManager
  function setBlacklisted(address user, bool blacklisted) external {
    _checkOwner();
    LibBlackList.setBlacklisted(user, blacklisted);
  }
}
