// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.4;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "../utils/TrustCaller.sol";
import "../utils/SafeMath.sol";
import "./SeedmonAttribute.sol";

contract Seedmon is ERC721Enumerable, TrustCaller {
    event SeedmonCreated(bytes32 name);
    event SeedmonChanged(bytes32 name);
    event SeedmonUpdated(uint256 tokenId);

    using SafeMath for uint256;
    using Strings for uint256;
    using Counters for Counters.Counter;
    
    Counters.Counter private tokenCounter;

    bytes32[] public species;
    mapping(bytes32 => bool) public speciesToActiveStatus;

    bytes32[] public elements;
    mapping(bytes32 => bool) public elementToActiveStatus;

    bytes32[] public targets;
    mapping(bytes32 => bool) public targetToActiveStatus;

    bytes32[] public aims;
    mapping(bytes32 => bool) public aimToActiveStatus;

    bytes32[] public baseActions;
    mapping(bytes32 => bool) public baseActionToActiveStatus;

    bytes32[] public names;
    mapping(bytes32 => SeedmonAttribute.Profile) public nameToProfile;
    mapping(bytes32 => SeedmonAttribute.Stat) public nameToStat;
    mapping(bytes32 => SeedmonAttribute.BaseAction) public nameToBaseAction;
    mapping(bytes32 => string) public nameToTokenURI;

    mapping(uint256 => bytes32) public tokenIdToName;
    mapping(uint256 => SeedmonAttribute.UniqueProfile) public tokenIdToUniqueProfile;
    mapping(uint256 => SeedmonAttribute.Stat) public tokenIdToBonusStat;

    constructor() ERC721("Seedmon", "SEEDMON") {
    }

    function totalSeedmonData() external view returns (uint256 numberOfSeedmon) {
        numberOfSeedmon = names.length;
    }

    function allNames() external view returns (bytes32[] memory) {
        return names;
    }

    function burn(uint256 tokenId) external {
        require(_exists(tokenId), "Seedmon: Token does not exist");

        // Checking the owner first

        _burn(tokenId);

        delete tokenIdToName[tokenId];
        delete tokenIdToBonusStat[tokenId];
        delete tokenIdToUniqueProfile[tokenId];
    }

    function tokenURI(uint256 tokenId) public view override returns (string memory uri) {
        require(_exists(tokenId), "Seedmon: Token does not exist");

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
    }

    // @notice for fusing and breeding system
    function updateSeedmon(uint256 tokenId, SeedmonAttribute.UniqueProfile calldata uniqueProfile_, SeedmonAttribute.Stat calldata bonusStat_) external onlyTrustCaller {
        require(_exists(tokenId), "Seedmon: Token does not exist");

        tokenIdToUniqueProfile[tokenId] = uniqueProfile_;
        tokenIdToBonusStat[tokenId] = bonusStat_;

        emit SeedmonUpdated(tokenId);
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
        require(doesSeedmonExist(name), "Seedmon: does not exist");

        nameToTokenURI[name] = uri;

        emit SeedmonChanged(name);
    }

    function addSpecies(bytes32 species_) external onlyOwner {
        require(!speciesToActiveStatus[species_], "Seedmon: duplicated species");

        species.push(species_);
        speciesToActiveStatus[species_] = true;
    }

    function addElement(bytes32 element_) external onlyOwner {
        require(!elementToActiveStatus[element_], "Seedmon: duplicated element");

        elements.push(element_);
        elementToActiveStatus[element_] = true;
    }

    function addBaseAction(bytes32 action_) external onlyOwner {
        require(!baseActionToActiveStatus[action_], "Seedmon: duplicated action");

        baseActions.push(action_);
        baseActionToActiveStatus[action_] = true;
    }

    function addTarget(bytes32 target_) external onlyOwner {
        require(!targetToActiveStatus[target_], "Seedmon: duplicated target");

        targets.push(target_);
        targetToActiveStatus[target_] = true;
    }

    function addAim(bytes32 aim_) external onlyOwner {
        require(!aimToActiveStatus[aim_], "Seedmon: duplicated aim");

        aims.push(aim_);
        aimToActiveStatus[aim_] = true;
    }

    // ================== Internal method ============
    function doesSeedmonExist(bytes32 name_) public view returns (bool doesExist) {
        doesExist = nameToStat[name_].vitality > 0;
    }

    function isProfileValid(SeedmonAttribute.Profile calldata profile) internal view returns (bool) {
        return speciesToActiveStatus[profile.species] && 
                elementToActiveStatus[profile.element];
    }

    function isBaseActionValid(SeedmonAttribute.BaseAction calldata baseAction) internal view returns (bool) {
        return targetToActiveStatus[baseAction.target] && 
                aimToActiveStatus[baseAction.aim] &&
                baseActionToActiveStatus[baseAction.action] && 
                isBaseMultiplierValid(baseAction.multiplier);
    }

    function isBaseMultiplierValid(uint256 baseMultiplier) internal pure returns (bool) {
        return baseMultiplier >= 0 && baseMultiplier <= 5000;
    }
} 