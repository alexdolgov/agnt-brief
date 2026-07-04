// SPDX-License-Identifier: agpl-3.0
pragma solidity 0.8.27;

import "@openzeppelin/contracts/utils/math/Math.sol";

library MathOperations {
	using Math for uint256;

	error MathError();

	function add(uint256 a, uint256 b) internal pure returns (uint256 result) {
		bool success;
		(success, result) = a.tryAdd(b);
		require(success, MathError());
	}

	function sub(uint256 a, uint256 b) internal pure returns (uint256 result) {
		bool success;
		(success, result) = a.trySub(b);
		require(success, MathError());
	}

	function mul(uint256 a, uint256 b) internal pure returns (uint256 result) {
		bool success;
		(success, result) = a.tryMul(b);
		require(success, MathError());
	}

	function div(uint256 a, uint256 b) internal pure returns (uint256 result) {
		bool success;
		(success, result) = a.tryDiv(b);
		require(success, MathError());
	}
}
