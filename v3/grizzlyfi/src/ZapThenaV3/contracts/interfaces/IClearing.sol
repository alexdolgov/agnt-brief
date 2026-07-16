/// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.7.6;
pragma abicoder v2;

interface IClearing {
	/// @notice apply configuration constraints to deposit
	/// @param pos Address of the hypervisor
	/// @param deposit0 Amount of token0 to deposit
	/// @param deposit1 Amount of token1 to deposit
	/// @param to Address to receive liquidity tokens
	/// @param pos Hypervisor Address
	/// @param minIn min assets to expect in position during a direct deposit
	/// @return cleared whether deposit is cleared
	function clearDeposit(
		uint256 deposit0,
		uint256 deposit1,
		address from,
		address to,
		address pos,
		uint256[4] memory minIn
	) external view returns (bool cleared);

	/// @notice apply configuration constraints to shares minted
	/// @param pos Address of the hypervisor
	/// @param shares Amount of shares minted (included for upgrades)
	/// @return cleared whether shares are cleared
	function clearShares(address pos, uint256 shares) external view returns (bool cleared);

	/// @notice Get the amount of token to deposit for the given amount of pair token
	/// @param pos Hypervisor Address
	/// @param token Address of token to deposit
	/// @param _deposit Amount of token to deposit
	/// @return amountStart Minimum amounts of the pair token to deposit
	/// @return amountEnd Maximum amounts of the pair token to deposit
	function getDepositAmount(
		address pos,
		address token,
		uint256 _deposit
	) external view returns (uint256 amountStart, uint256 amountEnd);

	function depositDelta() external view returns (uint256);

	function deltaScale() external view returns (uint256);

	function addPosition(address pos, uint8 version) external;
}

