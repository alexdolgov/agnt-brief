// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

import {LibExtLoader} from "./LibExtLoader.sol";
import {Market} from "../LibMarket.sol";

library LibMarketExt {
  using LibExtLoader for address;

  uint256 private constant _UNIT_MASK = 0xffffffffffffffff;
  uint256 private constant _MIN_MASK = 0x7fffffff;
  uint256 private constant _FEES_MASK = 0xffff;
  uint256 private constant _TICK_SPACING_MASK = 0xffff;
  uint256 private constant _ACTIVE_MASK = 0x01;

  uint256 private constant _TOKEN_POSITION = 0x60;
  uint256 private constant _UNIT_POSITION = 0x20;
  uint256 private constant _TICK_SPACING_POSITION = 0x10;
  uint256 private constant _MIN_POSITION = 0x01;

  uint256 private constant _OUTBOUND_TOKEN_MEMORY_OFFSET = 0x00;
  uint256 private constant _OUTBOUND_UNITS_MEMORY_OFFSET = 0x20;
  uint256 private constant _MIN_MEMORY_OFFSET = 0x40;
  uint256 private constant _ACTIVE_MEMORY_OFFSET = 0x60;
  uint256 private constant _INBOUND_TOKEN_MEMORY_OFFSET = 0x80;
  uint256 private constant _INBOUND_UNITS_MEMORY_OFFSET = 0xa0;
  uint256 private constant _TICK_SPACING_MEMORY_OFFSET = 0xc0;
  uint256 private constant _FEES_MEMORY_OFFSET = 0xe0;

  /**
   * @dev The market slot of (`market`) is given by:
   * ```
   *     mstore(0x20, _MARKET_SEED)
   *     mstore(0x00, market)
   *     let marketSlot := keccak256(0x00, 0x40)
   * ```
   * bytes4(keccak256("markets()"))
   */
  uint256 private constant _MARKET_SEED = 0x3ac2a032;

  /// @notice Returns the market for `marketId` from the target contract.
  /// @param target The target contract to load the market from.
  /// @param marketId The id of the market to load.
  /// @return _market The loaded market.
  function market(address target, bytes32 marketId) internal view returns (Market memory _market) {
    uint256 slot;
    /// @solidity memory-safe-assembly
    assembly {
      mstore(0x20, _MARKET_SEED)
      mstore(0x00, marketId)
      slot := keccak256(0x00, 0x40)
    }
    uint256 left = target.sload(slot);
    uint256 right = target.sload(slot + 1);

    /// @solidity memory-safe-assembly
    assembly {
      mstore(_market, shr(_TOKEN_POSITION, left)) // outbound token
      mstore(add(_market, _OUTBOUND_UNITS_MEMORY_OFFSET), and(shr(_UNIT_POSITION, left), _UNIT_MASK)) // outbound units
      mstore(add(_market, _MIN_MEMORY_OFFSET), and(shr(_MIN_POSITION, left), _MIN_MASK)) // min outbound units
      mstore(add(_market, _ACTIVE_MEMORY_OFFSET), and(left, _ACTIVE_MASK)) // active

      mstore(add(_market, _INBOUND_TOKEN_MEMORY_OFFSET), shr(_TOKEN_POSITION, right)) // inbound token
      mstore(add(_market, _INBOUND_UNITS_MEMORY_OFFSET), and(shr(_UNIT_POSITION, right), _UNIT_MASK)) // inbound units
      mstore(add(_market, _TICK_SPACING_MEMORY_OFFSET), and(shr(_TICK_SPACING_POSITION, right), _TICK_SPACING_MASK)) // tick spacing
      mstore(add(_market, _FEES_MEMORY_OFFSET), and(right, _FEES_MASK)) // fees
    }
  }
}
