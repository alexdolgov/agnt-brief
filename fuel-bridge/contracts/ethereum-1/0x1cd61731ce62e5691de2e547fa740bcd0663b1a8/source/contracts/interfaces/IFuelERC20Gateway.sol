// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;
interface IFuelERC20Gateway {
	function deposit(bytes32 to, address tokenAddress, uint256 amount) external;

	function depositWithData(
		bytes32 to,
		address tokenAddress,
		uint256 amount,
		bytes calldata data
	) external;
}
