// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IDDSCA {
  enum EmissionRate {SLOW, MEDIUM, FAST, FASTEST}
  function ActiveEmissionIndex (  ) external view returns ( uint8 );
  function bottomPriceInCents (  ) external view returns ( uint256 );
  function checkIfUpdateIsNeeded ( uint256 priceInCents ) external view returns ( bool, EmissionRate );
  function emissionEndBlock (  ) external view returns ( uint256 );
  function emissionStartBlock (  ) external view returns ( uint256 );
  function getEmissionStage ( uint256 currentPriceCents ) external view returns ( uint8 );
  function isInitialized (  ) external view returns ( bool );
  function masterchef (  ) external view returns ( address );
  function maxEmissionRate (  ) external view returns ( uint256 );
  function owner (  ) external view returns ( address );
  function renounceOwnership (  ) external;
  function setFarmEndBlock ( uint256 _newEndBlock ) external;
  function _setFarmStartBlock(uint256 _newStartBlock) external;
  function token (  ) external view returns ( address );
  function tokenPerBlock (  ) external view returns ( uint256 );
  function topPriceInCents (  ) external view returns ( uint256 );
  function transferOwnership ( address newOwner ) external;
  function updateDDSCAMaxEmissionRate ( uint256 _maxEmissionRate ) external;
  function updateDDSCAPriceRange ( uint256 _topPrice, uint256 _bottomPrice ) external;
  function updateEmissions ( EmissionRate _newEmission ) external;
  function updateMcAddress ( address _mcAddress ) external;
}
