// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {IERC721Enumerable} from "openzeppelin/token/ERC721/extensions/ERC721Enumerable.sol";
import {Initializable} from "openzeppelin-upgradeable/proxy/utils/Initializable.sol";
import {ContextUpgradeable} from "openzeppelin-upgradeable/utils/ContextUpgradeable.sol";
import {NTConfig, NTComponent} from "./NTConfig.sol";

struct CitizenData {
    /* This gets packed into 1 storage slots  */
    // 32 + 32 + 32 + 16 + 64 + 8 + 8 = 192
    uint64 creationTime;
    /* uint32 has a maximum value of over 4.2 billion which should be more than enough */
    /* if it's not...well we can upgrade in a few centuries */
    uint32 identityId;
    uint32 itemCacheId;
    uint32 landDeedId;
    // vault supply is unchanging so can be converted to a uint16 (max of 32k)
    uint16 vaultId;
    uint8 humanRace;
    // One uint8 for flags such as migrated & female. We could probably squeeze human race
    // override into flags but for now i think it'll be easier to just keep it separate
    uint8 flags;
}

abstract contract CitizenPropertiesUpgradeable is Initializable, ContextUpgradeable {
    uint256 constant SECONDS_IN_A_YEAR = 31536000;
    uint8 constant FEMALE_FLAG = 0x01;
    uint8 constant MIGRATED_FLAG = 0x02;
    uint8 constant SPECIAL_MESSAGE_UPDATED = 0x04;

    NTConfig internal _config;

    // Mapping for reward by citizen
    mapping(uint256 => uint256) internal _rewardRateByCitizenId;
    
    // Every citizen information besides the special message & possibly reward rate
    // can be stored within 192 bits.
    // This does make SOME assumptions that might need to be corrected maybe a few
    // thousand years into the future.
    // 1) assumes 64-bit unsigned integer for timestamp (should be enough for our life time)
    // 2) 32-bit unsigned integers for identity, item cache, and land deeds. This would put a cap at around 4 billion...should be good for at least a few years.
    // 3) 16-bit unsigned integer for vaults. There is enough room for a 32-bit integer here, but vaults are capped at 2500. Max would be around 65,000.
    // 4) assumes human race override can fit within 256 values.
    // By storing it all in one mapping it reduces  the number of SSTORE calls,
    // which end up saving around ~100k gas. Using a struct vs int-packing ends up adding negligible extra costs.
    // There's likely some runtime overhead for reading & writing structs from/to storage.
    // But it's not an insanely high extra-cost so we're good to use a struct.
    // We do use bit-flags for migrated citizens and females however.
    mapping(uint256 => CitizenData) internal citizenData;

    // Mapping for special messages uploaded when a citizen was created
    mapping(uint256 => string) internal _specialMessageByCitizenId;

    function __CitizenProperties_init(
        address config
    ) internal onlyInitializing {
        __CitizenProperties_init_unchained(config);
    }

    function __CitizenProperties_init_unchained(
        address config_
    ) internal onlyInitializing {
        _config = NTConfig(config_);
    }

    function config() external view returns (address) {
        return address(_config);
    }

    function getRewardsRateForTokenId(
        uint256 tokenId
    ) public view returns (uint256) {
        return rewardRateByTokenId(tokenId);
    }

    function getCreationTimeOfTokenId(
        uint256 citizenId
    ) public view returns (uint256) {
        CitizenData storage citizen = citizenData[citizenId];
        if (hasFlag(citizen.flags, MIGRATED_FLAG)) {
            return
                CitizenPropertiesUpgradeable(
                    _config.findComponent(NTComponent.S1_CITIZEN, false)
                ).getCreationTimeOfTokenId(citizenId);
        }
        return citizen.creationTime;
    }

    function getIdentityIdOfTokenId(
        uint256 citizenId
    ) public view returns (uint256) {
        CitizenData storage citizen = citizenData[citizenId];
        if (hasFlag(citizen.flags, MIGRATED_FLAG)) {
            return
                CitizenPropertiesUpgradeable(
                    _config.findComponent(NTComponent.S1_CITIZEN, false)
                ).getIdentityIdOfTokenId(citizenId);
        }
        return citizen.identityId;
    }

    function getVaultIdOfTokenId(
        uint256 citizenId
    ) public view returns (uint256) {
        CitizenData storage citizen = citizenData[citizenId];
        if (hasFlag(citizen.flags, MIGRATED_FLAG)) {
            return
                CitizenPropertiesUpgradeable(
                    _config.findComponent(NTComponent.S1_CITIZEN, false)
                ).getVaultIdOfTokenId(citizenId);
        }
        return citizen.vaultId;
    }

    function getItemCacheIdOfTokenId(
        uint256 citizenId
    ) public view returns (uint256) {
        CitizenData storage citizen = citizenData[citizenId];
        if (hasFlag(citizen.flags, MIGRATED_FLAG)) {
            return
                CitizenPropertiesUpgradeable(
                    _config.findComponent(NTComponent.S1_CITIZEN, false)
                ).getItemCacheIdOfTokenId(citizenId);
        }
        return citizen.itemCacheId;
    }

    function getLandDeedIdOfTokenId(
        uint256 citizenId
    ) public view returns (uint256) {
        CitizenData storage citizen = citizenData[citizenId];
        if (hasFlag(citizen.flags, MIGRATED_FLAG)) {
            return
                CitizenPropertiesUpgradeable(
                    _config.findComponent(NTComponent.S1_CITIZEN, false)
                ).getLandDeedIdOfTokenId(citizenId);
        }
        return citizen.landDeedId;
    }

    function getSpecialMessageOfTokenId(
        uint256 citizenId
    ) public view returns (string memory) {
        CitizenData storage citizen = citizenData[citizenId];
        if (hasFlag(citizen.flags, SPECIAL_MESSAGE_UPDATED)) {
            return _specialMessageByCitizenId[citizenId];
        } else if (hasFlag(citizen.flags, MIGRATED_FLAG)) {
            return
                CitizenPropertiesUpgradeable(
                    _config.findComponent(NTComponent.S1_CITIZEN, false)
                ).getSpecialMessageOfTokenId(citizenId);
        } else {
            return _specialMessageByCitizenId[citizenId];
        }
    }

    function getRewardRateOfTokenId(
        uint256 citizenId
    ) public view returns (uint256) {
        CitizenData storage citizen = citizenData[citizenId];
        if (hasFlag(citizen.flags, MIGRATED_FLAG)) {
            return
                CitizenPropertiesUpgradeable(
                    _config.findComponent(NTComponent.S1_CITIZEN, false)
                ).getRewardRateOfTokenId(citizenId);
        }
        return _rewardRateByCitizenId[citizenId];
    }

    function getGenderOfTokenId(uint256 citizenId) external view returns (bool) {
        CitizenData storage citizen = citizenData[citizenId];
        return citizen.flags & FEMALE_FLAG != 0;
    }

    function getCitizenMigrated(uint256 citizenId) external view returns (bool) {
        CitizenData storage citizen = citizenData[citizenId];
        return citizen.flags & MIGRATED_FLAG != 0;
    }

    function hasFlag(uint8 flags, uint8 flag) internal pure returns (bool) {
        return flags & flag != 0;
    }

    function getHumanRaceOverride(
        uint256 citizenId
    ) public view returns (uint256) {
        CitizenData storage citizen = citizenData[citizenId];
        return citizen.humanRace;
    }

    function identityValidated(
        uint256 identityId
    ) internal view returns (bool) {
        IERC721Enumerable identityEnumerable = IERC721Enumerable(
            _config.findComponent(NTComponent.S1_IDENTITY, true)
        );
        return (identityEnumerable.ownerOf(identityId) == _msgSender());
    }

    function vaultValidated(uint256 vaultId) internal view returns (bool) {
        IERC721Enumerable vaultEnumerable = IERC721Enumerable(
            _config.findComponent(NTComponent.S1_VAULT, true)
        );
        return (vaultEnumerable.ownerOf(vaultId) == _msgSender());
    }

    function itemCacheValidated(
        uint256 itemCacheId
    ) internal view returns (bool) {
        IERC721Enumerable itemCacheEnumerable = IERC721Enumerable(
            _config.findComponent(NTComponent.S1_ITEM, true)
        );
        return (itemCacheEnumerable.ownerOf(itemCacheId) == _msgSender());
    }

    function landDeedValidated(
        uint256 landDeedId
    ) internal view returns (bool) {
        IERC721Enumerable landDeedEnumerable = IERC721Enumerable(
            _config.findComponent(NTComponent.S1_LAND, true)
        );
        return (landDeedEnumerable.ownerOf(landDeedId) == _msgSender());
    }

    function calculateCitizenReward(
        uint256 identityId,
        uint256 vaultId
    ) internal returns (uint256) {
        return _config.calculateRewardRate(identityId, vaultId);
    }

    function rewardRateByTokenId(
        uint256 tokenId
    ) internal view returns (uint256) {
        if (tokenId > 0) {
            return
                _rewardRateByCitizenId[tokenId] +
                ((block.timestamp - getCreationTimeOfTokenId(tokenId)) /
                    SECONDS_IN_A_YEAR);
        }
        return 0;
    }

    function _packCitizenDataStruct(
        uint64 _creationTime,
        uint32 identityId,
        uint32 itemCacheId,
        uint32 landDeedId,
        uint16 vaultId,
        uint8 humanRace,
        uint8 flags
    ) internal pure returns (CitizenData memory citizen) {
        citizen.creationTime = _creationTime;
        citizen.identityId = identityId;
        citizen.itemCacheId = itemCacheId;
        citizen.landDeedId = landDeedId;
        citizen.vaultId = vaultId;
        citizen.humanRace = humanRace;
        citizen.flags = flags;
    }
}
