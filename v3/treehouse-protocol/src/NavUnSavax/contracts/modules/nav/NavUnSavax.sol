// SPDX-License-Identifier: MIT
pragma solidity =0.8.24;

import { ISAVAX } from '../../interfaces/savax/ISAVAX.sol';

/**
 * @notice Module to get savax redemption NAV
 */
contract NavUnSavax {
  ISAVAX public immutable sAVAX;

  constructor(ISAVAX _savax) {
    sAVAX = _savax;
  }

  /**
   * @notice Calculate total NAV of all pending unlock requests for a user
   * @param _target Address to check unlock requests for
   * @return _nav Total share amount of all pending unlock requests
   * @dev Returns the sum of shareAmount from all unlock requests
   */
  function nav(address _target) external view returns (uint _nav) {
    uint requestCount = sAVAX.getUnlockRequestCount(_target);

    for (uint i = 0; i < requestCount; i++) {
      ISAVAX.UnlockRequest memory request = sAVAX.userUnlockRequests(_target, i);
      _nav += request.shareAmount;
    }

    return _nav;
  }
}
