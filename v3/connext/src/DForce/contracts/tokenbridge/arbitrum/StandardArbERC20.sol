// SPDX-License-Identifier: Apache-2.0

/*
 * Copyright 2020, Offchain Labs, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

pragma solidity ^0.6.11;

import "arb-bridge-eth/contracts/libraries/Cloneable.sol";
import "../libraries/L2GatewayToken.sol";
import "../libraries/BytesParser.sol";
import "./IArbToken.sol";

/**
 * @title Standard (i.e., non-custom) contract deployed by L2Gateway.sol as L2 ERC20. Includes standard ERC20 interface plus additional methods for deposits/withdraws
 */
contract StandardArbERC20 is IArbToken, L2GatewayToken, Cloneable {
    /**
     * @notice initialize the token
     * @dev the L2 bridge assumes this does not fail or revert
     * @param _l1Address L1 address of ERC20
     * @param _data encoded symbol/name/decimal data for initial deploy
     */
    function bridgeInit(address _l1Address, bytes memory _data) public virtual {
        (bytes memory name_, bytes memory symbol_, bytes memory decimals_) = abi.decode(
            _data,
            (bytes, bytes, bytes)
        );
        // what if decode reverts? shouldn't as this is encoded by L1 contract

        L2GatewayToken._initialize(
            BytesParserWithDefault.toString(name_, ""),
            BytesParserWithDefault.toString(symbol_, ""),
            BytesParserWithDefault.toUint8(decimals_, 18),
            msg.sender, // _l2Gateway,
            _l1Address // _l1Counterpart
        );
    }
}

contract DForce is IArbToken, L2GatewayToken, Cloneable {
    function initialize(
        address _beacon,
        address _l2Gateway,
        address _l1Address,
        string calldata name_,
        string calldata symbol_,
        uint8 decimals_
    ) public virtual {
        L2GatewayToken._initialize(
            name_,
            symbol_,
            decimals_,
            _l2Gateway, // _l2Gateway,
            _l1Address // _l1Counterpart
        );
        setBeacon(_beacon);
    }

    // https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.4.0/contracts/proxy/BeaconProxy.sol#L22
    bytes32 private constant _BEACON_SLOT =
        0xa3f0ad74e5423aebfd80d3ef4346578335a9a72aeaee59ff6cb3582b35133d50;

    function setBeacon(address _beacon) private {
        // this logic updates the beacon storage slot
        bytes32 slot = _BEACON_SLOT;
        assembly {
            sstore(slot, _beacon)
        }
    }
}
