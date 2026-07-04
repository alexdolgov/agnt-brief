// SPDX-License-Identifier: MIT

/*
    Created by DeNet
*/

pragma solidity ^0.8.15;

import './ITypes.sol';

interface IDappStore is ITypes {
  /// -----------------------EVENTS-----------------------

  /**
   * @notice Emits when a new a token (dapp) is created (minted)
   */
  event DappCreated(uint256 indexed dappId, address indexed owner);

  /**
   * @notice Emits when a new version is released for a specific dapp
   */
  event NewDappVersion(
    uint256 dappId,
    uint256[] nodeIds,
    uint32 menifestPaddingSize,
    bytes32 encryptionKeyHash,
    bytes32 manifestHash,
    bytes32 partKeyHash
  );

  /// -----------------------DAPP's MINTING FUNCTIONS-----------------------

  /**
   * @notice Create a new dapp (NFT token)
   *
   * @param dappName Name of the dapp that will be created (minted)
   *
   * @return dappId Id of minted dapp
   */
  function mintDapp(string memory dappName) external returns (uint256 dappId);

  /**
   * @notice Create a new dapp (NFT token) with initial version
   *
   * @param dappName Name of the dapp that will be created (minted)
   * @param nodeIds node NFT id (Id for NodeNFT contract)
   * @param paddingSize Amount of padding added to file to reach 1MB
   * @param encryptionKey Key to decrypt file after download
   * @param manifestFileKey File containing heracchry structure of folder & files of the application
   * @param manifestpartKey Part (Of size 1MB) containing encrypted data of menifest
   *
   * @return dappId Id of minted dapp
   */
  function mintDappWithVersion(
    string memory dappName,
    uint256[] memory nodeIds,
    uint32 paddingSize,
    bytes32 encryptionKey,
    bytes32 manifestFileKey,
    bytes32 manifestpartKey
  ) external returns (uint256 dappId);

  /// -----------------------VERSIONS MODIFICATION FUNCTIONS-----------------------

  /**
   * @notice Pushes a new version of the dapp to the versions array
   *
   * @param _dappId Dapp to whom the new version is added
   * @param _nodeIds node NFT id (Id for NodeNFT contract)
   * @param _paddingSize Amount of padding added to file to reach 1MB
   * @param _encryptionKey Key to decrypt file after download
   * @param _manifestFileKey File containing heracchry structure of folder & files of the application
   * @param _manifestpartKey Part (Of size 1MB) containing encrypted data of menifest
   */
  function pushNewVersion(
    uint256 _dappId,
    uint256[] memory _nodeIds,
    uint32 _paddingSize,
    bytes32 _encryptionKey,
    bytes32 _manifestFileKey,
    bytes32 _manifestpartKey
  ) external;

  /**
   * @notice Set this dapp as pre-installed dapp in DeNet Desk
   *
   * @param _dappId - Dapp to whom need set pre-installed
   */
  function setPreInstalled(uint256 _dappId) external;

  /**
   * @notice Set this dapp as Core DeNet Desk
   *
   * @param _dappId - Dapp to whom need set Core
   */
  function setCoreDapp(uint256 _dappId) external;

  /**
   * @notice Set this dapp verified by team
   *
   * @param _dappId - Dapp to whom need set Core
   */
  function setVerifyByTeam(uint256 _dappId) external;

  /**
   * @notice Disable Verification from dapp
   *
   * @param _dappId - Dapp to whom need set Core
   */
  function disableVerification(uint256 _dappId) external;

  /// -----------------------GETTER FUNCTIONS-----------------------

  /**
   * @notice Get dapp data by tokenId
   *
   * @param dappId Id of minted dapp(tokenId)
   *
   * @return dapp dapp structure data (name, versions)
   */
  function getDapp(uint256 dappId) external view returns (Dapp memory dapp);

  /**
   * @notice Get dapp data by tokenId
   * @dev the range is inclusive
   *
   * @param beginId fetch starting range
   * @param endId  fecch ending range
   *
   * @return dappDtos array of dapps data (id , owner, name, versions)
   */
  function getDappsInRange(uint256 beginId, uint256 endId)
    external
    view
    returns (DappDto[] memory dappDtos);

  /**
   * @notice Is this level included asked level
   * @param currentLevel - verify level of dapp
   * @param askedLevel - asked verify point (256, 128, ... 2)
   */
  function isVerifiedBy(uint16 currentLevel, uint16 askedLevel)
    external
    pure
    returns (bool);
}
