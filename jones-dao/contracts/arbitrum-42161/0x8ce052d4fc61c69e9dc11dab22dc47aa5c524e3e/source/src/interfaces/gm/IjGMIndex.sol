// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IjGMIndex {
    function mint(uint256 shares, address receiver) external;
    function burn(address owner, uint256 shares) external;
    function updateTotalValue(uint256 totalValue) external;

    function balanceOf(address user) external view returns (uint256);
    function decimals() external view returns (uint8);
    function totalValue() external view returns (uint256);

    function totalSupply() external view returns (uint256);

    function lastUSDTotalValue() external view returns (uint256);

    function USDCPrice() external view returns (uint256);

    function previewDeposit(uint256 assets) external view returns (uint256);
    function previewRedeem(uint256 shares) external view returns (uint256);
    function previewRedeem(bytes calldata _data) external view returns (uint256);

    error InvalidPrice();
    error StalePriceUpdate();
    error SequencerDown();
}
