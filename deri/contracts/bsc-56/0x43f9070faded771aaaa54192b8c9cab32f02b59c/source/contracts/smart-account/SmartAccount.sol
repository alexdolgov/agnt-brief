// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

import '../manager/IManager.sol';
import '../library/Errors.sol';
import './SmartAccountStorage.sol';

contract SmartAccount is SmartAccountStorage {

    address public immutable manager;

    constructor (address manager_) {
        manager = manager_;
    }

    function implementation() public view returns (address) {
        return IManager(manager).smartAccountImplementation();
    }

    function setOwner(address owner_) external {
        require(owner == address(0), Errors.OWNER_ALREADY_SET);
        owner = owner_;
    }

    fallback() external payable {
        address imp = implementation();
        assembly {
            calldatacopy(0, 0, calldatasize())
            let result := delegatecall(gas(), imp, 0, calldatasize(), 0, 0)
            returndatacopy(0, 0, returndatasize())
            switch result
            case 0 { revert(0, returndatasize()) }
            default { return(0, returndatasize()) }
        }
    }

    receive() external payable {}

}
