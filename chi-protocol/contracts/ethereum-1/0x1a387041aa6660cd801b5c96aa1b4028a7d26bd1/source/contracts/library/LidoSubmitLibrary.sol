// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "../interfaces/IWETH.sol";
import "../interfaces/ISTETH.sol";
import "contracts/library/ExternalContractAddresses.sol";

library LidoSubmitLibrary {
    using SafeERC20 for IERC20;

    IWETH public constant WETH = IWETH(ExternalContractAddresses.WETH);
    ISTETH public constant stEth = ISTETH(ExternalContractAddresses.stETH);

    function swapExactAmountForStEth(address assetIn, uint256 amountIn, uint256 minAmountOut, address receiver)
        external
        returns (uint256)
    {
        IERC20(WETH).safeTransferFrom(receiver, address(this), amountIn);
        WETH.withdraw(amountIn);

        // IERC20(assetIn).approve(address(stEth), amountIn);
        uint256 stEthReceived = stEth.submit{value: amountIn}(address(this));

        IERC20(stEth).safeTransfer(receiver, stEthReceived);

        return stEthReceived;
    }
}
