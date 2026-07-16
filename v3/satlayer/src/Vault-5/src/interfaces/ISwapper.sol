// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

interface ISwapper {
    function convertTokensToUSDC(address _token, uint256 _amount, bytes memory _swapData, uint256 _swapGetMin)
        external
        returns (uint256 usdcAmount);
}
