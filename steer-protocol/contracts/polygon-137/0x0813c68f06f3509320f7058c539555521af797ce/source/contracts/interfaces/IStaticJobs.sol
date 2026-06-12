// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.8.12;

interface IStaticJobs {
    event JobExecuted(bytes32 jobHash);
    event GasDeposited(address indexed depositor, uint256 value);
    event GasWithdrawn(address indexed withdrawer, uint256 value);
    event JobRegistered(
        bytes[] jobInfo,
        address[] targetAddresses,
        bytes32 jobHash,
        string name,
        string ipfsForJobDetails
    );
    event JobToggledByCreator(bytes32 jobHash, uint256 toggle);

    function registerJob(
        bytes[] calldata _jobInfo,
        address[] calldata _targetAddresses,
        string memory _name,
        string memory _ipfsForJobDetails
    ) external;

    function executeJob(
        bytes[] memory _jobInfo,
        address[] memory _targetAddresses
    ) external;
}
