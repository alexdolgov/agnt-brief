// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.7.5;
pragma abicoder v2;

import "../Utils.sol";
import "../weth/IWETH.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./IswETH.sol";

contract Swell {
    address public immutable WETH;
    address public immutable swETH;

    constructor(address _WETH, address _swETH) public {
        WETH = _WETH;
        swETH = _swETH;
    }

    function swapOnSwell(
        IERC20 fromToken,
        IERC20 toToken,
        uint256 fromAmount
    ) internal {
        require(
            address(fromToken) == Utils.ethAddress() || address(fromToken) == WETH,
            "srcToken should be ETH or WETH"
        );
        require(address(toToken) == swETH, "destToken should be swETH");

        if (address(fromToken) == WETH) {
            IWETH(WETH).withdraw(fromAmount);
        }

        IswETH(swETH).deposit{ value: fromAmount }();
    }
}
