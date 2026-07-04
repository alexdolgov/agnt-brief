// SPDX-License-Identifier: AGPL-3.0

pragma solidity >=0.8.0;

interface IStrategy {
	function harvestTrigger(uint256 callCostInWei) external view returns (bool);

	function harvest() external;
}
