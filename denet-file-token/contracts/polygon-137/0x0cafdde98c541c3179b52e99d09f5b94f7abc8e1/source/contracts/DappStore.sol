// SPDX-License-Identifier: MIT

/*
    Created by DeNet
*/

pragma solidity ^0.8.15;

import './interfaces/IDappStore.sol';
import './DAppVerifier.sol';
import './libs/Converter.sol';
import '@openzeppelin/contracts/utils/Counters.sol';
import '@openzeppelin/contracts/token/ERC721/ERC721.sol';
import '@openzeppelin/contracts/utils/math/SafeMath.sol';

/**
 * @title Dapp Store
 * @dev DappStore is built for
 *    1. Minting dapp (token), so that other people can access it throught the version hashes
 *    2. Pushing new version for each dapp(ONLY by owner or approved user)
 */
contract DappStore is ERC721, IDappStore, DAppVerifier {
  using Converter for Dapp;
  using SafeMath for uint256;
  using Counters for Counters.Counter;

  Counters.Counter public dappIds;

  /**
   * @notice Maps from dappId(minted token id) to Dapp sturct that contains all app data(name, versions)
   */
  mapping(uint256 => Dapp) public dapps;

  /// -----------------------HELPERS----------------------
  uint16 public constant VERIFY_PRE_INSTALLED = 2;
  uint16 public constant VERIFY_TIME = 4;
  uint16 public constant VERIFY_DEPOSIT = 8;
  uint16 public constant VERIFY_DAO = 16;
  uint16 public constant VERIFY_DEVELOPER = 32;
  uint16 public constant VERIFY_TEAM = 64;
  uint16 public constant VERIFY_TEAM_INSTANT = 128;
  uint16 public constant VERIFY_CORE = 256;

  /// -----------------------FUNCTION's MODIFIERS-----------------------
  /**
   * @notice A modifier to check whether the caller is the app owner or approved by the owner
   *
   * @param dappId The minted app id (created when app is minted)
   */
  modifier onlyDappOwners(uint256 dappId) {
    require(
      _isApprovedOrOwner(_msgSender(), dappId),
      'DS: Not the owner of the dapp'
    );
    _;
  }

  /* solhint-disable-next-line no-empty-blocks */
  constructor() ERC721('Dapp Store beta v1.0.0', 'DS') {}

  /// -----------------------APP's MINTING FUNCTIONS-----------------------

  /**
   * @dev See {IDappStore-mintDapp}
   *
   * Emits {DappCreated}
   */
  function mintDapp(string memory dappName)
    external
    override
    returns (uint256 dappId)
  {
    dappId = _mintDapp(dappName);
  }

  /**
   * @dev See {IDappStore-mintDappWithVersion}
   *
   * Emits {DappCreated}
   */
  function mintDappWithVersion(
    string memory dappName,
    uint256[] memory nodeIds,
    uint32 paddingSize,
    bytes32 encryptionKeyHash,
    bytes32 manifestHash,
    bytes32 partKeyHash
  ) external override returns (uint256 dappId) {
    dappId = _mintDapp(dappName);
    pushNewVersion(
      dappId,
      nodeIds,
      paddingSize,
      encryptionKeyHash,
      manifestHash,
      partKeyHash
    );
  }

  /// -----------------------VERSIONS MODIFICATION FUNCTIONS-----------------------

  /**
   * @dev See {IDappStore-setPreInstalled}
   */
  function setPreInstalled(uint256 _dappId)
    external
    override
    onlyDeNetTeamLevel4
  {
    uint256 _versionID = dapps[_dappId].versions.length;
    require(_versionID > 0, 'setPreInstalled: not found dapp');
    DappVersion memory current = dapps[_dappId].versions[_versionID];
    require(
      isVerifiedBy(current.verify, VERIFY_PRE_INSTALLED) == false,
      'setPreInstalled: already preinstalled'
    );
    dapps[_dappId].versions[_versionID].verify += VERIFY_PRE_INSTALLED;
  }

  /**
   * @dev See {IDappStore-disableVerification}
   */
  function disableVerification(uint256 _dappId)
    external
    override
    onlyDeNetTeamLevel4
  {
    uint256 _versionID = dapps[_dappId].versions.length;
    require(_versionID > 0, 'disableVerification: not found dapp');
    dapps[_dappId].versions[_versionID].verify = 0;
  }

  /**
   * @dev See {IDappStore-setCoreDapp}
   */
  function setCoreDapp(uint256 _dappId) external override onlyDeNetTeamLevel4 {
    uint256 _versionID = dapps[_dappId].versions.length;
    require(_versionID > 0, 'setCoreDapp: not found dapp');
    DappVersion memory current = dapps[_dappId].versions[_versionID];
    require(
      isVerifiedBy(current.verify, VERIFY_CORE) == false,
      'setCoreDapp: already core'
    );
    dapps[_dappId].versions[_versionID].verify += VERIFY_CORE;
    if (isVerifiedBy(current.verify, VERIFY_PRE_INSTALLED) == false) {
      dapps[_dappId].versions[_versionID].verify += VERIFY_PRE_INSTALLED;
    }
  }

  /**
   * @dev See {IDappStore-setVerifyByTeam}
   */
  function setVerifyByTeam(uint256 _dappId)
    external
    override
    onlyDeNetTeamLevel2
  {
    uint256 _versionID = dapps[_dappId].versions.length;
    require(_versionID > 0, 'setVerifyByTeam: not found dapp');
    DappVersion memory current = dapps[_dappId].versions[_versionID];
    require(
      isVerifiedBy(current.verify, VERIFY_TEAM_INSTANT) == false,
      'setVerifyByTeam: already Verified'
    );
    dapps[_dappId].versions[_versionID].verify += VERIFY_TEAM_INSTANT;
  }

  /**
   * @dev See {IDappStore-pushNewVersion}
   *
   * Emits {NewDappVersion}
   */
  function pushNewVersion(
    uint256 _dappId,
    uint256[] memory _nodeIds,
    uint32 _paddingSize,
    bytes32 _encryptionKeyHash,
    bytes32 _manifestHash,
    bytes32 _partKeyHash
  ) public override onlyDappOwners(_dappId) {
    //solhint-disable-next-line reason-string
    require(
      _nodeIds.length == 3,
      'DS:pushNewVersion nodeIds length must be equal 3'
    );
    require(
      _nodeIds[0] > 0 && _nodeIds[1] > 0 && _nodeIds[2] > 0,
      'DS:pushNewVersion node id must be > 0'
    );

    // Create a new version & push it to versions array of the dapp
    DappVersion memory newDappVersion = DappVersion({
      nodeIds: _nodeIds,
      paddingSize: _paddingSize,
      encryptionKey: _encryptionKeyHash,
      manifestFileKey: _manifestHash,
      manifestpartKey: _partKeyHash,
      updatedAt: uint32(block.timestamp),
      verify: 0
    });

    // Makeing default settings
    if (isVerifiedDeveloper(msg.sender)) {
      newDappVersion.verify = newDappVersion.verify + VERIFY_DEVELOPER;
    }

    if (isDevTeam(msg.sender)) {
      newDappVersion.verify += VERIFY_TEAM;
    }

    if (isDAO(msg.sender)) {
      newDappVersion.verify += VERIFY_DAO;
    }

    /// -----------------------MIGRATION VERIFICATION ON NEW VERSION-----------------------
    if (dapps[_dappId].versions.length > 0) {
      uint256 lastVersionID = dapps[_dappId].versions.length;
      uint16 verifyLevel = dapps[_dappId].versions[lastVersionID - 1].verify;

      if (isVerifiedBy(verifyLevel, VERIFY_CORE)) {
        newDappVersion.verify += VERIFY_CORE;
      }

      if (isVerifiedBy(verifyLevel, VERIFY_PRE_INSTALLED)) {
        newDappVersion.verify += VERIFY_PRE_INSTALLED;
      }
    }
    // Add Version
    dapps[_dappId].versions.push(newDappVersion);

    emit NewDappVersion(
      _dappId,
      _nodeIds,
      _paddingSize,
      _encryptionKeyHash,
      _manifestHash,
      _partKeyHash
    );
  }

  /**
   * @dev Mint token for dapp & set name
   *
   * Emits {DappCreated}
   */
  function _mintDapp(string memory dappName) internal returns (uint256 dappId) {
    // Mint dapp token
    dappIds.increment();
    dappId = dappIds.current();
    _safeMint(_msgSender(), dappId);

    //solhint-disable-next-line reason-string
    require(
      bytes(dappName).length >= 2 && bytes(dappName).length <= 50,
      'Dapp name length must be between 2 and 50 char'
    );
    // Init dapp struct
    dapps[dappId].name = dappName;
    emit DappCreated(dappId, _msgSender());
  }

  /// -----------------------GETTER FUNCTIONS-----------------------

  /**
   * @dev See {IDappStore-getDapp}
   */
  function getDapp(uint256 dappId)
    external
    view
    override
    returns (Dapp memory)
  {
    return dapps[dappId];
  }

  /**
   * @dev See {IDappStore-getDappsInRange}
   */
  function getDappsInRange(uint256 beginId, uint256 endId)
    external
    view
    override
    returns (DappDto[] memory)
  {
    uint256 size = endId.sub(beginId).add(1);
    DappDto[] memory _dapps = new DappDto[](size);

    uint256 index = 0;
    for (uint256 i = beginId; i <= endId; i++) {
      if (_exists(i)) {
        _dapps[index] = dapps[i].toDto(i, ownerOf(i));
        index++;
      } else {
        //solhint-disable-next-line no-inline-assembly
        assembly {
          mstore(_dapps, sub(mload(_dapps), 1))
        }
      }
    }
    return (_dapps);
  }

  function isVerifiedBy(uint16 currentLevel, uint16 askedLevel)
    public
    pure
    override
    returns (bool)
  {
    return currentLevel & askedLevel == askedLevel;
  }
}
