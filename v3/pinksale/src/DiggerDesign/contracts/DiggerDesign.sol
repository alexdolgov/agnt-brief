// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "./libraries/DiggerDetails.sol";
import "./interfaces/IDiggerDesign.sol";
import "./extensions/Utils.sol";

contract DiggerDesign is AccessControlUpgradeable, IDiggerDesign {
    struct StatsRange {
        uint256 min;
        uint256 max;
    }

    struct Stats {
        StatsRange stamina;
        StatsRange farmSpeed;
        StatsRange power;
        StatsRange walkSpeed;
    }

    using DiggerDetails for DiggerDetails.Details;

    bytes32 public constant UPGRADER_ROLE = keccak256("UPGRADER_ROLE");
    bytes32 public constant DESIGNER_ROLE = keccak256("DESIGNER_ROLE");

    uint256 private constant SKIN_COUNT = 8;

    // Mapping from rarity to stats.
    mapping(uint256 => Stats) private rarityStats;

    uint256 private tokenLimit;
    uint256[] private dropRate;
    uint256 private mintCost;
    uint256 private maxLevel;
    uint256 private upgradePowerDiggerCost;
    uint256[][] private upgradeCosts;
    uint256[] private rentCost;

    function initialize() public initializer {
        __AccessControl_init();

        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _setupRole(UPGRADER_ROLE, msg.sender);
        _setupRole(DESIGNER_ROLE, msg.sender);

        rarityStats[0] = Stats(
            StatsRange(1, 3),
            StatsRange(1, 3),
            StatsRange(1, 3),
            StatsRange(1, 3)
        );
        rarityStats[1] = Stats(
            StatsRange(3, 6),
            StatsRange(3, 6),
            StatsRange(3, 6),
            StatsRange(3, 6)
        );
        rarityStats[2] = Stats(
            StatsRange(6, 9),
            StatsRange(6, 9),
            StatsRange(6, 9),
            StatsRange(6, 9)
        );
        rarityStats[3] = Stats(
            StatsRange(9, 12),
            StatsRange(9, 12),
            StatsRange(9, 12),
            StatsRange(9, 12)
        );
        rarityStats[4] = Stats(
            StatsRange(12, 15),
            StatsRange(12, 15),
            StatsRange(12, 15),
            StatsRange(12, 15)
        );
        rarityStats[5] = Stats(
            StatsRange(15, 18),
            StatsRange(15, 18),
            StatsRange(15, 18),
            StatsRange(15, 18)
        );
        rarityStats[6] = Stats(
            StatsRange(18, 21),
            StatsRange(18, 21),
            StatsRange(18, 21),
            StatsRange(18, 21)
        );

        tokenLimit = 500;
        dropRate = [7187, 1536, 803, 404, 52, 14, 4];
        rentCost = [
            10 ether,
            12 ether,
            15 ether,
            20 ether,
            25 ether,
            50 ether,
            100 ether
        ];
        mintCost = 10 ether;
        upgradePowerDiggerCost = 2 ether;
        maxLevel = 5;
        upgradeCosts.push([10 ether, 20 ether, 30 ether, 40 ether]);
        upgradeCosts.push([15 ether, 25 ether, 35 ether, 45 ether]);
        upgradeCosts.push([20 ether, 30 ether, 40 ether, 50 ether]);
        upgradeCosts.push([25 ether, 35 ether, 45 ether, 55 ether]);
        upgradeCosts.push([30 ether, 40 ether, 50 ether, 60 ether]);
        upgradeCosts.push([35 ether, 45 ether, 55 ether, 65 ether]);
        upgradeCosts.push([40 ether, 50 ether, 60 ether, 70 ether]);
    }

    /** Sets the rarity stats. */
    function setRarityStats(uint256 rarity, Stats memory stats)
        external
        onlyRole(DESIGNER_ROLE)
    {
        rarityStats[rarity] = stats;
    }

    /** Sets the token limit. */
    function setTokenLimit(uint256 value) external onlyRole(DESIGNER_ROLE) {
        tokenLimit = value;
    }

    /** Sets the drop rate. */
    function setDropRate(uint256[] memory value)
        external
        onlyRole(DESIGNER_ROLE)
    {
        dropRate = value;
    }

    /** Sets the rent fee. */
    function setRentCost(uint256[] memory value)
        external
        onlyRole(DESIGNER_ROLE)
    {
        rentCost = value;
    }

    /** Sets max upgrade level. */
    function setMaxLevel(uint256 value) external onlyRole(DESIGNER_ROLE) {
        maxLevel = value;
    }

    /** Sets the current upgrade cost. */
    function setUpgradeCosts(uint256[][] memory value)
        external
        onlyRole(DESIGNER_ROLE)
    {
        upgradeCosts = value;
    }

    function setUpgradePowerDiggerCost(uint256 value)
        external
        onlyRole(DESIGNER_ROLE)
    {
        upgradePowerDiggerCost = value;
    }

    function getRarityStats() external view returns (Stats[] memory) {
        uint256 size = dropRate.length;
        Stats[] memory result = new Stats[](size);
        for (uint256 i = 0; i < size; ++i) {
            result[i] = rarityStats[i];
        }
        return result;
    }

    function getTokenLimit() external view override returns (uint256) {
        return tokenLimit;
    }

    function getDropRate() external view returns (uint256[] memory) {
        return dropRate;
    }

    function getMintCost() external view override returns (uint256) {
        return mintCost;
    }

    function getRentCost(uint256 rarity)
        external
        view
        override
        returns (uint256)
    {
        return rentCost[rarity];
    }

    function getRentCost() external view returns (uint256[] memory) {
        return rentCost;
    }

    function getMaxLevel() external view override returns (uint256) {
        return maxLevel;
    }

    function getUpgradeCost(uint256 rarity, uint256 level)
        external
        view
        override
        returns (uint256)
    {
        return upgradeCosts[rarity][level];
    }

    function getUpgradeCosts() external view returns (uint256[][] memory) {
        return upgradeCosts;
    }

    function getUpgradePowerDiggerCost()
        external
        view
        override
        returns (uint256)
    {
        return upgradePowerDiggerCost;
    }

    function createRandomToken(
        uint256 seed,
        uint256 id,
        uint256 rarity
    )
        external
        view
        override
        returns (uint256 nextSeed, uint256 encodedDetails)
    {
        DiggerDetails.Details memory details;
        details.id = id;

        if (rarity == DiggerDetails.ALL_RARITY) {
            // Random rarity.
            (seed, details.rarity) = Utils.weightedRandom(seed, dropRate);
        } else {
            // Specified rarity.
            details.rarity = rarity - 1;
        }
        details.level = 1;

        Stats storage stats = rarityStats[details.rarity];

        (seed, details.skin) = Utils.randomRangeInclusive(seed, 1, SKIN_COUNT);
        (seed, details.stamina) = Utils.randomRangeInclusive(
            seed,
            stats.stamina.min,
            stats.stamina.max
        );
        (seed, details.farmSpeed) = Utils.randomRangeInclusive(
            seed,
            stats.farmSpeed.min,
            stats.farmSpeed.max
        );
        (seed, details.walkSpeed) = Utils.randomRangeInclusive(
            seed,
            stats.walkSpeed.min,
            stats.walkSpeed.max
        );
        (seed, details.power) = Utils.randomRangeInclusive(
            seed,
            stats.power.min,
            stats.power.max
        );
        details.blockNumber = block.number;

        nextSeed = seed;
        encodedDetails = details.encode();
    }

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
    ) external view override returns (uint256 encodedDetails) {
        DiggerDetails.Details memory details;
        details.id = id;
        details.rarity = rarity;
        details.level = level;
        details.walkSpeed = walkSpeed;
        details.skin = skin;
        details.stamina = stamina;
        details.farmSpeed = farmSpeed;
        details.power = power;
        details.blockNumber = blockNumber;
        encodedDetails = details.encode();
    }
}
