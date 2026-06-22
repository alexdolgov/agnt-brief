// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import { OFTAdapterUpgradeable } from "@layerzerolabs/oft-evm-upgradeable/contracts/oft/OFTAdapterUpgradeable.sol";
import { wstETHOFTBase } from "./wstETHOFTBase.sol";

contract wstETHOFTAdapterUpgradeable is OFTAdapterUpgradeable, wstETHOFTBase {
    constructor(address _token, address _lzEndpoint) OFTAdapterUpgradeable(_token, _lzEndpoint) { _disableInitializers(); }

    function initialize(address delegate, address[] calldata pausers, address resumer) public initializer {
        __OFTAdapter_init(delegate);
        __Ownable_init(delegate);
        _initializeBase(delegate, pausers, resumer);

        emit InitializationComplete(delegate, pausers, resumer);
    }

    function _debit(
        address _from,
        uint256 _amountLD,
        uint256 _minAmountLD,
        uint32 _dstEid
    ) internal virtual override whenResumed returns (uint256 amountSentLD, uint256 amountReceivedLD) {
        return super._debit(_from, _amountLD, _minAmountLD, _dstEid);
    }

    function _credit(
        address _to,
        uint256 _amountLD,
        uint32 _srcEid
    ) internal virtual override whenResumed returns (uint256 amountReceivedLD) {
        return super._credit(_to, _amountLD, _srcEid);
    }
}
