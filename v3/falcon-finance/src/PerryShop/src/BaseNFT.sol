// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC721/extensions/ERC721EnumerableUpgradeable.sol";

abstract contract BaseNFT is Initializable, ERC721EnumerableUpgradeable, AccessControlUpgradeable {

    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

    string private _baseTokenURI;
    uint256 private _nextTokenId;
    uint256 public constant MAX_SUPPLY = 3500;

    event BaseURIUpdated(string newBaseURI);

    error MaxSupplyExceeded();

    function __BaseNFT_init(
        string memory name,
        string memory symbol,
        string memory baseURI
    )
        internal
        onlyInitializing
    {
        __ERC721Enumerable_init();
        __ERC721_init(name, symbol);
        __AccessControl_init();

        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(MINTER_ROLE, msg.sender);

        _baseTokenURI = baseURI;
        _nextTokenId = 1;
    }

    function mint(address to) public onlyRole(MINTER_ROLE) returns (uint256) {
        if (_nextTokenId > MAX_SUPPLY) {
            revert MaxSupplyExceeded();
        }

        uint256 tokenId = _nextTokenId++;
        _mint(to, tokenId);
        return tokenId;
    }

    function setBaseURI(string memory newBaseURI) public onlyRole(DEFAULT_ADMIN_ROLE) {
        _baseTokenURI = newBaseURI;
        emit BaseURIUpdated(newBaseURI);
    }

    function exists(uint256 tokenId) public view returns (bool) {
        return _ownerOf(tokenId) != address(0);
    }

    function _baseURI() internal view override returns (string memory) {
        return _baseTokenURI;
    }

    function supportsInterface(bytes4 interfaceId)
        public
        view
        override(ERC721EnumerableUpgradeable, AccessControlUpgradeable)
        returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }

}
