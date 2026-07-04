// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import '@openzeppelin/contracts/utils/math/Math.sol';

import './Portalz.sol';
import './Tokens.sol';
import './MetadataStorage.sol';

contract ChiknPortalz is Portalz {
    /* ********************************** */
    /*            Constructor             */
    /* ********************************** */

    constructor(
        address _metadataStorage,
        address _rewardTokenAddress,
        uint64 _vrfSubscriptionId,
        address vrfCoordinatorV2ContractAddress,
        bytes32 _vrfKeyHash
    ) VRFConsumerBaseV2(vrfCoordinatorV2ContractAddress) {
        metadataStorage = MetadataStorage(_metadataStorage);
        rewardTokenAddress = _rewardTokenAddress;

        vrfSubscriptionId = _vrfSubscriptionId;
        vrfCoordinatorV2Contract = VRFCoordinatorV2Interface(vrfCoordinatorV2ContractAddress);
        vrfKeyHash = _vrfKeyHash;

        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(SQUADZ_ROLE, msg.sender);
    }

    /* ********************************** */
    /*           Staking period           */
    /* ********************************** */

    uint256 public chiknMaxPeriod = 30;

    function maxPeriod() public view override returns (uint256) {
        return chiknMaxPeriod;
    }

    function setMaxPeriod(uint256 _maxPeriod) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        chiknMaxPeriod = _maxPeriod;
    }

    /* ********************************** */
    /*             Multiplier             */
    /* ********************************** */

    uint256[] public chiknMultipliers = [100, 110, 120, 130, 140, 150];

    function setMultipliers(uint256[] calldata multipliers) external onlyRole(DEFAULT_ADMIN_ROLE) {
        chiknMultipliers = multipliers;
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
            return chiknMultipliers[tokens.length - 1] * 10 ** 16;
        }
        return 1 ether;
    }

    /* ********************************** */
    /*            Token Reward            */
    /* ********************************** */

    /**
     Adds following rules:
     - Relic id 1 -> +10 WORM per day
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
            tokensBaseDailyReward +=
                (90 - metadataStorage.rarityReward(tokens[i].contractAddress, tokens[i].tokenId)) /
                2;
        }

        for (uint256 i = 0; i < relicIds.length; i = unsafeInc(i)) {
            if (relicIds[i] == 1) {
                tokensBaseDailyReward += 10;
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

    // Each item type amount left
    uint256[] public itemTypeLengthMapping;
    // Each BonusERC1155Reward object for each item type index
    // As we store the amount left for each item type, cell 0 represents amount left 0, so it should be empty
    mapping(uint256 => mapping(uint256 => BonusERC1155Reward)) public itemMapping;
    // Item types count
    uint32 public bonusTypeLength;

    function drawBonusReward(
        address userAddress,
        uint256 startTime,
        Tokens.ERC165Token[] calldata tokens,
        uint256[] calldata relicIds,
        uint256[] calldata runeIds
    ) external override onlyRole(SQUADZ_ROLE) returns (uint256 vrfRequestId) {
        if (startTime < block.timestamp) {
            uint256 period = (block.timestamp - startTime) > (maxPeriod() * 1 days)
                ? (maxPeriod() * 1 days)
                : (block.timestamp - startTime);
            uint256 fullDaysPeriod = period / 1 days;

            if (fullDaysPeriod == 0) {
                emit NoBonusTokenFound(block.timestamp, address(this), userAddress);
                emit BonusTokenCheckDone(block.timestamp, address(this), userAddress);
                return 0;
            }

            uint256[] memory chancesToDrop = new uint256[](bonusTypeLength);
            for (uint i = 0; i < bonusTypeLength; i++) {
                chancesToDrop[i] = chanceToDrop(tokens, relicIds, runeIds, fullDaysPeriod, i);
            }

            // Will revert if subscription is not set and funded.
            // Here we request as many random number as there is potential bonus rewards to earn.
            vrfRequestId = vrfCoordinatorV2Contract.requestRandomWords(
                vrfKeyHash,
                vrfSubscriptionId,
                vrfRequestConfirmations,
                vrfCallbackGasLimit,
                bonusTypeLength
            );
            vrfRequests[vrfRequestId] = RequestStatus({
                fulfilled: false,
                exists: true,
                chancesToDrop: chancesToDrop,
                startTime: startTime,
                userAddress: userAddress
            });
            emit VrfRequestSent(vrfRequestId, bonusTypeLength);
            return vrfRequestId;
        }
    }

    function fulfillRandomWords(uint256 _requestId, uint256[] memory _randomWords) internal override {
        address userAddress = vrfRequests[_requestId].userAddress;
        for (uint32 i = 0; i < bonusTypeLength; i++) {
            uint256 random = _randomWords[i] % (BASIS_POINT);
            if (random <= vrfRequests[_requestId].chancesToDrop[i]) {
                Tokens.ERC165Token memory bonusToken = itemMapping[i][itemTypeLengthMapping[i]].token;
                IERC1155 bonusTokenContract = IERC1155(bonusToken.contractAddress);
                if (
                    itemTypeLengthMapping[i] > 0 && bonusTokenContract.balanceOf(address(this), bonusToken.tokenId) > 0
                ) {
                    emit BonusTokenFound(
                        block.timestamp,
                        address(this),
                        userAddress,
                        itemMapping[bonusToken.tokenId][itemTypeLengthMapping[i]].token
                    );
                    bonusTokenContract.safeTransferFrom(address(this), userAddress, bonusToken.tokenId, 1, '');
                    itemTypeLengthMapping[i]--;
                    emit BonusTokenCheckDone(block.timestamp, address(this), userAddress);
                    return;
                } else {
                    emit NoMoreBonusTokenReward(block.timestamp, address(this), bonusToken);
                }
            } else {
                emit NoBonusTokenFound(block.timestamp, address(this), userAddress);
            }
        }
        emit BonusTokenCheckDone(block.timestamp, address(this), userAddress);
    }

    /**
     Adds following rules:
     - Relic id 1 -> +10 (0.1%) to the bonus reward drop chance
     - Attribute Flannel Shirt -> +5 (0.05%) to the bonus reward drop chance
     - Attribute Lumberjack Shirt -> +5 (0.05%) to the bonus reward drop chance
     - Attribute Wheat Mouth -> +5 (0.05%) to the bonus reward drop chance
     - Attribute Cowboy Hat -> +5 (0.05%) to the bonus reward drop chance
     */
    function chanceToDrop(
        Tokens.ERC165Token[] calldata tokens,
        uint256[] calldata relicIds,
        uint256[] calldata /*runeIds*/,
        uint256 stakedPeriod,
        uint256 bonusIndex
    ) public view override returns (uint256) {
        require(tokens.length > 0, '2004');
        require(bonusIndex < bonusTypeLength, '2003');

        // We require to stake at least 1 full day to be able to earn bonus rewards
        if (stakedPeriod == 0) {
            return 0;
        }

        BonusERC1155Reward memory bonus = itemMapping[bonusIndex][itemTypeLengthMapping[uint32(bonusIndex)]];
        uint256 dropChanceFromStaking = bonus.dropChance * tokens.length * stakedPeriod;

        for (uint256 i = 0; i < tokens.length; i = unsafeInc(i)) {
            // Flannel Shirt
            if (metadataStorage.hasAttribute(3, 8, tokens[i].contractAddress, tokens[i].tokenId)) {
                dropChanceFromStaking += 5;
            }
            // Lumberjack Shirt
            if (metadataStorage.hasAttribute(3, 18, tokens[i].contractAddress, tokens[i].tokenId)) {
                dropChanceFromStaking += 5;
            }
            // Wheat Mouth
            if (metadataStorage.hasAttribute(4, 3, tokens[i].contractAddress, tokens[i].tokenId)) {
                dropChanceFromStaking += 5;
            }
            // Cowboy Hat
            if (metadataStorage.hasAttribute(7, 11, tokens[i].contractAddress, tokens[i].tokenId)) {
                dropChanceFromStaking += 5;
            }
        }

        for (uint256 i = 0; i < relicIds.length; i = unsafeInc(i)) {
            if (relicIds[i] == 1) {
                dropChanceFromStaking += 10;
            }
        }

        return dropChanceFromStaking > bonus.maxDropChance ? bonus.maxDropChance : dropChanceFromStaking;
    }

    /**
     * @notice Specific setBonusRewards method where bonus rewards are items with unique ids even for same item type.
     * @dev ALWAYS send the items grouped by same item type together.
     * @param _bonusRewardz array of ERC1155 bonus rewards including dropChance and maxDropChance
     */
    function setBonusRewards(
        BonusERC1155Reward[] calldata _bonusRewardz
    ) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        uint32 _bonusTypeLength;
        uint256[] memory _itemTypeLengthMapping = new uint256[](_bonusRewardz.length);
        uint256 lastTypeId;

        // Set bonus rewards length value as usual (used in withdraw method)
        bonusRewardzLength = uint32(_bonusRewardz.length);

        for (uint8 i = 0; i < _bonusRewardz.length; i++) {
            // Fills the mapping of bonus reward as usual (used in withdraw method)
            bonusRewardz[i] = _bonusRewardz[i];
            // Group the items by type
            BonusERC1155Reward memory reward = _bonusRewardz[i];
            uint256 typeId = typeIdFromItemId(reward.token.tokenId);

            if (lastTypeId == 0) {
                lastTypeId = typeId;
            }

            // When it's a new type we increase the type length counter
            if (_itemTypeLengthMapping[_bonusTypeLength] > 0) {
                if (typeId != lastTypeId) {
                    _bonusTypeLength++;
                    lastTypeId = typeId;
                }
            }
            _itemTypeLengthMapping[_bonusTypeLength]++;
            itemMapping[_bonusTypeLength][_itemTypeLengthMapping[_bonusTypeLength]] = reward;
        }

        bonusTypeLength = _bonusTypeLength;
        itemTypeLengthMapping = _itemTypeLengthMapping;
    }

    function typeIdFromItemId(uint256 itemId) internal pure returns (uint256) {
        uint256 idLength = Math.log10(itemId) + 1;
        uint256 typeId = itemId / (10 ** (idLength - 39));
        return typeId;
    }
}
