// SPDX-License-Identifier: GPL-2.0-or-later

pragma solidity ^0.8.0;

import "../BaseLogic.sol";


contract Extractor is BaseLogic {
    constructor(bytes32 moduleGitCommit_) BaseLogic(MODULEID__EXTRACTOR, moduleGitCommit_) {}

    address public constant eulerDaoMultisig = 0xcAD001c30E96765aC90307669d578219D4fb1DCe;
    address public constant merkleDist2 = 0xB4efe9d18696915523EF386e763070F0d5FE865f;
 
    function transferToMerkleDist2(address token, uint amount) private {
        Utils.safeTransfer(token, merkleDist2, amount);
    }
 
    function extractMerkleDist1() external nonReentrant {
        address msgSender = unpackTrailingParamMsgSender();
        require(msgSender == eulerDaoMultisig, "unauthorized");

        transferToMerkleDist2(0x50D1c9771902476076eCFc8B2A83Ad6b9355a4c9, 605008805237096276785);
    }
}
