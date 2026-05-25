/*
  Copyright 2019-2025 StarkWare Industries Ltd.

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
pragma solidity ^0.8.0;

/**
  Simple Ownership implementation.
  Applicable for non-upgradable contracts.
*/
abstract contract Owned {
    address public owner;
    address private pendingOwner;

    event OwnershipAccepted(address indexed newOwner);
    event OwnershipNominated(address indexed currentOwner, address indexed newOwner);
    event OwnershipNominationCleared();

    modifier onlyOwner() {
        require(msg.sender == owner, "ONLY_OWNER");
        _;
    }

    function transferOwnership(address newOwner) external onlyOwner {
        require(owner != newOwner, "ALREADY_OWNER");
        pendingOwner = newOwner;
        if (newOwner == address(0x0)) {
            emit OwnershipNominationCleared();
        } else {
            emit OwnershipNominated(owner, newOwner);
        }
    }

    function acceptOwnership() external {
        require(msg.sender == pendingOwner, "NOT_DESIGNATED_OWNER");
        _acceptOwnership(pendingOwner);
    }

    constructor(address _owner) {
        _acceptOwnership(_owner);
    }

    function _acceptOwnership(address newOwner) private {
        require(newOwner != address(0x0), "ZERO_OWNER_ADDRESS");
        delete pendingOwner;
        emit OwnershipAccepted(newOwner);
        owner = newOwner;
    }
}
