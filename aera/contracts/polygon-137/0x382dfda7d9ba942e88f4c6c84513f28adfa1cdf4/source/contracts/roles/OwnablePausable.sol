/**
 * Copyright 2024 Circle Internet Financial, LTD. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

pragma solidity ^0.8.16;

import {Pausable} from "@openzeppelin/contracts/security/Pausable.sol";
import {Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";

/**
 * @title OwnablePausable
 * @notice Combines the Ownable2Step and Pausable types.
 * @dev Owner can rotate the Pauser role.
 */
contract OwnablePausable is Ownable2Step, Pausable {
    /**
     * @notice Emitted when the pauser address changes
     * @param oldPauser Prior pauser address
     * @param newPauser Updated pauser address
     */
    event PauserUpdated(address indexed oldPauser, address indexed newPauser);

    /**
     * @notice Address currently set as pauser
     */
    address public pauser;

    /**
     * @notice Checks that the sender is the pauser
     */
    modifier onlyPauser() {
        require(msg.sender == pauser, "Caller not pauser");
        _;
    }

    /**
     * @dev Owner and pauser addresses are explicitly passed.
     */
    constructor(address _owner, address _pauser) {
        _transferOwnership(_owner);
        pauser = _pauser;
    }

    /**
     * @notice Sets a new Pauser.
     * @dev Only callable by the Owner.
     */
    function updatePauser(address newPauser) external onlyOwner {
        require(
            newPauser != address(0),
            "Pausable: new pauser is the zero address"
        );
        emit PauserUpdated(pauser, newPauser);
        pauser = newPauser;
    }

    /**
     * @dev Only callable by the Pauser.
     */
    function pause() external onlyPauser {
        _pause();
    }

    /**
     * @dev Only callable by the Pauser.
     */
    function unpause() external onlyPauser {
        _unpause();
    }
}
