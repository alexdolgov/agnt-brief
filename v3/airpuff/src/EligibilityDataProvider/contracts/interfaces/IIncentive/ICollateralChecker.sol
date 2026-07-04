// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

interface ICollateralChecker {
    //@dev total collatral Amount deposited in our system on a certain chain
    function getTotalCollateralInUsdc(address _user) external view returns (uint256 totalCollateralInUSD);

    function owner() external view returns (address);
}
