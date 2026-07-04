// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

interface DynaLiquidityAssetManagerAPI {
	function asset() external view returns (address);

	function invest(uint256 amount) external;

	function liquidate(uint256 amount) external;
}
