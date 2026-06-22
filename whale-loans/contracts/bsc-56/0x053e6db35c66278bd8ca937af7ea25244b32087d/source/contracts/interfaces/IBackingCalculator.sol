// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.7.5;

interface IBackingCalculator{
    //decimals for backing is 4
    function backing() external view returns (uint _lpBacking, uint _treasuryBacking);

    //decimals for backing is 4
    function lpBacking() external view returns(uint _lpBacking);

    //decimals for backing is 4
    function treasuryBacking() external view returns(uint _treasuryBacking);

    //decimals for backing is 4
    function backing_full() external view returns (
        uint _lpBacking, 
        uint _treasuryBacking,
        uint _totalStableReserve,
        uint _totalHecReserve,
        uint _totalStableBal,
        uint _cirulatingHec
    );
}