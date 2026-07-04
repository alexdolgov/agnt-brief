// Sources flattened with hardhat v2.3.0 https://hardhat.org

// File contracts/interface/IxSNOB.sol

pragma solidity 0.8.4;

interface IxSNOB {
  function balanceOf(address addr) external view returns (uint256);
}


// File contracts/DummyXSNOB.sol

pragma solidity 0.8.4;

contract DummyXSNOB is IxSNOB {
    mapping (address => uint256) private _balances;

    uint256 private _totalSupply;

    string private _name;
    string private _symbol;

    /**
     * @dev Sets the values for {name} and {symbol}.
     *
     * All two of these values are immutable: they can only be set once during
     * construction.
     */
    constructor () {
        _name = "Staked SNOB";
        _symbol = "xSNOB";
    }

    /**
     * @dev Returns the name of the token.
     */
    function name() public view virtual returns (string memory) {
        return _name;
    }

    /**
     * @dev Returns the symbol of the token, usually a shorter version of the
     * name.
     */
    function symbol() public view virtual returns (string memory) {
        return _symbol;
    }

    /**
     * @dev Returns the number of decimals used to get its user representation.
     * For example, if `decimals` equals `2`, a balance of `505` tokens should
     * be displayed to a user as `5,05` (`505 / 10 ** 2`).
     *
     * Tokens usually opt for a value of 18, imitating the relationship between
     * Ether and Wei. This is the value {ERC20} uses, unless this function is
     * overridden;
     *
     * NOTE: This information is only used for _display_ purposes: it in
     * no way affects any of the arithmetic of the contract, including
     * {IERC20-balanceOf} and {IERC20-transfer}.
     */
    function decimals() public view virtual returns (uint8) {
        return 18;
    }

    /**
     * @dev See {IERC20-totalSupply}.
     */
    function totalSupply() public view virtual returns (uint256) {
        return _totalSupply;
    }

    /**
     * @dev For ease of testing xSNOB.
     */
    function balanceOf(address account) public view virtual override returns (uint256) {
        return _balances[account];
    }
}


// File @openzeppelin/contracts/utils/Address.sol@v4.1.0

pragma solidity ^0.8.0;

/**
 * @dev Collection of functions related to the address type
 */
library Address {
    /**
     * @dev Returns true if `account` is a contract.
     *
     * [IMPORTANT]
     * ====
     * It is unsafe to assume that an address for which this function returns
     * false is an externally-owned account (EOA) and not a contract.
     *
     * Among others, `isContract` will return false for the following
     * types of addresses:
     *
     *  - an externally-owned account
     *  - a contract in construction
     *  - an address where a contract will be created
     *  - an address where a contract lived, but was destroyed
     * ====
     */
    function isContract(address account) internal view returns (bool) {
        // This method relies on extcodesize, which returns 0 for contracts in
        // construction, since the code is only stored at the end of the
        // constructor execution.

        uint256 size;
        // solhint-disable-next-line no-inline-assembly
        assembly { size := extcodesize(account) }
        return size > 0;
    }

    /**
     * @dev Replacement for Solidity's `transfer`: sends `amount` wei to
     * `recipient`, forwarding all available gas and reverting on errors.
     *
     * https://eips.ethereum.org/EIPS/eip-1884[EIP1884] increases the gas cost
     * of certain opcodes, possibly making contracts go over the 2300 gas limit
     * imposed by `transfer`, making them unable to receive funds via
     * `transfer`. {sendValue} removes this limitation.
     *
     * https://diligence.consensys.net/posts/2019/09/stop-using-soliditys-transfer-now/[Learn more].
     *
     * IMPORTANT: because control is transferred to `recipient`, care must be
     * taken to not create reentrancy vulnerabilities. Consider using
     * {ReentrancyGuard} or the
     * https://solidity.readthedocs.io/en/v0.5.11/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].
     */
    function sendValue(address payable recipient, uint256 amount) internal {
        require(address(this).balance >= amount, "Address: insufficient balance");

        // solhint-disable-next-line avoid-low-level-calls, avoid-call-value
        (bool success, ) = recipient.call{ value: amount }("");
        require(success, "Address: unable to send value, recipient may have reverted");
    }

    /**
     * @dev Performs a Solidity function call using a low level `call`. A
     * plain`call` is an unsafe replacement for a function call: use this
     * function instead.
     *
     * If `target` reverts with a revert reason, it is bubbled up by this
     * function (like regular Solidity function calls).
     *
     * Returns the raw returned data. To convert to the expected return value,
     * use https://solidity.readthedocs.io/en/latest/units-and-global-variables.html?highlight=abi.decode#abi-encoding-and-decoding-functions[`abi.decode`].
     *
     * Requirements:
     *
     * - `target` must be a contract.
     * - calling `target` with `data` must not revert.
     *
     * _Available since v3.1._
     */
    function functionCall(address target, bytes memory data) internal returns (bytes memory) {
      return functionCall(target, data, "Address: low-level call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`], but with
     * `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCall(address target, bytes memory data, string memory errorMessage) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but also transferring `value` wei to `target`.
     *
     * Requirements:
     *
     * - the calling contract must have an ETH balance of at least `value`.
     * - the called Solidity function must be `payable`.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(address target, bytes memory data, uint256 value) internal returns (bytes memory) {
        return functionCallWithValue(target, data, value, "Address: low-level call with value failed");
    }

    /**
     * @dev Same as {xref-Address-functionCallWithValue-address-bytes-uint256-}[`functionCallWithValue`], but
     * with `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(address target, bytes memory data, uint256 value, string memory errorMessage) internal returns (bytes memory) {
        require(address(this).balance >= value, "Address: insufficient balance for call");
        require(isContract(target), "Address: call to non-contract");

        // solhint-disable-next-line avoid-low-level-calls
        (bool success, bytes memory returndata) = target.call{ value: value }(data);
        return _verifyCallResult(success, returndata, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(address target, bytes memory data) internal view returns (bytes memory) {
        return functionStaticCall(target, data, "Address: low-level static call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(address target, bytes memory data, string memory errorMessage) internal view returns (bytes memory) {
        require(isContract(target), "Address: static call to non-contract");

        // solhint-disable-next-line avoid-low-level-calls
        (bool success, bytes memory returndata) = target.staticcall(data);
        return _verifyCallResult(success, returndata, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a delegate call.
     *
     * _Available since v3.4._
     */
    function functionDelegateCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionDelegateCall(target, data, "Address: low-level delegate call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a delegate call.
     *
     * _Available since v3.4._
     */
    function functionDelegateCall(address target, bytes memory data, string memory errorMessage) internal returns (bytes memory) {
        require(isContract(target), "Address: delegate call to non-contract");

        // solhint-disable-next-line avoid-low-level-calls
        (bool success, bytes memory returndata) = target.delegatecall(data);
        return _verifyCallResult(success, returndata, errorMessage);
    }

    function _verifyCallResult(bool success, bytes memory returndata, string memory errorMessage) private pure returns(bytes memory) {
        if (success) {
            return returndata;
        } else {
            // Look for revert reason and bubble it up if present
            if (returndata.length > 0) {
                // The easiest way to bubble the revert reason is using memory via assembly

                // solhint-disable-next-line no-inline-assembly
                assembly {
                    let returndata_size := mload(returndata)
                    revert(add(32, returndata), returndata_size)
                }
            } else {
                revert(errorMessage);
            }
        }
    }
}


// File @openzeppelin/contracts/utils/math/SafeMath.sol@v4.1.0

pragma solidity ^0.8.0;

// CAUTION
// This version of SafeMath should only be used with Solidity 0.8 or later,
// because it relies on the compiler's built in overflow checks.

/**
 * @dev Wrappers over Solidity's arithmetic operations.
 *
 * NOTE: `SafeMath` is no longer needed starting with Solidity 0.8. The compiler
 * now has built in overflow checking.
 */
library SafeMath {
    /**
     * @dev Returns the addition of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryAdd(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            uint256 c = a + b;
            if (c < a) return (false, 0);
            return (true, c);
        }
    }

    /**
     * @dev Returns the substraction of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function trySub(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b > a) return (false, 0);
            return (true, a - b);
        }
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryMul(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
            // benefit is lost if 'b' is also tested.
            // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
            if (a == 0) return (true, 0);
            uint256 c = a * b;
            if (c / a != b) return (false, 0);
            return (true, c);
        }
    }

    /**
     * @dev Returns the division of two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryDiv(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a / b);
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryMod(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a % b);
        }
    }

    /**
     * @dev Returns the addition of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     *
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        return a + b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        return a - b;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     *
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        return a * b;
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator.
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        return a / b;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        return a % b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on
     * overflow (when the result is negative).
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {trySub}.
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        unchecked {
            require(b <= a, errorMessage);
            return a - b;
        }
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting with custom message on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        unchecked {
            require(b > 0, errorMessage);
            return a / b;
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting with custom message when dividing by zero.
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {tryMod}.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        unchecked {
            require(b > 0, errorMessage);
            return a % b;
        }
    }
}


// File @openzeppelin/contracts/security/ReentrancyGuard.sol@v4.1.0

pragma solidity ^0.8.0;

/**
 * @dev Contract module that helps prevent reentrant calls to a function.
 *
 * Inheriting from `ReentrancyGuard` will make the {nonReentrant} modifier
 * available, which can be applied to functions to make sure there are no nested
 * (reentrant) calls to them.
 *
 * Note that because there is a single `nonReentrant` guard, functions marked as
 * `nonReentrant` may not call one another. This can be worked around by making
 * those functions `private`, and then adding `external` `nonReentrant` entry
 * points to them.
 *
 * TIP: If you would like to learn more about reentrancy and alternative ways
 * to protect against it, check out our blog post
 * https://blog.openzeppelin.com/reentrancy-after-istanbul/[Reentrancy After Istanbul].
 */
abstract contract ReentrancyGuard {
    // Booleans are more expensive than uint256 or any type that takes up a full
    // word because each write operation emits an extra SLOAD to first read the
    // slot's contents, replace the bits taken up by the boolean, and then write
    // back. This is the compiler's defense against contract upgrades and
    // pointer aliasing, and it cannot be disabled.

    // The values being non-zero value makes deployment a bit more expensive,
    // but in exchange the refund on every call to nonReentrant will be lower in
    // amount. Since refunds are capped to a percentage of the total
    // transaction's gas, it is best to keep them low in cases like this one, to
    // increase the likelihood of the full refund coming into effect.
    uint256 private constant _NOT_ENTERED = 1;
    uint256 private constant _ENTERED = 2;

    uint256 private _status;

    constructor () {
        _status = _NOT_ENTERED;
    }

    /**
     * @dev Prevents a contract from calling itself, directly or indirectly.
     * Calling a `nonReentrant` function from another `nonReentrant`
     * function is not supported. It is possible to prevent this from happening
     * by making the `nonReentrant` function external, and make it call a
     * `private` function that does the actual work.
     */
    modifier nonReentrant() {
        // On the first call to nonReentrant, _notEntered will be true
        require(_status != _ENTERED, "ReentrancyGuard: reentrant call");

        // Any calls to nonReentrant after this point will fail
        _status = _ENTERED;

        _;

        // By storing the original value once again, a refund is triggered (see
        // https://eips.ethereum.org/EIPS/eip-2200)
        _status = _NOT_ENTERED;
    }
}


// File contracts/Governance.sol

pragma solidity 0.8.4;

/// SPDX-License-Identifier: MIT
contract Governance is ReentrancyGuard {
    using SafeMath for uint256;

    /// @notice Lower bound for the voting period
    uint256 public minimumVotingPeriod = 3 days;
    uint256 public constant VOTING_PERIOD_MINIMUM = 1 days;
    uint256 public constant VOTING_PERIOD_MAXIMUM = 30 days;

    /// @notice Seconds since the end of the voting period before the proposal can be executed
    uint256 public executionDelay = 24 hours;
    uint256 public constant EXECUTION_DELAY_MINIMUM = 30 seconds;
    uint256 public constant EXECUTION_DELAY_MAXIMUM = 30 days;

    /// @notice Seconds since the proposal could be executed until it is considered expired
    uint256 public constant EXPIRATION_PERIOD = 14 days;

    /// @notice The required minimum number of votes in support of a proposal for it to succeed
    uint256 public quorumVotes = 300_000e18;
    uint256 public constant QUORUM_VOTES_MINIMUM = 100_000e18;
    uint256 public constant QUORUM_VOTES_MAXIMUM = 18_000_000e18;

    /// @notice The minimum number of votes required for an account to create a proposal
    uint256 public proposalThreshold = 100_000e18;
    uint256 public constant PROPOSAL_THRESHOLD_MINIMUM = 50_000e18;
    uint256 public constant PROPOSAL_THRESHOLD_MAXIMUM = 10_000_000e18;

    /// @notice The total number of proposals
    uint256 public proposalCount;

    /// @notice The record of all proposals ever proposed
    mapping(uint256 => Proposal) public proposals;
    mapping(uint256 => ProposalExecutionContext) public proposalExecutionContexts;
    mapping(uint256 => mapping(address => Receipt)) public receipts;
    mapping(address => uint256) public lastProposalByAddress;

    /// @notice Non-tradeable xSNOB used to represent votes
    IxSNOB public xSNOB;

    struct Proposal {
        string title;
        string metadata;
        address proposer;
        address executor;
        uint256 startTime;
        uint256 votingPeriod;
        uint256 quorumVotes;
        uint256 executionDelay;
        uint256 forVotes;
        uint256 againstVotes;
    }

    struct ProposalExecutionContext {
        address target;
        uint256 value;
        bytes data;
    }

    struct Receipt {
        bool hasVoted;
        bool support;
        uint256 votes;
    }

    enum ProposalState {
        Active,
        Defeated,
        PendingExecution,
        ReadyForExecution,
        Executed,
        Expired
    }

    event NewVote(
        uint256 proposalId,
        address voter,
        bool support,
        uint256 votes
    );
    event ProposalCreated(uint256 proposalId, address proposer, string title);
    event ProposalExecuted(uint256 proposalId, address executor);
    event MinimumVotingPeriodChanged(uint256 newMinimumVotingPeriod);
    event ExecutionDelayChanged(uint256 newExecutionDelay);
    event QuorumVotesChanges(uint256 newQuorumVotes);
    event ProposalThresholdChanged(uint256 newProposalThreshold);

    /// @dev This token must not be tradeable
    constructor(address _xSNOB) {
        xSNOB = IxSNOB(_xSNOB);
    }

    modifier onlyGovernor() {
        require(
            msg.sender == address(this),
            "Governance: insufficient privileges"
        );
        _;
    }

    function state(uint256 _proposalId) public view returns (ProposalState) {
        require(
            _proposalId <= proposalCount && _proposalId != 0,
            "Governance::state: invalid proposal id"
        );

        Proposal storage proposal = proposals[_proposalId];

        if (block.timestamp <= proposal.startTime.add(proposal.votingPeriod)) {
            return ProposalState.Active;
        } else if (proposal.executor != address(0)) {
            return ProposalState.Executed;
        } else if (proposal.forVotes <= proposal.againstVotes || proposal.forVotes < proposal.quorumVotes) {
            return ProposalState.Defeated;
        } else if (block.timestamp < proposal.startTime.add(proposal.votingPeriod).add(proposal.executionDelay)) {
            return ProposalState.PendingExecution;
        } else if (block.timestamp < proposal.startTime.add(proposal.votingPeriod).add(proposal.executionDelay).add(EXPIRATION_PERIOD)) {
            return ProposalState.ReadyForExecution;
        } else {
            return ProposalState.Expired;
        }
    }

    function getReceipt(uint256 _proposalId, address _voter) public view returns (Receipt memory) {
        return receipts[_proposalId][_voter];
    }

    function propose(
        string calldata _title,
        string calldata _metadata,
        uint256 _votingPeriod,
        address _target,
        uint256 _value,
        bytes memory _data
    ) public {
        require(
            _votingPeriod >= minimumVotingPeriod,
            "Governance::propose: voting period too short"
        );

        require(
            _votingPeriod <= VOTING_PERIOD_MAXIMUM,
            "Governance::propose: voting period too long"
        );

        uint256 lastProposalId = lastProposalByAddress[msg.sender];

        if (lastProposalId > 0) {
            ProposalState proposalState = state(lastProposalId);
            require(
                proposalState == ProposalState.Executed ||
                proposalState == ProposalState.Defeated ||
                proposalState == ProposalState.Expired,
                "Governance::propose: proposer already has a proposal in progress"
            );
        }

        uint256 votes = xSNOB.balanceOf(msg.sender);

        require(
            votes > proposalThreshold,
            "Governance::propose: proposer votes below proposal threshold"
        );

        proposalCount++;

        Proposal memory newProposal = Proposal({
            title: _title,
            metadata: _metadata,
            proposer: msg.sender,
            executor: address(0),
            startTime: block.timestamp,
            votingPeriod: _votingPeriod,
            quorumVotes: quorumVotes,
            executionDelay: executionDelay,
            forVotes: 0,
            againstVotes: 0
        });

        proposals[proposalCount] = newProposal;
        lastProposalByAddress[msg.sender] = proposalCount;

        ProposalExecutionContext memory newProposalExecutionContext = ProposalExecutionContext({
            target: _target,
            value: _value,
            data: _data
        });

        proposalExecutionContexts[proposalCount] = newProposalExecutionContext;

        emit ProposalCreated(proposalCount, newProposal.proposer, newProposal.title);
    }

    function vote(uint256 _proposalId, bool _support) public {
        require(
            state(_proposalId) == ProposalState.Active,
            "Governance::vote: voting is closed"
        );

        Proposal storage proposal = proposals[_proposalId];
        Receipt storage receipt = receipts[_proposalId][msg.sender];

        uint256 votes = xSNOB.balanceOf(msg.sender);

        if (receipt.hasVoted) {
            if (receipt.support) {
                proposal.forVotes = proposal.forVotes.sub(receipt.votes);
            } else {
                proposal.againstVotes = proposal.againstVotes.sub(receipt.votes);
            }
        }

        if (_support) {
            proposal.forVotes = proposal.forVotes.add(votes);
        } else {
            proposal.againstVotes = proposal.againstVotes.add(votes);
        }

        receipt.hasVoted = true;
        receipt.support = _support;
        receipt.votes = votes;

        emit NewVote(_proposalId, msg.sender, _support, votes);
    }

    function execute(uint256 _proposalId) public payable nonReentrant returns (bytes memory) {
        require(
            state(_proposalId) == ProposalState.ReadyForExecution,
            "Governance::execute: cannot be executed"
        );

        Proposal storage proposal = proposals[_proposalId];

        ProposalExecutionContext storage proposalExecutionContext = proposalExecutionContexts[_proposalId];

        (bool success, bytes memory returnData) = proposalExecutionContext.target.call{value: proposalExecutionContext.value}(proposalExecutionContext.data);
        require(
            success,
            "Governance::execute: transaction execution reverted."
        );
        proposal.executor = msg.sender;

        emit ProposalExecuted(_proposalId, proposal.executor);

        return returnData;
    }

    // Setters

    function setMinimumVotingPeriod(uint256 _seconds) public onlyGovernor {
        require(
            _seconds >= VOTING_PERIOD_MINIMUM,
            "Governance::setMinimumVotingPeriod: TOO_SMALL"
        );
        require(
            _seconds <= VOTING_PERIOD_MAXIMUM,
            "Governance::setMinimumVotingPeriod: TOO_LARGE"
        );
        minimumVotingPeriod = _seconds;
        emit MinimumVotingPeriodChanged(_seconds);
    }

    function setExecutionDelay(uint256 _seconds) public onlyGovernor {
        require(
            _seconds >= EXECUTION_DELAY_MINIMUM,
            "Governance::setExecutionDelay: TOO_SMALL"
        );
        require(
            _seconds <= EXECUTION_DELAY_MAXIMUM,
            "Governance::setExecutionDelay: TOO_LARGE"
        );
        executionDelay = _seconds;
        emit ExecutionDelayChanged(_seconds);
    }

    function setQuorumVotes(uint256 _votes) public onlyGovernor {
        require(
            _votes >= QUORUM_VOTES_MINIMUM,
            "Governance::setQuorumVotes: TOO_SMALL"
        );
        require(
            _votes <= QUORUM_VOTES_MAXIMUM,
            "Governance::setQuorumVotes: TOO_LARGE"
        );
        quorumVotes = _votes;
        emit QuorumVotesChanges(_votes);
    }

    function setProposalThreshold(uint256 _votes) public onlyGovernor {
        require(
            _votes >= PROPOSAL_THRESHOLD_MINIMUM,
            "Governance::setProposalThreshold: TOO_SMALL"
        );
        require(
            _votes <= PROPOSAL_THRESHOLD_MAXIMUM,
            "Governance::setProposalThreshold: TOO_LARGE"
        );
        proposalThreshold = _votes;
        emit ProposalThresholdChanged(_votes);
    }
}