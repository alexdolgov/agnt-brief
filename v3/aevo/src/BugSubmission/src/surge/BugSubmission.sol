// SPDX-License-Identifier: GPL-3.0-only
pragma solidity 0.8.13;

import "../libraries/RescueFundsLib.sol";
import "openzeppelin-contracts/contracts/access/Ownable2Step.sol";

interface ISurgePass {
    function balanceOf(address owner) external view returns (uint256);
}

contract BugSubmission is Ownable2Step {
    ISurgePass public surgePass;
    uint256 public submissionFee;

    enum Severity {
        LOW,
        MEDIUM,
        HIGH
    }

    event BugReportSubmitted(
        address submittedBy,
        Severity bugSeverity,
        string reportLink
    );
    event LootBoxReportSubmitted(
        address submittedBy,
        bytes32 txHash,
        string lootBoxReportLink
    );
    event SurgePassUpdated(address surgePass);
    event SubmissionFeeUpdated(uint256 submissionFee);

    error InvalidSubmission();

    constructor(address owner_, address surgePass_) {
        _transferOwnership(owner_);

        surgePass = ISurgePass(surgePass_);
        submissionFee = 0.001 ether;
    }

    modifier gated(address submitter) {
        if (surgePass.balanceOf(submitter) == 0) revert InvalidSubmission();
        if (msg.value != submissionFee) revert InvalidSubmission();
        _;
    }

    function submitBugReportFor(
        address submitter,
        Severity bugSeverity,
        string memory reportLink
    ) external payable gated(submitter) {
        emit BugReportSubmitted(submitter, bugSeverity, reportLink);
    }

    function submitBugReport(
        Severity bugSeverity,
        string memory reportLink
    ) external payable gated(msg.sender) {
        emit BugReportSubmitted(msg.sender, bugSeverity, reportLink);
    }

    function claimLootBox(
        bytes32 txHash,
        string memory lootBoxReportLink
    ) external payable gated(msg.sender) {
        emit LootBoxReportSubmitted(msg.sender, txHash, lootBoxReportLink);
    }

    function updateSurgePass(address surgePass_) external onlyOwner {
        surgePass = ISurgePass(surgePass_);
        emit SurgePassUpdated(surgePass_);
    }

    function updateSubmissionFee(uint256 submissionFee_) external onlyOwner {
        submissionFee = submissionFee_;
        emit SubmissionFeeUpdated(submissionFee_);
    }

    function rescueFunds(
        address token_,
        address userAddress_,
        uint256 amount_
    ) external onlyOwner {
        RescueFundsLib.rescueFunds(token_, userAddress_, amount_);
    }
}
