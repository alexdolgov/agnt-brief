// SPDX-License-Identifier: ISC

pragma solidity 0.7.5;
pragma abicoder v2;

import "../IAdapter.sol";
import "../../lib/aave-v3/AaveV3.sol";
import "../../lib/augustus-rfq/AugustusRFQ.sol";
import "../../lib/uniswapv2/dystopia/DystopiaUniswapV2Fork.sol";

/*
 * @dev This contract will route calls to dexes according to the following indexing:
 * 1- AaveV3
 * 2- AugustusRFQ
 * 3 - DystopiaUniswapV2Fork
 */
contract PolygonAdapter02 is IAdapter, AaveV3, AugustusRFQ, DystopiaUniswapV2Fork {
    using SafeMath for uint256;

    /*solhint-disable no-empty-blocks*/
    constructor(
        address _weth,
        uint16 _aaveV3RefCode,
        address _aaveV3Pool,
        address _aaveV3WethGateway
    ) public WethProvider(_weth) AaveV3(_aaveV3RefCode, _aaveV3Pool, _aaveV3WethGateway) {}

    /*solhint-enable no-empty-blocks*/

    function initialize(bytes calldata) external override {
        revert("METHOD NOT IMPLEMENTED");
    }

    function swap(
        IERC20 fromToken,
        IERC20 toToken,
        uint256 fromAmount,
        uint256,
        Utils.Route[] calldata route
    ) external payable override {
        for (uint256 i = 0; i < route.length; i++) {
            if (route[i].index == 1) {
                swapOnAaveV3(fromToken, toToken, fromAmount.mul(route[i].percent).div(10000), route[i].payload);
            } else if (route[i].index == 2) {
                //swap on augustusRFQ
                swapOnAugustusRFQ(
                    fromToken,
                    toToken,
                    fromAmount.mul(route[i].percent).div(10000),
                    route[i].targetExchange,
                    route[i].payload
                );
            } else if (route[i].index == 3) {
                swapOnDystopiaUniswapV2Fork(
                    fromToken,
                    toToken,
                    fromAmount.mul(route[i].percent).div(10000),
                    route[i].payload
                );
            } else {
                revert("Index not supported");
            }
        }
    }
}
