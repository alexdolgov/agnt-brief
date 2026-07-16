// SPDX-License-Identifier: MIT
pragma solidity >=0.8.18;

/// @notice Minimal interface for the SymmStaking contract's deposit-with-receiver entrypoint.
/// @dev See `symmio/token/contracts/staking/SymmStaking.sol`. The staking contract pulls
///      `amount` of the staking token from `msg.sender` (this vesting contract) via
///      `safeTransferFrom` and credits the staked balance to `receiver`.
interface ISymmStaking {
	function deposit(uint256 amount, address receiver) external;
}
