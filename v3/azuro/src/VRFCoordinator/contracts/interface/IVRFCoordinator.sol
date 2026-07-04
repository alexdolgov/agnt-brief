// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.18;

interface IVRFCoordinator {
    enum RequestState {
        UNREGISTERED,
        REGISTERED,
        RESOLVED
    }

    struct ClientData {
        bytes[2] clientCommitmentBack;
        bytes[2] oracleCommitmentBack;
    }

    struct OracleData {
        bytes[2] clientCommitmentFront;
        bytes[2] oracleCommitmentFront;
    }

    struct Request {
        uint256 randomNumbersCount;
        address callback;
        RequestState state;
    }

    event NewRequest(
        uint256 indexed requestId,
        address indexed callback,
        ClientData[] indexed data
    );

    event RequestResolved(
        uint256 indexed requestId,
        uint256[] randomNumbers,
        OracleData[] data
    );

    error EmptyClientDataArray();
    error ExcessiveRandomNumbers(uint256 have, uint256 requested);
    error InvalidOracleData();
    error OnlyOracleCanPerformThisAction(address requester, address oracle);
    error RequestAlreadyRegistered(uint256 requestId);
    error RequestNotFound(uint256 requestId);

    function changeOracle(address oracle) external;

    function requestRandomNumbers(
        ClientData[] calldata clientData
    ) external returns (uint256 requestId);

    function resolveRequest(
        uint256 requestId,
        uint256[] calldata randomNumbers,
        OracleData[] calldata oracleData
    ) external;
}
