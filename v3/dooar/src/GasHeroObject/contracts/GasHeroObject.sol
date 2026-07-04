// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import "@openzeppelin/contracts/utils/cryptography/EIP712.sol";
import "@openzeppelin/contracts/utils/Multicall.sol";
import "./ERC2771Context.sol";
import "./ERC721Permit.sol";
import "./IGate.sol";

contract GasHeroObject is ERC721Permit, ERC2771Context, Multicall, AccessControl, ReentrancyGuard {
    using ECDSA for bytes32;

    bytes32 public constant MINT_SIGNER = keccak256("MINT_SIGNER");

    string private _baseTokenURI;

    mapping(uint256 => bool) private lockedTokenIds;
    mapping(uint256 => bool) private unLockRequestIds;

    address private _gate;

    event LockTokenEvent(uint256 indexed tokenId);
    event UnlockTokenEvent(uint256 indexed tokenId);

    event MintBySystemEvent(address[] tos, uint256[] tokenIds, bool isLock);
    event MintBySignatureEvent(address indexed to, uint256[] tokenIds, bool isLock, bytes signature);
    event LockEvent(uint256[] tokenIds);
    event LockBySystemEvent(uint256[] tokenIds);
    event UnlockBySystemEvent(uint256[] tokenIds);
    event UnlockRequestEvent(uint256 indexed requestId, uint256[] tokenIds);

    constructor(
        string memory name,
        string memory symbol,
        string memory baseURI,
        address gate
    ) ERC721Permit(name, symbol, "1") {
        _gate = gate;
        _baseTokenURI = baseURI;
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(MINT_SIGNER, msg.sender);
    }

    function supportsInterface(bytes4 interfaceId) public view override(ERC721Permit, AccessControl) returns (bool) {
        return ERC721Permit.supportsInterface(interfaceId)
            || AccessControl.supportsInterface(interfaceId);
    }

    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 firstTokenId,
        uint256 batchSize
    ) internal override {
        if (to != address(0)) {
            require(!lockedTokenIds[firstTokenId], "Token is locked");
        }
        if (_gate != address(0)) {
            IGate(_gate).check(_msgSender());
        }
        super._beforeTokenTransfer(from, to, firstTokenId, batchSize);
    }

    function _msgSender() internal override(ERC2771Context, Context) view virtual returns (address) {
        return ERC2771Context._msgSender();
    }

    function _msgData() internal override(ERC2771Context, Context) view virtual returns (bytes calldata) {
        return ERC2771Context._msgData();
    }

    function setTrustedForwarder(address trustedForwarder) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _setTrustedForwarder(trustedForwarder);
    }

    function setGate(address gate) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _gate = gate;
    }

    function getGate() external view returns (address) {
        return _gate;
    }

    function setBaseUri(string memory baseURI) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _baseTokenURI = baseURI;
    }

    function _baseURI() internal view override returns (string memory) {
        return _baseTokenURI;
    }

    function burn(uint256 tokenId) external virtual {
        require(
            _isApprovedOrOwner(_msgSender(), tokenId),
            "Burn caller is not owner nor approved"
        );
        _burn(tokenId);
    }

    function burnTokens(uint256[] calldata tokenIds) external virtual {
        for (uint32 i = 0; i < tokenIds.length; i++) {
            uint256 tokenId = tokenIds[i];
            require(
                _isApprovedOrOwner(_msgSender(), tokenId),
                "Burn caller is not owner nor approved"
            );
            _burn(tokenId);
        }
    }

    function mintBySystem(
        address[] calldata tos,
        uint256[] calldata tokenIds,
        bool isLock
    ) onlyRole(MINT_SIGNER) external nonReentrant {
        require(tos.length == tokenIds.length, "Invalid input length");
        for (uint32 i = 0; i < tokenIds.length; i++) {
            _safeMint(tos[i], tokenIds[i]);
        }
        if (isLock) {
            for (uint32 i = 0; i < tokenIds.length; i++) {
                lockedTokenIds[tokenIds[i]] = true;
                emit LockTokenEvent(tokenIds[i]);
            }
        }
        emit MintBySystemEvent(tos, tokenIds, isLock);
    }

    function mintBySignature(
        address to,
        uint256[] calldata tokenIds,
        bool isLock,
        bytes memory signature
    ) external nonReentrant {
        bytes32 messageHash = keccak256(abi.encodePacked(address(this), to, tokenIds, isLock));
        address signer = messageHash.toEthSignedMessageHash().recover(signature);
        require(hasRole(MINT_SIGNER, signer), "Invalid signature");

        for (uint32 i = 0; i < tokenIds.length; i++) {
            _safeMint(to, tokenIds[i]);
        }
        if (isLock) {
            for (uint32 i = 0; i < tokenIds.length; i++) {
                lockedTokenIds[tokenIds[i]] = true;
                emit LockTokenEvent(tokenIds[i]);
            }
        }
        emit MintBySignatureEvent(to, tokenIds, isLock, signature);
    }

    function isLocked(uint256 tokenId) external view returns (bool) {
        return lockedTokenIds[tokenId];
    }

    function hasUnlockRequest(uint256 requestId) external view returns (bool) {
        return unLockRequestIds[requestId];
    }

    function lock(
        uint256[] calldata tokenIds
    ) external nonReentrant {
        for (uint32 i = 0; i < tokenIds.length; i++) {
            uint256 tokenId = tokenIds[i];
            require(
                _isApprovedOrOwner(_msgSender(), tokenId),
                "Lock caller is not owner nor approved"
            );
            lockedTokenIds[tokenId] = true;
            emit LockTokenEvent(tokenId);
        }
        emit LockEvent(tokenIds);
    }

    function unlockBySignature(
        uint256 requestId,
        uint256[] calldata tokenIds,
        bytes memory signature
    ) external nonReentrant {
        require(!unLockRequestIds[requestId], "Request already processed");

        unLockRequestIds[requestId] = true;

        bytes32 messageHash = keccak256(abi.encodePacked(address(this), requestId, tokenIds));
        address signer = messageHash.toEthSignedMessageHash().recover(signature);
        require(hasRole(MINT_SIGNER, signer), "Invalid signature");

        for (uint32 i = 0; i < tokenIds.length; i++) {
            uint256 tokenId = tokenIds[i];
            require(lockedTokenIds[tokenId], "Token is not locked");
            lockedTokenIds[tokenId] = false;
            emit UnlockTokenEvent(tokenId);
        }
        emit UnlockRequestEvent(requestId, tokenIds);
    }

    function unlockBySystem(
        uint256[] calldata tokenIds
    ) onlyRole(MINT_SIGNER) external nonReentrant {
        for (uint32 i = 0; i < tokenIds.length; i++) {
            uint256 tokenId = tokenIds[i];
            require(lockedTokenIds[tokenId], "Token is not locked");
            lockedTokenIds[tokenId] = false;
            emit UnlockTokenEvent(tokenId);
        }
        emit UnlockBySystemEvent(tokenIds);
    }
}
