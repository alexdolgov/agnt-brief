// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.6.12;

interface IStrategy {
    function wantLockedTotal() external view returns (uint256);

    function sharesTotal() external view returns (uint256);

    function earn() external;

    function deposit(address _userAddress, uint256 _wantAmt) external returns (uint256);

    function withdraw(address _userAddress, uint256 _wantAmt) external returns (uint256);

    function depositBUSD(address _userAddress, uint256 busdAmount) external returns (uint256);

    function withdrawBUSD(address _userAddress, uint256 shares) external returns (uint256, uint256);

    function tvl() external view returns (uint256);
}
