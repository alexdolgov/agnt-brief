// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import {OFT} from "@layerzerolabs/lz-evm-oapp-v2/contracts/oft/OFT.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract BooOFT is Ownable, ERC20Permit, OFT {

    constructor(string memory _name, string memory _symbol, address _lzEndpoint, address _owner)
        OFT(_name, _symbol, _lzEndpoint, _owner)
        Ownable(_owner)
        ERC20Permit(_name)
    {}

    function _debit(
        address _from,
        uint256 _amountLD,
        uint256 _minAmountLD,
        uint32 _dstEid
    ) internal virtual override returns (uint256 amountSentLD, uint256 amountReceivedLD) {
        if(_dstEid == 30112)
            revert("No bridging back to fantom");
            
        return super._debit(_from, _amountLD, _minAmountLD, _dstEid);
    }
}
