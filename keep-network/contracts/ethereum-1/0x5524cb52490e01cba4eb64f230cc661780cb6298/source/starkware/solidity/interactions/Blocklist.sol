/*
  Copyright 2019-2024 StarkWare Industries Ltd.

  Licensed under the Apache License, Version 2.0 (the "License").
  You may not use this file except in compliance with the License.
  You may obtain a copy of the License at

  https://www.starkware.co/open-source-license/

  Unless required by applicable law or agreed to in writing,
  software distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions
  and limitations under the License.
*/
// SPDX-License-Identifier: Apache-2.0.
pragma solidity ^0.6.12;
import "../components/MainStorage.sol";
import "../interfaces/MBlocklist.sol";

abstract contract Blocklist is MainStorage, MBlocklist {
    uint256 constant CLEARANCE_DELAY = 2 weeks;

    // NOLINTNEXTLINE: external-function.
    function isBlockListed(uint256 ownerKey) public view override returns (bool) {
        return blockListed[ownerKey] > 0;
    }

    function readyForClearance(uint256 ownerKey) public view override returns (bool) {
        return isBlockListed(ownerKey) && blockListed[ownerKey] <= block.timestamp;
    }

    function addToBlockedList(uint256 ownerKey) public override onlyBlockAdmin {
        if (!isBlockListed(ownerKey)) {
            emit BlockPlaced(ownerKey);
        }
        blockListed[ownerKey] = block.timestamp + CLEARANCE_DELAY;
    }

    function removeFromBlockedList(uint256 ownerKey) public override onlyBlockAdmin {
        if (isBlockListed(ownerKey)) {
            emit BlockReleased(ownerKey);
        }
        blockListed[ownerKey] = 0;
    }
}
