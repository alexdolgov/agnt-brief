// SPDX-License-Identifier: ISC

pragma solidity 0.7.5;

import "../IBuyAdapter.sol";
import "../../lib/uniswapv3/UniswapV3.sol";
import "../../lib/WethProvider.sol";

/**
 * @dev This contract will route call to:
 * 1 - UniswapV3
 * The above are the indexes
 */
contract PolygonZkEvmBuyAdapter is
    IBuyAdapter,
    UniswapV3
{
    using SafeMath for uint256;

    constructor(address _weth) public WethProvider(_weth) {}

    function initialize(bytes calldata data) external override {
        revert("METHOD NOT IMPLEMENTED");
    }

    function buy(
        uint256 index,
        IERC20 fromToken,
        IERC20 toToken,
        uint256 maxFromAmount,
        uint256 toAmount,
        address targetExchange,
        bytes calldata payload
    ) external payable override {
        if (index == 1) {
            buyOnUniswapV3(fromToken, toToken, maxFromAmount, toAmount, targetExchange, payload);
        } else {
            revert("Index not supported");
        }
    }
}
