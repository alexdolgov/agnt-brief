pragma solidity ^0.7.0;

import {MemoryInterface, BxdMapping} from "./interfaces.sol";

abstract contract Stores {
    /**
     * @dev Return ethereum address
     */
    address internal constant ethAddr =
        0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

    /**
     * @dev Return Wrapped BNB address
     */
    address internal constant wethAddr =
        0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c;

    /**
     * @dev Return memory variable address
     */
    MemoryInterface internal constant BxdMemory =
        MemoryInterface(0x9a303550013eCd11d429A4C142a3987C6c9814C4);

    /**
     * @dev Return BxdDApp Mapping Addresses
     */
    BxdMapping internal constant bxdMapping =
        BxdMapping(0x5DDa94995d64fB239F7dE2971E90a36524605b52);

    /**
     * @dev Get Uint value from BxdMemory Contract.
     */
    function getUint(uint256 getId, uint256 val)
        internal
        returns (uint256 returnVal)
    {
        returnVal = getId == 0 ? val : BxdMemory.getUint(getId);
    }

    /**
     * @dev Set Uint value in BxdMemory Contract.
     */
    function setUint(uint256 setId, uint256 val) internal virtual {
        if (setId != 0) BxdMemory.setUint(setId, val);
    }
}
