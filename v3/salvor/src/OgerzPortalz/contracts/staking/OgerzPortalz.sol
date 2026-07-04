// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import './Portalz.sol';
import './Tokens.sol';

contract OgerzPortalz is Portalz {
    address public ogerzContract;
    uint256 public maxVestingTime = 10 days;

    /* ********************************** */
    /*            Constructor             */
    /* ********************************** */

    constructor(
        address _ogerzContract,
        address _metadataStorage,
        address _rewardTokenAddress,
        BonusERC1155Reward[] memory _bonusRewardz,
        uint64 _vrfSubscriptionId,
        address vrfCoordinatorV2ContractAddress,
        bytes32 _vrfKeyHash
    ) VRFConsumerBaseV2(vrfCoordinatorV2ContractAddress) {
        ogerzContract = _ogerzContract;
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

    function maxPeriod() public view override returns (uint256) {}

    function setMaxPeriod(uint256 _maxPeriod) external override onlyRole(DEFAULT_ADMIN_ROLE) {}

    /**
     Adds following rules:
     - Relic id 4 -> -1 vesting day
     */
    function canUnstake(
        uint256 startTime,
        Tokens.ERC165Token[] calldata /*tokens*/,
        uint256[] memory relicIds,
        uint256[] memory /*runeIds*/
    ) external view virtual override returns (bool) {
        uint256 vestingDeductible = 0;
        for (uint256 i = 0; i < relicIds.length; i = unsafeInc(i)) {
            if (relicIds[i] == 4) {
                vestingDeductible += 1 days;
            }
        }

        return block.timestamp >= startTime + maxVestingTime - vestingDeductible;
    }

    /* ********************************** */
    /*             Multiplier             */
    /* ********************************** */

    uint256[] public ogerzMultipliers = [100, 98, 96, 94, 92, 90];

    function setMultipliers(uint256[] calldata multipliers) external onlyRole(DEFAULT_ADMIN_ROLE) {
        ogerzMultipliers = multipliers;
    }

    function multiplier() public view override returns (uint256) {}

    function setMultiplier(uint256 _multiplier) external override onlyRole(DEFAULT_ADMIN_ROLE) {}

    function maxMultiplierPeriod() public view override returns (uint256) {}

    function setMaxMultiplierPeriod(uint256 _maxMultiplierPeriod) external override onlyRole(DEFAULT_ADMIN_ROLE) {}

    function currentMultiplier(
        uint256 /*period*/,
        Tokens.ERC165Token[] calldata tokens,
        uint256[] calldata /*relicIds*/,
        uint256[] calldata /*runeIds*/
    ) public view override returns (uint256 mult) {
        if (tokens.length > 0) {
            return ogerzMultipliers[tokens.length - 1] * 10 ** 16;
        }
        return 1 ether;
    }

    /* ********************************** */
    /*            Token Reward            */
    /* ********************************** */

    /**
     Adds following rules:
     - Relic id 2 -> +5 KLO per day
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

        uint256 period = block.timestamp - startTime;
        uint256 fullDaysPeriod = period / 1 days;

        uint256 tokensBaseDailyReward;
        uint256 ogerzCount;
        for (uint256 i = 0; i < tokens.length; i = unsafeInc(i)) {
            if (tokens[i].contractAddress == ogerzContract) {
                ogerzCount++;
            } else {
                tokensBaseDailyReward =
                    (3 * metadataStorage.rarityReward(tokens[i].contractAddress, tokens[i].tokenId) + 40) /
                    14;
            }
        }
        tokensBaseDailyReward *= (ogerzCount + 1);

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

    function chanceToDrop(
        Tokens.ERC165Token[] calldata /*tokens*/,
        uint256[] calldata /*relicIds*/,
        uint256[] calldata /*runeIds*/,
        uint256 /*stakedPeriod*/,
        uint256 /*bonusIndex*/
    ) public pure override returns (uint256) {
        return 0;
    }

    /* ********************************** */
    /*            Owner Utils             */
    /* ********************************** */

    function setOgerzContract(address _ogerzContract) external onlyRole(DEFAULT_ADMIN_ROLE) {
        ogerzContract = _ogerzContract;
    }

    function setMaxVestingTime(uint256 _maxVestingTime) external onlyRole(DEFAULT_ADMIN_ROLE) {
        maxVestingTime = _maxVestingTime;
    }
}
