// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

interface IDomfiRegistry {
    event DevUpdated(address indexed oldDev, address newDev);
    event GovUpdated(address indexed oldGov, address newGov);
    event ManagerUpdated(address indexed oldManager, address newManager);
    event ContractRegistered(bytes32 indexed newName, address newContractAddress);

    event ContractUpdated(
        bytes32 indexed name, address oldContractAddress, address newContractAddress
    );

    event ContractUnregistered(bytes32 indexed name, address contractAddress);

    error NullAddr();
    error WrongParams();
    error NotFound(bytes32 name);
    error HasAlreadyRole(address account);
    error NotGov(address caller);
    error AlreadyRegistered(bytes32 name);
    error NotContract(address contractAddress);
    error InvalidContractUpdate();
    error IdenticalGovAddress();
    error IdenticalDevAddress();
    error IdenticalManagerAddress();

    function gov() external view returns (address);
    function manager() external view returns (address);
    function dev() external view returns (address);
    function getContractAddress(bytes32 name) external view returns (address);
    function setGov(address newGov) external;
    function setDev(address newDev) external;
    function setManager(address newManager) external;
    function unregisterContract(bytes32 name) external;
    function unregisterContracts(bytes32[] calldata names) external;
    function registerContract(bytes32 newName, address newContractAddress) external;
    function registerContracts(bytes32[] calldata newNames, address[] calldata newContractAddresses)
        external;
    function updateContract(bytes32 name, address newContractAddress) external;
    function updateContracts(bytes32[] calldata names, address[] calldata newContractAddresses)
        external;
}
