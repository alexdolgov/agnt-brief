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
pragma solidity 0.8.24;

import "starkware/starknet/solidity/IStarknetMessaging.sol";

interface ITokenWithdraw {
    function withdraw(
        address token,
        uint256 amount,
        address recipient
    ) external;
}

contract BatchWithdraw {
    IStarknetMessaging public immutable sn_core;
    address public immutable l1_bridge;
    uint256 public immutable l2_bridge;
    address public immutable l1_token;
    address public immutable l1_recipient;
    uint256[] public batch_sizes;

    constructor(
        address _sn_core,
        address _l1_bridge,
        uint256 _l2_bridge,
        address token,
        address recipient,
        uint256[] memory sizes
    ) {
        sn_core = IStarknetMessaging(_sn_core);
        l1_bridge = _l1_bridge;
        l2_bridge = _l2_bridge;
        l1_token = token;
        l1_recipient = recipient;
        for (uint256 i = 0; i < sizes.length; i++) {
            require(sizes[i] < 2**128, "AMOUNT_TOO_BIG");
            batch_sizes.push(sizes[i]);
        }
    }

    function withdrawMsgHash(uint256 amount) internal view returns (bytes32) {
        uint256[] memory payload = new uint256[](5);
        payload[0] = 0; //TRANSFER_FROM_STARKNET
        payload[1] = uint256(uint160(l1_recipient));
        payload[2] = uint256(uint160(l1_token));
        payload[3] = amount;
        payload[4] = 0;
        return sn_core.l2ToL1MsgHash(l2_bridge, l1_bridge, payload);
    }

    function pendingWithdrawals(uint256 amount) public view returns (uint256) {
        bytes32 msgHash = withdrawMsgHash(amount);
        return sn_core.l2ToL1Messages(msgHash);
    }

    function tick() external returns (uint256) {
        uint256 totalPending = 0;
        for (uint256 i = 0; i < batch_sizes.length; i++) {
            uint256 _amount = batch_sizes[i];
            uint256 _count = pendingWithdrawals(_amount);
            totalPending += _count;
            for (uint256 j = 0; j < _count; j++) {
                bytes memory _calldata = abi.encodeWithSelector(
                    ITokenWithdraw(l1_bridge).withdraw.selector,
                    l1_token,
                    _amount,
                    l1_recipient
                );

                (bool success, ) = l1_bridge.call(_calldata);
                if (!success) {
                    break;
                }
            }
        }
        return totalPending;
    }
}
