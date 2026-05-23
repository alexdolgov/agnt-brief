// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

interface IVault {
	/// @notice Emitted when tokens are released from the vault
	/// @param recipient The address receiving the released tokens
	/// @param amount The amount of tokens released
	event Released(address indexed recipient, uint256 amount);

	/// @notice Emitted when the balances are adjusted
	/// @param totalDeposits The updated total deposits value
	/// @param surplus The updated surplus value
	event BalancesAdjusted(uint256 totalDeposits, int256 surplus);

	/// @notice Release tokens from the vault to a recipient
	/// @dev This function can only be called by an authorized agent
	/// @param recipient The address to receive the tokens
	/// @param amount The amount of tokens to release
	/// @dev Reverts if the surplus is negative
	function release(address recipient, uint256 amount) external;

	/// @notice Synchronize the stored balances with the actual token balance
	/// @dev This function is called to adjust the stored balances based on the actual token balance
	function sync() external returns (uint256 newDeposits);

	/// @notice Increases the surplus and decreases the totalDeposits by a given value
	/// @dev This function can only be called by an authorized agent
	/// @param adjustment The amount by which to adjust the surplus & deposits values
	function adjustSurplus(int256 adjustment) external;

	/// @notice Increase the surplus value
	/// @dev This function can only be called by an authorized agent
	/// @param amount The amount by which to increase the surplus value
	function increaseSurplus(uint256 amount) external;

	/// @notice Get the balances stored in the vault
	/// @return totalDeposits The total deposits owned by users on L2
	/// @return surplus The surplus allocated towards rewards
	function balances()
		external
		view
		returns (uint256 totalDeposits, int256 surplus);
}
