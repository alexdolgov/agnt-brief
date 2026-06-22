// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.0;

import {Address} from "@openzeppelin/contracts/utils/Address.sol";

/**
 * @title Relay contract that forwards calls to other contracts, allowing to call in batch
 * @dev WARNING: this contract doesn't have any access control, so it's meant to be used only for anonymous calls
 *
 * @custom:security-contact security@ensuro.co
 * @author Ensuro
 */
contract BatchRelay {
  using Address for address;

  function callBatch(address[] calldata targets, bytes[] calldata payloads) external {
    for (uint256 i = 0; i < targets.length; ++i) {
      targets[i].functionCall(payloads[i]);
    }
  }
}
