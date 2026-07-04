// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

library DynaVaultErrors {
	error ERC5143_SlippageProtection();
	error ERC4626_RedeemMoreThanMax();
	error ErrorMinAssetsArrayLength();
	error NotCalledByManager();

	function checkSlippageBelow(uint256 value, uint256 maxValue) internal pure {
		if (value > maxValue) revert ERC5143_SlippageProtection();
	}

	function checkSlippageAbove(uint256 value, uint256 minValue) internal pure {
		if (value < minValue) revert ERC5143_SlippageProtection();
	}

	function checkSlippageAbove(uint256[] memory values, uint256[] memory minValues) internal pure {
		if (values.length != minValues.length) {
			revert ErrorMinAssetsArrayLength();
		}
		for (uint256 i = 0; i < values.length; ++i) {
			checkSlippageAbove(values[i], minValues[i]);
		}
	}
}
