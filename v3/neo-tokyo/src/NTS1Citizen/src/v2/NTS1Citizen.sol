// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {ERC721EnumerableUpgradeable} from "openzeppelin-upgradeable/token/ERC721/extensions/ERC721EnumerableUpgradeable.sol";
import {IERC721Upgradeable, ERC721Upgradeable} from "openzeppelin-upgradeable/token/ERC721/ERC721Upgradeable.sol";
import {IERC721ReceiverUpgradeable} from "openzeppelin-upgradeable/token/ERC721/IERC721ReceiverUpgradeable.sol";
import {ERC2981Upgradeable} from "openzeppelin-upgradeable/token/common/ERC2981Upgradeable.sol";
import {ReentrancyGuardUpgradeable} from "openzeppelin-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import {OwnableUpgradeable} from "openzeppelin-upgradeable/access/OwnableUpgradeable.sol";
import {Initializable} from "openzeppelin-upgradeable/proxy/utils/Initializable.sol";
import {UUPSUpgradeable} from "openzeppelin-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {UpdatableOperatorFiltererUpgradeable} from "operator-filter-registry/src/upgradeable/UpdatableOperatorFiltererUpgradeable.sol";

import {IByteContract} from "bytes/interfaces/IByteContract.sol";

import {NTConfig, NTComponent} from "./NTConfig.sol";
import {CitizenPropertiesUpgradeable, CitizenData} from "./CitizenPropertiesUpgradeable.sol";
import {IMintContract} from "../interfaces/IMintContract.sol";
import {IComponent} from "../interfaces/IComponent.sol";

error Unauthorized(string reason);

contract NTS1Citizen is
    Initializable,
    UUPSUpgradeable,
    ERC2981Upgradeable,
    IERC721ReceiverUpgradeable,
    ERC721EnumerableUpgradeable,
    UpdatableOperatorFiltererUpgradeable,
    CitizenPropertiesUpgradeable,
    OwnableUpgradeable,
    ReentrancyGuardUpgradeable
{
    uint8 stateFlags;
    uint8 constant VAULT_REQUIRED_FLAG = 0x01;
    uint8 constant MINT_FLAG = 0x02;
    uint8 constant GENDER_CHANGE_FLAG = 0x08;
    uint8 constant RACE_OVERRIDE_FLAG = 0x10;

    uint16 currentId;
    // uint72 public mintedIdentityCost;
    uint72 public changeGenderCost;
    uint72 public changeSpecialMessageCost;
    uint72 public humanRaceOverrideCost;
    uint32 creationTime;

    function initialize(
        uint16 currentId_,
        address config_,
        address registry,
        address subscriptionOrRegistrantToCopy
    ) external initializer {
        __ERC721_init("Neo Tokyo Citizen V2", "NTCTZN");
        __ERC2981_init();
        __ReentrancyGuard_init();
        __UpdatableOperatorFiltererUpgradeable_init(
            registry,
            subscriptionOrRegistrantToCopy,
            true
        );
        __CitizenProperties_init(config_);
        __Ownable_init();

        _config = NTConfig(config_);
        currentId = currentId_;
        creationTime = uint32(block.timestamp);

        // mintedIdentityCost = 2000 ether;
        changeGenderCost = 25 ether;
        changeSpecialMessageCost = 10 ether;
        humanRaceOverrideCost = 10 ether;
    }

    function _authorizeUpgrade(address) internal override onlyOwner {}

    function supportsInterface(
        bytes4 interfaceId
    )
        public
        view
        virtual
        override(ERC2981Upgradeable, ERC721EnumerableUpgradeable)
        returns (bool)
    {
        return
            ERC721EnumerableUpgradeable.supportsInterface(interfaceId) ||
            ERC2981Upgradeable.supportsInterface(interfaceId) ||
            super.supportsInterface(interfaceId);
    }

    function onERC721Received(
        address operator,
        address from,
        uint256 tokenId,
        bytes calldata data
    ) public pure override returns (bytes4) {
        return IERC721ReceiverUpgradeable.onERC721Received.selector;
    }

    function tokenURI(
        uint256 tokenId
    ) public view override returns (string memory) {
        require(
            _exists(tokenId),
            "ERC721Metadata: URI query for nonexistent token"
        );

        return _config.generateURI(tokenId);
    }

    function getRewardRate(address _user) public view returns (uint256) {
        uint256 rewardRate;
        for (
            uint256 index = 0;
            index < ERC721Upgradeable.balanceOf(_user);
            ++index
        ) {
            rewardRate =
                rewardRate +
                _rewardRateByCitizenId[tokenOfOwnerByIndex(_user, index)];
        }
        return rewardRate;
    }

    // TODO: Check these
    //Obsolete due to rewards mapping implementation
    // function reduceRewards(uint256, address) public {}

    // TODO: Check these
    //Obsolete due to rewards mapping implementation
    // function increaseRewards(uint256, address) public {}


    function createCitizen(
        uint256 identityId,
        uint256 vaultId,
        uint256 itemCacheId,
        uint256 landDeedId,
        bool genderFemale,
        string calldata specialMessage
    ) public nonReentrant {
        if(!hasFlag(stateFlags, MINT_FLAG))
            revert Unauthorized("Mint not active");
        if(!identityValidated(identityId))
            revert Unauthorized("Not ID owner");
        if(!itemCacheValidated(itemCacheId))
            revert Unauthorized("Not item owner");
        if(!landDeedValidated(landDeedId))
            revert Unauthorized("Not land owner");

        if(hasFlag(stateFlags, VAULT_REQUIRED_FLAG) && vaultId == 0) {
            revert Unauthorized("Vault required");
        }

        if (genderFemale) {
            require(
                hasFlag(stateFlags, GENDER_CHANGE_FLAG),
                "Females cannot be uploaded yet"
            );
        }

        if (vaultId > 0 && !vaultValidated(vaultId)) {
            revert Unauthorized("Not vault owner");
        }

        _safeMint(_msgSender(), ++currentId);

        IERC721Upgradeable _identityContract = IERC721Upgradeable(
            _config.findComponent(NTComponent.S1_IDENTITY, true)
        );
        _identityContract.transferFrom(_msgSender(), address(this), identityId);

        if (vaultId > 0) {
            IERC721Upgradeable _vaultContract = IERC721Upgradeable(
                _config.findComponent(NTComponent.S1_VAULT, true)
            );
            _vaultContract.transferFrom(_msgSender(), address(this), vaultId);
        }

        IERC721Upgradeable _itemContract = IERC721Upgradeable(
            _config.findComponent(NTComponent.S1_ITEM, true)
        );
        _itemContract.transferFrom(_msgSender(), address(this), itemCacheId);

        IERC721Upgradeable _landContract = IERC721Upgradeable(
            _config.findComponent(NTComponent.S1_LAND, true)
        );
        _landContract.transferFrom(_msgSender(), address(this), landDeedId);

        uint8 flags = 0;

        if (genderFemale) {
            flags |= FEMALE_FLAG;
        }

        if (bytes(specialMessage).length > 0) {
            _specialMessageByCitizenId[currentId] = specialMessage;
        }
        _rewardRateByCitizenId[currentId] = calculateCitizenReward(
            identityId,
            vaultId
        );

        citizenData[currentId] = _packCitizenDataStruct(
            uint64(block.timestamp),
            uint32(identityId),
            uint32(itemCacheId),
            uint32(landDeedId),
            uint16(vaultId),
            0,
            flags
        );

        // TODO: needs looking into on BYTES 2.0 regarding what's needed
        // IByteContract byteToken = IByteContract(bytesContract);
        // byteToken.updateRewardOnMint(_msgSender(), newestCitizen);
    }

    /*
     * A function to migrate a citizen from the old contract to the new one
     * To save on user gas fees only the citizen will be minted
     * The components will only get minted if the citizen is disassembled after migration
     */
    function migrateAsset(
        address sender,
        uint256 citizenId
    ) public nonReentrant {
        require(
            _msgSender() == NTConfig(_config).migrator(),
            "msg.sender must be migrator"
        );

        NTS1Citizen oldContract = NTS1Citizen(
            _config.findComponent(NTComponent.S1_CITIZEN, false)
        );
        require(
            oldContract.ownerOf(citizenId) == sender,
            "You do not own that citizen"
        );

        //Only the citizen NFT is required to be transferred as it will be locked away in this contract forever
        //This guarantees the V1 components can never leave the old citizen contract and be used again
        oldContract.transferFrom(sender, address(this), citizenId);

        bool isFemale = oldContract.getGenderOfTokenId(citizenId);

        _safeMint(sender, citizenId);

        // mark the citizen ID as a migrated citizen
        citizenData[citizenId].flags = isFemale
            ? MIGRATED_FLAG | FEMALE_FLAG
            : MIGRATED_FLAG;
    }

    function disassembleCitizen(uint256 citizenId) public nonReentrant {
        require(_exists(citizenId), "Citizen does not exist");
        require(
            ownerOf(citizenId) == _msgSender(),
            "You do not own that citizen"
        );
        CitizenData storage citizen = citizenData[citizenId];

        if (hasFlag(citizen.flags, MIGRATED_FLAG)) {
            _unmintedDisassemble(citizenId);
        } else {
            _regularDisassemble(citizenId);
        }

        _burn(citizenId);

        delete _specialMessageByCitizenId[citizenId];
        delete _rewardRateByCitizenId[citizenId];
    }

    function _regularDisassemble(uint256 citizenId) private {
        CitizenData memory citizen = citizenData[citizenId];
        IERC721Upgradeable _identityContract = IERC721Upgradeable(
            _config.findComponent(NTComponent.S1_IDENTITY, true)
        );

        _identityContract.transferFrom(
            address(this),
            _msgSender(),
            citizen.identityId
        );

        if (citizen.vaultId > 0) {
            IERC721Upgradeable _vaultContract = IERC721Upgradeable(
                _config.findComponent(NTComponent.S1_VAULT, true)
            );
            _vaultContract.transferFrom(
                address(this),
                _msgSender(),
                citizen.vaultId
            );
        }

        IERC721Upgradeable _itemContract = IERC721Upgradeable(
            _config.findComponent(NTComponent.S1_ITEM, true)
        );
        _itemContract.transferFrom(
            address(this),
            _msgSender(),
            citizen.itemCacheId
        );

        IERC721Upgradeable _landContract = IERC721Upgradeable(
            _config.findComponent(NTComponent.S1_LAND, true)
        );
        _landContract.transferFrom(
            address(this),
            _msgSender(),
            citizen.landDeedId
        );
    }

    function _unmintedDisassemble(uint256 citizenId) private {
        NTS1Citizen v1Citizen = NTS1Citizen(
            _config.findComponent(NTComponent.S1_CITIZEN, false)
        );
        IComponent v2IdentityContract = IComponent(
            _config.findComponent(NTComponent.S1_IDENTITY, true)
        );

        v2IdentityContract.adminClaim(
            v1Citizen.getIdentityIdOfTokenId(citizenId),
            _msgSender()
        );

        uint256 v1VaultId = v1Citizen.getVaultIdOfTokenId(citizenId);
        if (v1VaultId > 0) {
            IComponent vaultContract = IComponent(
                _config.findComponent(NTComponent.S1_VAULT, true)
            );
            vaultContract.adminClaim(v1VaultId, _msgSender());
        }

        IComponent itemContract = IComponent(
            _config.findComponent(NTComponent.S1_ITEM, true)
        );
        itemContract.adminClaim(
            v1Citizen.getItemCacheIdOfTokenId(citizenId),
            _msgSender()
        );

        IComponent landContract = IComponent(
            _config.findComponent(NTComponent.S1_LAND, true)
        );
        landContract.adminClaim(
            v1Citizen.getLandDeedIdOfTokenId(citizenId),
            _msgSender()
        );
    }

    function changeGender(uint256 tokenId) public nonReentrant {
        require(
            hasFlag(stateFlags, GENDER_CHANGE_FLAG),
            "Females cannot be uploaded yet"
        );
        require(
            ownerOf(tokenId) == _msgSender(),
            "You do not own that citizen"
        );
        _chargeBytes(changeGenderCost);

        CitizenData storage citizen = citizenData[tokenId];
        citizen.flags ^= FEMALE_FLAG;
    }

    /// This function only works for citizens with the human race
    /// Set the `raceOverride` to `0` to reset to randomized human race.
    /// A `raceOverride` index will correspond to the races in the mint contract.
    /// Any `raceOverride` index larger than the last race index available will default to the last race index
    function changeHumanRace(
        uint256 tokenId,
        uint256 raceOverride
    ) public nonReentrant {
        require(
            hasFlag(stateFlags, RACE_OVERRIDE_FLAG),
            "Human race override is not active yet"
        );
        require(
            ownerOf(tokenId) == _msgSender(),
            "You do not own that citizen"
        );
        _chargeBytes(humanRaceOverrideCost);

        citizenData[tokenId].humanRace = uint8(raceOverride);
    }

    function _chargeBytes(uint256 price) private {
        IByteContract bytes_ = IByteContract(NTConfig(_config).bytesContract());
        bytes_.burn(_msgSender(), price);
    }

    function changeSpecialMessage(
        uint256 tokenId,
        string memory _message
    ) public nonReentrant {
        require(
            ownerOf(tokenId) == _msgSender(),
            "You do not own that citizen"
        );

        _chargeBytes(changeSpecialMessageCost);

        _specialMessageByCitizenId[tokenId] = _message;

        if (hasFlag(citizenData[tokenId].flags, MIGRATED_FLAG)) {
            citizenData[tokenId].flags |= SPECIAL_MESSAGE_UPDATED;
        }
    }

    function setChangeGenderCost(uint72 _cost) external onlyOwner {
        changeGenderCost = _cost;
    }

    function setHumanRaceOverrideCost(uint72 _cost) external onlyOwner {
        humanRaceOverrideCost = _cost;
    }

    function setChangeMessageCost(uint72 _cost) external onlyOwner {
        changeSpecialMessageCost = _cost;
    }

    function toggleVaultRequired() external onlyOwner {
        stateFlags ^= VAULT_REQUIRED_FLAG;
    }

    function setFemaleActive() public onlyOwner {
        stateFlags ^= GENDER_CHANGE_FLAG;
    }

    function setRaceOverrideActive() public onlyOwner {
        stateFlags ^= RACE_OVERRIDE_FLAG;
    }

    function setCitizenMintActive() public onlyOwner {
        stateFlags ^= MINT_FLAG;
    }

    //_newRoyalty is in basis points out of 10,000
    function adjustDefaultRoyalty(
        address _receiver,
        uint96 _newRoyalty
    ) public onlyOwner {
        _setDefaultRoyalty(_receiver, _newRoyalty);
    }

    //_newRoyalty is in basis points out of 10,000
    function adjustSingleTokenRoyalty(
        uint256 _tokenId,
        address _receiver,
        uint96 _newRoyalty
    ) public onlyOwner {
        _setTokenRoyalty(_tokenId, _receiver, _newRoyalty);
    }

    function setApprovalForAll(
        address operator,
        bool approved
    )
        public
        override(ERC721Upgradeable, IERC721Upgradeable)
        onlyAllowedOperatorApproval(operator)
    {
        super.setApprovalForAll(operator, approved);
    }

    function approve(
        address operator,
        uint256 tokenId
    )
        public
        override(ERC721Upgradeable, IERC721Upgradeable)
        onlyAllowedOperatorApproval(operator)
    {
        super.approve(operator, tokenId);
    }

    function transferFrom(
        address from,
        address to,
        uint256 tokenId
    )
        public
        override(ERC721Upgradeable, IERC721Upgradeable)
        onlyAllowedOperator(from)
    {
        super.transferFrom(from, to, tokenId);
    }

    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId
    )
        public
        override(ERC721Upgradeable, IERC721Upgradeable)
        onlyAllowedOperator(from)
    {
        super.safeTransferFrom(from, to, tokenId);
    }

    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId,
        bytes memory data
    )
        public
        override(ERC721Upgradeable, IERC721Upgradeable)
        onlyAllowedOperator(from)
    {
        super.safeTransferFrom(from, to, tokenId, data);
    }

    function setConfig(address config_) external onlyOwner {
        _config = NTConfig(config_);
    }

    function setCurrentId(uint16 currentId_) external onlyOwner {
        currentId = currentId_;
    }

    function owner()
        public
        view
        override(OwnableUpgradeable, UpdatableOperatorFiltererUpgradeable)
        returns (address)
    {
        return OwnableUpgradeable.owner();
    }
}
