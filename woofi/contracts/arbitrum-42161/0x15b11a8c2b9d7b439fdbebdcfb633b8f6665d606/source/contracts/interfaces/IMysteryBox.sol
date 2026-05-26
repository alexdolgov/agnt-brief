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

interface IMysteryBox {
    /* ----- Structs ----- */

    struct RequestArg {
        uint16 minimumRequestConfirmations;
        uint32 callbackGasLimit;
        uint32 numWords;
        uint32 numWinners;
    }

    struct RequestStatus {
        bool fulfilled; // whether the request has been successfully fulfilled
        bool exists; // whether a requestId exists
        uint256 requestId;
        uint256[] randomWords;
    }

    /* ----- Events ----- */

    event RequestSent(uint256 campaginId, uint256 requestId, uint32 numWords);
    event RequestFulfilled(uint256 campaginId, uint256 requestId, uint256[] randomWords);
    event SelectWinners(uint256 campaginId, uint256 requestId, address[] winners);
    event AddUsers(uint256 campaignId, address[] users);
    event RemoveUsers(uint256 campaignId, address[] users);

    /* ----- Functions ----- */

    function vrfCoordinator() external view returns (VRFCoordinatorV2Interface);
    function subscriptionId() external view returns (uint64);
    function keyHash() external view returns (bytes32);
    function lastRequestId() external view returns (uint256);

    function allUsersLength(uint256 campaignId) external view returns (uint256 len);
    function allUsers(uint256 campaignId, uint256 start, uint256 end) external view returns (address[] memory users);

    function getWinners(uint256 campaignId) external view returns (address[] memory winners);
    function isWinner(uint256 campaignId, address user) external view returns (bool);
}
