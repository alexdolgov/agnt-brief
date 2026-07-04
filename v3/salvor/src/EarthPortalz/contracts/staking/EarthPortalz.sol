// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import './Portalz.sol';
import './Tokens.sol';

contract EarthPortalz is Portalz {
    /* ********************************** */
    /*            Constructor             */
    /* ********************************** */

    constructor(
        address _metadataStorage,
        address _rewardTokenAddress,
        BonusERC1155Reward[] memory _bonusRewardz,
        uint64 _vrfSubscriptionId,
        address vrfCoordinatorV2ContractAddress,
        bytes32 _vrfKeyHash
    ) VRFConsumerBaseV2(vrfCoordinatorV2ContractAddress) {
        metadataStorage = MetadataStorage(_metadataStorage);
        rewardTokenAddress = _rewardTokenAddress;
        for (uint8 i = 0; i < _bonusRewardz.length; i++) {
            bonusRewardz[i] = _bonusRewardz[i];
        }

        vrfSubscriptionId = _vrfSubscriptionId;
        vrfCoordinatorV2Contract = VRFCoordinatorV2Interface(vrfCoordinatorV2ContractAddress);
        vrfKeyHash = _vrfKeyHash;

        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(SQUADZ_ROLE, msg.sender);
    }

    /* ********************************** */
    /*           Staking period           */
    /* ********************************** */

    uint256 public earthMaxPeriod = 166;

    function maxPeriod() public view override returns (uint256) {
        return earthMaxPeriod;
    }

    function setMaxPeriod(uint256 _maxPeriod) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        earthMaxPeriod = _maxPeriod;
    }

    /* ********************************** */
    /*             Multiplier             */
    /* ********************************** */

    uint256 public earthMultiplier = 10 ** 16;
    uint256 public earthMaxMultiplierPeriod = 100;

    function multiplier() public view override returns (uint256) {
        return earthMultiplier;
    }

    function setMultiplier(uint256 _multiplier) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        earthMultiplier = _multiplier;
    }

    function maxMultiplierPeriod() public view override returns (uint256) {
        return earthMaxMultiplierPeriod;
    }

    function setMaxMultiplierPeriod(uint256 _maxMultiplierPeriod) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        earthMaxMultiplierPeriod = _maxMultiplierPeriod;
    }

    /**
     Adds following rules:
     - Relic id 1 -> +0.01 per day
     */
    function currentMultiplier(
        uint256 period,
        Tokens.ERC165Token[] calldata /*tokens*/,
        uint256[] calldata relicIds,
        uint256[] calldata /*runeIds*/
    ) public view virtual override returns (uint256 mult) {
        uint256 maxMultPeriod = period > maxMultiplierPeriod() ? maxMultiplierPeriod() : period;

        mult = 1 ether + (multiplier() * maxMultPeriod);

        for (uint256 i = 0; i < relicIds.length; i = unsafeInc(i)) {
            if (relicIds[i] == 1) {
                mult += 10 ** 16;
            }
        }

        return mult;
    }

    /* ********************************** */
    /*            Token Reward            */
    /* ********************************** */

    /**
     Adds following rules:
     - Relic id 2 -> +5 FLSH per day
     */
    function calculateRewardsSinceStartTime(
        uint256 startTime,
        Tokens.ERC165Token[] calldata tokens,
        uint256[] calldata relicIds,
        uint256[] calldata runeIds
    ) external view override returns (uint256 reward) {
        if (block.timestamp <= startTime) {
            return 0;
        }

        uint256 period = (block.timestamp - startTime) > (maxPeriod() * 1 days)
            ? (maxPeriod() * 1 days)
            : (block.timestamp - startTime);
        uint256 fullDaysPeriod = period / 1 days;

        uint256 tokensBaseDailyReward;
        for (uint256 i = 0; i < tokens.length; i = unsafeInc(i)) {
            tokensBaseDailyReward += metadataStorage.rarityReward(tokens[i].contractAddress, tokens[i].tokenId);
        }

        for (uint256 i = 0; i < relicIds.length; i = unsafeInc(i)) {
            if (relicIds[i] == 2) {
                tokensBaseDailyReward += 5;
            }
        }

        uint256 fullDaysReward;
        for (uint256 day = 0; day < fullDaysPeriod; day = unsafeInc(day)) {
            fullDaysReward += tokensBaseDailyReward * currentMultiplier(day, tokens, relicIds, runeIds);
        }

        uint256 currentDayRewards = ((period % 1 days) *
            currentMultiplier(fullDaysPeriod, tokens, relicIds, runeIds) *
            tokensBaseDailyReward) / 1 days;

        return fullDaysReward + currentDayRewards;
    }

    /* ********************************** */
    /*        Bonus ERC1155 Rewardz       */
    /* ********************************** */

    /**
     Adds following rules:
     - Relic id 1 -> +1 (0.01%) to the bonus reward drop chance
     */
    function chanceToDrop(
        Tokens.ERC165Token[] calldata tokens,
        uint256[] calldata relicIds,
        uint256[] calldata /*runeIds*/,
        uint256 stakedPeriod,
        uint256 bonusIndex
    ) public view override returns (uint256) {
        require(tokens.length > 0, '2004');
        require(bonusIndex < bonusRewardzLength, '2003');

        BonusERC1155Reward memory bonus = bonusRewardz[uint8(bonusIndex)];
        uint256 dropChanceFromStaking = bonus.dropChance * tokens.length * stakedPeriod;

        for (uint256 i = 0; i < relicIds.length; i = unsafeInc(i)) {
            if (relicIds[i] == 1) {
                dropChanceFromStaking += 1;
            }
        }

        return dropChanceFromStaking > bonus.maxDropChance ? bonus.maxDropChance : dropChanceFromStaking;
    }
}
