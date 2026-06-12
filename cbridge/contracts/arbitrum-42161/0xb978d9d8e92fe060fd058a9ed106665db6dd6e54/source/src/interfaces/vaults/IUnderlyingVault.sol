// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IUnderlyingVault {
    function burn(address account, uint256 shares) external;
    function mint(uint256 shares, address receiver) external returns (uint256);
    function withdraw(uint256 assets, address receiver, address /*owner*/ ) external returns (uint256);
    function borrowTo(uint256 amount, address to) external;
    function payBack(uint256 amount, uint256 incentives) external;
    function enforcePayBack(uint256 amount, bytes calldata enforceData) external returns (uint256);
    function transfer(address user, uint256 amount) external returns (bool);
    function retentionRefund(uint256 amount, bytes memory enforceData) external view returns (uint256);

    function balanceOf(address user) external view returns (uint256);

    function previewDeposit(uint256 assets) external view returns (uint256);
    function previewRedeem(uint256 shares) external view returns (uint256);
    function totalAssets() external view returns (uint256);
}
