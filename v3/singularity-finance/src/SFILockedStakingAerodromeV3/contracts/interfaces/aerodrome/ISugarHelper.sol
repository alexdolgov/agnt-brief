// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.7.5;

interface ISugarHelper {
	function fees(address positionManager, uint256 tokenId) external view returns (uint256 amount0, uint256 amount1);
}
