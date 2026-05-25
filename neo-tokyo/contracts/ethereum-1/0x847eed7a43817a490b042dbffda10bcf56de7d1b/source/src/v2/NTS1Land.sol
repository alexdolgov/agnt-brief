// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IERC721Enumerable} from "openzeppelin/token/ERC721/extensions/ERC721Enumerable.sol";
import {IERC721} from "openzeppelin/token/ERC721/ERC721.sol";
import {ERC721EnumerableUpgradeable} from "openzeppelin-upgradeable/token/ERC721/extensions/ERC721EnumerableUpgradeable.sol";
import {IERC721Upgradeable, ERC721Upgradeable} from "openzeppelin-upgradeable/token/ERC721/ERC721Upgradeable.sol";
import {ERC2981Upgradeable} from "openzeppelin-upgradeable/token/common/ERC2981Upgradeable.sol";
import {ReentrancyGuardUpgradeable} from "openzeppelin-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import {OwnableUpgradeable} from "openzeppelin-upgradeable/access/OwnableUpgradeable.sol";
import {Initializable} from "openzeppelin-upgradeable/proxy/utils/Initializable.sol";
import {UUPSUpgradeable} from "openzeppelin-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {UpdatableOperatorFiltererUpgradeable} from "operator-filter-registry/src/upgradeable/UpdatableOperatorFiltererUpgradeable.sol";

import {IByteContract} from "bytes/interfaces/IByteContract.sol";

import {NTConfig, NTComponent} from "./NTConfig.sol";


contract NTS1Land is
    Initializable,
    UUPSUpgradeable,
    ERC2981Upgradeable,
    ERC721EnumerableUpgradeable,
    UpdatableOperatorFiltererUpgradeable,
    OwnableUpgradeable,
    ReentrancyGuardUpgradeable
 {
    mapping(address => bool) public admins;
    bool landMintActive;
    NTConfig config;
    uint16 boughtLandOffset;
    uint16 currentId;
    uint256 landCost = 500 ether;

    bytes32[] _rootHash;

    // Mapping for vault tokenIds that have previously claimed

    mapping(uint256 => uint256) private _vaultClaims;
    // Mapping for identity tokenIds that have previously claimed
    mapping(uint256 => uint256) private _identityClaims;
    // Mapping for item cache tokenIds that have previously claimed
    mapping(uint256 => uint256) private _itemCacheClaims;

    // Mapping to look up what vault minted a specific token
    mapping(uint256 => uint256) private _tokenMintedByVault;
    // Mapping to look up what vault minted a specific token
    mapping(uint256 => uint256) private _tokenMintedByIdentity;
    // Mapping to look up what vault minted a specific token
    mapping(uint256 => uint256) private _tokenMintedByItemCache;

    function initialize(uint16 boughtLandOffset_, address config_, address registry, address subscriptionOrRegistrantToCopy) external initializer
    {
        __ERC721_init("Neo Tokyo Part 4 Land Deeds V2", "NTLD");
        __ERC2981_init();
        __ReentrancyGuard_init();
        __UpdatableOperatorFiltererUpgradeable_init(
            registry,
            subscriptionOrRegistrantToCopy,
            true
        );
        __Ownable_init();

        _rootHash = new bytes32[](3);
        _rootHash[0] = 0xb5f5282ccae7803f1fa99dc1a7df949a948a4d5105e139acfe36eafd21369bcd;
        _rootHash[1] = 0x134e8a47f0d9c17019dc517e1d63a1e0f032bf6e955749c13c8cdb8cd35a5f5a;
        _rootHash[2] = 0xe8c04c946ca3e2f10b3af39165a04e39d5300869fc52b596997acd0498a09817;

        config = NTConfig(config_);
        boughtLandOffset = boughtLandOffset_;
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

    function getLocation(uint256 tokenId) public view returns (string memory) {
        require(_exists(tokenId), "ERC721Metadata: URI query for nonexistent token");
        string memory output;

        output = config.getLocation(tokenId);

        return output;
    }

    function getTokenClaimedByVaultTokenId(uint256 vaultTokenId) public view returns (uint256) {
        uint256 token = NTS1Land(config.findComponent(NTComponent.S1_LAND,false)).getTokenClaimedByVaultTokenId(vaultTokenId);

        if(token > 0){
            return token;
        }
        return _vaultClaims[vaultTokenId];
    }

    function getTokenClaimedByIdentityTokenId(uint256 identityTokenId) public view returns (uint256) {
        uint256 token = NTS1Land(config.findComponent(NTComponent.S1_LAND,false)).getTokenClaimedByIdentityTokenId(identityTokenId);

        if(token > 0){
            return token;
        }
        return _identityClaims[identityTokenId];
    }

    function getTokenClaimedByItemCacheTokenId(uint256 itemCacheTokenId) public view returns (uint256) {
        uint256 token = NTS1Land(config.findComponent(NTComponent.S1_LAND,false)).getTokenClaimedByItemCacheTokenId(itemCacheTokenId);

        if(token > 0){
            return token;
        }
        return _itemCacheClaims[itemCacheTokenId];
    }

    function getClaimantVaultIdByTokenId(uint256 tokenId) public view returns (uint256) {
        uint256 claimant = NTS1Land(config.findComponent(NTComponent.S1_LAND,false)).getClaimantVaultIdByTokenId(tokenId);

        if(claimant > 0) {
            return claimant;
        }
        return _tokenMintedByVault[tokenId];
    }

    function getClaimantIdentityIdByTokenId(uint256 tokenId) public view returns (uint256) {
       uint256 claimant = NTS1Land(config.findComponent(NTComponent.S1_LAND,false)).getClaimantIdentityIdByTokenId(tokenId);

        if(claimant > 0) {
            return claimant;
        }
        return _tokenMintedByIdentity[tokenId];
    }

    function getClaimantItemCacheIdByTokenId(uint256 tokenId) public view returns (uint256) {
        uint256 claimant = NTS1Land(config.findComponent(NTComponent.S1_LAND,false)).getClaimantItemCacheIdByTokenId(tokenId);

        if(claimant > 0) {
            return claimant;
        }
        return _tokenMintedByItemCache[tokenId];
    }

    function tokenURI(uint256 tokenId) public view override returns (string memory) {
        require(_exists(tokenId), "ERC721Metadata: URI query for nonexistent token");

        return config.tokenURI(tokenId);
    }

    function landClaim(
        uint256 vaultTokenId,
        uint256 identityTokenId,
        uint256 itemCacheTokenId,
        uint256 spotOnLeaderboard,
        uint256 spotInWhitelist,
        bytes32[] memory proof
    ) public nonReentrant {
        require(landMintActive, "Minting is not currently active");
        require(vaultTokenId > 0 && vaultTokenId < 2501, "That vault cannot claim land");
        address sender = msg.sender;
        require(
            whitelistValidated(toString(vaultTokenId), spotOnLeaderboard, spotInWhitelist, proof),
            "That vault cannot claim that item"
        );
        
        require(vaultValidated(vaultTokenId, sender), "You are not the owner of that vault box");
        require(identityValidated(identityTokenId, sender), "You are not the owner of that identity");
        require(itemCacheValidated(itemCacheTokenId, sender), "You are not the owner of that item cache");

        _safeMint(_msgSender(), spotOnLeaderboard);

        //Set the _vaultClaims value to spotOnLeaderboard for this vault so the vault cannot mint again
        _vaultClaims[vaultTokenId] = spotOnLeaderboard;
        //Set the _identityClaims value to spotOnLeaderboard for this identity so the identity cannot mint again
        _identityClaims[identityTokenId] = spotOnLeaderboard;
        //Set the _itemCacheClaims value to spotOnLeaderboard for this item cache so the item cache cannot mint again
        _itemCacheClaims[itemCacheTokenId] = spotOnLeaderboard;

        //Set the vault that minted this token for reverse lookup
        _tokenMintedByVault[spotOnLeaderboard] = vaultTokenId;
        //Set the identity that minted this token for reverse lookup
        _tokenMintedByIdentity[spotOnLeaderboard] = identityTokenId;
        //Set the itemCache that minted this token for reverse lookup
        _tokenMintedByItemCache[spotOnLeaderboard] = itemCacheTokenId;
    }

    function migrateAsset(address sender, uint256 tokenId) public nonReentrant {
        require(_msgSender() == config.migrator(), "msg.sender must be migrator");
        NTS1Land v1Contract = NTS1Land(config.findComponent(NTComponent.S1_LAND,false));
        require(v1Contract.ownerOf(tokenId) == sender, "You do not own this token");

        v1Contract.transferFrom(sender, address(this), tokenId);
        _safeMint(sender, tokenId);
    }

    function adminClaim(uint256 tokenId, address receiver) public nonReentrant {
        require(admins[msg.sender], "Only admins can adminClaim");
        require(!_exists(tokenId), "Token already exists");
        _safeMint(receiver, tokenId);
    }

    function toggleAdmin(address adminToToggle) public onlyOwner {
        admins[adminToToggle] = !admins[adminToToggle];
    }

    function buyLand() public nonReentrant {
        IByteContract bytes_ = IByteContract(config.bytesContract());
        require(address(bytes_) != address(0), "Bytes contract not set");
        require(landMintActive, "Land cannot be bought yet");
        bytes_.burn(_msgSender(), landCost);
        _safeMint(_msgSender(), ++currentId + boughtLandOffset);
    }

    //Used only in cases where the vault owner does not or cannot claim an item
    function emergencyClaim(uint256 vaultId, uint256 tokenId) public onlyOwner {
        require(tokenId > 0 && tokenId < 2501, "Token ID invalid");
        require(!_exists(tokenId), "That token already exists");
        require(_vaultClaims[vaultId] == 0, "That vault has already claimed");

        _safeMint(owner(), tokenId);
        _vaultClaims[vaultId] = tokenId;
    }

    function vaultValidated(uint256 vaultId, address sender) internal view returns (bool) {
        require(getTokenClaimedByVaultTokenId(vaultId) == 0, "This vault has minted");
        NTS1Land v2Contract = NTS1Land(config.findComponent(NTComponent.S1_VAULT,true));
        return (v2Contract.ownerOf(vaultId) == sender);
    }

    function identityValidated(uint256 identityId, address sender) internal view returns (bool) {
        require(getTokenClaimedByIdentityTokenId(identityId) == 0, "This identity has minted");
        NTS1Land v2Contract = NTS1Land(config.findComponent(NTComponent.S1_IDENTITY,true));
        return (v2Contract.ownerOf(identityId) == sender);
    }

    function itemCacheValidated(uint256 itemCacheId, address sender) internal view returns (bool) {
        require(getTokenClaimedByItemCacheTokenId(itemCacheId)== 0, "This item cache has minted");
        NTS1Land v2Contract = NTS1Land(config.findComponent(NTComponent.S1_ITEM,true));
        return (v2Contract.ownerOf(itemCacheId) == sender);
    }

    function whitelistValidated(
        string memory vaultTokenId,
        uint256 leaderboardSpot,
        uint256 index,
        bytes32[] memory proof
    ) internal view returns (bool) {
        // Compute the merkle root
        bytes32 node = keccak256(abi.encodePacked(index, vaultTokenId, leaderboardSpot));
        uint256 path = index;
        for (uint16 i = 0; i < proof.length; i++) {
            if ((path & 0x01) == 1) {
                node = keccak256(abi.encodePacked(proof[i], node));
            } else {
                node = keccak256(abi.encodePacked(node, proof[i]));
            }
            path /= 2;
        }

        // Check the merkle proof against the root hash array
        for (uint256 i = 0; i < _rootHash.length; i++) {
            if (node == _rootHash[i]) {
                return true;
            }
        }

        return false;
    }

    function setLandMintActive() public onlyOwner {
        landMintActive = !landMintActive;
    }

    function setLandCost(uint256 _cost) public onlyOwner {
        landCost = _cost;
    }

    //_newRoyalty is in basis points out of 10,000
    function adjustDefaultRoyalty(address _receiver, uint96 _newRoyalty) public onlyOwner {
        _setDefaultRoyalty(_receiver, _newRoyalty);
    }

    //_newRoyalty is in basis points out of 10,000
    function adjustSingleTokenRoyalty(uint256 _tokenId, address _receiver, uint96 _newRoyalty) public onlyOwner {
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

    function toString(uint256 value) internal pure returns (string memory) {
        // Inspired by OraclizeAPI's implementation - MIT license
        // https://github.com/oraclize/ethereum-api/blob/b42146b063c7d6ee1358846c198246239e9360e8/oraclizeAPI_0.4.25.sol

        if (value == 0) {
            return "0";
        }
        uint256 temp = value;
        uint256 digits;
        while (temp != 0) {
            digits++;
            temp /= 10;
        }
        bytes memory buffer = new bytes(digits);
        while (value != 0) {
            digits -= 1;
            buffer[digits] = bytes1(uint8(48 + uint256(value % 10)));
            value /= 10;
        }
        return string(buffer);
    }

    function setConfig(address config_) external onlyOwner {
        config = NTConfig(config_);
    }

    function owner() public view override(OwnableUpgradeable, UpdatableOperatorFiltererUpgradeable) returns (address) {
        return OwnableUpgradeable.owner();
    }
}
