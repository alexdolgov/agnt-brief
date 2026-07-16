// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
// from: https://wizard.openzeppelin.com/#erc721
pragma solidity 0.8.26;

import { AccessControlUpgradeable } from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import { ERC721Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC721/ERC721Upgradeable.sol";
import { ERC721BurnableUpgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC721/extensions/ERC721BurnableUpgradeable.sol";
import { ERC721EnumerableUpgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC721/extensions/ERC721EnumerableUpgradeable.sol";
import { ERC721PausableUpgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC721/extensions/ERC721PausableUpgradeable.sol";
import { ERC721URIStorageUpgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC721/extensions/ERC721URIStorageUpgradeable.sol";
import { Initializable } from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import { UUPSUpgradeable } from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import { ERC2981Upgradeable } from "@openzeppelin/contracts-upgradeable/token/common/ERC2981Upgradeable.sol";

/// @custom:security-contact security@ethos.network
contract EthosListingPass is
  Initializable,
  ERC721Upgradeable,
  ERC721EnumerableUpgradeable,
  ERC721URIStorageUpgradeable,
  ERC721PausableUpgradeable,
  AccessControlUpgradeable,
  ERC721BurnableUpgradeable,
  ERC2981Upgradeable,
  UUPSUpgradeable
{
  bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
  bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
  bytes32 public constant UPGRADER_ROLE = keccak256("UPGRADER_ROLE");

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() {
    _disableInitializers();
  }

  function initialize(
    address defaultAdmin,
    address pauser,
    address minter,
    address upgrader,
    address royaltyReceiver
  ) public initializer {
    __ERC721_init("EthosListingPass", "ELP");
    __ERC721Enumerable_init();
    __ERC721URIStorage_init();
    __ERC721Pausable_init();
    __AccessControl_init();
    __ERC721Burnable_init();
    __ERC2981_init();
    __UUPSUpgradeable_init();

    _grantRole(DEFAULT_ADMIN_ROLE, defaultAdmin);
    _grantRole(PAUSER_ROLE, pauser);
    _grantRole(MINTER_ROLE, minter);
    _grantRole(UPGRADER_ROLE, upgrader);

    // Set default royalty to 5% (500 basis points)
    _setDefaultRoyalty(royaltyReceiver, 500);
  }

  function pause() public onlyRole(PAUSER_ROLE) {
    _pause();
  }

  function unpause() public onlyRole(PAUSER_ROLE) {
    _unpause();
  }

  function safeMint(address to, uint256 tokenId, string memory uri) public onlyRole(MINTER_ROLE) {
    _safeMint(to, tokenId);
    _setTokenURI(tokenId, uri);
  }

  function _authorizeUpgrade(address newImplementation) internal override onlyRole(UPGRADER_ROLE) {}

  function setDefaultRoyalty(
    address receiver,
    uint96 feeNumerator
  ) public onlyRole(DEFAULT_ADMIN_ROLE) {
    _setDefaultRoyalty(receiver, feeNumerator);
  }

  function deleteDefaultRoyalty() public onlyRole(DEFAULT_ADMIN_ROLE) {
    _deleteDefaultRoyalty();
  }

  // The following functions are overrides required by Solidity.

  function _update(
    address to,
    uint256 tokenId,
    address auth
  )
    internal
    override(ERC721Upgradeable, ERC721EnumerableUpgradeable, ERC721PausableUpgradeable)
    returns (address)
  {
    return super._update(to, tokenId, auth);
  }

  function _increaseBalance(
    address account,
    uint128 value
  ) internal override(ERC721Upgradeable, ERC721EnumerableUpgradeable) {
    super._increaseBalance(account, value);
  }

  function tokenURI(
    uint256 tokenId
  ) public view override(ERC721Upgradeable, ERC721URIStorageUpgradeable) returns (string memory) {
    return super.tokenURI(tokenId);
  }

  function supportsInterface(
    bytes4 interfaceId
  )
    public
    view
    override(
      ERC721Upgradeable,
      ERC721EnumerableUpgradeable,
      ERC721URIStorageUpgradeable,
      ERC2981Upgradeable,
      AccessControlUpgradeable
    )
    returns (bool)
  {
    return super.supportsInterface(interfaceId);
  }
}
