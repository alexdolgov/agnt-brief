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
pragma solidity ^0.8.20;

interface ILegacyWithdraw {
    function withdraw(uint256 amount, address recipient) external;
}

struct LegacyWithdrawData {
    address bridge;
    uint256 amount;
    address recipient;
}

uint8 constant MAX_WITHRAWALS = 128;

contract WithBatcher {

    event FailedWithdrawals(LegacyWithdrawData withdrawData);

    function withdrawBatch(LegacyWithdrawData[] calldata pendingWithdrawals) external {
        require(pendingWithdrawals.length <= MAX_WITHRAWALS);

        for (uint256 i = 0; i < pendingWithdrawals.length; i++) {
            LegacyWithdrawData memory withData = pendingWithdrawals[i];
            address bridge = withData.bridge;

            bytes memory _calldata = abi.encodeWithSelector(
                ILegacyWithdraw(bridge).withdraw.selector,
                withData.amount,
                withData.recipient
            );

            (bool success,) = bridge.call(_calldata);
            if (!success) {
                emit FailedWithdrawals(withData);
            }
        }
    }

}
