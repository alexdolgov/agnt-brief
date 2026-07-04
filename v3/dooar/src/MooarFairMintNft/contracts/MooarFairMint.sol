// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Create2.sol";
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "./IERC173.sol";
import "./MooarFairMintNft.sol";
import "./TransferHelper.sol";

contract MooarFairMint is AccessControl, ReentrancyGuard {
    using ECDSA for bytes32;

    address immutable private _mintToken;
    mapping(uint256 => bool) public midRecords;
    mapping(address => bytes32) public nftAddressCidMap;

    bytes32 public constant MINT_SIGNER = keccak256("MINT_SIGNER");

    constructor(address mintToken) {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(MINT_SIGNER, msg.sender);

        _mintToken = mintToken;
    }

    event DeployNftEvent(bytes32 indexed collectionId, address indexed nft);
    event FairMintEvent(uint256 indexed mid, address indexed nft, address indexed to, uint256 feeAmount, uint256 mintNumber);

    function computeNftAddress(
        address ownerAddress,
        bytes32 collectionId,
        string memory name,
        string memory symbol,
        string memory baseURI,
        string memory tokenSuffix,
        uint256 startIdx,
        uint256 maxSupply
    ) external view returns (address deploymentAddress) {
        bytes memory creationCode = type(MooarFairMintNft).creationCode;
        bytes memory argBytecode = abi.encode(name, symbol, baseURI, tokenSuffix, ownerAddress, startIdx, maxSupply);
        bytes32 bytecodeHash = keccak256(abi.encodePacked(creationCode, argBytecode));

        return Create2.computeAddress(collectionId, bytecodeHash, address(this));
    }

    function deployNft(
        bytes32 collectionId,
        string memory name,
        string memory symbol,
        string memory baseURI,
        string memory tokenSuffix,
        uint256 startIdx,
        uint256 maxSupply,
        bytes memory signature
    ) external nonReentrant {
        address owner = _msgSender();

        bytes32 messageHash = keccak256(abi.encodePacked(collectionId, owner));
        address signer = messageHash.toEthSignedMessageHash().recover(signature);
        require(hasRole(MINT_SIGNER, signer), "Invalid signature");

        address newNFT = address(new MooarFairMintNft{salt: collectionId}(name, symbol, baseURI, tokenSuffix, owner, startIdx, maxSupply));
        nftAddressCidMap[newNFT] = collectionId;

        emit DeployNftEvent(collectionId, newNFT);
    }

    function mint(
        uint256 mid,
        address nft,
        address to,
        uint256 feeAmount,
        uint256 mintNumber,
        bytes memory signature) external nonReentrant {
        address minter = _msgSender();

        require(midRecords[mid] == false, "Exist mid");
        require(nftAddressCidMap[nft] != 0, "Invalid nft");

        bytes32 messageHash = keccak256(abi.encodePacked(mid, nft, to, feeAmount, mintNumber));
        address signer = messageHash.toEthSignedMessageHash().recover(signature);
        require(hasRole(MINT_SIGNER, signer), "Invalid signature");

        midRecords[mid] = true;

        if (feeAmount > 0) {
            TransferHelper.safeTransferFrom(
                _mintToken,
                minter,
                MooarFairMintNft(nft).owner(),
                feeAmount
            );
        }

        MooarFairMintNft(nft).mint(to, mintNumber);
        emit FairMintEvent(mid, nft, to, feeAmount, mintNumber);
    }
}
