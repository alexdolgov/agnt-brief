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
import {IMysteryBox} from "./interfaces/IMysteryBox.sol";
import {AdminOperation} from "./AdminOperation.sol";

contract MysteryBox is VRFConsumerBaseV2, AdminOperation, IMysteryBox {
    using EnumerableSet for EnumerableSet.AddressSet;

    /* ----- Variables ----- */

    VRFCoordinatorV2Interface public vrfCoordinator;

    // Your subscription ID.
    uint64 public subscriptionId;

    // The gas lane to use, which specifies the maximum gas price to bump to.
    // For a list of available gas lanes on each network,
    // see https://docs.chain.link/docs/vrf-contracts/#configurations
    bytes32 public keyHash;

    uint256 public lastRequestId;

    mapping(uint256 => RequestArg) public requestArgs;
    mapping(uint256 => RequestStatus) public requestStatuses;

    mapping(uint256 => uint256) public requestedCampaignIds;

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
        vrfCoordinator = VRFCoordinatorV2Interface(_vrfCoordinator);
        subscriptionId = _subscriptionId;
        keyHash = _keyHash;
    }

    /* ----- Functions ----- */

    // Assumes the subscription is funded sufficiently.
    function requestRandomWords(uint256 _campaignId) external onlyAdmin returns (uint256 requestId) {
        RequestArg memory requestArg = requestArgs[_campaignId];

        // Will revert if subscription is not set and funded.
        requestId = vrfCoordinator.requestRandomWords(
            keyHash,
            subscriptionId,
            requestArg.minimumRequestConfirmations,
            requestArg.callbackGasLimit,
            requestArg.numWords
        );
        requestStatuses[_campaignId] = RequestStatus({
            fulfilled: false,
            exists: true,
            requestId: requestId,
            randomWords: new uint256[](0)
        });
        requestedCampaignIds[requestId] = _campaignId;
        lastRequestId = requestId;
        emit RequestSent(_campaignId, requestId, requestArg.numWords);
        return requestId;
    }

    function fulfillRandomWords(uint256 _requestId, uint256[] memory _randomWords) internal override {
        uint256 campaignId = requestedCampaignIds[_requestId];
        require(campaignId > 0, "MysteryBox: campaign not request");
        require(requestStatuses[campaignId].exists, "MysteryBox: requestStatus not found");
        requestStatuses[campaignId].fulfilled = true;
        requestStatuses[campaignId].randomWords = _randomWords;
        emit RequestFulfilled(campaignId, _requestId, _randomWords);
    }

    function selectWinners(uint256 _campaignId) external onlyAdmin {
        RequestStatus memory requestStatus = requestStatuses[_campaignId];
        uint256 len = poolUsers[_campaignId].length();
        if (!requestStatus.fulfilled || len == 0) return;

        RequestArg memory requestArg = requestArgs[_campaignId];
        uint256 numWinners = requestArg.numWinners;
        for (uint256 i = 0; i < requestStatus.randomWords.length; ++i) {
            if (poolWinners[_campaignId].length() >= numWinners) break;
            poolWinners[_campaignId].add(poolUsers[_campaignId].at(requestStatus.randomWords[i] % len));
        }
        emit SelectWinners(_campaignId, requestStatus.requestId, poolWinners[_campaignId].values());
    }

    function addUsers(uint256 _campaignId, address[] memory _users) external onlyAdmin {
        for (uint256 i = 0; i < _users.length; ++i) {
            poolUsers[_campaignId].add(_users[i]);
        }
        emit AddUsers(_campaignId, _users);
    }

    function removeUsers(uint256 _campaignId, address[] memory _users) external onlyAdmin {
        for (uint256 i = 0; i < _users.length; ++i) {
            poolUsers[_campaignId].remove(_users[i]);
        }
        emit RemoveUsers(_campaignId, _users);
    }

    function allUsersLength(uint256 _campaignId) external view returns (uint256) {
        return poolUsers[_campaignId].length();
    }

    function allUsers(uint256 _campaignId, uint256 _start, uint256 _end) external view returns (address[] memory) {
        address[] memory users = new address[](_end - _start);
        for (uint256 i = _start; i < _end; ++i) {
            users[i - _start] = poolUsers[_campaignId].at(i);
        }
        return users;
    }

    function getRequestStatus(
        uint256 _campaignId
    ) external view returns (bool fulfilled, bool exists, uint256 requestId, uint256[] memory randomWords) {
        RequestStatus memory requestStatus = requestStatuses[_campaignId];
        return (requestStatus.fulfilled, requestStatus.exists, requestStatus.requestId, requestStatus.randomWords);
    }

    function getWinners(uint256 _campaignId) external view returns (address[] memory) {
        uint256 len = poolWinners[_campaignId].length();
        address[] memory _users = new address[](len);
        for (uint256 i = 0; i < len; ++i) {
            _users[i] = poolWinners[_campaignId].at(i);
        }
        return _users;
    }

    function isWinner(uint256 _campaignId, address _user) external view returns (bool) {
        return poolWinners[_campaignId].contains(_user);
    }

    /* ----- Setter Functions ----- */

    function setVRFCoordinator(address _vrfCoordinator) external onlyAdmin {
        vrfCoordinator = VRFCoordinatorV2Interface(_vrfCoordinator);
    }

    function setSubscriptionId(uint64 _subscriptionId) external onlyAdmin {
        subscriptionId = _subscriptionId;
    }

    function setKeyHash(bytes32 _keyHash) external onlyAdmin {
        keyHash = _keyHash;
    }

    /**
     * @param _campaignId - campaign id
     * @param _minimumRequestConfirmations - the default is 3, but you can set this higher
     * @param _callbackGasLimit -
     * Depends on the number of requested values that you want sent to the
     * fulfillRandomWords() function. Storing each word costs about 20,000 gas,
     * so 100,000 is a safe default for this example contract. Test and adjust
     * this limit based on the network that you select, the size of the request,
     * and the processing of the callback request in the fulfillRandomWords()
     * function
     * @param _numWords - cannot exceed VRFCoordinatorV2.MAX_NUM_WORDS
     * @param _numWinners - amount of winners will be selected
     */
    function setRequestArg(
        uint256 _campaignId,
        uint16 _minimumRequestConfirmations,
        uint32 _callbackGasLimit,
        uint32 _numWords,
        uint32 _numWinners
    ) external onlyAdmin {
        requestArgs[_campaignId] = RequestArg({
            minimumRequestConfirmations: _minimumRequestConfirmations,
            callbackGasLimit: _callbackGasLimit,
            numWords: _numWords,
            numWinners: _numWinners
        });
    }
}
