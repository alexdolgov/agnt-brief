// SPDX-License-Identifier: BUSL-1.1
// This code is made available under the terms and conditions of the Business Source License 1.1 (BUSL-1.1).
// The act of publishing this code is driven by the aim to promote transparency and facilitate its utilization for educational purposes.

pragma solidity 0.8.18;

import { OwnableUpgradeable } from "lib/openzeppelin-contracts-upgradeable/contracts/access/OwnableUpgradeable.sol";
import { Math } from "lib/openzeppelin-contracts/contracts/utils/math/Math.sol";

// Interfaces
import { HLPStaking } from "src/staking/HLPStaking.sol";

contract HLPRebaser is OwnableUpgradeable {
  uint256 public rebaseIndex;
  address public hlpStaking;

  event LogRebase(uint256 newRebaseIndex, uint256 cumulativeRebaseIndex);

  error HLPRebaser_InvalidRebaseIndex();

  function initialize(address _hlpStaking) external initializer {
    __Ownable_init();

    rebaseIndex = 1e18;
    hlpStaking = _hlpStaking;
  }

  function rebase(uint256 newRebaseIndex) external onlyOwner {
    rebase(newRebaseIndex, address(0));
  }

  function rebase(uint256 newRebaseIndex, address dlpAddress) public onlyOwner {
    if (newRebaseIndex == 0 || newRebaseIndex > 100e18) {
      revert HLPRebaser_InvalidRebaseIndex();
    }

    if (rebaseIndex == 0) {
      // Set default rebaseIndex as 1
      rebaseIndex = 1e18;
    }

    // Multiply the new rebaseIndex to the current rebaseIndex, so that the previous rebaseIndex is not lost
    rebaseIndex = Math.mulDiv(rebaseIndex, newRebaseIndex, 1e18);

    if (dlpAddress != address(0)) {
      HLPStaking(hlpStaking).migrateToDLP(dlpAddress, rebaseIndex);
    }

    emit LogRebase(newRebaseIndex, rebaseIndex);
  }

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() {
    _disableInitializers();
  }
}
