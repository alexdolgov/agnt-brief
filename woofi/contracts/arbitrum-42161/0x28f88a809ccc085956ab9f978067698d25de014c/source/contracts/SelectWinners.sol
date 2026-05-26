// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

/*

░██╗░░░░░░░██╗░█████╗░░█████╗░░░░░░░███████╗██╗
░██║░░██╗░░██║██╔══██╗██╔══██╗░░░░░░██╔════╝██║
░╚██╗████╗██╔╝██║░░██║██║░░██║█████╗█████╗░░██║
░░████╔═████║░██║░░██║██║░░██║╚════╝██╔══╝░░██║
░░╚██╔╝░╚██╔╝░╚█████╔╝╚█████╔╝░░░░░░██║░░░░░██║
░░░╚═╝░░░╚═╝░░░╚════╝░░╚════╝░░░░░░░╚═╝░░░░░╚═╝

*
* MIT License
* ===========
*
* Copyright (c) 2023 WOO Network
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in all
* copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

// Chainlink Contracts
import {VRFCoordinatorV2Interface} from "@chainlink/contracts/src/v0.8/interfaces/VRFCoordinatorV2Interface.sol";
import {VRFConsumerBaseV2} from "@chainlink/contracts/src/v0.8/vrf/VRFConsumerBaseV2.sol";

// OpenZeppelin Contracts
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

// Local Contracts
import {ISelectWinners} from "./interfaces/ISelectWinners.sol";
import {AdminOperation} from "./AdminOperation.sol";

contract SelectWinners is VRFConsumerBaseV2, AdminOperation, ISelectWinners {
    using EnumerableSet for EnumerableSet.AddressSet;

    /* ----- Variables ----- */

    VRFCoordinatorV2Interface public COORDINATOR;

    // Your subscription ID.
    uint64 public subscriptionId;

    // The gas lane to use, which specifies the maximum gas price to bump to.
    // For a list of available gas lanes on each network,
    // see https://docs.chain.link/docs/vrf-contracts/#configurations
    bytes32 public keyHash;

    // Depends on the number of requested values that you want sent to the
    // fulfillRandomWords() function. Storing each word costs about 20,000 gas,
    // so 100,000 is a safe default for this example contract. Test and adjust
    // this limit based on the network that you select, the size of the request,
    // and the processing of the callback request in the fulfillRandomWords()
    // function.
    uint32 public callbackGasLimit = 100000;

    // The default is 3, but you can set this higher.
    uint16 public requestConfirmations = 3;

    // Cannot exceed VRFCoordinatorV2.MAX_NUM_WORDS.
    uint32 public numWords;

    // Amount of winners will be selected.
    uint32 public numWinners;

    uint256 public lastRequestId;
    // past requests Id.
    uint256[] public requestIds;

    mapping(uint256 => RequestStatus) public requests;

    mapping(uint256 => EnumerableSet.AddressSet) private poolUsers;
    mapping(uint256 => EnumerableSet.AddressSet) private poolWinners;

    /* ----- Constructor ----- */

    /**
     * @notice Constructor inherits VRFConsumerBaseV2
     *
     * @param _vrfCoordinator - coordinator, check https://docs.chain.link/docs/vrf-contracts/#configurations
     * @param _subscriptionId - the subscription ID that this contract uses for funding requests
     * @param _keyHash - the gas lane to use, which specifies the maximum gas price to bump to
     */
    constructor(address _vrfCoordinator, uint64 _subscriptionId, bytes32 _keyHash) VRFConsumerBaseV2(_vrfCoordinator) {
        COORDINATOR = VRFCoordinatorV2Interface(_vrfCoordinator);
        subscriptionId = _subscriptionId;
        keyHash = _keyHash;

        numWinners = 25;
        numWords = 30;
    }

    /* ----- Functions ----- */

    // Assumes the subscription is funded sufficiently.
    function requestRandomWords(uint256 _campaignId) external onlyAdmin returns (uint256 requestId) {
        // Will revert if subscription is not set and funded.
        requestId = COORDINATOR.requestRandomWords(
            keyHash,
            subscriptionId,
            requestConfirmations,
            callbackGasLimit,
            numWords
        );
        requests[requestId] = RequestStatus({
            fulfilled: false,
            exists: true,
            campaignId: _campaignId,
            randomWords: new uint256[](0)
        });
        requestIds.push(requestId);
        lastRequestId = requestId;
        emit RequestSent(_campaignId, requestId, numWords);
        return requestId;
    }

    function fulfillRandomWords(uint256 _requestId, uint256[] memory _randomWords) internal override {
        require(requests[_requestId].exists, "SelectWinners: request not found");
        requests[_requestId].fulfilled = true;
        requests[_requestId].randomWords = _randomWords;
        emit RequestFulfilled(requests[_requestId].campaignId, _requestId, _randomWords);
    }

    function selectWinners(uint256 _requestId) external onlyAdmin {
        RequestStatus memory request = requests[_requestId];
        uint256 campaignId = request.campaignId;
        uint256 len = poolUsers[campaignId].length();
        if (!request.fulfilled || len == 0) return;
        for (uint256 i = 0; i < request.randomWords.length; ++i) {
            if (poolWinners[campaignId].length() >= numWinners) break;
            poolWinners[campaignId].add(poolUsers[campaignId].at(request.randomWords[i] % len));
        }
        emit SelectWinners(campaignId, _requestId, poolWinners[campaignId].values());
    }

    function addUsers(uint256 _campaignId, address[] memory _users) external onlyAdmin {
        unchecked {
            for (uint256 i = 0; i < _users.length; ++i) {
                poolUsers[_campaignId].add(_users[i]);
            }
        }
        emit AddUsers(_campaignId, _users);
    }

    function removeUsers(uint256 _campaignId, address[] memory _users) external onlyAdmin {
        unchecked {
            for (uint256 i = 0; i < _users.length; ++i) {
                poolUsers[_campaignId].remove(_users[i]);
            }
        }
        emit RemoveUsers(_campaignId, _users);
    }

    function allUsersLength(uint256 _campaignId) external view returns (uint256) {
        return poolUsers[_campaignId].length();
    }

    function allUsers(uint256 _campaignId, uint256 _start, uint256 _end) external view returns (address[] memory) {
        address[] memory users = new address[](_end - _start);
        unchecked {
            for (uint256 i = _start; i < _end; ++i) {
                users[i - _start] = poolUsers[_campaignId].at(i);
            }
        }
        return users;
    }

    function getRequestStatus(
        uint256 _requestId
    ) external view returns (bool fulfilled, uint256 campaignId, uint256[] memory randomWords) {
        require(requests[_requestId].exists, "SelectWinners: request not found");
        RequestStatus memory request = requests[_requestId];
        return (request.fulfilled, campaignId, request.randomWords);
    }

    function getWinners(uint256 _campaignId) external view returns (address[] memory) {
        uint256 len = poolWinners[_campaignId].length();
        address[] memory _users = new address[](len);
        unchecked {
            for (uint256 i = 0; i < len; ++i) {
                _users[i] = poolWinners[_campaignId].at(i);
            }
        }
        return _users;
    }

    /* ----- Setter Functions ----- */

    function setCOORDINATOR(address _COORDINATOR) external onlyAdmin {
        COORDINATOR = VRFCoordinatorV2Interface(_COORDINATOR);
    }

    function setSubscriptionId(uint64 _subscriptionId) external onlyAdmin {
        subscriptionId = _subscriptionId;
    }

    function setKeyHash(bytes32 _keyHash) external onlyAdmin {
        keyHash = _keyHash;
    }

    function setCallbackGasLimit(uint32 _callbackGasLimit) external onlyAdmin {
        callbackGasLimit = _callbackGasLimit;
    }

    function setRequestConfirmations(uint16 _requestConfirmations) external onlyAdmin {
        requestConfirmations = _requestConfirmations;
    }

    function setNumWords(uint32 _numWords) external onlyAdmin {
        numWords = _numWords;
    }

    function setNumWinners(uint32 _numWinners) external onlyAdmin {
        numWinners = _numWinners;
    }
}
