// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

interface IVault {
    /**
     * @dev current round
     */
    function round() external view returns (uint256);

    /**
     * @dev current round share value in assets
     */
    function roundPricePerShare(uint256) external view returns (uint256);

    /**
     * @dev decimals
     */
    function decimals() external view returns (uint8);
}
