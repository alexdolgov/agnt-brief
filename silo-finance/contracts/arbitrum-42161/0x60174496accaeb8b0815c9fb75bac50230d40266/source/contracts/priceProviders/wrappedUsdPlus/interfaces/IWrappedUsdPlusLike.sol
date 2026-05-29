// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.13;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IWrappedUsdPlusLike is IERC20 {
    /// @dev ERC4626 function to deposit shares for assets.
    function deposit(uint256 assets, address receiver) external returns (uint256);
    
    /// @dev ERC4626 function to redeem shares for assets.
    function redeem(uint256 shares, address receiver, address owner) external returns (uint256);

    /// @dev ERC4626 function to convert shares to assets. The conversion rate is constant and does not depend on
    /// the token amounts.
    function convertToAssets(uint256 shares) external view returns (uint256);
    
    /// @dev Vault's underlying asset (USD+).  
    function asset() external view returns (address);
}
