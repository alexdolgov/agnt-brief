// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;

interface IBunnyMinter {
    function isMinter(address) external view returns (bool);

    function amountBunnyToMint(uint bnbProfit) external view returns (uint);

    function amountBunnyToMintForBunnyBNB(uint amount, uint duration) external view returns (uint);

    function withdrawalFee(uint amount, uint depositedAt) external view returns (uint);

    function performanceFee(uint profit) external view returns (uint);

    function mintFor(
        address flip,
        uint _withdrawalFee,
        uint _performanceFee,
        address to,
        uint depositedAt
    ) external;

    function mintForBunnyBNB(
        uint amount,
        uint duration,
        address to
    ) external;

    function bunnyPerProfitBNB() external view returns (uint);

    function WITHDRAWAL_FEE_FREE_PERIOD() external view returns (uint);

    function WITHDRAWAL_FEE() external view returns (uint);

    function setMinter(address minter, bool canMint) external;
}
