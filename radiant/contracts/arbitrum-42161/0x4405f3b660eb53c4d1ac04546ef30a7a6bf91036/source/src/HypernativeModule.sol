// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";


interface ISafe {
    function execTransactionFromModule(address to, uint256 value, bytes memory data, uint8 operation) external returns (bool success);
}

interface IPausable {
    function pause() external;
}

contract HypernativeModule is Ownable {
    address public protectedContractAddress;
    address public updater;
    ISafe public safe;


    modifier onlyUpdater() {
        require(msg.sender == updater, "HypernativeModule: Only Updater");
        _;
    }

    modifier onlyOwnerOrUpdater() {
        require(msg.sender == updater || msg.sender == owner(), "HypernativeModule: Only Updater or Owner");
        _;
    }

    constructor(address multisig, address _updater, address _protectedContractAddress) Ownable(msg.sender) {
        safe = ISafe(multisig);
        updater = _updater;
        protectedContractAddress = _protectedContractAddress;
    }

    function pause() public onlyOwner {
        safe.execTransactionFromModule(protectedContractAddress, 0, abi.encodeWithSelector(IPausable.pause.selector), 0);
    }

    function replaceProtectedContract(address _protectedContractAddress) public onlyUpdater {
        protectedContractAddress = _protectedContractAddress;
    }

    function updateMultisigAddress(address newMultisig) public onlyOwnerOrUpdater {
        safe = ISafe(newMultisig);
    }

    function changeUpdater(address _updater) public onlyOwnerOrUpdater {
        updater = _updater;
    }
}