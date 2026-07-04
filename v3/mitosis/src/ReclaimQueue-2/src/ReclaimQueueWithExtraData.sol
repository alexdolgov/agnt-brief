// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.28;

import { IERC4626 } from '@oz/interfaces/IERC4626.sol';

import { ReclaimQueue } from '@mito-mainnet/hub/ReclaimQueue.sol';

contract ReclaimQueueWithExtraData is ReclaimQueue {
  event RequestedWithExtraData(
    address indexed receiver,
    address indexed vault,
    uint256 reqId,
    uint256 shares,
    uint256 assets,
    bytes extraData
  );

  constructor() ReclaimQueue() { }

  function initialize(address owner_, address resolver_) public override initializer {
    super.initialize(owner_, resolver_);
  }

  function requestWithExtraData(
    uint256 shares,
    address receiver,
    address vault,
    bytes calldata extraData
  ) public returns (uint256) {
    uint256 assets = IERC4626(vault).previewRedeem(shares);
    uint256 reqId = request(shares, receiver, vault);
    emit RequestedWithExtraData(receiver, vault, reqId, shares, assets, extraData);
    return reqId;
  }
}
