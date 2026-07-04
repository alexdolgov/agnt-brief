// SPDX-License-Identifier: CC0-1.0

pragma solidity 0.8.15;

import "@uniswap/v3-periphery/contracts/interfaces/INonfungiblePositionManager.sol";
import "@uniswap/v3-periphery/contracts/interfaces/ISwapRouter.sol";

interface IBobToken {
    function balanceOf(address user) external view returns (uint256);
    function approve(address to, uint256 amount) external;
    function burn(uint256 amount) external;
}

contract OPSupplyReductionHelper {
    address constant positionManager = address(0xC36442b4a4522E871399CD717aBDD847Ab11FE88);
    uint256 constant tokenId1 = uint256(335777); // USDC/BOB 0.01%
    address constant bob = address(0xB0B195aEFA3650A6908f15CdaC7D92F8a5791B0B);
    address constant usdc = address(0x7F5c764cBc14f9669B88837ca1490cCa17c31607);
    address constant swapRouter = address(0xE592427A0AEce92De3Edee1F18E0157C05861564);

    function step1() external {
        (,,,,,,, uint128 liquidity1,,,,) = INonfungiblePositionManager(positionManager).positions(tokenId1);

        (uint256 amountUSDC, uint256 amountBOB1) = INonfungiblePositionManager(positionManager).decreaseLiquidity(
            INonfungiblePositionManager.DecreaseLiquidityParams(tokenId1, liquidity1 * 9 / 10, 0, 0, block.timestamp)
        );

        INonfungiblePositionManager(positionManager).collect(
            INonfungiblePositionManager.CollectParams(tokenId1, address(this), type(uint128).max, type(uint128).max)
        );

        uint256 usdcBalance = IBobToken(usdc).balanceOf(address(this));
        IBobToken(usdc).approve(swapRouter, usdcBalance);
        ISwapRouter(swapRouter).exactInput(ISwapRouter.ExactInputParams({
            path: abi.encodePacked(usdc, uint24(100), bob),
            recipient: address(this),
            deadline: block.timestamp,
            amountIn: usdcBalance,
            amountOutMinimum: amountUSDC * 1e12
        }));

        IBobToken(bob).burn(amountBOB1 + amountUSDC * 1e12);
    }
}
