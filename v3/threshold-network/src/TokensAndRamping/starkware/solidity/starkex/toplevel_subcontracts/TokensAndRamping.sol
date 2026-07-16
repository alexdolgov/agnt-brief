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

import "../interactions/StarkExForcedActionState.sol";
import "../../components/ERC721Receiver.sol";
import "../../components/ERC1155Receiver.sol";
import "../../components/Freezable.sol";
import "../../components/KeyGetters.sol";
import "../../components/TokenRegister.sol";
import "../../components/TokenTransfers.sol";
import "../../components/MainGovernance.sol";
import "../../interactions/AcceptModifications.sol";
import "../../interactions/Blocklist.sol";
import "../../interactions/Deposits.sol";
import "../../interactions/TokenAssetData.sol";
import "../../interactions/TokenQuantization.sol";
import "../../interactions/Withdrawals.sol";
import "../../interfaces/SubContractor.sol";

contract TokensAndRamping is
    ERC1155Receiver,
    ERC721Receiver,
    SubContractor,
    Freezable,
    MainGovernance,
    AcceptModifications,
    StarkExForcedActionState,
    TokenAssetData,
    TokenQuantization,
    TokenRegister,
    TokenTransfers,
    KeyGetters,
    Deposits,
    Withdrawals,
    Blocklist
{
    function initialize(
        bytes calldata /* data */
    ) external override {
        revert("NOT_IMPLEMENTED");
    }

    function initializerSize() external view override returns (uint256) {
        return 0;
    }

    function validatedSelectors() external pure override returns (bytes4[] memory selectors) {
        uint256 len_ = 8;
        uint256 index_ = 0;

        selectors = new bytes4[](len_);
        selectors[index_++] = Deposits.depositCancel.selector;
        selectors[index_++] = Deposits.depositWithTokenIdReclaim.selector;
        selectors[index_++] = Deposits.depositReclaim.selector;
        selectors[index_++] = Withdrawals.withdraw.selector;
        selectors[index_++] = Withdrawals.withdrawAndMint.selector;
        selectors[index_++] = Withdrawals.withdrawWithTokenId.selector;
        selectors[index_++] = Withdrawals.adminForcedWithdraw.selector;
        selectors[index_++] = Blocklist.addToBlockedList.selector;
        require(index_ == len_, "INCORRECT_SELECTORS_ARRAY_LENGTH");
    }

    function identify() external pure override returns (string memory) {
        return "StarkWare_TokensAndRamping_2024_4";
    }
}
