// SPDX-License-Identifier: CC0-1.0
pragma solidity ^0.8.8;


import {StringsUpgradeable} from "openzeppelin-upgradeable/utils/StringsUpgradeable.sol";
import {EIP712Upgradeable} from "openzeppelin-upgradeable/utils/cryptography/EIP712Upgradeable.sol";
import {ERC165Upgradeable, IERC165Upgradeable} from "openzeppelin-upgradeable/utils/introspection/ERC165Upgradeable.sol";
import {BitMapsUpgradeable} from "openzeppelin-upgradeable/utils/structs/BitMapsUpgradeable.sol";
import {SignatureCheckerUpgradeable} from "openzeppelin-upgradeable/utils/cryptography/SignatureCheckerUpgradeable.sol";

import {Initializable} from "openzeppelin-upgradeable/proxy/utils/Initializable.sol";
import {UUPSUpgradeable} from "openzeppelin-upgradeable/proxy/utils/UUPSUpgradeable.sol";

import {IERC4973} from "../../interfaces/ercs/IERC4973.sol";

import {IERC721Metadata} from "../../interfaces/ercs/extensions/IERC721Metadata.sol";

/// @notice Reference implementation of EIP-4973 tokens.
/// @author Tim Daubenschütz, Rahul Rumalla (https://github.com/rugpullindex/ERC4973/blob/master/src/ERC4973.sol)
abstract contract ERC4973Upgradeable is 
    Initializable, 
    UUPSUpgradeable,
    EIP712Upgradeable, 
    ERC165Upgradeable, 
    IERC721Metadata, 
    IERC4973 {


  using BitMapsUpgradeable for BitMapsUpgradeable.BitMap;

  bytes32 constant AGREEMENT_HASH = keccak256("Agreement(address active,address passive,bytes metadata)");

  BitMapsUpgradeable.BitMap private _usedHashes;

  string private _name;
  string private _symbol;

  mapping(uint256 => address) private _owners;
  mapping(address => uint256) private _balances;


 
  function __ERC4973_init(string memory name_, string memory symbol_, string memory version) internal onlyInitializing {
    __EIP712_init(name_, version);
    
    _name = name_;
    _symbol = symbol_;
  }

  function supportsInterface(bytes4 interfaceId)
    public
    view
    virtual
    override(ERC165Upgradeable)
    returns (bool)
  {
    return interfaceId == type(IERC721Metadata).interfaceId
      || interfaceId == type(IERC4973).interfaceId
      || super.supportsInterface(interfaceId);
  }

  function name() public view virtual override returns (string memory) {
    return _name;
  }

  function symbol() public view virtual override returns (string memory) {
    return _symbol;
  }

  function _unequip(uint256 tokenId) internal virtual {
    require(msg.sender == ownerOf(tokenId), "unequip: sender must be owner");
    _usedHashes.unset(tokenId);
    _burn(tokenId);
  }

  function balanceOf(address owner)
    public
    view
    virtual
    override(IERC4973)
    returns (uint256)
  {
    require(owner != address(0), "balanceOf: address zero is not a valid owner");
    return _balances[owner];
  }

  function ownerOf(uint256 tokenId) public view virtual override(IERC4973) returns (address) {
    address owner = _owners[tokenId];
    require(owner != address(0), "ownerOf: token doesn't exist");
    return owner;
  }

  function _give(address to, bytes calldata metadata, bytes calldata signature)
    internal
    virtual
    returns (uint256)
  {
    require(msg.sender != to, "give: cannot give from self");
    uint256 tokenId = _safeCheckAgreement(msg.sender, to, metadata, signature);
    _mint(msg.sender, to, tokenId);
    _usedHashes.set(tokenId);
    return tokenId;
  }

  function _take(address from, bytes calldata metadata, bytes calldata signature)
    internal
    virtual
    returns (uint256)
  {
    require(msg.sender != from, "take: cannot take from self");
    uint256 tokenId = _safeCheckAgreement(msg.sender, from, metadata, signature);
    _mint(from, msg.sender, tokenId);
    _usedHashes.set(tokenId);
    return tokenId;
  }

  function decodeURI(bytes calldata metadata)
    public
    virtual
    returns (string memory)
  {
    return string(metadata);
  }

  function _safeCheckAgreement(
    address active,
    address passive,
    bytes calldata metadata,
    bytes calldata signature
  )
    internal
    virtual
    returns (uint256)
  {
    bytes32 hash = _getHash(active, passive, metadata);
    uint256 tokenId = uint256(hash);

    require(
      SignatureCheckerUpgradeable.isValidSignatureNow(passive, hash, signature),
      "_safeCheckAgreement: invalid signature"
    );
    require(!_usedHashes.get(tokenId), "_safeCheckAgreement: already used");
    return tokenId;
  }

  function _getHash(address active, address passive, bytes calldata metadata)
    internal
    view
    returns (bytes32)
  {
    bytes32 structHash =
      keccak256(abi.encode(AGREEMENT_HASH, active, passive, keccak256(metadata)));
    return _hashTypedDataV4(structHash);
  }

  function _exists(uint256 tokenId) internal view virtual returns (bool) {
    return _owners[tokenId] != address(0);
  }

  function _mint(address from, address to, uint256 tokenId)
    internal
    virtual
    returns (uint256)
  {
    require(!_exists(tokenId), "mint: tokenID exists");
    _balances[to] += 1;
    _owners[tokenId] = to;
    emit IERC4973.Transfer(from, to, tokenId);
    return tokenId;
  }

  function _burn(uint256 tokenId) internal virtual {
    address owner = ownerOf(tokenId);

    _balances[owner] -= 1;
    delete _owners[tokenId];

    emit IERC4973.Transfer(owner, address(0), tokenId);
  }
}

