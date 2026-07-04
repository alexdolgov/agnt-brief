//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {MerkleProof} from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {ERC721Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC721/ERC721Upgradeable.sol";
import {ERC721EnumerableUpgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC721/extensions/ERC721EnumerableUpgradeable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

import {IUnionClubPluginV2_1} from "./interfaces/IUnionClubPluginV2_1.sol";

contract ClubMemberNFT is UUPSUpgradeable, ERC721EnumerableUpgradeable, AccessControlUpgradeable {
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
    bytes32 public constant BURNER_ROLE = keccak256("BURNER_ROLE");

    string private _nftName;
    string private _nftSymbol;
    uint256 private _nextTokenId;
    string private _tokenURI;
    string private _contractURI;
    address public unionClubPlugin;
    bytes32 private whitelistRoot;

    mapping(address => bool) public blockList;
    mapping(uint256 => uint256) public updateTimestamp; // tokenId => timestamp

    event UnionClubPluginUpdated(address indexed oldPlugin, address indexed newPlugin);
    event TokenURIUpdated(string oldTokenURI, string newTokenURI);
    event WhitelistRootUpdated(bytes32 oldRoot, bytes32 newRoot);
    event NameUpdated(string oldName, string newName);
    event SymbolUpdated(string oldSymbol, string newSymbol);
    event ContractURIUpdated(string oldContractURI, string newContractURI);

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _plugin,
        bytes32 _root,
        string memory _name,
        string memory _symbol,
        string memory _contractUri,
        string memory _tokenUri
    ) public initializer {
        __ERC721_init(_name, _symbol);
        __AccessControl_init();

        address admin = IUnionClubPluginV2_1(_plugin).safe();
        require(admin != address(0), "safe address cannot be null");

        unionClubPlugin = _plugin;
        whitelistRoot = _root;
        _nftName = _name;
        _nftSymbol = _symbol;
        _tokenURI = _tokenUri;
        _contractURI = _contractUri;

        _grantRole(DEFAULT_ADMIN_ROLE, admin); // safe multisig as the admin can mint and burn
        _grantRole(MINTER_ROLE, unionClubPlugin);
        _grantRole(BURNER_ROLE, unionClubPlugin);
    }

    function _authorizeUpgrade(address) internal override onlyRole(DEFAULT_ADMIN_ROLE) {}

    function supportsInterface(
        bytes4 interfaceId
    ) public view virtual override(ERC721EnumerableUpgradeable, AccessControlUpgradeable) returns (bool) {
        return super.supportsInterface(interfaceId);
    }

    function setUnionClubPlugin(address newPlugin) public onlyRole(DEFAULT_ADMIN_ROLE) {
        address oldPlugin = unionClubPlugin;
        unionClubPlugin = newPlugin;

        _revokeRole(MINTER_ROLE, oldPlugin);
        _revokeRole(BURNER_ROLE, oldPlugin);

        _grantRole(MINTER_ROLE, newPlugin);
        _grantRole(BURNER_ROLE, newPlugin);

        emit UnionClubPluginUpdated(oldPlugin, newPlugin);
    }

    function setWhitelistRoot(bytes32 newRoot) public onlyRole(DEFAULT_ADMIN_ROLE) {
        bytes32 oldRoot = whitelistRoot;
        whitelistRoot = newRoot;

        emit WhitelistRootUpdated(oldRoot, newRoot);
    }

    function name() public view override returns (string memory) {
        return _nftName;
    }

    function setName(string memory newName) public onlyRole(DEFAULT_ADMIN_ROLE) {
        string memory oldName = _nftName;
        _nftName = newName;

        emit NameUpdated(oldName, newName);
    }

    function symbol() public view override returns (string memory) {
        return _nftSymbol;
    }

    function setSymbol(string memory newSymbol) public onlyRole(DEFAULT_ADMIN_ROLE) {
        string memory oldSymbol = _nftSymbol;
        _nftSymbol = newSymbol;

        emit SymbolUpdated(oldSymbol, newSymbol);
    }

    function mint(address account, bytes32[] memory proof) public onlyRole(MINTER_ROLE) returns (uint256 tokenId) {
        bytes32 leaf = keccak256(bytes.concat(keccak256(abi.encode(account))));
        require(MerkleProof.verify(proof, whitelistRoot, leaf), "Invalid proof");

        tokenId = _nextTokenId++;
        _safeMint(account, tokenId);
    }

    function burn(uint256 tokenId) public onlyRole(BURNER_ROLE) {
        _burn(tokenId);
    }

    /**
     * Make sure to meet all the requirements before updating the ownership of a Club Member NFT.
     *
     * @param to The address to transfer the NFT to.
     * @param tokenId The ID of the NFT to transfer.
     * @param auth The address authorized to perform the transfer.
     * @return The address the NFT was transferred from.
     */
    function _update(address to, uint256 tokenId, address auth) internal override returns (address) {
        require(!blockList[to], "blacklisted address");
        address from = super._update(to, tokenId, auth);

        if (to != address(0)) {
            updateTimestamp[tokenId] = block.timestamp;
        }

        require(IUnionClubPluginV2_1(unionClubPlugin).validateUpdate(from, to, tokenId), "Cannot update");

        return from;
    }

    /**
     * @dev Returns the metadata URI for a given token ID.
     */
    function tokenURI(uint256) public view override returns (string memory) {
        return string.concat("data:application/json;utf8,", _tokenURI);
    }

    function setTokenURI(string memory newTokenURI) external onlyRole(DEFAULT_ADMIN_ROLE) {
        string memory oldTokenURI = _tokenURI;
        _tokenURI = newTokenURI;

        emit TokenURIUpdated(oldTokenURI, newTokenURI);
    }

    /**
     * @dev Returns the metadata URI for the collection-level metadata.
     */
    function contractURI() public view returns (string memory) {
        return string.concat("data:application/json;utf8,", _contractURI);
    }

    function setContractURI(string memory newContractURI) external onlyRole(DEFAULT_ADMIN_ROLE) {
        string memory oldContractURI = _contractURI;
        _contractURI = newContractURI;

        emit ContractURIUpdated(oldContractURI, newContractURI);
    }

    function remove(address account) external onlyRole(BURNER_ROLE) {
        // add to the block list
        blockList[account] = true;
        // remove all tokens from the account
        uint256 ownerTokenCount = balanceOf(account);
        for (uint i = 0; i < ownerTokenCount; i++) {
            uint tokenId = tokenOfOwnerByIndex(account, i);
            _burn(tokenId);
        }
    }
}
