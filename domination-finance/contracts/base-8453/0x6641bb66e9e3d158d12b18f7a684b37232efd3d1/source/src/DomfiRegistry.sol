// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { Ownable2Step, Ownable } from "@openzeppelin/contracts/access/Ownable2Step.sol";

import { IDomfiRegistry } from "./interfaces/IDomfiRegistry.sol";
import { IDomfiTradingStorage } from "./interfaces/IDomfiTradingStorage.sol";

contract DomfiRegistry is IDomfiRegistry, Ownable2Step {
    address public gov;
    address public dev;
    address public manager;

    mapping(bytes32 name => address) private contracts;

    modifier isContract(address addressToCheck) {
        _isContract(addressToCheck);
        _;
    }

    function _isContract(address addressToCheck) internal view {
        uint256 size;
        // slither-disable-next-line assembly
        assembly {
            size := extcodesize(addressToCheck)
        }
        if (size == 0) {
            revert NotContract(addressToCheck);
        }
    }

    modifier onlyGov() {
        _onlyGov();
        _;
    }

    function _onlyGov() internal view {
        if (msg.sender != gov) {
            revert NotGov(msg.sender);
        }
    }

    constructor(
        address initialGov,
        address initialDev,
        address initialManager,
        address initialOwner
    ) Ownable(msg.sender) {
        setGov(initialGov);
        setDev(initialDev);
        setManager(initialManager);

        // skip redundant transfer if the caller is `initialOwner`; prevent bricking if `initialOwner` is address(0)
        if (initialOwner != msg.sender && initialOwner != address(0)) {
            _transferOwnership(initialOwner);
        }
    }

    function _transferOwnership(address newOwner) internal virtual override {
        if (newOwner == gov || newOwner == dev || newOwner == manager) {
            revert HasAlreadyRole(newOwner);
        }
        super._transferOwnership(newOwner);
    }

    function setGov(address newGov) public onlyOwner {
        if (newGov == address(0)) revert NullAddr();
        if (newGov == dev || newGov == manager || newGov == owner()) {
            revert HasAlreadyRole(newGov);
        }

        address oldGov = gov;
        if (newGov == oldGov) {
            revert IdenticalGovAddress();
        }

        gov = newGov;
        emit GovUpdated(oldGov, newGov);
    }

    function setDev(address newDev) public onlyOwner {
        if (newDev == address(0)) {
            revert NullAddr();
        }

        if (newDev == gov || newDev == manager || newDev == owner()) {
            revert HasAlreadyRole(newDev);
        }

        address oldDev = dev;

        if (newDev == oldDev) {
            revert IdenticalDevAddress();
        }

        if (oldDev != address(0)) {
            IDomfiTradingStorage tradingStorage =
                IDomfiTradingStorage(_getContractAddress("tradingStorage"));

            tradingStorage.claimOracleFees(tradingStorage.oracleFees());
            tradingStorage.claimFees(tradingStorage.devFees());
        }

        // slither-disable-next-line reentrancy-no-eth
        dev = newDev;

        emit DevUpdated(oldDev, newDev);
    }

    function setManager(address newManager) public onlyOwner {
        if (newManager == address(0)) revert NullAddr();
        if (newManager == gov || newManager == dev || newManager == owner()) {
            revert HasAlreadyRole(newManager);
        }

        address oldManager = manager;
        if (newManager == oldManager) {
            revert IdenticalManagerAddress();
        }

        manager = newManager;
        emit ManagerUpdated(oldManager, newManager);
    }

    function registerContract(bytes32 newName, address newContractAddress)
        public
        onlyGov
        isContract(newContractAddress)
    {
        if (contracts[newName] != address(0)) revert AlreadyRegistered(newName);

        contracts[newName] = newContractAddress;

        emit ContractRegistered(newName, newContractAddress);
    }

    function registerContracts(bytes32[] calldata newNames, address[] calldata newContractAddresses)
        external
        onlyGov
    {
        if (newNames.length != newContractAddresses.length) revert WrongParams();

        for (uint256 i = 0; i < newNames.length; i++) {
            registerContract(newNames[i], newContractAddresses[i]);
        }
    }

    function updateContract(bytes32 name, address newContractAddress)
        public
        onlyGov
        isContract(newContractAddress)
    {
        if (contracts[name] == address(0)) revert NotFound(name);

        address oldContractAddress = contracts[name];
        if (oldContractAddress == newContractAddress) {
            revert InvalidContractUpdate();
        }

        contracts[name] = newContractAddress;

        emit ContractUpdated(name, oldContractAddress, newContractAddress);
    }

    function updateContracts(bytes32[] calldata names, address[] calldata newContractAddresses)
        external
        onlyGov
    {
        if (names.length != newContractAddresses.length) revert WrongParams();
        for (uint256 i = 0; i < names.length; i++) {
            updateContract(names[i], newContractAddresses[i]);
        }
    }

    function unregisterContract(bytes32 name) public onlyGov {
        if (contracts[name] == address(0)) revert NotFound(name);
        emit ContractUnregistered(name, contracts[name]);
        // slither-disable-next-line costly-loop
        delete contracts[name];
    }

    function unregisterContracts(bytes32[] calldata names) external onlyGov {
        for (uint256 i = 0; i < names.length; i++) {
            unregisterContract(names[i]);
        }
    }

    function _getContractAddress(bytes32 name) internal view returns (address) {
        if (contracts[name] == address(0)) revert NotFound(name);
        return contracts[name];
    }

    function getContractAddress(bytes32 name) external view returns (address) {
        if (contracts[name] == address(0)) revert NotFound(name);
        return contracts[name];
    }
}
