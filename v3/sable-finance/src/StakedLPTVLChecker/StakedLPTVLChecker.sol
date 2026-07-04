// SPDX-License-Identifier: MIT
pragma solidity =0.8.15;

interface IWBNB {
    function balanceOf(address) external view returns (uint);
}

interface IEACAggregatorProxy {
    function latestAnswer() external view returns (int256);
}

interface IPancakePair {
    function balanceOf(address) external view returns (uint);
    function totalSupply() external view returns (uint);
}


contract StakedLPTVLChecker {
    address private constant BNB_PRICE_FEED = 0x0567F2323251f0Aab15c8dFb1967E4e8A7D42aeE;
    address private constant WBNB = 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c;
    address public constant POOL_ADDRESS = 0xa0D4e270D9EB4E41f7aB02337c21692D7eECCCB0;
    address public constant STAKING_ADDRESS = 0xFbc81aEB7e5c11d4A60a0690Db9F36F93E25B16C;

    IEACAggregatorProxy private bnbPriceFeed;
    IWBNB private wbnb;
    IPancakePair private pancakePair;

    constructor() {
        bnbPriceFeed = IEACAggregatorProxy(BNB_PRICE_FEED);
        wbnb = IWBNB(WBNB);
        pancakePair = IPancakePair(POOL_ADDRESS);
    }

    function getStakedLPTVL() public view returns (uint) {
        uint poolBNBBalance = wbnb.balanceOf(POOL_ADDRESS);
        uint BNBPrice = uint(bnbPriceFeed.latestAnswer());
        uint stakingPoolLPShare = pancakePair.balanceOf(STAKING_ADDRESS) * 1e18 / pancakePair.totalSupply();
        uint poolTVLInUSD = poolBNBBalance * BNBPrice * 2;
        uint DECIMAL_PRECISION = 1e18 * 1e18 * 1e8;
        return poolTVLInUSD * stakingPoolLPShare / DECIMAL_PRECISION;
    }

}