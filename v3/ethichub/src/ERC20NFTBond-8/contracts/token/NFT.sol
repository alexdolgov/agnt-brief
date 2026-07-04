// SPDX-License-Identifier: GPLv3.0
pragma solidity ^0.8.28;

import '@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol';
import '@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/token/ERC721/ERC721Upgradeable.sol';
import '@openzeppelin/contracts-upgradeable/token/ERC721/extensions/ERC721BurnableUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/token/ERC721/extensions/ERC721EnumerableUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/token/ERC721/extensions/ERC721URIStorageUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/utils/CountersUpgradeable.sol';

import '../access/AccessManagedUpgradeable.sol';

abstract contract NFT is Initializable, ERC721Upgradeable, ERC721EnumerableUpgradeable, ERC721URIStorageUpgradeable, ERC721BurnableUpgradeable, UUPSUpgradeable, AccessManagedUpgradeable {
    using CountersUpgradeable for CountersUpgradeable.Counter;
    
    CountersUpgradeable.Counter private _tokenIdCounter;
    string private _baseTokenURI;
    /// @custom:oz-upgrades-renamed-from _nonces
    mapping(uint256 => bool) private _nonces_deprecated; // Rename in v1.2 from _nonces to _nonces_deprecated (unused variable)

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() initializer {}

    function __NFT_init(
        string calldata _name,
        string calldata _symbol,
        address _accessManager
    )
    internal initializer {
        __ERC721_init(_name, _symbol);
        __ERC721Enumerable_init();
        __ERC721URIStorage_init();
        __ERC721Burnable_init();
        __UUPSUpgradeable_init();
        __AccessManaged_init(_accessManager);
    }

    function tokenURI(uint256 tokenId)
        public
        view
        virtual
        override(ERC721Upgradeable, ERC721URIStorageUpgradeable)
        returns (string memory)
    {
        return super.tokenURI(tokenId);
    }

    function supportsInterface(bytes4 interfaceId)
        public
        view
        override(ERC721Upgradeable, ERC721EnumerableUpgradeable)
        returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }

    function _safeMint(address to, string memory tokenUri) internal returns (uint256) {
        uint256 tokenId = _tokenIdCounter.current();
        _tokenIdCounter.increment();
        _safeMint(to, tokenId);
        _setTokenURI(tokenId, tokenUri);
        return tokenId;
    }

    function _beforeTokenTransfer(address from, address to, uint256 tokenId, uint256 batchSize)
        internal
        override(ERC721Upgradeable, ERC721EnumerableUpgradeable)
    {
        super._beforeTokenTransfer(from, to, tokenId, batchSize);
    }

    function _authorizeUpgrade(address newImplementation)
        internal
        onlyRole(DEFAULT_ADMIN_ROLE)
        override
    {}

    // The following functions are overrides required by Solidity.

    function _burn(uint256 tokenId)
        internal
        override(ERC721Upgradeable, ERC721URIStorageUpgradeable)
    {
        super._burn(tokenId);
    }

    function _baseURI() internal pure override returns (string memory) {
        return 'ipfs://';
    }

    /**
     * ////// [v1.0, v1.1, v1.2, v2.0, v2.1, v2.2, v2.2.1, v2.2.2] //////
     * 1 _tokenIdCounter
     * 1 _baseTokenURI
     * 1 _nonces_deprecated (unused)
     * 49 __gap
     * 52 (mistakenly deployed with 52 store gaps)
     */
    uint256[49] private __gap; // deployed with 52 store gaps
}
