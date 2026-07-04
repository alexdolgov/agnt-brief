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
pragma solidity ^0.8.0;

import "starkware/solidity/interfaces/MGovernance.sol";

/*
  Implements Governance stub to inherit correctly from MGovernance for contracts that
  do not implement Governance. (e.g. CallProxy).
*/
abstract contract GovernanceStub is MGovernance {
    function initGovernance() internal override {}

    function _isGovernor(
        address /*user*/
    ) internal pure override returns (bool) {
        return false;
    }
}
