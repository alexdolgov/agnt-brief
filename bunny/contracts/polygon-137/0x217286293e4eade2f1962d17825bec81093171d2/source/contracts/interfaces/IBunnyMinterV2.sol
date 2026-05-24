// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;

interface IBunnyMinterV2 {
    function isMinter(address) external view returns (bool);

    function amountBunnyToMint(uint bnbProfit) external view returns (uint);

    function withdrawalFee(uint amount, uint depositedAt) external view returns (uint);

    function performanceFee(uint profit) external view returns (uint);

    function mintFor(
        address flip,
        uint _withdrawalFee,
        uint _performanceFee,
        address to,
        uint depositedAt
    ) external payable;

    function mintForV2(
        address flip,
        uint _withdrawalFee,
        uint _performanceFee,
        address to,
        uint depositedAt
    ) external payable;

    function bunnyPerProfit() external view returns (uint);

    function PERFORMANCE_FEE() external view returns (uint);

    function WITHDRAWAL_FEE_FREE_PERIOD() external view returns (uint);

    function WITHDRAWAL_FEE() external view returns (uint);

    function setMinter(address minter, bool canMint) external;

    // V2 functions
    function mint(uint amount) external;

    function safeBunnyTransfer(address to, uint amount) external;

    function mintGov(uint amount) external;
}
