// SPDX-License-Identifier: MIT

/*
  Created by DeNet
*/

pragma solidity ^0.8.15;

import '@openzeppelin/contracts/access/Ownable.sol';
import './interfaces/IDAppVerifier.sol';

/**
 * @dev DappVerifier - made for dapp Verification Model
 */
contract DAppVerifier is IDAppVerifier, Ownable {
  mapping(address => uint8) public moderatorType;

  uint8 private constant ROLE_NONE = 0;
  uint8 private constant ROLE_VERIFIED = 32;
  uint8 private constant ROLE_DEVTEAM_LEVEL_1 = 128;
  uint8 private constant ROLE_DEVTEAM_LEVEL_2 = 129;
  uint8 private constant ROLE_DEVTEAM_LEVEL_3 = 130;
  uint8 private constant ROLE_DEVTEAM_LEVEL_4 = 131;
  uint8 private constant ROLE_DAO = 255;

  uint256 public verifiedDevelopers = 0;

  modifier onlyVerifiedDeveloper() {
    require(
      moderatorType[msg.sender] >= ROLE_VERIFIED,
      'DAppVerifier: caller != VerifiedDev'
    );
    _;
  }

  modifier onlyDeNetTeam() {
    require(
      moderatorType[msg.sender] >= ROLE_DEVTEAM_LEVEL_1,
      'DAppVerifier: caller != DevTeam'
    );
    _;
  }

  modifier onlyDeNetTeamLevel2() {
    require(
      moderatorType[msg.sender] >= ROLE_DEVTEAM_LEVEL_2,
      'DAppVerifier: caller != DevTeam 2'
    );
    _;
  }

  modifier onlyDeNetTeamLevel3() {
    require(
      moderatorType[msg.sender] >= ROLE_DEVTEAM_LEVEL_3,
      'DAppVerifier: caller != DevTeam 3'
    );
    _;
  }

  modifier onlyDeNetTeamLevel4() {
    require(
      moderatorType[msg.sender] >= ROLE_DEVTEAM_LEVEL_4,
      'DAppVerifier: caller != DevTeam 4'
    );
    _;
  }

  modifier onlyDAO() {
    require(
      moderatorType[msg.sender] >= ROLE_DAO,
      'DAppVerifier: caller != DAO'
    );
    _;
  }

  function setDAO(address developer) external override onlyOwner {
    moderatorType[developer] = ROLE_DAO;
  }

  function disableAccess(address developer) external override onlyDAO {
    if (moderatorType[developer] >= ROLE_VERIFIED) {
      if (verifiedDevelopers > 0) {
        verifiedDevelopers--;
      }
    }
    moderatorType[developer] = ROLE_NONE;
  }

  /**
   * @param level - 0-3, set Team Level
   */
  function verifyTeam(address developer, uint8 level)
    external
    override
    onlyDAO
  {
    require(level >= 0 && level < 4, 'DAppVerifier:');

    if (moderatorType[developer] < ROLE_VERIFIED) {
      verifiedDevelopers++;
    }

    moderatorType[developer] = ROLE_DEVTEAM_LEVEL_1 + level;
  }

  function verifyDeveloper(address developer) external override onlyDAO {
    require(
      moderatorType[developer] < ROLE_VERIFIED,
      'DAppVerifier: Downgrade Access Error'
    );

    if (moderatorType[developer] < ROLE_VERIFIED) {
      verifiedDevelopers++;
    }
    moderatorType[developer] = ROLE_VERIFIED;
  }

  function verifyDeveloperByTeam(address developer)
    external
    override
    onlyDeNetTeam
  {
    require(
      moderatorType[developer] < ROLE_VERIFIED,
      'DAppVerifier: Downgrade Access Error'
    );
    require(
      moderatorType[msg.sender] >= ROLE_DEVTEAM_LEVEL_3,
      'DAppVerifier: Team Low Rank'
    );

    if (moderatorType[developer] < ROLE_VERIFIED) {
      verifiedDevelopers++;
    }

    moderatorType[developer] = ROLE_VERIFIED;
  }

  function isVerifiedDeveloper(address developer)
    public
    view
    override
    returns (bool)
  {
    return moderatorType[developer] >= ROLE_VERIFIED;
  }

  function isDevTeam(address developer) public view override returns (bool) {
    return moderatorType[developer] >= ROLE_DEVTEAM_LEVEL_1;
  }

  function isDAO(address developer) public view override returns (bool) {
    return moderatorType[developer] >= ROLE_DAO;
  }

  function getRole(address develoepr) public view override returns (uint8) {
    return moderatorType[develoepr];
  }
}
