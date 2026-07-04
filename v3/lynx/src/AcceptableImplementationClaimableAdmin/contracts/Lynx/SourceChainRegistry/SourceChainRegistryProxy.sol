// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.24;

import "../../AdministrationContracts/AcceptableImplementationClaimableAdmin.sol";

/**
 * @title SourceChainRegistryProxy
 * @dev Used as the contracts registry brain of the Lynx platform
 */
contract SourceChainRegistryProxy is AcceptableImplementationClaimableAdmin {
  constructor() AcceptableImplementationClaimableAdmin(msg.sender) {}
}
