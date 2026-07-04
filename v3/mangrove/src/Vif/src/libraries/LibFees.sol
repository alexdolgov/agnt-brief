// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

/// @title Fees accounting helpers
/// @notice Accrue and withdraw taker fees, and perform basic fee math.
/// @dev Fees are 16-bit scaled where 100% = 1e6. Taker fees are paid in
/// inbound tokens and accrue per token. Owner may withdraw accrued fees.
library LibFees {
  /// @notice Emitted when there are insufficient fees to withdraw.
  /// @dev error sig: 0x0824ffe4
  error InsufficientFeesToWithdraw();

  /// @notice Emitted when there are too many fees to add.
  /// @dev error sig: 0x5c3c1b30
  error FeesOverflow();

  /// @notice Emitted when fees are added to a token.
  /// @param token The token whose fees are added.
  /// @param fees The amount of fees added.
  event FeesClaimed(address indexed token, uint256 fees);

  /// @notice The denominator for the fees.
  /// @dev since fess are on 16 bits, max fees are 6.5536%
  uint256 private constant _FEES_DENOMINATOR = 1e6;

  /**
   * @dev The fees slot of (`token`) is given by:
   * ```
   *     mstore(0x20, _FEES_SEED)
   *     mstore(0x1c, token)
   *     let feesSlot := keccak256(0x20, 0x20)
   * ```
   * bytes4(keccak256("fees()"))
   */
  uint256 private constant _FEES_SEED = 0x9af1d35a;

  /// @dev keccak256("FeesClaimed(address,uint256)")
  uint256 private constant _FEES_CLAIMED_EVENT_SIGNATURE =
    0x9493e5bbe4e8e0ac67284469a2d677403d0378a85a59e341d3abc433d0d9a209;

  /// @notice Accrue `fees` to the running total for `token`.
  /// @param token The token whose fee bucket to credit.
  /// @param _fees The fee amount to add.
  function addFees(address token, uint256 _fees) internal {
    /// @solidity memory-safe-assembly
    assembly {
      mstore(0x20, _FEES_SEED)
      mstore(0x1c, token)
      let feesSlot := keccak256(0x20, 0x20)
      let current := sload(feesSlot)
      let next := add(current, _fees)
      if lt(next, current) {
        mstore(0x00, 0x5c3c1b30) // `FeesOverflow()`.
        revert(0x1c, 0x04)
      }
      sstore(feesSlot, next)
    }
  }

  /// @notice Withdraw `amount` of accrued fees for `token`.
  /// @dev Reverts if insufficient fees are available.
  /// @param token The token whose fee bucket to debit.
  /// @param amount The amount to withdraw.
  function claimFees(address token, uint256 amount) internal {
    /// @solidity memory-safe-assembly
    assembly {
      mstore(0x20, _FEES_SEED)
      mstore(0x1c, token)
      let feesSlot := keccak256(0x20, 0x20)
      let current := sload(feesSlot)
      if gt(amount, current) {
        mstore(0x00, 0x0824ffe4) // `InsufficientFeesToWithdraw()`.
        revert(0x1c, 0x04)
      }
      sstore(feesSlot, sub(current, amount))
      mstore(0x00, amount)
      log2(0x00, 0x20, _FEES_CLAIMED_EVENT_SIGNATURE, token)
    }
  }

  /// @dev computes floor(fillVolume * (1 - fees)) if fillWants is false, else return fillVolume
  /// @notice Exclude fees from a fill volume.
  /// @param _fees The fee rate (16-bit scale; 100% = 1e6).
  /// @param fillVolume The fill volume.
  /// @param fillWants Whether the fill volume is inbound or outbound.
  /// @return result The fill volume excluding fees.
  function excludeFees(uint16 _fees, uint64 fillVolume, bool fillWants) internal pure returns (uint64 result) {
    /// @solidity memory-safe-assembly
    assembly {
      result := fillVolume
      if iszero(fillWants) {
        // x = fillVolume * (1_d - fees_d)
        let x := mul(fillVolume, sub(_FEES_DENOMINATOR, _fees))
        // result = floor(x / _FEES_DENOMINATOR_d)
        result := div(x, _FEES_DENOMINATOR)
      }
    }
  }

  /// @dev computes fees = gave * fees / (1 - fees)
  /// @notice Compute fees for a fill volume.
  /// @param _fees The fee rate (16-bit scale; 100% = 1e6).
  /// @param gave The amount given.
  /// @param fillVolume The fill volume.
  /// @param fillWants Whether the fill volume is inbound or outbound.
  /// @return result The fees for the fill volume.
  function fees(uint16 _fees, uint256 gave, uint256 fillVolume, bool fillWants) internal pure returns (uint256 result) {
    /// @solidity memory-safe-assembly
    assembly {
      // feesAmount = gave * fees / (1 - fees)
      result := div(mul(gave, _fees), sub(_FEES_DENOMINATOR, _fees))
      // floor max fees
      if iszero(fillWants) {
        let maxFees := sub(fillVolume, gave)
        result := xor(result, mul(xor(result, maxFees), lt(maxFees, result)))
      }
    }
  }
}
