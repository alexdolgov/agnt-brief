// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/cryptography/draft-EIP712.sol";

import "./ISettingsStore.sol";

contract GameNftV2 is ERC721, EIP712 {

  struct Detach {
    uint256 id;
    uint32 fromVersion;
    bytes signature;
  }
  struct TrustedDetach {
    uint256 id;
    uint32 fromVersion;
  }

  struct Destroy {
    uint256 id;
    uint32 fromVersion;
    bytes signature;
  }
  struct TrustedDestroy {
    uint256 id;
    uint32 fromVersion;
  }

  struct Mint {
    uint256 id;
    uint32 version;
    uint32 nftType;
    string metadata;
    bytes signature;
  }
  struct TrustedMint {
    address to;

    uint256 id;
    uint32 version;
    uint32 nftType;
    string metadata;
  }

  struct Row {
    uint32 __version;
    uint32 nftType;

    string metadata;
  }

  event Minted(uint256 indexed id, address ownerId, uint32 version, uint32 nftType, string metadata);
  event Updated(uint256 indexed id, address ownerId, uint32 version, uint32 nftType, string metadata);
  event Detached(uint256 indexed id, address ownerId, uint32 version, uint32 nftType, string metadata);
  event Destroyed(uint256 indexed id, address ownerId, uint32 version, uint32 nftType);
  event OwnerChanged(uint256 indexed id, uint32 version, uint32 nftType, address from, address to);
  event MetadataUpdate(uint256 _tokenId);

  uint256 public immutable blockDeployed = block.number;

  mapping(uint256 => Row) public rows;

  ISettingsStore public settings;
  string private __baseUri;

  constructor(ISettingsStore _settings, string memory _name, string memory _symbol, string memory _signerDomainName, string memory _baseUri)
    ERC721(_name, _symbol)
    EIP712(_signerDomainName, "1")
  {
    settings = _settings;
    __baseUri = _baseUri;
  }

  function _baseURI() internal view override returns (string memory) {
    return __baseUri;
  }

  /////////////
  // Reading //
  /////////////

  function versionOf(uint256 tokenId) external view returns (uint32 version) {
    return rows[tokenId].__version;
  }

  function read(uint256 tokenId) external view returns (address ownerId, uint256 id, uint32 version, uint32 nftType, string memory metadata) {
    require(_exists(tokenId), "400");

    return (
      ownerOf(tokenId),
      tokenId,
      rows[tokenId].__version,
      rows[tokenId].nftType,
      rows[tokenId].metadata
    );
  }

  /////////////
  // Minting //
  /////////////

  function __mint(address to, uint256 id, uint32 version, uint32 nftType, string calldata metadata) private {
    // require(!_exists(id), "409"); <-- ERC721 base covers existence check
    require(rows[id].__version < version, "400");

    rows[id].__version = version;
    rows[id].nftType = nftType;
    rows[id].metadata = metadata;

    _safeMint(to, id);

    emit Minted(id, ownerOf(id), rows[id].__version, rows[id].nftType, rows[id].metadata);
    emit MetadataUpdate(id);
  }

  bytes32 constant public MINT_SIG_HASH = keccak256("Mint(address userId,uint256 id,uint32 version,uint32 nftType,string metadata)");
  function __verifyMintSigner(address to, uint256 id, uint32 version, uint32 nftType,string calldata metadata, bytes calldata signature) private view {
    bytes32 digest = _hashTypedDataV4(keccak256(abi.encode(
      MINT_SIG_HASH,
      to,
      id,
      version,
      nftType,
      keccak256(bytes(metadata)))));

    address signer = ECDSA.recover(digest, signature);
    require(settings.isPermittedTo(signer, symbol(), "Mint"), "403");
  }
  function mint(uint256 id, uint32 version, uint32 nftType, string calldata metadata, bytes calldata signature) public {

    __verifyMintSigner(msg.sender, id, version, nftType, metadata, signature);

    __mint(msg.sender, id, version, nftType, metadata);
  }
  function mintMany(Mint[] calldata options) external {
    for(uint32 i = 0; i < options.length; i++) {
      mint(options[i].id, options[i].version, options[i].nftType, options[i].metadata, options[i].signature);
    }
  }

  function trustedMint(address to, uint256 id, uint32 version, uint32 nftType, string calldata metadata) external {
    require(settings.isPermittedTo(msg.sender, symbol(), "TrustedMint"), "403");

    __mint(to, id, version, nftType, metadata);
  }
  function trustedMintMany(TrustedMint[] calldata options) external {
    require(settings.isPermittedTo(msg.sender, symbol(), "TrustedMint"), "403");
    
    for(uint32 i = 0; i < options.length; i++) {
      __mint(options[i].to, options[i].id, options[i].version, options[i].nftType, options[i].metadata);
    }
  }

  ////////////////
  // Detachment //
  ////////////////

  function __detach(uint256 id, uint32 fromVersion) private {
    require(rows[id].__version <= fromVersion, "400");

    string memory metadata = rows[id].metadata;
    address ownerId = ownerOf(id);

    delete rows[id].metadata;
    rows[id].__version = fromVersion + 1;
    _burn(id);

    emit Detached(id, ownerId, rows[id].__version, rows[id].nftType, metadata);
  }

  bytes32 DETACH_SIG_HASH = keccak256("Detach(address userId,uint256 id,uint32 fromVersion)");
  function __verifyDetachSigner(address userId, uint256 id, uint32 fromVersion, bytes calldata signature) private view {
    bytes32 digest = _hashTypedDataV4(keccak256(abi.encode(
      DETACH_SIG_HASH,
      userId,
      id,
      fromVersion)));

    address signer = ECDSA.recover(digest, signature);
    require(settings.isPermittedTo(signer, symbol(), "Detach"), "403");
  }
  function detach(uint256 id, uint32 fromVersion, bytes calldata signature) public {

    __verifyDetachSigner(msg.sender, id, fromVersion, signature);

    __detach(id, fromVersion);
  }
  function detachMany(Detach[] calldata detachments) public {
    
    for(uint32 i = 0; i < detachments.length; i++) {
      detach(detachments[i].id, detachments[i].fromVersion, detachments[i].signature);
    }
  }

  function trustedDetach(uint256 id, uint32 fromVersion) external {
    require(settings.isPermittedTo(msg.sender, symbol(), "TrustedDetach"), "403");

    __detach(id, fromVersion);
  }
  function trustedDetachMany(TrustedDetach[] calldata detachments) external {
    require(settings.isPermittedTo(msg.sender, symbol(), "TrustedDetach"), "403");

    for(uint32 i = 0; i < detachments.length; i++) {
      __detach(detachments[i].id, detachments[i].fromVersion);
    }
  }

  ////////////////
  // Destroying //
  ////////////////

  function __destroy(uint256 id, uint32 fromVersion) private {
    require(rows[id].__version <= fromVersion, "400");

    uint32 nftType = rows[id].nftType;
    address ownerId = ownerOf(id);

    delete rows[id].metadata;
    rows[id].__version = fromVersion + 1;
    _burn(id);

    emit Destroyed(id, ownerId, rows[id].__version, nftType);
  }

  bytes32 DESTROY_SIG_HASH = keccak256("Destroy(address userId,uint256 id,uint32 fromVersion)");
  function __verifyDestroySigner(address userId, uint256 id, uint32 fromVersion, bytes calldata signature) private view {
    bytes32 digest = _hashTypedDataV4(keccak256(abi.encode(
      DESTROY_SIG_HASH,
      userId,
      id,
      fromVersion)));

    address signer = ECDSA.recover(digest, signature);
    require(settings.isPermittedTo(signer, symbol(), "Destroy"), "403");
  }
  function destroy(uint256 id, uint32 fromVersion, bytes calldata signature) public {

    __verifyDestroySigner(msg.sender, id, fromVersion, signature);

    __destroy(id, fromVersion);
  }
  function destroyMany(Destroy[] calldata destroys) public {
    
    for(uint32 i = 0; i < destroys.length; i++) {
      destroy(destroys[i].id, destroys[i].fromVersion, destroys[i].signature);
    }
  }

  function trustedDestroy(uint256 id, uint32 fromVersion) external {
    require(settings.isPermittedTo(msg.sender, symbol(), "TrustedDestroy"), "403");

    __destroy(id, fromVersion);
  }
  function trustedDestroyMany(TrustedDestroy[] calldata destroys) external {
    require(settings.isPermittedTo(msg.sender, symbol(), "TrustedDestroy"), "403");

    for(uint32 i = 0; i < destroys.length; i++) {
      __destroy(destroys[i].id, destroys[i].fromVersion);
    }
  }

  //////////////
  // Updating //
  //////////////

  function __update(uint256 id, uint32 fromVersion, string  calldata metadata) private {
    require(_exists(id), "400");
    require(rows[id].__version <= fromVersion, "400");

    rows[id].__version = fromVersion + 1;
    rows[id].metadata = metadata;

    emit Updated(id, ownerOf(id), rows[id].__version, rows[id].nftType, rows[id].metadata);
    emit MetadataUpdate(id);
  }

  bytes32 UPDATE_SIG_HASH = keccak256("Update(address userId,uint256 id,uint32 fromVersion,string metadata)");
  function __verifyUpdateSigner(address subject, uint256 id, uint32 fromVersion, string calldata metadata, bytes calldata signature) private view {
    bytes32 digest =  _hashTypedDataV4(keccak256(abi.encode(
      UPDATE_SIG_HASH,
      subject,
      id,
      fromVersion,
      keccak256(bytes(metadata)))));

    address signer = ECDSA.recover(digest, signature);
    require(settings.isPermittedTo(signer, symbol(), "Update"), "403");
  }
  function update(uint256 id, uint32 fromVersion, string calldata metadata, bytes calldata signature) external {

    __verifyUpdateSigner(msg.sender, id, fromVersion, metadata, signature);

    __update(id, fromVersion, metadata);
  }

  function trustedUpdate(uint256 id, uint32 fromVersion, string calldata metadata) external {
    require(settings.isPermittedTo(msg.sender, symbol(), "TrustedUpdate"), "403");

    __update(id, fromVersion, metadata);
  }

  //////////////////
  // Transferring //
  //////////////////

  function _beforeTokenTransfer(address from, address to, uint256 id) internal override {

    rows[id].__version += 1;

    emit OwnerChanged(id, rows[id].__version, rows[id].nftType, from, to);
  }

  //////////////////////
  // metadata updates //
  //////////////////////

  function requestMetadataUpdate() external {
    require(settings.isAdmin(msg.sender), "403");

    emit MetadataUpdate(type(uint256).max);
  }
}
