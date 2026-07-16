// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

library DiggerDetails {
    uint256 public constant ALL_RARITY = 0;

    struct Details {
        uint256 id;
        uint256 index;
        uint256 rarity;
        uint256 level;
        uint256 skin;
        uint256 stamina;
        uint256 farmSpeed;
        uint256 power;
        uint256 walkSpeed;
        uint256 blockNumber;
    }

    function encode(Details memory details) internal pure returns (uint256) {
        uint256 value;
        value |= details.id;
        value |= details.index << 30;
        value |= details.rarity << 40;
        value |= details.level << 45;
        value |= details.skin << 50;
        value |= details.stamina << 55;
        value |= details.farmSpeed << 60;
        value |= details.power << 65;
        value |= details.walkSpeed << 70;
        value |= details.blockNumber << 75;
        return value;
    }

    function decode(uint256 details)
        internal
        pure
        returns (Details memory result)
    {
        result.id = decodeId(details);
        result.index = decodeIndex(details);
        result.rarity = decodeRarity(details);
        result.level = decodeLevel(details);
        result.skin = (details >> 50) & 31;
        result.stamina = (details >> 55) & 31;
        result.farmSpeed = (details >> 60) & 31;
        result.power = (details >> 65) & 31;
        result.walkSpeed = (details >> 70) & 31;
        result.blockNumber = decodeBlockNumber(details);
    }

    function decodeId(uint256 details) internal pure returns (uint256) {
        return details & ((1 << 30) - 1);
    }

    function decodeIndex(uint256 details) internal pure returns (uint256) {
        return (details >> 30) & ((1 << 10) - 1);
    }

    function decodeRarity(uint256 details) internal pure returns (uint256) {
        return (details >> 40) & 31;
    }

    function decodeLevel(uint256 details) internal pure returns (uint256) {
        return (details >> 45) & 31;
    }

    function decodePower(uint256 details) internal pure returns (uint256) {
        return (details >> 65) & 31;
    }

    function decodeBlockNumber(uint256 details)
        internal
        pure
        returns (uint256)
    {
        uint256 value = (details >> 75) & ((1 << 30) - 1);
        return value > 0 ? value : 15323374; /* Testnet */
    }

    function increaseLevel(uint256 details) internal pure returns (uint256) {
        uint256 level = decodeLevel(details);
        details &= ~(uint256(31) << 45);
        details |= (level + 1) << 45;
        return details;
    }

    function increasePower(uint256 details) internal view returns (uint256) {
        uint256 power = decodePower(details);
        details &= ~(uint256(31) << 65);
        details |= (power + 1) << 65;
        return details;
    }

    function setIndex(uint256 details, uint256 index)
        internal
        pure
        returns (uint256)
    {
        details &= ~(uint256(1023) << 30);
        details |= index << 30;
        return details;
    }
}
