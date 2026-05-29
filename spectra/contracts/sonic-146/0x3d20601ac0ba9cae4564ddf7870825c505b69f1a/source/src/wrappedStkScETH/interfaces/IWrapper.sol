// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

interface IWrapper {
    /**
     * @dev deposit in the wrapper
     */
    function deposit(uint256 assets, address to) external returns (uint256 shares);

    /**
     * @dev conversion to wrapper shares
     */
    function convertToShares(uint256 assets) external view returns (uint256 shares);

    /**
     * @dev conversion to wrapper assets
     */
    function convertToAssets(uint256 shares) external view returns (uint256 assets);
}
