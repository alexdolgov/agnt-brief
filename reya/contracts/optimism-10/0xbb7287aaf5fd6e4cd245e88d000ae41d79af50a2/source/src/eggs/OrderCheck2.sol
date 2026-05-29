// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

import "./EggBase.sol";
import "../interfaces/ISocket.sol";

interface IOrderCheck {
    function orderCheck_timestamps(uint256 chainId) external view returns (uint256);
}

contract OrderCheck2 is EggBase {

    uint256 public constant POLYGON_MAINNET_CHAIN_ID = 137;
    uint256 public constant BSC_MAINNET_CHAIN_ID = 56;
    uint256 public constant ARBITRUM_MAINNET_CHAIN_ID = 42161;
    
    IOrderCheck public immutable plug__;

    constructor(
        address plug_
    ) {
        plug__ = IOrderCheck(plug_);
    }

    function isOrderComplete() public view returns (bool) {
        
        if (
            plug__.orderCheck_timestamps(POLYGON_MAINNET_CHAIN_ID)==0 || 
            plug__.orderCheck_timestamps(ARBITRUM_MAINNET_CHAIN_ID) ==0
        ) return false;

        if (
            plug__.orderCheck_timestamps(POLYGON_MAINNET_CHAIN_ID) <= plug__.orderCheck_timestamps(ARBITRUM_MAINNET_CHAIN_ID) 
        ) return true;

        return false;
    }

    function egg(address, bytes calldata) external view override returns (bool) {
        return isOrderComplete();
    }
}
