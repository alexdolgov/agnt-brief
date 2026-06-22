// SPDX-License-Identifier: MIT

/*
    Created by DeNet
*/

pragma solidity ^0.8.15;

interface IDAppVerifier {
  function disableAccess(address developer) external;

  function verifyDeveloper(address developer) external;

  function verifyDeveloperByTeam(address developer) external;

  function setDAO(address developer) external;

  function verifyTeam(address developer, uint8 level) external;

  function isVerifiedDeveloper(address developer) external view returns (bool);

  function isDevTeam(address developer) external view returns (bool);

  function isDAO(address developer) external view returns (bool);

  function getRole(address developer) external view returns (uint8);
}
