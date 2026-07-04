// SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.20;

library Common {
    /**
     * @notice Check if an address is a contract
     * @param _addr address to check
     * @return true if the address is a contract, false otherwise
     */
    function isContract(address _addr) internal view returns (bool) {
        return _addr != address(0) && _addr.code.length != 0;
    }
}
