// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

interface IMintStakeShare {
    function referrers(address) external view returns (address);

    function mint(address to, uint256 amount) external;

    function burn(uint256 amount) external;

    function burnFrom(address account, uint256 amount) external;

    function approve(address spender, uint256 amount) external;

    function transfer(address recipient, uint256 amount) external;

    function balanceOf(address account) external view returns (uint256);

    function transferFrom(address sender, address recipient, uint256 amount) external;

    function buyWithMint(address to, address referrer) external payable;

    function getTokenMintAmount(uint256 bnbAmount) external view returns (uint256);

    function stakingAddress() external view returns (address);
}
