// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.22;

import {L1Oft4626Router} from "./L1Oft4626Router.sol";
import {IStETHVault} from "./interfaces/IwstETH.sol";

contract L1ApeETHRouter is L1Oft4626Router {
    constructor(address _vault, address _oft4626, address _endpoint) L1Oft4626Router(_vault, _oft4626, _endpoint) {}

    function getExchangeRate() public view override returns (uint256 exchangeRate) {
        exchangeRate = IStETHVault(address(vault)).wstEth().stEthPerToken();
    }
}
