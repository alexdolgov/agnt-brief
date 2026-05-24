// SPDX-License-Identifier: MIT
pragma solidity 0.6.11;

/**
    * @dev EIP2362 Interface for pull oracles
*/
interface IERC2362
{
	/**
	 * @dev Exposed function pertaining to EIP standards
	 * @param _id bytes32 ID of the query
	 * @return int,uint,uint returns the value, timestamp, and status code of query
	 */
	function valueFor(bytes32 _id) external view returns(int256,uint256,uint256);
}
// 2023 Liquid Loans