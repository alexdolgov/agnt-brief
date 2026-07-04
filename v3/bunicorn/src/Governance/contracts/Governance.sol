// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;
pragma experimental ABIEncoderV2;

import "@openzeppelin/contracts-upgradeable/proxy/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts/utils/EnumerableSet.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";

contract Governance is Initializable, AccessControlUpgradeable {
    using SafeMath for uint256;
    using EnumerableSet for EnumerableSet.AddressSet;
    using EnumerableSet for EnumerableSet.UintSet;

    bytes32 public constant ROLE_GOVERNANCE_ADMIN = keccak256("ROLE_GOVERNANCE_ADMIN");
 
    function initialize (address _buni) public initializer {
        __AccessControl_init_unchained();

        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);

        BUNI_TOKEN = IERC20(_buni);

        createFee = 100 * (10 ** 18);
        amountToPropose = 5000 * (10 ** 18);
        amountToVote = 3000 * (10 ** 18);
    }

    struct Proposal {
        // Creator of the proposal
        address proposer;

        // Flag marking whether the proposal has been canceled
        bool canceled;

        // Flag marking whether the proposal has been executed
        bool executed;

        // Proposal creation timestamp
        uint256 proposalTimestamp;

        // Current number of votes in favor of this proposal
        uint256 numUpvotes;

        // Current number of votes in opposition to this proposal
        uint256 numDownvotes;
    }

    struct Receipt {
        // Whether or not a vote has been cast
        bool hasVoted;

        // Whether or not the voter supports the proposal
        bool isUpvote;

        // Proposal vote timestamp
        uint256 ballotTimestamp;
    }

    // The official record of all proposals ever proposed
    mapping (uint256 => Proposal) private proposals;

    // Receipts of ballots for the entire set of voters of a specific proposal
    mapping (uint256 => mapping (address => Receipt)) receipts;

    // List voters addresses of a specific proposal
    mapping (uint256 => EnumerableSet.AddressSet) voterAddresses;

    // Record of all proposers ever proposed
    mapping (address => EnumerableSet.UintSet) private proposers;

    // Record of all voters ever voted
    mapping (address => EnumerableSet.UintSet) private voters;

    // Fee for creating a proposal, paid by BUNI
    uint256 public createFee;

    // Require amount to create a new proposal
    uint256 public amountToPropose;

    bool public isEmergency;

    // Require amount to vote a proposal
    uint256 public amountToVote;

    IERC20 public BUNI_TOKEN;

    IERC721 public BUNICORNS_CONTRACT;

    IERC721 public TRAINERS_CONTRACT;

    // Events
    event ProposalCreated(
        address proposer,
        uint256 indexed proposalId
    );
    event Vote(
        address voter,
        uint256 indexed proposalId,
        bool isUpvote
    );
    event CancelProposal(
        uint256 indexed proposalId
    );
    event ExcuteProposal(
        uint256 indexed proposalId
    );

    modifier onlyGovernanceAdmin() {
        require(hasRole(ROLE_GOVERNANCE_ADMIN, msg.sender), "Not governance admin");
        _;
    }

    modifier noEmergency() {
        _noEmergency();
        _;
    }

    function _noEmergency() internal view {
        require(!isEmergency, "governance: emergency pause");
    }

    function getProposal(uint256 _proposalId) public view returns (Proposal memory proposal) {
        return proposals[_proposalId];
    }

    function getVotersOfProposal(uint256 _proposalId) public view returns (address[] memory) {
        EnumerableSet.AddressSet storage set = voterAddresses[_proposalId];
        address[] memory _voters = new address[](set.length());

        for (uint256 i = 0; i < _voters.length; i++) {
            _voters[i] = set.at(i);
        }
        return _voters;
    }

    function getReceipt(uint _proposalId, address _voter) public view returns (Receipt memory) {
        return receipts[_proposalId][address(_voter)];
    }

    function getProposalIDsByProposer(address _proposer) public view returns (uint256[] memory) {
        EnumerableSet.UintSet storage set = proposers[address(_proposer)];
        uint256[] memory ids = new uint256[](set.length());

        for (uint256 i = 0; i < ids.length; i++) {
            ids[i] = set.at(i);
        }
        return ids;
    }

    function getProposalIDsByVoter(address _voter) public view returns (uint256[] memory) {
        EnumerableSet.UintSet storage set = voters[address(_voter)];
        uint256[] memory ids = new uint256[](set.length());

        for (uint256 i = 0; i < ids.length; i++) {
            ids[i] = set.at(i);
        }
        return ids;
    }

    function setCreateFee(uint256 _newCreateFee) public onlyGovernanceAdmin {
        createFee = _newCreateFee;
    }

    function setAmountToPropose(uint256 _newAmount) public onlyGovernanceAdmin {
        amountToPropose = _newAmount;
    }

    function setAmountToVote(uint256 _newAmount) public onlyGovernanceAdmin {
        amountToVote = _newAmount;
    }

    function setEmergency(bool _isEmergency) public onlyGovernanceAdmin {
        isEmergency = _isEmergency;
    }

    function propose(uint256 _proposalId) public noEmergency {
        require(BUNI_TOKEN.balanceOf(msg.sender) >= amountToPropose, "Insufficient balance");
        require(proposals[_proposalId].proposalTimestamp == 0, "Proposal already exists");

        Proposal memory newProposal = Proposal({
            proposer: msg.sender,
            canceled: false,
            executed: false,
            proposalTimestamp: block.timestamp,
            numUpvotes: 0,
            numDownvotes: 0
        });

        proposals[_proposalId] = newProposal;
        proposers[msg.sender].add(_proposalId);

        BUNI_TOKEN.transferFrom(msg.sender, address(this), createFee);

        emit ProposalCreated(
            msg.sender,
            _proposalId
        );
    }

    function vote(uint256 _proposalId, bool _isUpvote) public noEmergency {
        require(
            BUNI_TOKEN.balanceOf(msg.sender) >= amountToVote ||
            BUNICORNS_CONTRACT.balanceOf(msg.sender) > 0 ||
            TRAINERS_CONTRACT.balanceOf(msg.sender) > 0, 
            "Insufficient balance"
        );

        Proposal storage proposal = proposals[_proposalId];
        Receipt storage receipt = receipts[_proposalId][msg.sender];

        require(!(proposal.canceled || proposal.executed), "Voting is closed");
        require(receipt.hasVoted == false, "Voter already voted");

        if (_isUpvote) {
            proposal.numUpvotes++;
        } else {
            proposal.numDownvotes++;
        }

        receipt.hasVoted = true;
        receipt.isUpvote = _isUpvote;
        receipt.ballotTimestamp = block.timestamp;

        voterAddresses[_proposalId].add(msg.sender);

        voters[msg.sender].add(_proposalId);

        emit Vote(
            msg.sender,
            _proposalId,
            _isUpvote
        );
    }

    function cancelProposal(uint256 _proposalId) public onlyGovernanceAdmin {
        require(proposals[_proposalId].proposalTimestamp > 0, "Proposal not exists");
    
        Proposal storage proposal = proposals[_proposalId];
        proposal.canceled = true;

        emit CancelProposal(_proposalId);
    }

    function executeProposal(uint256 _proposalId) public onlyGovernanceAdmin {
        require(proposals[_proposalId].proposalTimestamp > 0, "Proposal not exists");
    
        Proposal storage proposal = proposals[_proposalId];
        proposal.executed = true;

        emit ExcuteProposal(_proposalId);
    }

    function withdraw(IERC20 _token, address _recipient, uint256 _amount) public onlyGovernanceAdmin {
        require(IERC20(_token).balanceOf(address(this)) >= _amount, "Insufficient balance");
        IERC20(_token).transfer(_recipient, _amount);
    }

    function setBunicornsContract(IERC721 _contract) public onlyGovernanceAdmin {
        BUNICORNS_CONTRACT = _contract;
    }

    function setTrainersContract(IERC721 _contract) public onlyGovernanceAdmin {
        TRAINERS_CONTRACT = _contract;
    }
}
