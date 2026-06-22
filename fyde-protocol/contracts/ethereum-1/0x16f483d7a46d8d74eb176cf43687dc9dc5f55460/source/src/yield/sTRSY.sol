// SPDX-License-Identifier: BUSL-1.1
pragma solidity >=0.8.7 <0.9.0;

/// Utils /////
import {RevenueDistributionToken} from "./revenueDistributionToken/RevenueDistributionToken.sol";
import {IRewardsDistributor} from "./IRewardsDistributor.sol";

contract sTRSY is RevenueDistributionToken {
  IRewardsDistributor public distributor;

  constructor(address _asset)
    RevenueDistributionToken("staked TRSY", "sTRSY", msg.sender, _asset, 1e27)
  {}

  function setRewardsDistributor(address _distributor) external {
    require(msg.sender == owner, "RDT:SPO:NOT_OWNER");
    distributor = IRewardsDistributor(_distributor);
  }

  function _afterTokenTransfer(address from, address to, uint256) internal override {
    distributor.updateAccounting(from, to);
  }

  function _getRewardsDistributor() internal view override returns (IRewardsDistributor) {
    return distributor;
  }
}
