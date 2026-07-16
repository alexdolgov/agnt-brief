// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";

contract TruthAttesterSBT is ERC721Burnable, ERC721Enumerable, Ownable {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIdCounter;

    string public baseURI = "";
    bool public isStaticURI = true;

    bool public whitelistMintEnabled = false;
    bytes32 public merkleRoot;

    constructor() ERC721("Attester NFT", "AttesterNFT") {}

    function mintForAddresses(address[] memory addresses) public onlyOwner {
        for (uint256 i = 0; i < addresses.length; i++) {
            _mintToken(addresses[i]);
        }
    }

    function mintForWhitelist(bytes32[] calldata proof) public {
        if (!whitelistMintEnabled) {
            revert WhitelistMintDisabled();
        }

        bytes32 leaf = keccak256(bytes.concat(keccak256(abi.encode(_msgSender()))));
        if (!MerkleProof.verify(proof, merkleRoot, leaf)) {
            revert NotWhitelisted();
        }

        _mintToken(_msgSender());
    }

    function setWhitelistMintEnabled(bool _enabled) public onlyOwner {
        whitelistMintEnabled = _enabled;
    }

    function setMerkleRoot(bytes32 _merkleRoot) public onlyOwner {
        merkleRoot = _merkleRoot;
    }

    function revokeTokens(uint256[] memory tokenIds) public onlyOwner {
        for (uint256 i = 0; i < tokenIds.length; i++) {
            uint256 tokenId = tokenIds[i];
            address tokenOwner = ownerOf(tokenId);
            _burn(tokenId);
            emit TokenRevoked(tokenId, tokenOwner);
        }
    }

    function supportsInterface(bytes4 interfaceId) public view override(ERC721, ERC721Enumerable) returns (bool) {
        return super.supportsInterface(interfaceId);
    }

    function setBaseURI(string memory _newBaseURI) external onlyOwner {
        baseURI = _newBaseURI;
    }

    function setIsStaticURI(bool _isStaticURI) external onlyOwner {
        isStaticURI = _isStaticURI;
    }

    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
        if (!_exists(tokenId)) {
            revert TokenNotFound();
        }
        if (isStaticURI) {
            return baseURI;
        } else {
            return bytes(baseURI).length > 0 ? string(abi.encodePacked(baseURI, Strings.toString(tokenId))) : "";
        }
    }

    // Internal functions
    function _mintToken(address to) internal {
        uint256 tokenId = _tokenIdCounter.current();
        _tokenIdCounter.increment();
        _safeMint(to, tokenId);
    }

    function _baseURI() internal view override returns (string memory) {
        return baseURI;
    }

    function _beforeTokenTransfer(address from, address to, uint256 tokenId, uint256 batchSize)
        internal
        override(ERC721, ERC721Enumerable)
    {
        if (from != address(0) && to != address(0)) {
            revert TransferNotAllowed();
        }
        super._beforeTokenTransfer(from, to, tokenId, batchSize);
    }

    event TokenRevoked(uint256 indexed tokenId, address indexed owner);

    error TokenNotFound();
    error TransferNotAllowed();
    error WhitelistMintDisabled();
    error NotWhitelisted();
}
