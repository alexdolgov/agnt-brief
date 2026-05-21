// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

interface IERC4626 {
    function totalAssets() external view returns(uint);
    function totalSupply() external view returns(uint);
}

interface IFeed {
    function latestAnswer() external view returns(int256);
}

contract VaultExchangeRateProvider{
    IERC4626 public vault;
    IFeed public assetFeed;
    mapping(address => bool) public updaters;

    constructor(address _vault, address _assetFeed) {
        vault = IERC4626(_vault);
        assetFeed = IFeed(_assetFeed);
    }

    function exchangeRate() public view returns(uint){
        return vault.totalAssets() * 1e18 / vault.totalSupply();
    }

    function lastUpdate() external view returns(uint){
        return block.timestamp;
    }
    
    function latestAnswer() external view returns(uint){
        return uint(assetFeed.latestAnswer()) * exchangeRate() / 1e18;
    }
}
