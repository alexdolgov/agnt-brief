// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.12;

interface IUniV3TokenizedLp {
	function pool() external view returns (address);

	function token0() external view returns (address);

	function allowToken0() external view returns (bool);

	function token1() external view returns (address);

	function allowToken1() external view returns (bool);

	function tickSpacing() external view returns (int24);

	function affiliate() external view returns (address);

	function baseLower() external view returns (int24);

	function baseUpper() external view returns (int24);

	function deposit0Max() external view returns (uint256);

	function deposit1Max() external view returns (uint256);

	function hysteresis() external view returns (uint256);

	function getTotalAmounts() external view returns (uint256, uint256);

	function deposit(uint256, uint256, address) external returns (uint256);

	function withdraw(uint256, address) external returns (uint256, uint256);

	function setDepositMax(uint256 _deposit0Max, uint256 _deposit1Max) external;

	function setAffiliate(address _affiliate) external;
}
