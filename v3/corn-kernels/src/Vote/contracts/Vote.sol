// SPDX-License-Identifier: BUSL-1.1

// This contract confers governance right to ZRO holders.

pragma solidity ^0.8.0;

import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import { Proxied } from "hardhat-deploy/solc_0.8/proxy/Proxied.sol";
import { MessagingFee } from "@layerzerolabs/lz-evm-protocol-v2/contracts/interfaces/ILayerZeroEndpointV2.sol";

import { IVotePower } from "./interfaces/IVotePower.sol";
import { IVoteMessaging } from "./interfaces/IVoteMessaging.sol";

/// this contract coordinates the voting and ballot submission
/// the upgrade key will be burnt after the first vote starts
contract Vote is OwnableUpgradeable, Proxied {
    address public votePower;
    address public voteMessaging;

    function initialize() external proxied initializer {
        __Ownable_init();
    }

    /// ---- Owner functions
    // setters for the vote power contract
    function setVotePower(address _contract) external onlyOwner {
        votePower = _contract;
    }

    // setters for the vote messaging contract
    function setVoteMessaging(address _contract) external onlyOwner {
        voteMessaging = _contract;
    }

    /// ---- voting functions
    function vote(bool _enabledFeeSwitch) external payable {
        // call the Vote Power contract to get the voting power of the user
        IVotePower(votePower).vote{ value: msg.value }(msg.sender, _enabledFeeSwitch);
    }

    // quote vote
    function quoteVote() external view returns (MessagingFee memory) {
        return IVotePower(votePower).quoteVote();
    }

    function submitVote(IVoteMessaging.Ballot calldata _ballot) external payable {
        require(msg.sender == votePower, "Only the vote power contract can submit votes");

        // pass along the msg.value to the vote messaging contract
        IVoteMessaging(voteMessaging).sendBallot{ value: msg.value }(_ballot);
    }

    // a quoting function to submit the ballot
    function quoteSubmitBallot() external view returns (MessagingFee memory) {
        return IVoteMessaging(voteMessaging).quoteSendBallot();
    }
}
