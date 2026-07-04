// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

interface IDiggerDesign {
    function getTokenLimit() external view returns (uint256);

    function getMintCost() external view returns (uint256);

    function getRentCost(uint256 rarity) external view returns (uint256);

    function getMaxLevel() external view returns (uint256);

    function getUpgradeCost(uint256 rarity, uint256 level)
        external
        view
        returns (uint256);

    function getUpgradePowerDiggerCost() external view returns (uint256);

    function createRandomToken(
        uint256 seed,
        uint256 id,
        uint256 rarity
    ) external view returns (uint256 nextSeed, uint256 encodedDetails);

    function createToken(
        uint256 id,
        uint256 rarity,
        uint256 level,
        uint256 walkSpeed,
        uint256 skin,
        uint256 stamina,
        uint256 farmSpeed,
        uint256 power,
        uint256 blockNumber
    ) external view returns (uint256 encodedDetails);
}
