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

// OpenZeppelin Contracts
import {MerkleProof} from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";

// Uniswap Periphery
import {TransferHelper} from "@uniswap/v3-periphery/contracts/libraries/TransferHelper.sol";

// Local Contracts
import {IAirdropDistributor} from "./interfaces/IAirdropDistributor.sol";
import {AdminOperation} from "./AdminOperation.sol";

contract AirdropDistributor is AdminOperation, IAirdropDistributor {
    /* ----- Variables ----- */

    address public immutable rewardToken;

    bytes32 public merkleRoot;

    mapping(address => uint256) public claimed;

    /* ----- Constructor ----- */

    constructor(address _rewardToken, ClaimedData[] memory alreadyClaimed) {
        rewardToken = _rewardToken;
        _emitClaimedEvents(alreadyClaimed);
    }

    /* ----- Functions ----- */

    function claim(
        uint256 index,
        address account,
        uint256 totalAmount,
        bytes32[] calldata merkleProof
    ) external whenNotPaused {
        if (claimed[account] >= totalAmount) {
            return;
        }

        bytes32 node = keccak256(abi.encodePacked(index, account, totalAmount));
        require(MerkleProof.verify(merkleProof, merkleRoot, node), "AirdropDistributor: invalid proof");

        uint256 claimedAmount = totalAmount - claimed[account];
        claimed[account] += claimedAmount;
        TransferHelper.safeTransfer(rewardToken, account, claimedAmount);

        emit Claimed(account, claimedAmount, false);
    }

    function updateMerkleRoot(bytes32 newRoot) external onlyOwner {
        bytes32 oldRoot = merkleRoot;
        merkleRoot = newRoot;
        emit RootUpdated(oldRoot, newRoot);
    }

    function emitDistributionEvents(DistributionData[] calldata data) external onlyAdmin {
        uint256 len = data.length;
        unchecked {
            for (uint256 i = 0; i < len; ++i) {
                emit TokenAllocated(data[i].account, data[i].campaignId, data[i].amount);
            }
        }
    }

    function emitClaimedEvents(ClaimedData[] memory alreadyClaimed) external onlyAdmin {
        _emitClaimedEvents(alreadyClaimed);
    }

    function _emitClaimedEvents(ClaimedData[] memory alreadyClaimed) internal {
        uint256 len = alreadyClaimed.length;
        unchecked {
            for (uint256 i = 0; i < len; ++i) {
                emit Claimed(alreadyClaimed[i].account, alreadyClaimed[i].amount, true);
            }
        }
    }
}
