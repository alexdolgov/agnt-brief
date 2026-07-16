// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

/// @title RuntimeStructs
/// @notice Packed storage structure for dynamic runtime state per pool
/// @dev Optimized for gas efficiency with a single 256-bit storage slot per pool
library RuntimeStructs {
  /// @notice Runtime state tracking per pool
  /// @dev Packed into a single 256-bit storage slot (186 bits used, 70 bits free)
  ///
  /// Layout (LSB to MSB):
  /// ┌──────────┬──────────┬──────────┬─────────┬────────┬──────────┬───────────┐
  /// │capEvent  │lastFreq  │lastCap   │lastCap  │current │autoTuning│initialized│
  /// │Frequency │Update    │Adjustment│Block    │TickCap │Paused    │           │
  /// │(64)      │(32)      │(32)      │(32)     │(24)    │(1)       │(1)        │
  /// └──────────┴──────────┴──────────┴─────────┴────────┴──────────┴───────────┘
  /// Total: 64+32+32+32+24+1+1 = 186 bits
  ///
  /// Field descriptions:
  /// - capEventFrequency: Accumulated metric tracking how often cap events occur (PPM * seconds)
  ///                      Increments by ONE_DAY_PPM on cap, decays linearly over time
  /// - lastFrequencyUpdate: Timestamp when capEventFrequency was last updated (used for decay calc)
  /// - lastCapAdjustment: Timestamp when currentTickCap was last auto-tuned
  /// - lastCapBlock: Block number of last cap event (used in per-block mode to gate one event per block)
  /// - currentTickCap: Current adaptive tick movement cap (auto-tuned between minTickCap and maxTickCap)
  /// - autoTuningPaused: If true, auto-tuning is disabled (currentTickCap won't be adjusted)
  /// - initialized: If true, pool has been initialized and runtime state is valid
  struct RuntimeState {
    uint64 capEventFrequency; // Cap frequency accumulator (PPM * seconds)
    uint32 lastFrequencyUpdate; // Timestamp of last frequency update (seconds)
    uint32 lastCapAdjustment; // Timestamp of last tick cap auto-tune (seconds)
    uint32 lastCapBlock; // Last block number with cap event (per-block mode only)
    uint24 currentTickCap; // Current adaptive tick movement cap (ticks)
    bool autoTuningPaused; // Auto-tuning enabled/disabled flag
    bool initialized; // Pool initialization flag
  }
}
