// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.4;

import "@openzeppelin/contracts-upgradeable/token/ERC721/ERC721Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC721/extensions/ERC721EnumerableUpgradeable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "../utils/TrustCallerUpgradeable.sol";
import "../../v1/utils/SafeMath.sol";
import "../../v1/tokens/SeedmonAttribute.sol";

contract SeedmonV0_5 is ERC721EnumerableUpgradeable, TrustCallerUpgradeable {
    event SeedmonCreated(bytes32 name);
    event SeedmonChanged(bytes32 name);
    event SeedmonUpdated(uint256 tokenId);
    event SeedmonMinted(uint256 tokenId, bytes32 name);
    event SeedmonBurned(uint256 tokenId);

    using SafeMath for uint256;
    using Counters for Counters.Counter;
    
    Counters.Counter private tokenCounter;

    mapping(bytes32 => bool) private speciesToActiveStatus;
    mapping(bytes32 => bool) private elementToActiveStatus;
    mapping(bytes32 => bool) private targetToActiveStatus;
    mapping(bytes32 => bool) private aimToActiveStatus;
    mapping(bytes32 => bool) private baseActionToActiveStatus;

    bytes32[] private names;
    mapping(bytes32 => SeedmonAttribute.Profile) public nameToProfile;
    mapping(bytes32 => SeedmonAttribute.Stat) public nameToStat;
    mapping(bytes32 => SeedmonAttribute.BaseAction) public nameToBaseAction;
    mapping(bytes32 => string) public nameToTokenURI;

    mapping(uint256 => bytes32) private tokenIdToName;
    mapping(uint256 => SeedmonAttribute.UniqueProfile) private tokenIdToUniqueProfile;
    mapping(uint256 => SeedmonAttribute.Stat) private tokenIdToBonusStat;

    function initialize() external initializer {
        __TrustCallerUpgradeable_init_chained();
        __ERC721_init("Seedmon", "SEEDMON"); 
    }

    function totalSeedmonData() external view returns (uint256 numberOfSeedmon) {
        numberOfSeedmon = names.length;
    }

    function allNames() external view returns (bytes32[] memory) {
        return names;
    }

    function burn(uint256 tokenId) external {
        require(_exists(tokenId), "Seedmon: Token does not exist");
        require(ERC721Upgradeable.ownerOf(tokenId) == _msgSender(), "Seedmon: burn of token that is not owner");

        _burn(tokenId);

        delete tokenIdToName[tokenId];
        delete tokenIdToBonusStat[tokenId];
        delete tokenIdToUniqueProfile[tokenId];
        emit SeedmonBurned(tokenId);
    }

    function tokenURI(uint256 tokenId) public view override returns (string memory uri) {
        uri = nameToTokenURI[tokenIdToName[tokenId]];
    }

    function transfer(address to, uint256 tokenId) external {
        _safeTransfer(msg.sender, to, tokenId, "");
    }

    function tokenInfo(uint256 tokenId) external view returns (
        bytes32 name,
        SeedmonAttribute.UniqueProfile memory uniqueProfile,
        SeedmonAttribute.Stat memory stat
    ){  
        return (tokenIdToName[tokenId], tokenIdToUniqueProfile[tokenId], tokenIdToBonusStat[tokenId]);
    }

    // ================== Trust caller method ===============

    // @notice for gacha machine
    function mint(address to, bytes32 name_, SeedmonAttribute.UniqueProfile calldata uniqueProfile_, SeedmonAttribute.Stat calldata bonusStat_) external onlyTrustCaller {
        require(to != address(0), "Seedmon: unsupport zero address");
        require(doesSeedmonExist(name_), "Seedmon: does not exist");

        tokenCounter.increment();
        uint256 tokenId = tokenCounter.current();

        _safeMint(to, tokenId);

        tokenIdToName[tokenId] = name_;
        tokenIdToBonusStat[tokenId] = bonusStat_;
        tokenIdToUniqueProfile[tokenId] = uniqueProfile_;
        emit SeedmonMinted(tokenId, name_);
    }

    // @notice for fusing and breeding system
    function updateSeedmon(uint256 tokenId, SeedmonAttribute.UniqueProfile calldata uniqueProfile_, SeedmonAttribute.Stat calldata bonusStat_) external onlyTrustCaller {
        require(_exists(tokenId), "Seedmon: Token does not exist");

        tokenIdToUniqueProfile[tokenId] = uniqueProfile_;
        tokenIdToBonusStat[tokenId] = bonusStat_;

        emit SeedmonUpdated(tokenId);
    }

    /// @notice for fixing migration only
    function updateSeedmonMigration(uint256 tokenId, SeedmonAttribute.UniqueProfile calldata uniqueProfile_, SeedmonAttribute.Stat calldata bonusStat_, bytes32 name_) external onlyTrustCaller {
        require(_exists(tokenId), "Seedmon: Token does not exist");
        tokenIdToUniqueProfile[tokenId] = uniqueProfile_;
        tokenIdToBonusStat[tokenId] = bonusStat_;
        tokenIdToName[tokenId] = name_;
    }


    // ================== Owner method ===================

    function createSeedmon(bytes32 name, SeedmonAttribute.Profile calldata profile_, SeedmonAttribute.Stat calldata stat_, SeedmonAttribute.BaseAction calldata baseAction_, string calldata uri) external onlyOwner {
        require(!doesSeedmonExist(name), "Seedmon: duplicated name");
        require(isProfileValid(profile_), "Seedmon: Invalid profile");
        require(isBaseActionValid(baseAction_), "Seedmon: Invalid action");

        names.push(name);

        nameToProfile[name] = profile_;
        nameToStat[name] = stat_;
        nameToBaseAction[name] = baseAction_;
        nameToTokenURI[name] = uri;

        emit SeedmonCreated(name);
    }

    function setTokenURI(bytes32 name, string calldata uri) external onlyOwner {
        nameToTokenURI[name] = uri;
        emit SeedmonChanged(name);
    }

    function setSpecies(bytes32 species_, bool valid) external onlyOwner {
        speciesToActiveStatus[species_] = valid;
    }

    function setElement(bytes32 element_, bool valid) external onlyOwner {
        elementToActiveStatus[element_] = valid;
    }

    function setBaseAction(bytes32 action_, bool valid) external onlyOwner {
        baseActionToActiveStatus[action_] = valid;
    }

    function setTarget(bytes32 target_, bool valid) external onlyOwner {
        targetToActiveStatus[target_] = valid;
    }

    function setAim(bytes32 aim_, bool valid) external onlyOwner {
        aimToActiveStatus[aim_] = valid;
    }

    // ================== Internal method ============
    function doesSeedmonExist(bytes32 name_) internal view returns (bool doesExist) {
        doesExist = nameToStat[name_].vitality > 0;
    }

    function isProfileValid(SeedmonAttribute.Profile calldata profile) internal view returns (bool) {
        return speciesToActiveStatus[profile.species] && 
                elementToActiveStatus[profile.element];
    }

    function isBaseActionValid(SeedmonAttribute.BaseAction calldata baseAction) internal view returns (bool) {
        return targetToActiveStatus[baseAction.target] && 
                aimToActiveStatus[baseAction.aim] &&
                baseActionToActiveStatus[baseAction.action];
    }
} 