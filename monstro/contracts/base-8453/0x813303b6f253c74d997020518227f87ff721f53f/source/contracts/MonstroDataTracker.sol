// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title MonstroDataTracker
 * @dev Tracks data such as payouts and other stats for Monstro's NFT products: Golemz, Poolz, and Farmz.
 */
contract MonstroDataTracker is Ownable {
    // Structure for global stats for Golemz and Poolz
    struct GlobalStats {
        uint256 week;
        uint256 recipients;
        uint256 apr;
        uint256 payoutAmount;
        string transactionHash;
    }

    // Structure for global stats for Farmz
    struct FarmzStats {
        uint256 week;
        uint256 recipients;
        uint256 apr;
        uint256 perUnit;
        uint256 payoutHolders;
        uint256 payoutTeam;
        string transactionHash1;
        string transactionHash2;
    }

    // Structure for individual NFT stats
    struct IndividualStats {
        uint256 week;
        uint256 perUnit;
        uint256 payout;
    }

    // Structure for latest stats
    struct LatestStats {
        uint256 totalInvested;
        uint256 currentTVL;
        uint256 insurance;
        uint256 totalPaidOut;
    }

    // Mappings to track global stats
    mapping(uint256 => GlobalStats) public golemzGlobalStats;
    mapping(uint256 => GlobalStats) public poolzGlobalStats;
    mapping(uint256 => FarmzStats) public farmzGlobalStats;

    mapping(string => uint256[]) private globalStatsWeeks;
    mapping(address => mapping(string => uint256[]))
        private individualStatsWeeks;

    // Mapping to track individual NFT stats by wallet and product
    mapping(address => mapping(string => mapping(uint256 => IndividualStats)))
        public individualStats;

    // Latest stats for each product
    LatestStats public golemzLatestStats;
    LatestStats public poolzLatestStats;
    LatestStats public farmzLatestStats;

    // Events for tracking updates
    event LatestStatsUpdated(
        string product,
        uint256 totalInvested,
        uint256 currentTVL,
        uint256 insurance,
        uint256 totalPaidOut
    );
    event GlobalStatsUpdated(
        string product,
        uint256 week,
        uint256 recipients,
        uint256 apr,
        uint256 payoutAmount,
        string transactionHash
    );
    event FarmzGlobalStatsUpdated(
        uint256 week,
        uint256 recipients,
        uint256 apr,
        uint256 perUnit,
        uint256 payoutHolders,
        uint256 payoutTeam,
        string transactionHash1,
        string transactionHash2
    );
    event IndividualStatsUpdated(
        address wallet,
        string product,
        uint256 week,
        uint256 perUnit,
        uint256 payout
    );

    /**
     * @dev Initializes the contract setting the deployer as the owner.
     */
    constructor() Ownable(msg.sender) {}

    /**
     * @dev Updates the latest stats for a specific product.
     * @param product The product name (e.g., "golemz", "poolz", "farmz").
     * @param totalInvested Total amount invested.
     * @param currentTVL Current total value locked.
     * @param insurance Amount of insurance.
     * @param totalPaidOut Total amount paid out.
     */
    function updateLatestStats(
        string memory product,
        uint256 totalInvested,
        uint256 currentTVL,
        uint256 insurance,
        uint256 totalPaidOut
    ) external onlyOwner {
        LatestStats memory stats = LatestStats({
            totalInvested: totalInvested,
            currentTVL: currentTVL,
            insurance: insurance,
            totalPaidOut: totalPaidOut
        });

        if (keccak256(bytes(product)) == keccak256(bytes("golemz"))) {
            golemzLatestStats = stats;
        } else if (keccak256(bytes(product)) == keccak256(bytes("poolz"))) {
            poolzLatestStats = stats;
        } else if (keccak256(bytes(product)) == keccak256(bytes("farmz"))) {
            farmzLatestStats = stats;
        } else {
            revert("Invalid product");
        }

        emit LatestStatsUpdated(
            product,
            totalInvested,
            currentTVL,
            insurance,
            totalPaidOut
        );
    }

    /**
     * @dev Updates global stats for Golemz and Poolz.
     * @param product The product name ("golemz" or "poolz").
     * @param week The week number.
     * @param recipients Number of recipients.
     * @param apr Annual percentage rate.
     * @param payoutAmount Payout amount in USDC.
     * @param transactionHash Transaction hash for the payout.
     */
    function updateGlobalStats(
        string memory product,
        uint256 week,
        uint256 recipients,
        uint256 apr,
        uint256 payoutAmount,
        string memory transactionHash
    ) external onlyOwner {
        globalStatsWeeks[product].push(week);

        GlobalStats memory stats = GlobalStats({
            week: week,
            recipients: recipients,
            apr: apr,
            payoutAmount: payoutAmount,
            transactionHash: transactionHash
        });

        if (keccak256(bytes(product)) == keccak256(bytes("golemz"))) {
            golemzGlobalStats[week] = stats;
        } else if (keccak256(bytes(product)) == keccak256(bytes("poolz"))) {
            poolzGlobalStats[week] = stats;
        } else {
            revert("Invalid product for global stats");
        }

        emit GlobalStatsUpdated(
            product,
            week,
            recipients,
            apr,
            payoutAmount,
            transactionHash
        );
    }

    /**
     * @dev Updates global stats for Farmz.
     * @param week The week number.
     * @param recipients Number of recipients.
     * @param apr Annual percentage rate.
     * @param perUnit Payout per unit in USDC.
     * @param payoutHolders Total payout to holders in USDC.
     * @param payoutTeam Total payout to the team in USDC.
     * @param transactionHash1 Transaction hash for holders payout.
     * @param transactionHash2 Transaction hash for team payout.
     */
    function updateFarmzGlobalStats(
        uint256 week,
        uint256 recipients,
        uint256 apr,
        uint256 perUnit,
        uint256 payoutHolders,
        uint256 payoutTeam,
        string memory transactionHash1,
        string memory transactionHash2
    ) external onlyOwner {
        globalStatsWeeks["farmz"].push(week);

        FarmzStats memory stats = FarmzStats({
            week: week,
            recipients: recipients,
            apr: apr,
            perUnit: perUnit,
            payoutHolders: payoutHolders,
            payoutTeam: payoutTeam,
            transactionHash1: transactionHash1,
            transactionHash2: transactionHash2
        });

        farmzGlobalStats[week] = stats;
        emit FarmzGlobalStatsUpdated(
            week,
            recipients,
            apr,
            perUnit,
            payoutHolders,
            payoutTeam,
            transactionHash1,
            transactionHash2
        );
    }

    /**
     * @dev Bulk updates individual NFT stats for multiple wallets and products.
     * @param wallets Array of wallet addresses.
     * @param product The product name ("golemz", "poolz", "farmz").
     * @param week The week number.
     * @param perUnits Array of per unit payouts in USDC.
     * @param payouts Array of total payouts in USDC.
     */
    function bulkUpdateIndividualStats(
        address[] memory wallets,
        string memory product,
        uint256 week,
        uint256[] memory perUnits,
        uint256[] memory payouts
    ) external onlyOwner {
        require(
            wallets.length == perUnits.length &&
                wallets.length == payouts.length,
            "Array length mismatch"
        );

        for (uint256 i = 0; i < wallets.length; i++) {
            individualStatsWeeks[wallets[i]][product].push(week);

            individualStats[wallets[i]][product][week] = IndividualStats({
                week: week,
                perUnit: perUnits[i],
                payout: payouts[i]
            });
            emit IndividualStatsUpdated(
                wallets[i],
                product,
                week,
                perUnits[i],
                payouts[i]
            );
        }
    }

    /**
     * @dev Fetches individual stats for a wallet and product.
     * @param wallet Address of the wallet.
     * @param product The product name ("golemz", "poolz", "farmz").
     * @param weekNumbers Array of week numbers.
     * @return Array of IndividualStats for the specified wallet and product over multiple weeks.
     */
    function getIndividualStatsForWeeks(
        address wallet,
        string memory product,
        uint256[] memory weekNumbers
    ) external view returns (IndividualStats[] memory) {
        IndividualStats[] memory stats = new IndividualStats[](
            weekNumbers.length
        );
        for (uint256 i = 0; i < weekNumbers.length; i++) {
            stats[i] = individualStats[wallet][product][weekNumbers[i]];
        }

        return stats;
    }

    /**
     * @dev Fetches global stats for Golemz or Poolz.
     * @param product The product name ("golemz" or "poolz").
     * @param week The week number.
     * @return GlobalStats for the specified product and week.
     */
    function getGlobalStats(
        string memory product,
        uint256 week
    ) external view returns (GlobalStats memory) {
        if (keccak256(bytes(product)) == keccak256(bytes("golemz"))) {
            return golemzGlobalStats[week];
        } else if (keccak256(bytes(product)) == keccak256(bytes("poolz"))) {
            return poolzGlobalStats[week];
        } else {
            revert("Invalid product for global stats");
        }
    }

    /**
     * @dev Fetches global stats for Golemz or Poolz.
     * @param product The product name ("golemz" or "poolz").
     * @param weekNumbers Array of week numbers.
     * @return Array for the specified product and week.
     */
    function getGlobalStatsForWeeks(
        string memory product,
        uint256[] memory weekNumbers
    ) external view returns (GlobalStats[] memory) {
        GlobalStats[] memory stats = new GlobalStats[](weekNumbers.length);
        for (uint256 i = 0; i < weekNumbers.length; i++) {
            if (keccak256(bytes(product)) == keccak256(bytes("golemz"))) {
                stats[i] = golemzGlobalStats[weekNumbers[i]];
            } else if (keccak256(bytes(product)) == keccak256(bytes("poolz"))) {
                stats[i] = poolzGlobalStats[weekNumbers[i]];
            } else {
                revert("Invalid product for global stats");
            }
        }

        return stats;
    }

    /**
     * @dev Fetches global stats for Farmz.
     * @param week The week number.
     * @return FarmzStats for the specified week.
     */
    function getFarmzGlobalStats(
        uint256 week
    ) external view returns (FarmzStats memory) {
        return farmzGlobalStats[week];
    }

    /**
     * @dev Fetches global stats for Farmz.
     * @param weekNumbers Array of week numbers.
     * @return Array for the specified week.
     */
    function getFarmzGlobalStats(
        uint256[] memory weekNumbers
    ) external view returns (FarmzStats[] memory) {
        FarmzStats[] memory stats = new FarmzStats[](weekNumbers.length);
        for (uint256 i = 0; i < weekNumbers.length; i++) {
            stats[i] = farmzGlobalStats[weekNumbers[i]];
        }
        return stats;
    }

    /**
     * @dev Get weeks of the selected global's stats.
     * @param product The product name ("golemz", "poolz" or "farmz").
     * @return Array for the all weeks.
     */
    function getGlobalStatsWeeks(
        string memory product
    ) external view returns (uint256[] memory) {
        return globalStatsWeeks[product];
    }

    /**
     * @dev Get weeks of the selected user's stats.
     * @param wallet user's address
     * @param product The product name ("golemz", "poolz" or "farmz").
     * @return Array for the all weeks.
     */
    function getIndividualStatsWeeks(
        address wallet,
        string memory product
    ) external view returns (uint256[] memory) {
        return individualStatsWeeks[wallet][product];
    }
}
