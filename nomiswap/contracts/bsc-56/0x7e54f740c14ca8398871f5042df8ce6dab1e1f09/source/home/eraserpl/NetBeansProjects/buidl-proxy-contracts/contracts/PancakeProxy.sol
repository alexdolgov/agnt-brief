// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import '@openzeppelin/contracts/proxy/Proxy.sol';

contract PancakeProxy is Proxy {

    function _implementation() internal pure override returns (address) {
        return 0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F;
    }

}