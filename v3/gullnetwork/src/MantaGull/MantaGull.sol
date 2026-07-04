// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/cryptography/EIP712.sol";
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";


contract MantaGull is ERC721, EIP712, Ownable {
    using ECDSA for bytes32;

    bytes32 private constant MINT_FN_TYPE_HASH = keccak256("LazyMint(address to)");

    address private mintSigner;
    uint256 private _nextTokenId;
    mapping (address => bool) public hasMinted;

    // error
    error DuplicateMint();
    error InvalidSignature();

    string private baseUri;

    constructor(
        address signer_, 
        string memory baseUri_
    ) 
        ERC721("Manta's Gull", "MantaGull")
        EIP712("Manta's Gull", "1")
        Ownable(_msgSender())
    {
        mintSigner = signer_;
        baseUri = baseUri_;
        _nextTokenId = 1;
    }

    function setMintSigner(address mintSigner_) external onlyOwner {
        mintSigner = mintSigner_;
    }

    function setBaseUri(string memory newBaseUri) external onlyOwner {
        baseUri = newBaseUri;
    }

    function contractURI() public view returns (string memory) {
        return baseUri;
    }

    /// Mint a token given a valid signature from the signer, each address can only mint once
    function mintWithSignature(bytes memory signature) public {
        if (hasMinted[_msgSender()]) {
            revert DuplicateMint();
        }
        if (!verifyRecipient(_msgSender(), signature)) {
            revert InvalidSignature();
        }
        uint256 tokenId = _nextTokenId++;
        hasMinted[_msgSender()] = true;
        _safeMint(_msgSender(), tokenId);
    }

    /// admin mint a token for another address
    function adminMint(address to) public onlyOwner {
        uint256 tokenId = _nextTokenId++;
        hasMinted[to] = true;
        _safeMint(to, tokenId);
    }

    function supportsInterface(bytes4 interfaceId)
        public
        view
        override(ERC721)
        returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }


    function tokenURI(uint256 _tokenId)
        public
        view
        override(ERC721)
        returns (string memory)
    {
        // all nft will use the same cid of metadata
        return baseUri;
    }

    /// @dev use eip712 standard for verifying signature
    /// @param to address mint address of the nft
    function verifyRecipient(
        address to,
        bytes memory signature
    ) private view returns(bool) {
        // verify signature
        bytes32 digest = getLazyMintDigest(to);
        address signer = ECDSA.recover(digest, signature);
        return signer == mintSigner;
    }

    function getLazyMintDigest(address to) public view returns(bytes32) {
        bytes32 digest = _hashTypedDataV4(keccak256(abi.encode(
            MINT_FN_TYPE_HASH,
            to
        )));

        return digest;
    }
}
