// SPDX-License-Identifier: UNKNOWN
pragma solidity ^0.8.18;

library LibUtils {
	function calculatePercentage(uint16 fee, uint256 amount) internal pure returns (uint256) {
		return amount * fee / 1000;
	}

	function ethToUsd(uint256 usdcEthPrice, uint256 amountEth) internal pure returns (uint256) {
		uint256 ethAmount = amountEth;
		return ((ethAmount * usdcEthPrice) / (10**(8+18)) / (10**18));
	}

	function usdToEth(uint256 usdcEthPrice, uint256 usdAmount) internal pure returns (uint256) {
		return ((10**18 * (10**8)) / usdcEthPrice) * usdAmount;
	}

}