// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;
pragma experimental ABIEncoderV2;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "./interface/ITracerDevMultisig.sol";

contract TracerDevMultisig is ITracerDevMultisig {

    uint8 public constant QUORUM = 3;
    uint32 public proposalDuration; // proposal duration in days
    // specifies the maximum number of targets each given proposal can have
    uint32 public maxProposalTargets;
    uint256 public proposalCounter;

    enum ProposalState {PROPOSED, PASSED, EXECUTED, REJECTED}

    struct Proposal {
        // Who made the proposal
        address proposer;
        // The count for yes and no votes
        uint96 yes;
        uint96 no;
        // For storing the current state in the lifecycle of a proposal
        ProposalState state;
        // The time which the proposal was created
        uint256 startTime;
        // Time the proposal closes voting
        uint256 expiryTime;
        // The time the proposal passed. Initialised to 0.
        uint256 passTime;
        // The list of targets where calls will be made to
        address[] targets;
        // The list of the call datas for each individual function call
        bytes[] proposalData;
        mapping(address => bool) userVoted;
    }

    mapping(address => bool) public multisig;
    mapping(uint256 => Proposal) public proposals;

    event ProposalCreated(uint256 proposalId);
    event ProposalPassed(uint256 proposalId);
    event ProposalRejected(uint256 proposalId);
    event TargetExecuted(uint256 proposalId, address target, bytes returnData);
    event ProposalExecuted(uint256 proposalId);
    event UserVote(address voter, bool side, uint256 proposalId);

    constructor(
        uint32 _maxProposalTargets,
        uint32 _proposalDuration,
        address[] memory _multisigMembers
    ) public {
        /* Hardcodes a 3/5 multisig */
        // Hardcoded to be 5 for our use-case
        require(_multisigMembers.length == 5, "Multisig must have 5 addresses");
        maxProposalTargets = _maxProposalTargets;
        proposalDuration = _proposalDuration;

        for (uint i = 0; i < _multisigMembers.length; i++) {
            require(_multisigMembers[i] != address(0), "address(0) given");
            multisig[_multisigMembers[i]] = true;
        }
    }

    function name() external pure returns (string memory) {
        return "TracerDevMultisig";
    }

    /**
     * @notice Payable fallback to accept ETH payments.
     */
    receive() external payable {}

    /**
     * @notice Proposes a function execution on a contract by the governance contract.
     * @param targets the target contracts to execute the proposalData on.
     */
    function propose(
        address[] memory targets,
        bytes[] memory proposalData
    )
        external
        override
        onlyMultisig()
    {
        require(targets.length != 0, "DAO: 0 targets");
        require(targets.length < maxProposalTargets, "DAO: Too many targets");
        require(
            targets.length == proposalData.length,
            "DAO: Argument length mismatch"
        );
        Proposal storage proposal = proposals[proposalCounter];
        proposal.targets = targets;
        proposal.proposalData = proposalData;
        proposal.proposer = msg.sender;
        proposal.yes = 1;
        proposal.no = 0;
        proposal.startTime = block.timestamp;
        proposal.expiryTime = block.timestamp + uint256(proposalDuration);
        proposal.passTime = 0;
        proposal.state = ProposalState.PROPOSED;
        proposals[proposalCounter].userVoted[msg.sender] = true;
        emit UserVote(msg.sender, true, proposalCounter);
        emit ProposalCreated(proposalCounter);
        proposalCounter += 1;
    }

    /**
     * @notice Executes a given proposal.
     * @dev Ensures execution succeeds but ignores return data.
     * @param proposalId the id of the proposal to execute.
     */
    function execute(uint256 proposalId) external override onlySelf {
        require(
            proposals[proposalId].state == ProposalState.PASSED,
            "DAO: Proposal state != PASSED"
        );
        proposals[proposalId].state = ProposalState.EXECUTED;
        for (uint256 i = 0; i < proposals[proposalId].targets.length; i++) {
            (bool success, bytes memory data) =
                proposals[proposalId].targets[i].call(
                    proposals[proposalId].proposalData[i]
                );
            require(success, "DAO: Failed target execution");
            emit TargetExecuted(
                proposalId,
                proposals[proposalId].targets[i],
                data
            );
        }
        emit ProposalExecuted(proposalId);
    }

    /**
     * @notice Allows a staker to vote on a given proposal. A staker may vote multiple times,
               and vote on either or both sides. A vote may not be revoked once made.
     * @param proposalId the id of the proposal to be voted on.
     * @param userVote the vote on this proposal. True for yes, False for no.
     */
    function vote(
        uint256 proposalId,
        bool userVote
    ) external override onlyMultisig() {
        require(
            proposals[proposalId].state == ProposalState.PROPOSED,
            "DAO: Proposal not voteable"
        );
        require(
            proposals[proposalId].expiryTime > block.timestamp,
            "DAO: Proposal Expired"
        );
        require(
            !proposals[proposalId].userVoted[msg.sender],
            "Multisig member must have not voted"
        );

        proposals[proposalId].userVoted[msg.sender] = true;

        uint96 votes;
        emit UserVote(msg.sender, userVote, proposalId);
        if (userVote) {
            votes = proposals[proposalId].yes + uint96(1);
            proposals[proposalId].yes = votes;
            if (votes >= QUORUM) {
                // Quorum of 3 reached, pass the proposal
                proposals[proposalId].passTime = block.timestamp;
                proposals[proposalId].state = ProposalState.PASSED;
                emit ProposalPassed(proposalId);
                ITracerDevMultisig(address(this)).execute(proposalId);
            }
        } else {
            votes = proposals[proposalId].no + uint96(1);
            proposals[proposalId].no = votes;
            if (votes >= QUORUM) {
                // Quorum of 50% reached, reject the proposal
                proposals[proposalId].state = ProposalState.REJECTED;
                emit ProposalRejected(proposalId);
            }
        }
    }

    /**
     * @notice Emergency ERC20 withdraw.
     */
    function withdrawERC20(
        address token,
        address to,
        uint256 amount
    ) public onlySelf() {
        // Potential reentrancy vulnerability. Be sure that token is trusted
        // before executing an erc20Withdraw
        IERC20(token).transfer(to, amount);
    }

    /**
     * @notice Emergency ETH withdraw.
     */
    function withdrawETH(address payable to, uint256 amount) public onlySelf () {
        to.transfer(amount);
    }

    /**
     * @dev reverts if caller is not the multisig wallet.
     */
    modifier onlyMultisig() {
        require(multisig[msg.sender], "DAO: Caller not in multisig");
        _;
    }

    modifier onlySelf() {
        require(msg.sender == address(this), "DAO: caller not self");
        _;
    }

}
