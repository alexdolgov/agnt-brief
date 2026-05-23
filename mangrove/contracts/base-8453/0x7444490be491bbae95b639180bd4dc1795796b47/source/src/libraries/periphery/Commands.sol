// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

/// @title Commands
/// @notice Library for handling command bytes used by the VifRouter
/// @dev Commands are encoded in a single byte where:
///      - bits 0-3: command type (16 possible commands)
///      - bit 7: can fail flag
library Commands {
  /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
  /*                           Orders                           */
  /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

  /// @notice Command to execute a single market order
  uint8 internal constant ORDER_SINGLE = 0x00;

  /// @notice Command to execute a market order with multihopping (exact in only)
  uint8 internal constant ORDER_MULTI = 0x01;

  /// @notice Command to create a single limit order
  uint8 internal constant LIMIT_SINGLE = 0x02;

  /// @notice Command to claim a single order
  uint8 internal constant CLAIM = 0x03;

  /// @notice Command to cancel a single order
  uint8 internal constant CANCEL = 0x04;

  /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
  /*                        Settlement                          */
  /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

  /// @notice Command to settle debt using router balance first, then caller balance
  uint8 internal constant SETTLE = 0x05;

  /// @notice Command to take tokens from vif to a specified receiver
  uint8 internal constant TAKE = 0x06;

  /// @notice Command to settle complete debt using router balance first, then caller balance
  uint8 internal constant SETTLE_ALL = 0x07;

  /// @notice Command to take complete credit towards a specified receiver
  uint8 internal constant TAKE_ALL = 0x08;

  /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
  /*                    Additional Actions                      */
  /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

  /// @notice Command to send all tokens in the router to a receiver
  uint8 internal constant SWEEP = 0x09;

  /// @notice Command to wrap native tokens into the router
  uint8 internal constant WRAP_NATIVE = 0x0a;

  /// @notice Command to unwrap native tokens from the router
  uint8 internal constant UNWRAP_NATIVE = 0x0b;

  /// @notice Command to send tokens from the receiver to the router
  uint8 internal constant AUTHORIZE = 0x0c;

  /// @notice Command to clear all dust credit for a token
  uint8 internal constant CLEAR_ALL = 0x0d;

  /// @notice Command to clear dust credit for a token up to a maximum amount or claim the full amount
  uint8 internal constant CLEAR_UPTO_OR_CLAIM = 0x0e;

  /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
  /*                        Masking                             */
  /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

  /// @notice Bitmask to extract the command type from a command byte
  uint256 internal constant COMMAND_MASK = 0x0f;

  /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
  /*                      Helper Functions                      */
  /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

  /// @notice Extracts the command type from a raw command byte
  /// @param rawCommand The raw command byte
  /// @return _command The extracted command type (0-15)
  function command(bytes1 rawCommand) internal pure returns (uint256 _command) {
    /// @solidity memory-safe-assembly
    assembly {
      _command := and(rawCommand, COMMAND_MASK)
    }
  }

  /// @notice Checks if a command can fail based on its fail flag
  /// @param rawCommand The raw command byte
  /// @return r True if the command can fail (bit 7 is set)
  function allowFailure(bytes1 rawCommand) internal pure returns (bool r) {
    /// @solidity memory-safe-assembly
    assembly {
      r := iszero(iszero(shr(7, rawCommand)))
    }
  }

  /// @notice Parses a raw command byte into a command type and can fail flag
  /// @param rawCommand The raw command byte
  /// @return c The extracted command type (0-15)
  /// @return canFail True if the command can fail (bit 7 is set)
  function parseCommand(bytes1 rawCommand) internal pure returns (uint8 c, bool canFail) {
    /// @solidity memory-safe-assembly
    assembly {
      c := and(shr(0xf8, rawCommand), COMMAND_MASK)
      canFail := iszero(iszero(shr(0xfe, rawCommand)))
    }
  }
}
