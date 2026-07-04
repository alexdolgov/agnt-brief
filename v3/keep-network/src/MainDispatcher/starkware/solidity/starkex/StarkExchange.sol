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

import "../interfaces/MainDispatcher.sol";

contract StarkExchange is MainDispatcher {
    string public constant VERSION = "4.5.3-blc";

    // Salt for a 8 bit unique spread of all relevant selectors. Pre-caclulated.
    // ---------- The following code was auto-generated. PLEASE DO NOT EDIT. ----------
    uint256 constant MAGIC_SALT = 4259003;
    uint256 constant IDX_MAP_0 = 0x1030220010120000001021030000002223022000021220125001010000021300;
    uint256 constant IDX_MAP_1 = 0x2023105020000205000002451020200305120020000000000002230015000201;
    uint256 constant IDX_MAP_2 = 0x1000000030000003000002000000020000500100500230025010222000010;
    uint256 constant IDX_MAP_3 = 0x420002010300345030000000005010021020004000000050002052300060001;

    // ---------- End of auto-generated code. ----------

    function getNumSubcontracts() internal pure override returns (uint256) {
        return 6;
    }

    function magicSalt() internal pure override returns (uint256) {
        return MAGIC_SALT;
    }

    function handlerMapSection(uint256 section) internal pure override returns (uint256) {
        if (section == 0) {
            return IDX_MAP_0;
        } else if (section == 1) {
            return IDX_MAP_1;
        } else if (section == 2) {
            return IDX_MAP_2;
        } else if (section == 3) {
            return IDX_MAP_3;
        }
        revert("BAD_IDX_MAP_SECTION");
    }

    function expectedIdByIndex(uint256 index) internal pure override returns (string memory id) {
        if (index == 1) {
            id = "StarkWare_AllVerifiers_2022_2";
        } else if (index == 2) {
            id = "StarkWare_TokensAndRamping_2024_4";
        } else if (index == 3) {
            id = "StarkWare_StarkExState_2022_5";
        } else if (index == 4) {
            id = "StarkWare_ForcedActions_2022_3";
        } else if (index == 5) {
            id = "StarkWare_OnchainVaults_2022_2";
        } else if (index == 6) {
            id = "StarkWare_ProxyUtils_2022_2";
        } else {
            revert("UNEXPECTED_INDEX");
        }
    }

    function initializationSentinel() internal view override {
        string memory REVERT_MSG = "INITIALIZATION_BLOCKED";
        // This initializer sets roots etc. It must not be applied twice.
        // I.e. it can run only when the state is still empty.
        require(validiumVaultRoot == 0, REVERT_MSG);
        require(validiumTreeHeight == 0, REVERT_MSG);
        require(rollupVaultRoot == 0, REVERT_MSG);
        require(rollupTreeHeight == 0, REVERT_MSG);
        require(orderRoot == 0, REVERT_MSG);
        require(orderTreeHeight == 0, REVERT_MSG);
    }
}
