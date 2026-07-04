// SPDX-License-Identifier: MIT

pragma solidity 0.8.9;

import "@chainlink/contracts/src/v0.8/interfaces/VRFCoordinatorV2Interface.sol";
import "@chainlink/contracts/src/v0.8/VRFConsumerBaseV2.sol";
import "@chainlink/contracts/src/v0.8/ConfirmedOwner.sol";

contract VelaLottery is VRFConsumerBaseV2, ConfirmedOwner {
    struct LotteryInput {
        address[] users;
        uint256[][] ticketNumbers;
    }
    struct LotteryResult {
        uint256 randomNumber;
        address winningUser;
    }
    struct RequestStatus {
        bool fulfilled; // whether the request has been successfully fulfilled
        bool exists; // whether a requestId exists
        uint256[] randomWords;
    }
    uint32 callbackGasLimit = 2500000;
    uint16 requestConfirmations = 10;
    uint32 numWords = 1;

    bytes32 keyHash;
    VRFCoordinatorV2Interface COORDINATOR;
    uint64 s_subscriptionId;
    uint256[] public requestIds;
    uint256 public lastRequestId;
    address[] public lastUsers;
    uint256[][] public lastTicketNumbers;
    LotteryInput[] private l_inputs;
    LotteryResult[] private l_results;
    
    mapping(uint256 => RequestStatus) public s_requests;

    event InputData(address[] users, uint256[][] ticketNumbers);
    event SelectedWinner(uint256 randonNumber, address trader);
    event RequestSent(uint256 requestId, uint32 numWords);
    event RequestFulfilled(uint256 requestId, uint256[] randomWords);

    constructor(
        uint64 subscriptionId,
        address _coordinator,
        bytes32 _keyHash
    )
        VRFConsumerBaseV2(_coordinator)
        ConfirmedOwner(msg.sender)
    {
        COORDINATOR = VRFCoordinatorV2Interface(_coordinator);
        s_subscriptionId = subscriptionId;
        keyHash = _keyHash;
    }

    // Add input data for the lottery in batches
    function addLotteryInputBatch(
        address[] memory _usersBatch,
        uint256[][] memory _ticketNumbersBatch
    )
        external
        onlyOwner
    {
        require(_usersBatch.length == _ticketNumbersBatch.length, "Mismatch in user and ticket numbers count");
        require(_usersBatch.length > 0, "No users provided");

        lastUsers = appendArrays(lastUsers, _usersBatch);
        lastTicketNumbers = appendArrays(lastTicketNumbers, _ticketNumbersBatch);

        emit InputData(_usersBatch, _ticketNumbersBatch);
    }

    function clearLastTicksData(
    )
        external
        onlyOwner
    {
        delete lastUsers;
        delete lastTicketNumbers;
    }

    function appendArrays(address[] memory arr1, address[] memory arr2) internal pure returns (address[] memory) {
        address[] memory result = new address[](arr1.length + arr2.length);
        for (uint256 i = 0; i < arr1.length; i++) {
            result[i] = arr1[i];
        }
        for (uint256 i = 0; i < arr2.length; i++) {
            result[arr1.length + i] = arr2[i];
        }
        return result;
    }

    function appendArrays(uint256[][] memory arr1, uint256[][] memory arr2) internal pure returns (uint256[][] memory) {
        uint256[][] memory result = new uint256[][](arr1.length + arr2.length);
        for (uint256 i = 0; i < arr1.length; i++) {
            result[i] = arr1[i];
        }
        for (uint256 i = 0; i < arr2.length; i++) {
            result[arr1.length + i] = arr2[i];
        }
        return result;
    }

    // Generate random numbers and find winners for all added input data
    // Assumes the subscription is funded sufficiently.
    function generateRandomNumberAndFindWinner()
        external
        onlyOwner
        returns (uint256 requestId)
    {
        requestId = COORDINATOR.requestRandomWords(
            keyHash,
            s_subscriptionId,
            requestConfirmations,
            callbackGasLimit,
            numWords
        );
        s_requests[requestId] = RequestStatus({
            randomWords: new uint256[](0),
            exists: true,
            fulfilled: false
        });
        requestIds.push(requestId);
        lastRequestId = requestId;
        l_inputs.push(LotteryInput({
            users: lastUsers,
            ticketNumbers: lastTicketNumbers
        }));
        emit RequestSent(requestId, numWords);
        return requestId;
    }

    function fulfillRandomWords(
        uint256 _requestId,
        uint256[] memory _randomWords
    ) internal override {
        require(s_requests[_requestId].exists, "request not found");
        s_requests[_requestId].fulfilled = true;
        s_requests[_requestId].randomWords = _randomWords;
        uint256 totalTickets = calculateTotalTickets(lastTicketNumbers);
        uint256 randomNumber = _randomWords[0] % totalTickets;
        address winningUser = address(0); // Initialize winningUser to address(0) as a default value
        
        for (uint256 i = 0; i < lastUsers.length; i++) {
            address user = lastUsers[i];
            uint256[] memory userTicket = lastTicketNumbers[i];
            
            for (uint256 j = 0; j < userTicket.length; j++) {
                if (userTicket[j] == randomNumber) {
                    winningUser = user;
                    break;
                }
            }
        }

        l_results.push(LotteryResult({
            randomNumber: randomNumber,
            winningUser: winningUser
        }));
        require(winningUser != address(0), "No winner found");

        emit SelectedWinner(randomNumber, winningUser);
        emit RequestFulfilled(_requestId, _randomWords);
    }

    function getRequestStatus(
        uint256 _requestId
    ) external view returns (bool fulfilled, uint256[] memory randomWords) {
        require(s_requests[_requestId].exists, "request not found");
        RequestStatus memory request = s_requests[_requestId];
        return (request.fulfilled, request.randomWords);
    }


    function calculateTotalTickets(uint256[][] memory _ticketNumbers) internal pure returns (uint256) {
        uint256 total = 0;
        for (uint256 i = 0; i < _ticketNumbers.length; i++) {
            uint256[] memory userTicket = _ticketNumbers[i];
            total += userTicket.length;
        }
        return total;
    }

    function getNumberOfResults() external view returns (uint256) {
        return l_results.length;
    }

    function getResult(uint256 index) external view returns (LotteryInput memory, LotteryResult memory) {
        require(index < l_results.length, "Invalid index");
        return (l_inputs[index], l_results[index]);
    }
}
