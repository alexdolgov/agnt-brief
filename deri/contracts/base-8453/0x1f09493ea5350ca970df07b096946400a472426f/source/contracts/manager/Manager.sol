// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

import './ManagerStorage.sol';

contract Manager is ManagerStorage {

    fallback() external payable {
        address imp = implementation;
        assembly {
            calldatacopy(0, 0, calldatasize())
            let result := delegatecall(gas(), imp, 0, calldatasize(), 0, 0)
            returndatacopy(0, 0, returndatasize())
            switch result
            case 0 { revert(0, returndatasize()) }
            default { return(0, returndatasize()) }
        }
    }

    receive() external payable {
        address imp = implementation;
        assembly {
            let result := delegatecall(gas(), imp, 0, 0, 0, 0)
            if eq(result, 0) { revert(0, 0) }
        }
    }

}
