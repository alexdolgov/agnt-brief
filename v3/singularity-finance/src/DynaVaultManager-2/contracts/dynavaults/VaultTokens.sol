// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "./VaultFees.sol";
import "./VaultTokensLib.sol";

/**
 * @title VaultTokens
 * @dev Contract for managing tokens within the vault, inheriting from VaultFees
 */
contract VaultTokens is VaultFees {
	/**
	 * @dev Returns the index of a given token
	 * @param tokenAddress Address of the token
	 * @return uint256 Index of the token
	 */
	function tokenIndex(address tokenAddress) public view returns (uint256) {
		return VaultTokensLib.tokenIndex(tokenAddress);
	}

	/**
	 * @dev Returns the token address at a given index
	 * @param index Index of the token
	 * @return address Token address
	 */
	function tokens(uint256 index) public view returns (address) {
		return VaultTokensLib.tokens(index);
	}

	/**
	 * @dev Returns the address of the first token (index 0)
	 * @return address Address of the first token
	 */
	function token() public view returns (address) {
		return VaultTokensLib.tokens(0);
	}

	/**
	 * @dev Returns the total number of tokens in the vault
	 * @return uint256 Number of tokens
	 */
	function nrOfTokens() external view returns (uint256) {
		return VaultTokensLib.nrOfTokens();
	}

	/**
	 * @dev Returns an array of all token addresses in the vault
	 * @return address[] Array of token addresses
	 */
	function allTokens() external view returns (address[] memory) {
		return VaultTokensLib.allTokens();
	}

	/**
	 * @dev Returns the TokenStats struct for a given token
	 * @param tokenAddress Address of the token
	 * @return VaultTokensLib.TokenStats TokenStats struct
	 */
	function tokenStats(address tokenAddress) external view returns (VaultTokensLib.TokenStats memory) {
		return VaultTokensLib.stats(tokenAddress);
	}

	/**
	 * @dev Returns the total deposit debt across all tokens
	 * @return uint256 Total deposit debt
	 */
	function totalDepositDebt() external view returns (uint256) {
		return VaultTokensLib.totalDepositDebt();
	}

	/**
	 * @dev Returns the idle amount and debt amount for a given token
	 * @param tokenAddress Address of the token
	 * @return tokenIdle Amount of idle tokens
	 * @return tokenDebt Amount of token debt
	 */
	function tokenIdleDebt(address tokenAddress) external view returns (uint256 tokenIdle, uint256 tokenDebt) {
		return VaultTokensLib.tokenIdleDebt(tokenAddress);
	}

	/**
	 * @dev Returns an array of TokenStats structs for all tokens
	 * @return VaultTokensLib.TokenStats[] Array of TokenStats structs
	 */
	function allTokenStats() external view returns (VaultTokensLib.TokenStats[] memory) {
		return VaultTokensLib.allTokenStats();
	}

	/**
	 * @dev Sets the watermark duration for a given token
	 * @param tokenAddress Address of the token
	 * @param watermarkDuration New watermark duration
	 */
	function setWatermarkDuration(address tokenAddress, uint256 watermarkDuration) external {
		VaultTokensLib.setWatermarkDuration(tokenAddress, watermarkDuration);
	}

	/**
	 * @dev Sets the total idle amount for a given token
	 * @param tokenAddress Address of the token
	 * @param assets Amount of assets to set as idle
	 */
	function setTotalIdle(address tokenAddress, uint256 assets) external {
		VaultTokensLib.setTotalIdle(tokenAddress, assets);
	}

	/**
	 * @dev Deposits idle assets for a given token
	 * @param tokenAddress Address of the token
	 * @param assets Amount of assets to deposit
	 */
	function depositIdle(address tokenAddress, uint256 assets) external {
		VaultTokensLib.depositIdle(tokenAddress, assets);
	}

	/**
	 * @dev Withdraws idle assets for a given token
	 * @param tokenAddress Address of the token
	 * @param assets Amount of assets to withdraw
	 */
	function withdrawIdle(address tokenAddress, uint256 assets) external {
		VaultTokensLib.withdrawIdle(tokenAddress, assets);
	}

	/**
	 * @dev Sets the maximum number of tokens allowed in the vault
	 * @param maxTokens New maximum number of tokens
	 */
	function setMaxTokens(uint256 maxTokens) external {
		VaultTokensLib.setMaxTokens(maxTokens);
	}

	/**
	 * @dev Adds a new reserve token to the vault
	 * @param tokenAddress Address of the token to add
	 */
	function addReserveToken(address tokenAddress) external {
		VaultTokensLib.addReserveToken(tokenAddress);
	}

	/**
	 * @dev Removes a reserve token from the vault
	 * @param tokenAddress Address of the token to remove
	 */
	function removeReserveToken(address tokenAddress) external {
		VaultTokensLib.removeReserveToken(tokenAddress);
	}

	/**
	 * @dev Returns the total assets for a given token
	 * @param tokenAddress Address of the token
	 * @return uint256 Total assets
	 */
	function totalTokenAssets(address tokenAddress) public view returns (uint256) {
		return VaultTokensLib.totalTokenAssets(tokenAddress);
	}

	/**
	 * @dev Updates the debt after a token swap
	 * @param tokenIn Address of the input token
	 * @param amountIn Amount of input token
	 * @param tokenOut Address of the output token
	 * @param amountOut Amount of output token
	 * @param updateRatio Whether to update the debt ratio
	 */
	function updateDebtAfterSwap(address tokenIn, uint256 amountIn, address tokenOut, uint256 amountOut, bool updateRatio) external {
		VaultTokensLib.updateDebtAfterSwap(tokenIn, amountIn, tokenOut, amountOut, updateRatio);
	}

	/**
	 * @dev Returns the token strategies list for a given token
	 * @param tokenAddress Address of the token
	 * @return queue Array of addresses representing the token strategies list
	 */
	function getTokenStrategies(address tokenAddress) public view returns (address[] memory queue) {
		return VaultTokensLib.getTokenStrategies(tokenAddress);
	}

	/**
	 * @notice Returns the total value of the vault tokens in deposit token
	 * @return total The total value of vault tokens in deposit token
	 */
	function totalAssets() public view returns (uint256 total) {
		total = VaultTokensLib.totalAssets();
	}
}
