// SPDX-License-Identifier: MIT
/*
    Created by DeNet

    Contract is modifier only
*/

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "./interfaces/IPoSAdmin.sol";
import "./interfaces/IContractStorage.sol";
import "./utils/StringNumbersConstant.sol";

contract PoSAdmin  is IPoSAdmin, Ownable, StringNumbersConstant {
    address public proofOfStorageAddress = address(0);
    address public storagePairTokenAddress = address(0);
    address public contractStorageAddress;
    address public daoContractAddress;
    address public gasTokenAddress;
    
    constructor (address _contractStorageAddress) {
        contractStorageAddress = _contractStorageAddress;
    }

    modifier onlyPoS() {
        require(msg.sender == proofOfStorageAddress, "PoSAdmin.msg.sender != POS");
        _;
    }

    modifier onlyDAO() {
        require(msg.sender == daoContractAddress, "PoSAdmin:msg.sender != DAO");
        _;
    }

    function changePoS(address _newAddress) public onlyOwner {
        proofOfStorageAddress = _newAddress;
        emit ChangePoSAddress(_newAddress);
    }

    function sync() public onlyOwner {
        IContractStorage contractStorage = IContractStorage(contractStorageAddress);
        proofOfStorageAddress = contractStorage.getContractAddressViaName("proofofstorage", NETWORK_ID);
        storagePairTokenAddress = contractStorage.getContractAddressViaName("pairtoken", NETWORK_ID);
        daoContractAddress = contractStorage.getContractAddressViaName("daowallet", NETWORK_ID);
        gasTokenAddress = contractStorage.getContractAddressViaName("gastoken", NETWORK_ID);
        emit ChangePoSAddress(proofOfStorageAddress);
        _afterSync();
    }

    function _afterSync() internal virtual {}
}