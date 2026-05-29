// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.13;
interface IWsuperOETHbLike {
    /// @dev ERC4626 function to convert shares to underlying assets
    function convertToAssets(uint256 shares) external view returns (uint256);
}
