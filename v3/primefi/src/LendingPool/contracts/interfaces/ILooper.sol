// SPDX-License-Identifier: agpl-3.0
pragma solidity 0.8.27;
pragma experimental ABIEncoderV2;

interface ILooper {
	function wethToFlik(address user) external view returns (uint256);

	function flikWETHWithBorrow(uint256 amount, address borrower) external returns (uint256 liquidity);
}
