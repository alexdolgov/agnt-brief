// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.22;

import {IBlacklist} from "../interfaces/IBlacklist.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {OFT} from "@layerzerolabs/oft-evm/contracts/OFT.sol";

contract BBOFT is OFT {
    IBlacklist public blackList;

    error BlackList();
    error ZeroAddress();

    constructor(
        address _lzEndpoint,
        address _delegate,
        address _initialOwner,
        address _blackList
    ) OFT("BounceBit Token", "BB", _lzEndpoint, _delegate) Ownable(_initialOwner) {
        if (_blackList == address(0)) revert ZeroAddress();
        blackList = IBlacklist(_blackList);
    }

    function _debit(
        address _from,
        uint256 _amountLD,
        uint256 _minAmountLD,
        uint32 _dstEid
    ) internal virtual override returns (uint256 amountSentLD, uint256 amountReceivedLD) {
        if (blackList.isBlacklisted(_from) || blackList.isBlacklisted(msg.sender)) revert BlackList();

        return super._debit(_from, _amountLD, _minAmountLD, _dstEid);
    }
}
