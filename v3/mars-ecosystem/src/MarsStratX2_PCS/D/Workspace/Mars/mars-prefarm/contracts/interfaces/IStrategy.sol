
// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

interface IStrategy {
    // Sum of all shares of users to wantLockedTotal
    function sharesTotal() external view returns (uint256);

    // Main want token compounding function
    function earn() external;

    // Transfer want tokens marsFarm -> strategy
    function deposit(uint256 _wantAmt)
        external
        returns (uint256);

    // Transfer want tokens strategy -> marsFarm
    function withdraw(uint256 _wantAmt)
        external
        returns (uint256);
}