// SPDX-License-Identifier: MIT

pragma solidity 0.8.28;

import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

/**
 * @notice bridge token interface
 */
interface IBridgeToken is IERC20Metadata {
	/**
	 * @dev mint bridge token
	 * @param to token receiver
	 * @param amount token amount
	 */
	function mint(address to, uint256 amount) external;

	/**
	 * @dev burn bridge token
	 * @param from burner
	 * @param amount burn token amount
	 */
	function burn(address from, uint256 amount) external;
}
