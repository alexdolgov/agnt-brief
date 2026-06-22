// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;

interface IDexAdapter {
    function router() external view returns (address);

    function swapETHToUnderlying(address underlying, uint256 underlyingAmount) external payable;

    function swapUnderlyingsToETH(uint256[] memory underlyingAmounts, address[] memory underlyings) external;

    function swapTokenToToken(
        uint256 _amountToSwap,
        address _tokenToSwap,
        address _tokenToReceive
    ) external returns (uint256);

    function getUnderlyingAmount(
        uint256 _amount,
        address _tokenToSwap,
        address _tokenToReceive
    ) external view returns (uint256);

    function getPath(address _tokenToSwap, address _tokenToReceive) external view returns (address[] memory);

    function getTokensPrices(address[] memory _tokens) external view returns (uint256[] memory);

    function getEthPrice() external view returns (uint256);

    function getDHVPriceInETH(address _dhvToken) external view returns (uint256);

    function WETH() external view returns (address);

    function getEthAmountWithSlippage(uint256 _amount, address _tokenToSwap) external view returns (uint256);
}
