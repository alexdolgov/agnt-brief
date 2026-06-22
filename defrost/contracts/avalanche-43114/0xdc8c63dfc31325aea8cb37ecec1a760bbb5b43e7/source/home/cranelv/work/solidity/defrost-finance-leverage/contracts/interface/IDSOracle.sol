// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >=0.7.0 <0.8.0;
import "../modules/proxyOwner.sol";
interface IDSOracle {
    /**
  * @notice retrieves price of an asset
  * @dev function to get price for an asset
  * @param token Asset for which to get the price
  * @return bool Determine if the current price can be used
  * @return uint256 mantissa of asset price (scaled by 1e18)
  */
    function getPriceInfo(address token) external view returns (bool,uint256);
    function getPrices(address[]calldata assets) external view returns (uint256[]memory);
}
