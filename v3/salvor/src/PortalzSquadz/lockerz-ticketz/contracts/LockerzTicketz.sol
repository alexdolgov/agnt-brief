// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";

import "./utils/StringUtils.sol";

/// @custom:security-contact arthur@mad.studio
contract LockerzTicketz is ERC721, ERC721Enumerable, AccessControl {
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

    mapping(address => bool) public whitelistedAddresses;

    struct Ticketz {
        address collectionAddress;
        uint256 tokenId;
    }

    mapping(uint256 => Ticketz) private _ticketz;
    mapping(address => mapping(uint256 => uint256)) private _tokenIds;

    uint256 private _indexer;

    constructor() ERC721("Lockerz Ticketz", "TICKETZ") {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(MINTER_ROLE, msg.sender);
    }

    function ticketzFromTokenId(uint256 tokenId)
        public
        view
        returns (Ticketz memory ticketz)
    {
        return _ticketz[tokenId];
    }

    function tokenURI(Ticketz memory ticketz)
        public
        view
        virtual
        returns (string memory)
    {
        _requireMinted(_tokenIds[ticketz.collectionAddress][ticketz.tokenId]);
        ERC721 collection = ERC721(ticketz.collectionAddress);
        return collection.tokenURI(ticketz.tokenId);
    }

    function tokenURI(uint256 tokenId)
        public
        view
        virtual
        override
        returns (string memory)
    {
        require(
            _exists(tokenId),
            "LockerzTicketz: URI query for nonexistent token"
        );
        return tokenURI(ticketzFromTokenId(tokenId));
    }

    /* ********************************** */
    /*                Mint                */
    /* ********************************** */

    function safeMint(address to, Ticketz memory ticketz)
        public
        onlyRole(MINTER_ROLE)
    {
        require(
            _tokenIds[ticketz.collectionAddress][ticketz.tokenId] == 0,
            "LockerzTicketz: ticketz already exists"
        );
        _ticketz[_indexer] = ticketz;
        _tokenIds[ticketz.collectionAddress][ticketz.tokenId] = _indexer;
        _mint(to, _indexer);
        _indexer += 1;
    }

    /* ********************************** */
    /*                Burn                */
    /* ********************************** */

    function safeBurn(Ticketz memory ticketz) public onlyRole(MINTER_ROLE) {
        uint256 tokenId = _tokenIds[ticketz.collectionAddress][ticketz.tokenId];
        require(
            _isApprovedOrOwner(_msgSender(), tokenId),
            "LockerzTicketz: caller is not token owner nor approved"
        );

        delete _ticketz[tokenId];
        delete _tokenIds[ticketz.collectionAddress][ticketz.tokenId];

        _burn(tokenId);
    }

    function burn(Ticketz memory ticketz) public onlyRole(MINTER_ROLE) {
        uint256 tokenId = _tokenIds[ticketz.collectionAddress][ticketz.tokenId];

        delete _ticketz[tokenId];
        delete _tokenIds[ticketz.collectionAddress][ticketz.tokenId];

        _burn(tokenId);
    }

    /* ********************************** */
    /*             Transfers              */
    /* ********************************** */

    // Non-transferable token
    function _transfer(
        address from,
        address to,
        uint256 tokenId
    ) internal virtual override {
        require(
            from == address(0) ||
                whitelistedAddresses[from] ||
                whitelistedAddresses[to],
            "LockerzTicketz: non transferable"
        );

        super._transfer(from, to, tokenId);
    }

    /* ********************************** */
    /*               Setter               */
    /* ********************************** */

    function addWhitelistedAddress(address wlAddress)
        public
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        whitelistedAddresses[wlAddress] = true;
    }

    function removeWhitelistedAddress(address wlAddress)
        public
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        whitelistedAddresses[wlAddress] = false;
    }

    /* ********************************** */
    /*             Mandatory              */
    /* ********************************** */

    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 tokenId
    ) internal override(ERC721, ERC721Enumerable) {
        super._beforeTokenTransfer(from, to, tokenId);
    }

    // The following functions are overrides required by Solidity.
    function supportsInterface(bytes4 interfaceId)
        public
        view
        override(ERC721, ERC721Enumerable, AccessControl)
        returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }
}
