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

contract NTS1Vault is
    Initializable,
    UUPSUpgradeable,
    ERC2981Upgradeable,
    ERC721EnumerableUpgradeable,
    UpdatableOperatorFiltererUpgradeable,
    OwnableUpgradeable,
    ReentrancyGuardUpgradeable
{
    mapping(address => bool) public admins;
    bool openClaimActive;
    bool saleActive;
    bool whitelistActive;

    address boxMint;
    address identityContract;
    NTConfig public config;
    bytes32[] _rootHash;

    // Mapping for wallet addresses that have previously minted
    mapping(address => uint256) private _whitelistMinters;

    // Mapping for identity tokenIds that have previously claimed
    mapping(uint256 => uint256) private _identityClaims;

    // Mapping to look up what identity minted a specific token
    mapping(uint256 => uint256) private _tokenMintedByIdentity;

    function initialize(
        address config_,
        address registry,
        address subscriptionOrRegistrantToCopy
    ) external initializer {
        __ERC721_init("Neo Tokyo Part 2: Vault Cards V2", "NEOTV");
        __ERC2981_init();
        __ReentrancyGuard_init();
        __UpdatableOperatorFiltererUpgradeable_init(
            registry,
            subscriptionOrRegistrantToCopy,
            true
        );
        __Ownable_init();

        config = NTConfig(config_);
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

    function setOpenClaimState() external onlyOwner {
        openClaimActive = !openClaimActive;
    }

    function getCreditProportionOfTotalSupply(
        uint256 tokenId
    ) public view returns (string memory) {
        require(
            _exists(tokenId),
            "ERC721Metadata: URI query for nonexistent token"
        );
        string memory output;

        NTS1Vault dataContract = NTS1Vault(boxMint);
        output = dataContract.getCreditProportionOfTotalSupply(tokenId);

        return output;
    }

    function getCredits(uint256 tokenId) external view returns (string memory) {
        require(
            _exists(tokenId),
            "ERC721Metadata: URI query for nonexistent token"
        );
        string memory output;

        NTS1Vault dataContract = NTS1Vault(boxMint);
        output = dataContract.getCredits(tokenId);

        return output;
    }

    function getAdditionalItem(
        uint256 tokenId
    ) public view returns (string memory) {
        require(
            _exists(tokenId),
            "ERC721Metadata: URI query for nonexistent token"
        );
        string memory output;

        NTS1Vault dataContract = NTS1Vault(boxMint);
        output = dataContract.getAdditionalItem(tokenId);

        return output;
    }

    function getCreditMultiplier(
        uint256 tokenId
    ) public view returns (string memory) {
        require(
            _exists(tokenId),
            "ERC721Metadata: URI query for nonexistent token"
        );
        string memory output;

        NTS1Vault dataContract = NTS1Vault(boxMint);
        output = dataContract.getCreditMultiplier(tokenId);

        return output;
    }

    function getTokenClaimedByIdentityTokenId(
        uint256 identityTokenId
    ) public view returns (uint256) {
        return _identityClaims[identityTokenId];
    }

    function getClaimantIdentityIdByTokenId(
        uint256 tokenId
    ) public view returns (uint256) {
        return _tokenMintedByIdentity[tokenId];
    }

    function tokenURI(
        uint256 tokenId
    ) public view override returns (string memory) {
        require(
            _exists(tokenId),
            "ERC721Metadata: URI query for nonexistent token"
        );

        if (_msgSender() != address(config)) {
            return config.tokenURI(tokenId);
        }

        NTS1Vault dataContract = NTS1Vault(boxMint);
        return dataContract.tokenURI(tokenId);
    }

    function migrateAsset(address sender, uint256 tokenId) public nonReentrant {
        require(_msgSender() == config.migrator(), "msg.sender must be migrator");

        IERC721 v1Contract = IERC721(
            config.findComponent(NTComponent.S1_VAULT, false)
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

    function setContract(address contractAddress) public onlyOwner {
        boxMint = contractAddress;
    }

    function setIdAddress(address contractAddress) public onlyOwner {
        identityContract = contractAddress;
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

    function owner()
        public
        view
        override(OwnableUpgradeable, UpdatableOperatorFiltererUpgradeable)
        returns (address)
    {
        return OwnableUpgradeable.owner();
    }
}
