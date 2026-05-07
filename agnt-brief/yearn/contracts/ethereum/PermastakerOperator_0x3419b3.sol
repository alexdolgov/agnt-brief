// ============================================================
// FILE: interfaces/IPermastaker.sol
// ============================================================


pragma solidity ^0.8.20;

interface IPermastaker {
    error OwnableInvalidOwner(address owner);
    error OwnableUnauthorizedAccount(address account);
    event OperatorUpdated(address indexed operator);
    event OwnershipTransferStarted(
        address indexed previousOwner,
        address indexed newOwner
    );
    event OwnershipTransferred(
        address indexed previousOwner,
        address indexed newOwner
    );

    function acceptOwnership() external;

    function claimAndStake() external returns (uint256 amount);

    function core() external view returns (address);

    function execute(address target, bytes memory data)
        external
        returns (bool, bytes memory);

    function migrateStaker() external;

    function name() external view returns (string memory);

    function operator() external view returns (address);

    function owner() external view returns (address);

    function pendingOwner() external view returns (address);

    function registry() external view returns (address);

    function renounceOwnership() external;

    function safeExecute(address target, bytes memory data)
        external
        returns (bytes memory);

    function setOperator(address _operator) external;

    function staker() external view returns (address);

    function transferOwnership(address newOwner) external;

    function vestManager() external view returns (address);
}

// ============================================================
// FILE: interfaces/IRegistry.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

interface IRegistry {
    event AddPair(address pairAddress);
    event OwnershipTransferStarted(address indexed previousOwner, address indexed newOwner);
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    event SetDeployer(address deployer, bool _bool);
    event DefaultSwappersSet(address[] addresses);
    event EntryUpdated(string indexed key, address indexed addr);
    event WithdrawTo(address indexed user, uint256 amount);

    // Protected keys
    function LIQUIDATION_HANDLER() external pure returns (string memory);
    function FEE_DEPOSIT() external pure returns (string memory);
    function REDEMPTION_HANDLER() external pure returns (string memory);
    function INSURANCE_POOL() external pure returns (string memory);
    function REWARD_HANDLER() external pure returns (string memory);
    function TREASURY() external pure returns (string memory);
    function STAKER() external pure returns (string memory);
    function L2_MANAGER() external pure returns (string memory);
    function VEST_MANAGER() external pure returns (string memory);

    // Other public functions
    function token() external view returns (address);
    function govToken() external view returns (address);
    function getAddress(string memory key) external view returns (address);
    function getAllKeys() external view returns (string[] memory);
    function getAllAddresses() external view returns (address[] memory);
    function getProtectedKeys() external pure returns (string[] memory);
    function keyExists(string memory) external view returns (bool);
    function hashToKey(bytes32) external view returns (string memory);
    function setAddress(string memory key, address addr) external;
    function acceptOwnership() external;
    function addPair(address _pairAddress) external;
    function registeredPairs(uint256) external view returns (address);
    function pairsByName(string memory) external view returns (address);
    function registeredPairsLength() external view returns (uint256);
    function getAllPairAddresses() external view returns (address[] memory _deployedPairsArray);
    function defaultSwappers(uint256 _index) external view returns (address);
    function owner() external view returns (address);
    function pendingOwner() external view returns (address);
    function renounceOwnership() external;
    function transferOwnership(address newOwner) external;
    function claimFees(address _pair) external;
    function claimRewards(address _pair) external;
    function claimInsuranceRewards() external;
    function withdrawTo(address _asset, uint256 _amount, address _to) external;
    function mint(address receiver, uint256 amount) external;
    function burn(address target, uint256 amount) external;
    function liquidationHandler() external view returns(address);
    function feeDeposit() external view returns(address);
    function redemptionHandler() external view returns(address);
    function rewardHandler() external view returns(address);
    function insurancePool() external view returns(address);
    function setRewardClaimer(address _newAddress) external;
    function setRedemptionHandler(address _newAddress) external;
    function setFeeDeposit(address _newAddress) external;
    function setLiquidationHandler(address _newAddress) external;
    function setInsurancePool(address _newAddress) external;
    function setStaker(address _newAddress) external;
    function setTreasury(address _newAddress) external;
    function staker() external view returns(address);
    function treasury() external view returns(address);
    function l2manager() external view returns(address);
    function setRewardHandler(address _newAddress) external;
    function setVestManager(address _newAddress) external;
    function setDefaultSwappers(address[] memory _swappers) external;
    function collateralId(address _collateral) external view returns(uint256);

    error NameMustBeUnique();
    error ProtectedKey(string key);
}

// ============================================================
// FILE: interfaces/IVoter.sol
// ============================================================

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

// ============================================================
// FILE: src/PermastakerOperator.sol
// ============================================================

pragma solidity 0.8.28;

import {IPermastaker} from "interfaces/IPermastaker.sol";
import {IVoter} from "interfaces/IVoter.sol";
import {IRegistry} from "interfaces/IRegistry.sol";

contract PermastakerOperator {
    IRegistry public constant registry = IRegistry(0x10101010E0C3171D894B71B3400668aF311e7D94);
    IPermastaker public immutable permastaker;
    address public operator;
    mapping(address => bool) public approved;
    
    event Approved(address indexed account, bool indexed approved);
    event SetOperator(address indexed operator);
    
    modifier onlyOperator() {
        require(
            msg.sender == operator ||
            msg.sender == permastaker.owner(),
            "Not operator"
        );
        _;
    }

    modifier onlyApproved() {
        require(
            approved[msg.sender] ||
            msg.sender == operator ||
            msg.sender == owner(),
            "Not approved"
        );
        _;
    }

    constructor(address _permastaker, address _operator, address[] memory _approved) {
        permastaker = IPermastaker(_permastaker);
        operator = _operator;
        emit SetOperator(_operator);
        for (uint256 i = 0; i < _approved.length; i++) {
            approved[_approved[i]] = true;
            emit Approved(_approved[i], true);
        }
    }

    function voteForProposal(uint256 _proposalId) external onlyOperator {
        permastaker.safeExecute(
            address(voter()),
            abi.encodeWithSelector(
                bytes4(keccak256("voteForProposal(address,uint256)")),
                address(permastaker),
                _proposalId
            )
        );
    }

    function voteForProposal(uint256 _proposalId, uint256 _pctYes, uint256 _pctNo) external onlyOperator {
        permastaker.safeExecute(
            address(voter()),
            abi.encodeWithSelector(
                bytes4(keccak256("voteForProposal(address,uint256,uint256,uint256)")),
                address(permastaker),
                _proposalId,
                _pctYes,
                _pctNo
            )
        );
    }

    function createNewProposal(IVoter.Action[] memory _payload, string calldata _description) external onlyOperator returns (uint256) {
        bytes memory data = permastaker.safeExecute(
            address(voter()),
            abi.encodeWithSelector(IVoter.createNewProposal.selector, address(permastaker), _payload, _description)
        );
        return abi.decode(data, (uint256));
    }

    function safeExecute(address _target, bytes memory _data) external onlyOperator returns (bytes memory) {
        return permastaker.safeExecute(_target, _data);
    }

    function setApproved(address _account, bool _approved) external onlyOperator {
        approved[_account] = _approved;
        emit Approved(_account, _approved);
    }

    function claimAndStake() external onlyApproved returns (uint256) {
        return permastaker.claimAndStake();
    }

    function setOperator(address _operator) external {
        require(msg.sender == owner(), "Not owner");
        operator = _operator;
        emit SetOperator(_operator);
    }

    function owner() public view returns (address) {
        return permastaker.owner();
    }

    function voter() public view returns (address) {
        return registry.getAddress("VOTER");
    }
}
