pragma solidity ^0.8.24;

import {LockReleaseTokenPool} from "@chainlink/contracts-ccip/src/v0.8/ccip/pools/LockReleaseTokenPool.sol";
import {BurnMintERC677, IBurnMintERC20} from "@chainlink/contracts-ccip/src/v0.8/shared/token/ERC677/BurnMintERC677.sol";

interface IERC20 {
    function decimals() external view returns(uint8);
}

contract LockedTokenPoolFactory {
    
    address public immutable rmnProxy;
    address public immutable router;

    event LRTPCreated(address indexed token, address pool);

    constructor(address _rmnProxy, address _router){
        rmnProxy = _rmnProxy;
        router = _router;
    }

    function deployTokenPool(address token) external returns(address){
        uint8 decimals = IERC20(token).decimals();
        LockReleaseTokenPool lrtp = new LockReleaseTokenPool(IBurnMintERC20(token), decimals, new address[](0), rmnProxy, false, router);
        lrtp.transferOwnership(msg.sender);
        emit LRTPCreated(token, address(lrtp));
        return address(lrtp);
    }
}
