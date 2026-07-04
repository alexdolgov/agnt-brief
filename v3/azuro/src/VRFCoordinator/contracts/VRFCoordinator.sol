// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.18;

import "./interface/IVRFConsumer.sol";
import "./interface/IVRFCoordinator.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

contract VRFCoordinator is OwnableUpgradeable, IVRFCoordinator {
    mapping(uint256 => Request) public requests;
    uint256 public lastRequestId;

    address public oracle;

    modifier onlyOracle() {
        if (msg.sender != oracle) {
            revert OnlyOracleCanPerformThisAction(msg.sender, oracle);
        }
        _;
    }

    function initialize(address oracle_) external initializer {
        __Ownable_init_unchained();
        oracle = oracle_;
    }

    function changeOracle(address oracle_) external onlyOwner {
        oracle = oracle_;
    }

    function requestRandomNumbers(
        ClientData[] calldata clientData
    ) external returns (uint256 requestId) {
        uint256 randomNumbersCount = clientData.length;
        if (randomNumbersCount == 0) revert EmptyClientDataArray();

        requestId = uint256(keccak256(abi.encode(msg.sender, clientData)));
        Request storage request = requests[requestId];
        if (request.state != RequestState.UNREGISTERED)
            revert RequestAlreadyRegistered(requestId);

        requests[requestId] = Request(
            randomNumbersCount,
            msg.sender,
            RequestState.REGISTERED
        );

        emit NewRequest(requestId, msg.sender, clientData);
    }

    function resolveRequest(
        uint256 requestId,
        uint256[] calldata randomNumbers,
        OracleData[] calldata oracleData
    ) external onlyOracle {
        Request storage request = requests[requestId];
        if (request.state != RequestState.REGISTERED)
            revert RequestNotFound(requestId);

        if (randomNumbers.length != oracleData.length)
            revert InvalidOracleData();

        uint256 requestedRandomNumbersCount = request.randomNumbersCount;
        if (randomNumbers.length > requestedRandomNumbersCount)
            revert ExcessiveRandomNumbers(
                randomNumbers.length,
                requestedRandomNumbersCount
            );

        IVRFConsumer(request.callback).fulfillRandomNumbers(
            requestId,
            randomNumbers
        );

        request.state = RequestState.RESOLVED;

        emit RequestResolved(requestId, randomNumbers, oracleData);
    }
}
