//SPDX-License-Identifier: CC-BY-NC-ND-4.0
pragma solidity ^0.8.17;

interface IUsualDao {
    /**
     * @notice Redeem rwaToken for USAD0
        * @param rwaToken Address of the RWA token
        * @param amount Amount of rwaToken to redeem
        * @param minAmountOut Minimum amount of USAD0 to receive
     */
    function redeem(address rwaToken, uint256 amount, uint256 minAmountOut) external;
}