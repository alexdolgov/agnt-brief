// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.19;

interface IUSDCDestinationBridge {
  event USDCRolesTransferred(address indexed owner);

  /**
* @dev this transfers FiatToken roles to the
designated owner.
*/
  function transferUSDCRoles(address owner) external;
}
