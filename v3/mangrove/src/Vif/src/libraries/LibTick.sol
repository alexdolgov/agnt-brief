// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

/// @title Tick math utilities
/// @notice Convert between tick indexes and prices used by the matching engine.
/// @dev Tick is logarithm base 1.00001 (0.1 bps) of price, where
/// price = inboundAmount / outboundAmount.
/// Prices are represented in Q128.128 fixed point for arithmetic.
library LibTick {
  /// @dev error sig: 0x0590fb9f
  error AmountOverflow();

  /// @dev error sig: 0x4ce861de
  error TickOverflow();

  uint256 private constant _MAX_TICK = 8_388_607;

  /// @notice Compute Q128.128 price from a tick.
  /// @param tick_ The log-price in 0.1 bps ticks.
  /// @return price The price in Q128.128.
  function tickToPrice(int24 tick_) internal pure returns (uint256 price) {
    unchecked {
      // absolute value of tick
      // forge-lint: disable-next-line(unsafe-typecast)
      uint256 absTick = (uint256(int256(tick_)) + uint256(int256(tick_) >> 255)) ^ uint256(int256(tick_) >> 255);

      /// @solidity memory-safe-assembly
      assembly {
        if gt(absTick, _MAX_TICK) {
          mstore(0x00, 0x4ce861de) // `TickOverflow()`.
          revert(0x1c, 0x04)
        }
      }

      if (absTick & 0x1 != 0) price = 0xffff583ac1ac1c114b9160ddeb4791b7;
      else price = 0x100000000000000000000000000000000;
      if (absTick & 0x2 != 0) price = (price * 0xfffeb075f14b276d06cdbc6b138e4c4b) >> 128;
      if (absTick & 0x4 != 0) price = (price * 0xfffd60ed9a60ebcb383de6edb7557ef0) >> 128;
      if (absTick & 0x8 != 0) price = (price * 0xfffac1e213e349a0cf1e3d3ec62bf25b) >> 128;
      if (absTick & 0x10 != 0) price = (price * 0xfff583dfa4044e3dfe90c4057e3e4c27) >> 128;
      if (absTick & 0x20 != 0) price = (price * 0xffeb082d36bf2958d476ee75c4da258a) >> 128;
      if (absTick & 0x40 != 0) price = (price * 0xffd61212165632bd1dda4c1abdf5f9f1) >> 128;
      if (absTick & 0x80 != 0) price = (price * 0xffac2b0240039d9cdadb751e0acc14c4) >> 128;
      if (absTick & 0x100 != 0) price = (price * 0xff5871784dc6fa608dca410bdecb9ff4) >> 128;
      if (absTick & 0x200 != 0) price = (price * 0xfeb1509bdff34ccb280fad9a309403cf) >> 128;
      if (absTick & 0x400 != 0) price = (price * 0xfd6456c5e15445b458f4403d279c1a89) >> 128;
      if (absTick & 0x800 != 0) price = (price * 0xfacf7ad7076227f61d95f764e8d7e35a) >> 128;
      if (absTick & 0x1000 != 0) price = (price * 0xf5b9e413dd1b4e7046f8f721e1f1b295) >> 128;
      if (absTick & 0x2000 != 0) price = (price * 0xebdd5589751f38fd7adce84988dba856) >> 128;
      if (absTick & 0x4000 != 0) price = (price * 0xd9501a6728f01c1f121094aacf4c9475) >> 128;
      if (absTick & 0x8000 != 0) price = (price * 0xb878e5d36699c3a0fd844110d8b9945f) >> 128;
      if (absTick & 0x10000 != 0) price = (price * 0x84ee037828011d8035f12eb571b46c2a) >> 128;
      if (absTick & 0x20000 != 0) price = (price * 0x450650de5cb791d4a002074d7f179cb3) >> 128;
      if (absTick & 0x40000 != 0) price = (price * 0x129c67bfc1f3084f1f52dd418a4a8f6d) >> 128;
      if (absTick & 0x80000 != 0) price = (price * 0x15a5e2593066b11cd1c3ea05eb95f74) >> 128;
      if (absTick & 0x100000 != 0) price = (price * 0x1d4a2a0310ad5f70ad53ef4d3dcf3) >> 128;
      if (absTick & 0x200000 != 0) price = (price * 0x359e3010271ed5cfce08f99aa) >> 128;
      if (absTick & 0x400000 != 0) price = (price * 0xb3ae1a60d291e4871) >> 128;

      if (tick_ > 0) {
        /// @solidity memory-safe-assembly
        assembly {
          price := add(div(sub(0, price), price), 1)
        }
      }
    }
  }

  /// @notice Compute the closest tick rounding towards 0.
  /// @param tick_ The tick.`
  /// @param tickSpacing The tick spacing.
  /// @return r The closest tick rounding towards 0.
  function closestTick(int24 tick_, uint16 tickSpacing) internal pure returns (int24 r) {
    /// @solidity memory-safe-assembly
    assembly {
      r := mul(tickSpacing, sdiv(tick_, tickSpacing))
    }
  }

  /// @notice Map a tick to a compact unsigned index.
  /// @dev This is assuming that `mod(tick, tickSpacing) == 0`.
  /// @param tick_ The signed tick.
  /// @param tickSpacing The tick spacing.
  /// @return r The unsigned index (offset by MAX_TICK).
  function index(int24 tick_, uint16 tickSpacing) internal pure returns (uint24 r) {
    assembly {
      r := add(div(_MAX_TICK, tickSpacing), sdiv(tick_, tickSpacing))
    }
  }

  /// @notice Map an unsigned index back to a signed tick.
  /// @param index_ The unsigned index.
  /// @param tickSpacing The tick spacing.
  /// @return r The signed tick.
  function tick(uint24 index_, uint16 tickSpacing) internal pure returns (int24 r) {
    assembly {
      r := mul(sub(index_, div(_MAX_TICK, tickSpacing)), tickSpacing)
    }
  }

  /**
   * @dev computes inbound = ceil(ceil(outbound * outboundUnit * price128x128 / 2**128) / inboundUnit)
   * @dev reverts if `inbound` overflows 48 bits
   */
  /// @notice Convert outbound units to inbound units at a given Q128.128 price.
  /// @param price Q128.128 price.
  /// @param outbound Outbound unit count (up to 48 bits after normalization).
  /// @param outboundUnit Outbound denomination.
  /// @param inboundUnit Inbound denomination.
  /// @return inbound The inbound unit count, reverts on 48-bit overflow.
  function inboundFromOutbound(uint256 price, uint48 outbound, uint64 outboundUnit, uint64 inboundUnit)
    internal
    pure
    returns (uint48 inbound)
  {
    /// @solidity memory-safe-assembly
    assembly {
      // fits within 112 bits
      outbound := mul(outbound, outboundUnit)
      // multiply outbound by the upper 128 bits shifted by 128 bits to the right (exact)
      // should fit within 240 bits
      let upper := mul(outbound, shr(128, price))
      // multiply outbound by the lower 128 bits and shift the result by 128 bits to the right (mulDivUp)
      // should fit within 240 bits
      let lower := mul(outbound, shr(128, shl(128, price)))
      lower := add(iszero(iszero(shl(128, lower))), shr(128, lower))

      // should fit within 241 bits
      inbound := add(upper, lower)
      inbound := add(iszero(iszero(mod(inbound, inboundUnit))), div(inbound, inboundUnit))

      // revert if overflow 48 bits
      if iszero(iszero(shr(48, inbound))) {
        mstore(0x00, 0x0590fb9f) // `AmountOverflow()`.
        revert(0x1c, 0x04)
      }
    }
  }
}
