/**
 *Submitted for verification at Etherscan.io on 2021-06-29
*/

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;

interface IGauge {
    function claimable_tokens(address) external view returns (uint256);
    
    function minter() external view returns (address);
}

interface IGetter {
    function getit() external view returns (address);
}

contract Getter {
    address constant gauge = 0xF98450B5602fa59CC66e1379DFfB6FDDc724CfC4;
    function getit() external view returns (address) {
        (bool success, bytes memory data) =
            address(this).staticcall(
                abi.encodeWithSignature('baff()')
            );
        return abi.decode(data, (address));
    }
    
    function baff() external view returns (address) {
        return IGauge(gauge).minter();
    }
}

library StaticCallProxy {
    address constant gauge = address(0xF98450B5602fa59CC66e1379DFfB6FDDc724CfC4);
    function minter() external view returns (address) {
        return IGetter(0xE7eD6747FaC5360f88a2EFC03E00d25789F69291).getit();
    }
    
    
    function claimable() external view returns (uint256) {
        return IGauge(gauge).claimable_tokens(0xF147b8125d2ef93FB6965Db97D6746952a133934);
    }    
}

contract Test {
        function minter() external view returns (address) {
        return StaticCallProxy.minter();
    }
    
    function claimable() external view returns (uint256) {
        return StaticCallProxy.claimable();
    }
}