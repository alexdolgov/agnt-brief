// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import '@openzeppelin/contracts/utils/math/Math.sol';

import './Portalz.sol';
import './Tokens.sol';
import './MetadataStorage.sol';

interface ISalvorMini {
    function getRarityLevel(uint256 _tokenId) external view returns (uint256);
}

contract SalvorPortalz is Portalz {
    address public skullzContract;

    address public salvorContract;
    ISalvorMini public salvorMini;

    /* ********************************** */
    /*            Constructor             */
    /* ********************************** */

    constructor(
        address _skullzContract,
        address _salvorContract,
        address _metadataStorage,
        address _rewardTokenAddress,
        uint64 _vrfSubscriptionId,
        address vrfCoordinatorV2ContractAddress,
        bytes32 _vrfKeyHash
    ) VRFConsumerBaseV2(vrfCoordinatorV2ContractAddress) {
        skullzContract = _skullzContract;
        salvorContract = _salvorContract;
        salvorMini = ISalvorMini(_salvorContract);
        metadataStorage = MetadataStorage(_metadataStorage);
        rewardTokenAddress = _rewardTokenAddress;

        vrfSubscriptionId = _vrfSubscriptionId;
        vrfCoordinatorV2Contract = VRFCoordinatorV2Interface(vrfCoordinatorV2ContractAddress);
        vrfKeyHash = _vrfKeyHash;

        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(SQUADZ_ROLE, msg.sender);
    }

    /* ********************************** */
    /*             Allowed NFTs           */
    /* ********************************** */

    function areNFTsAllowed(Tokens.ERC165Token[] calldata tokens) external view override returns (bool) {
        require(tokens.length > 0, '2002');

        uint8 salvorMiniCount;
        uint8 skullzCount;

        for (uint16 i = 0; i < tokens.length; i++) {
            if (tokens[i].contractAddress == salvorContract) {
                salvorMiniCount++;
            } else if (tokens[i].contractAddress == skullzContract) {
                skullzCount++;
            } else {
                return false;
            }
        }

        return salvorMiniCount == skullzCount && skullzCount >= 1 && skullzCount <= 3;
    }

    /* ********************************** */
    /*           Staking period           */
    /* ********************************** */

    uint256 public salvorMaxPeriod = 365;

    function maxPeriod() public view override returns (uint256) {
        return salvorMaxPeriod;
    }

    function setMaxPeriod(uint256 _maxPeriod) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        salvorMaxPeriod = _maxPeriod;
    }

    /* ********************************** */
    /*             Multiplier             */
    /* ********************************** */

    uint256[] public salvorMultipliers = [100, 125, 150];

    function setMultipliers(uint256[] calldata multipliers) external onlyRole(DEFAULT_ADMIN_ROLE) {
        salvorMultipliers = multipliers;
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
            return salvorMultipliers[tokens.length / 2 - 1] * 10 ** 16;
        }
        return 1 ether;
    }

    /* ********************************** */
    /*            Token Reward            */
    /* ********************************** */

    /**
     Adds following rules:
     - Relic id 2 -> +5 ART per day
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
            if (tokens[i].contractAddress == salvorContract) {
                uint256 salvorWeight = salvorMini.getRarityLevel(tokens[i].tokenId);
                if (salvorWeight == 4) {
                    tokensBaseDailyReward += 1;
                } else if (salvorWeight == 12) {
                    tokensBaseDailyReward += 2;
                } else if (salvorWeight == 60) {
                    tokensBaseDailyReward += 4;
                }
            } else {
                tokensBaseDailyReward +=
                    metadataStorage.rarityReward(tokens[i].contractAddress, tokens[i].tokenId) /
                    10;
                // Mariniere Outfit
                if (metadataStorage.hasAttribute(3, 19, tokens[i].contractAddress, tokens[i].tokenId)) {
                    tokensBaseDailyReward += 1;
                }
                // Tentacles Outfit
                if (metadataStorage.hasAttribute(3, 38, tokens[i].contractAddress, tokens[i].tokenId)) {
                    tokensBaseDailyReward += 1;
                }
                // Captain Hat
                if (metadataStorage.hasAttribute(7, 19, tokens[i].contractAddress, tokens[i].tokenId)) {
                    tokensBaseDailyReward += 1;
                }
                // Octopus Hat
                if (metadataStorage.hasAttribute(7, 26, tokens[i].contractAddress, tokens[i].tokenId)) {
                    tokensBaseDailyReward += 1;
                }
            }
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

    function setSalvorContract(address _salvorContract) external onlyRole(DEFAULT_ADMIN_ROLE) {
        salvorContract = _salvorContract;
        salvorMini = ISalvorMini(_salvorContract);
    }
}
