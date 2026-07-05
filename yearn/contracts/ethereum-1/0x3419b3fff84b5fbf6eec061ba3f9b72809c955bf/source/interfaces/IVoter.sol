// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

interface IVoter {
    struct Action {
        address target;
        bytes data;
    }

    struct Vote {
        uint40 weightYes;
        uint40 weightNo;
    }

    event DelegateApprovalSet(
        address indexed account,
        address indexed delegate,
        bool isApproved
    );
    event ProposalCancelled(uint256 indexed proposalId);
    event ProposalCreated(
        address indexed account,
        uint256 indexed id,
        Action[] payload,
        uint256 epoch,
        uint256 quorumWeight
    );
    event ProposalCreationMinPctSet(uint256 weight);
    event ProposalDescriptionUpdated(
        uint256 indexed proposalId,
        string description
    );
    event ProposalExecuted(uint256 indexed proposalId);
    event QuorumPctSet(uint256 pct);
    event VoteCast(
        address indexed account,
        uint256 indexed id,
        uint256 weightYes,
        uint256 weightNo
    );

    function EXECUTION_DEADLINE() external view returns (uint256);

    function EXECUTION_DELAY() external view returns (uint256);

    function MAX_DESCRIPTION_BYTES() external view returns (uint256);

    function MAX_PCT() external view returns (uint256);

    function MIN_TIME_BETWEEN_PROPOSALS() external view returns (uint256);

    function TOKEN_DECIMALS() external view returns (uint256);

    function VOTING_PERIOD() external view returns (uint256);

    function accountVoteWeights(address account, uint256 id)
        external
        view
        returns (uint40 weightYes, uint40 weightNo);

    function canExecute(uint256 id) external view returns (bool);

    function cancelProposal(uint256 id) external;

    function core() external view returns (address);

    function createNewProposal(
        address account,
        Action[] memory payload,
        string memory description
    ) external returns (uint256);

    function epochLength() external view returns (uint256);

    function executeProposal(uint256 id) external;

    function getEpoch() external view returns (uint256 epoch);

    function getProposalCount() external view returns (uint256);

    function getProposalData(uint256 id)
        external
        view
        returns (
            string memory description,
            uint256 epoch,
            uint256 createdAt,
            uint256 quorumWeight,
            uint256 weightYes,
            uint256 weightNo,
            bool processed,
            bool executable,
            Action[] memory payload
        );

    function isApprovedDelegate(address owner, address caller)
        external
        view
        returns (bool isApproved);

    function latestProposalTimestamp(address account)
        external
        view
        returns (uint256 timestamp);

    function minCreateProposalPct() external view returns (uint256);

    function minCreateProposalWeight() external view returns (uint256);

    function owner() external view returns (address);

    function proposalData(uint256)
        external
        view
        returns (
            uint16 epoch,
            uint32 createdAt,
            uint40 quorumWeight,
            bool processed,
            Vote memory results
        );

    function proposalDescription(uint256 id)
        external
        view
        returns (string memory description);

    function proposalPayload(uint256 id, uint256)
        external
        view
        returns (address target, bytes memory data);

    function quorumPct() external view returns (uint256);

    function quorumReached(uint256 id) external view returns (bool);

    function setDelegateApproval(address _delegate, bool _isApproved) external;

    function setMinCreateProposalPct(uint256 pct) external returns (bool);

    function setQuorumPct(uint256 pct) external returns (bool);

    function staker() external view returns (address);

    function startTime() external view returns (uint256);

    function updateProposalDescription(uint256 id, string memory description)
        external;

    function voteForProposal(address account, uint256 id) external;

    function voteForProposal(
        address account,
        uint256 id,
        uint256 pctYes,
        uint256 pctNo
    ) external;
}