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

contract NTS1Item is
    Initializable,
    UUPSUpgradeable,
    ERC2981Upgradeable,
    ERC721EnumerableUpgradeable,
    UpdatableOperatorFiltererUpgradeable,
    OwnableUpgradeable,
    ReentrancyGuardUpgradeable
{
    mapping(address => bool) public admins;
    NTConfig config;
    uint16 boughtItemsCount;
    uint16 boughtItemOffset;
    uint72 itemCost;
    bool itemMintActive;

    function initialize(
        uint16 boughtItemOffset_,
        address config_,
        address registry,
        address subscriptionOrRegistrantToCopy
    ) external initializer {
        __ERC721_init("Neo Tokyo Part 3 Item Caches V2", "NTITEM");
        __ERC2981_init();
        __ReentrancyGuard_init();
        __UpdatableOperatorFiltererUpgradeable_init(
            registry,
            subscriptionOrRegistrantToCopy,
            true
        );
        __Ownable_init();

        config = NTConfig(config_);
        boughtItemOffset = boughtItemOffset_;
        itemCost = 500 ether;
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

    function checkSpecialItems(
        uint256 tokenId
    ) external view returns (string memory) {
        NTS1Item oldContract = NTS1Item(
            config.findComponent(NTComponent.S1_ITEM, false)
        );
        return oldContract.checkSpecialItems(tokenId);
    }

    function getWeapon(uint256 tokenId) public view returns (string memory) {
        require(
            _exists(tokenId),
            "ERC721Metadata: URI query for nonexistent token"
        );
        string memory output;

        output = config.getWeapon(tokenId);

        return output;
    }

    function getVehicle(uint256 tokenId) external view returns (string memory) {
        require(
            _exists(tokenId),
            "ERC721Metadata: URI query for nonexistent token"
        );
        string memory output;

        output = config.getVehicle(tokenId);

        return output;
    }

    function getApparel(uint256 tokenId) public view returns (string memory) {
        require(
            _exists(tokenId),
            "ERC721Metadata: URI query for nonexistent token"
        );
        string memory output;

        output = config.getApparel(tokenId);

        return output;
    }

    function getHelm(uint256 tokenId) public view returns (string memory) {
        require(
            _exists(tokenId),
            "ERC721Metadata: URI query for nonexistent token"
        );
        string memory output;

        output = config.getHelm(tokenId);

        return output;
    }

    function tokenURI(
        uint256 tokenId
    ) public view override returns (string memory) {
        require(
            _exists(tokenId),
            "ERC721Metadata: URI query for nonexistent token"
        );

        return config.tokenURI(tokenId);
    }

    function migrateAsset(address sender, uint256 tokenId) public nonReentrant {
        require(
            _msgSender() == config.migrator(),
            "msg.sender must be migrator"
        );

        IERC721 v1Contract = IERC721(
            config.findComponent(NTComponent.S1_ITEM, false)
        );
        require(
            v1Contract.ownerOf(tokenId) == sender,
            "You do not own this token"
        );

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

    function buyItems() public nonReentrant {
        IByteContract bytes_ = IByteContract(config.bytesContract());
        require(itemMintActive, "Items cannot be bought yet");
        bytes_.burn(_msgSender(), itemCost);
        _safeMint(_msgSender(), ++boughtItemsCount + boughtItemOffset);
    }

    function setItemMintActive() public onlyOwner {
        itemMintActive = !itemMintActive;
    }

    function setItemCost(uint72 _cost) public onlyOwner {
        itemCost = _cost;
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
        config = NTConfig(config_);
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
