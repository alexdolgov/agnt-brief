// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.13;

interface IPool{
    function getReserves() external view returns (uint _reserve0, uint _reserve1, uint _blockTimestampLast);
}

contract msETHPegFetcher{
    IPool immutable pool;

    constructor(){
        pool = IPool(0x917AA69D539D6518440dd0BEA2eaAc142a8d5610);
    }

    function getPeg() public view returns (uint256 rate){
        (uint256 r0, uint256 r1, ) = pool.getReserves();
        uint256 numerator = 3 * 1e8 * (r0 / 1e18 * r0 / 1e18 * r1 / 1e18) + 1e8 * (r1 / 1e18 * r1 / 1e18 * r1 / 1e18);
        uint256 denominator = 1e4 * (r0 / 1e18 * r0 / 1e18 * r0 / 1e18) + 3 * 1e4 * (r0 / 1e18 * r1 / 1e18 * r1 / 1e18);
        return numerator/denominator;
    }

}