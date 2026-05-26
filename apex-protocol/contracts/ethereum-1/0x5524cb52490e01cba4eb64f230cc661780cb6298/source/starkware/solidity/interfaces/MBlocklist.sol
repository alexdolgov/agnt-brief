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

abstract contract MBlocklist {
    event BlockPlaced(uint256 indexed ownerKey);

    event BlockReleased(uint256 indexed ownerKey);

    event AdminForcedWithdrawal(uint256 indexed ownerKey, address indexed destination);

    address internal constant BLOCK_ADMIN = 0x520Cf70a2D0B3dfB7386A2Bc9F800321F62a5c3a;

    // NOLINTNEXTLINE: external-function.
    function isBlockListed(uint256 ownerKey) public view virtual returns (bool);

    // NOLINTNEXTLINE: external-function.
    function readyForClearance(uint256 ownerKey) public view virtual returns (bool);

    function addToBlockedList(uint256 ownerKey) external virtual;

    function removeFromBlockedList(uint256 ownerKey) external virtual;

    /**
      Reverts if called by a blocked account.
    */
    modifier onlyNotBlocked(uint256 ownerKey) {
        require(!isBlockListed(ownerKey), "USER_BLOCK_LISTED");
        _;
    }

    modifier onlyBlockAdmin() {
        require(msg.sender == BLOCK_ADMIN, "ONLY_BLOCK_ADMIN");
        _;
    }
}
