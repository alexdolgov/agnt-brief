// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/utils/cryptography/EIP712.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

abstract contract ERC721Permit is ERC721Enumerable, EIP712 {
    using Counters for Counters.Counter;
    using ECDSA for bytes32;

    bytes32 private constant _PERMIT_TYPEHASH =
    keccak256("Permit(address spender,uint256 tokenId,uint256 nonce,uint256 deadline)");

    mapping(uint256 => bool) private allMintedTokensIndex;
    mapping(uint256 => Counters.Counter) private _nonces;

    constructor(
        string memory name,
        string memory symbol,
        string memory version
    ) ERC721(name, symbol) EIP712(name, version) {}

    function permit(address spender, uint256 tokenId, uint256 deadline, bytes memory sig) external virtual {
        require(block.timestamp <= deadline, "Permit: expired deadline");

        address owner = ownerOf(tokenId);
        require(owner != address(0), "Permit: nonexistent token");

        bytes32 structHash = keccak256(abi.encode(_PERMIT_TYPEHASH, spender, tokenId, _useNonce(tokenId), deadline));

        bytes32 hash = _hashTypedDataV4(structHash);
        address signer = hash.recover(sig);
        require(signer == owner, "Permit: invalid signature");

        _approve(spender, tokenId);
    }

    function nonces(uint256 tokenId) public view virtual returns (uint256) {
        return _nonces[tokenId].current();
    }

    function DOMAIN_SEPARATOR() external view virtual returns (bytes32) {
        return _domainSeparatorV4();
    }

    function _useNonce(uint256 tokenId) internal virtual returns (uint256 current) {
        Counters.Counter storage nonce = _nonces[tokenId];
        current = nonce.current();
        nonce.increment();
    }

    function supportsInterface(bytes4 interfaceId) public view virtual override(ERC721Enumerable) returns (bool) {
        return ERC721Enumerable.supportsInterface(interfaceId) || interfaceId == 0x5604e225; // EIP-4494
    }

    function _beforeTokenTransfer(address from, address to, uint256 firstTokenId, uint256 batchSize) internal virtual override {
        if (from == address(0)) {
            require(!allMintedTokensIndex[firstTokenId], "Token already minted");
        }
        super._beforeTokenTransfer(from, to, firstTokenId, batchSize);
    }

    function _afterTokenTransfer(address from, address to, uint256 firstTokenId, uint256 batchSize) internal virtual override {
        super._afterTokenTransfer(from, to, firstTokenId, batchSize);
        _useNonce(firstTokenId);
        if (from == address(0)) {
            allMintedTokensIndex[firstTokenId] = true;
        }
    }

}
