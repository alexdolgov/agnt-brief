// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.9;

interface IExchange {
    function afterBurnTNGBL(uint256 amount, uint256 tngblPrice) external;

    function avgTNGBLMintPrice() external view returns (uint256);

    function scaleFromUnderlying(uint256 amount)
        external
        view
        returns (uint256);

    function scaleToUnderlying(uint256 amount) external view returns (uint256);

    function swapFromUnderlying(uint256 amountIn, address to)
        external
        returns (uint256 amountOut);
}
