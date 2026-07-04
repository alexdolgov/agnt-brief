// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

interface IDssLitePsm {
    //dai->usdc
    function buyGem(address usr, uint256 gemAmt) external returns (uint256 daiInWad);

    //usdc->dai
    function sellGem(address usr, uint256 gemAmt) external returns (uint256 daiOutWad);
}
