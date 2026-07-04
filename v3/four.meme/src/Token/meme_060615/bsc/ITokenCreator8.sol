// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

interface ITokenCreator8 {
    struct InitParams {
        address quote;
        string name;
        string symbol;
        uint256 totalSupply;
        address founder;
        uint256 feeRateBuy;
        uint256 feeRateSell;
        uint256 rateFounder;
        uint256 rateHolder;
        uint256 rateBurn;
        uint256 rateLiquidity;
        uint256 minDispatch;
        uint256 minShare;
    }

    function createToken(uint256 salt, InitParams memory) external returns (address);
}