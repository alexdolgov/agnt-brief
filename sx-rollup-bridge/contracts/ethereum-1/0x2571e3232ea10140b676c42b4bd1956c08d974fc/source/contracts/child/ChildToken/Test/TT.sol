// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {ERC20PresetMinterPauser} from "@openzeppelin/contracts/token/ERC20/presets/ERC20PresetMinterPauser.sol";
import {NativeMetaTransaction} from "../../../common/NativeMetaTransaction.sol";
import {ContextMixin} from "../../../common/ContextMixin.sol";

contract TT is ERC20PresetMinterPauser, NativeMetaTransaction, ContextMixin {
    constructor() ERC20PresetMinterPauser("TestToken", "TT") {
        _initializeEIP712("TestToken");
    }

    // This is to support Native meta transactions
    // never use msg.sender directly, use _msgSender() instead
    function _msgSender() internal view override returns (address) {
        return ContextMixin.msgSender();
    }

    function decimals() public view virtual override returns (uint8) {
        return 18;
    }
}