// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

interface IEpoch {
    function getCurrentEpoch() external view returns (uint256);
}

// File contracts/projects/SakaiDAO/interfaces/ITokenVote.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity 0.8.19;

interface ITokenVote is IEpoch {
    function isCanVote(
        address account,
        uint256 _currentEpoch
    ) external view returns (bool);
    function isCanCreateProposal(address account) external view returns (bool);
    function shares(
        address account
    )
        external
        view
        returns (
            uint256 amount,
            uint256 totalExcluded,
            uint256 totalClaimed,
            bool isReceiveReward,
            uint256 lastDepositTimestamp,
            uint256 lastWithdrawnTimestamp,
            uint256 lastDepositEpoch,
            uint256 lastEpochNumberWhenDeposit
        );
}

// File contracts/utils/Address.sol

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/Address.sol)

pragma solidity ^0.8.19;

/**
 * @dev Collection of functions related to the address type
 */
library Address {
    /**

     */
    function isContract(address account) internal view returns (bool) {
        // This method relies on extcodesize/address.code.length, which returns 0
        // for contracts in construction, since the code is only stored at the end
        // of the constructor execution.

        return account.code.length > 0;
    }
    function sendValue(address payable recipient, uint256 amount) internal {
        require(
            address(this).balance >= amount,
            "Address: insufficient balance"
        );

        (bool success, ) = recipient.call{value: amount}("");
        require(
            success,
            "Address: unable to send value, recipient may have reverted"
        );
    }

    function functionCall(
        address target,
        bytes memory data
    ) internal returns (bytes memory) {
        return
            functionCallWithValue(
                target,
                data,
                0,
                "Address: low-level call failed"
            );
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`], but with
     * `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0, errorMessage);
    }

    function functionCallWithValue(
        address target,
        bytes memory data,
        uint256 value
    ) internal returns (bytes memory) {
        return
            functionCallWithValue(
                target,
                data,
                value,
                "Address: low-level call with value failed"
            );
    }

    /**
     * @dev Same as {xref-Address-functionCallWithValue-address-bytes-uint256-}[`functionCallWithValue`], but
     * with `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(
        address target,
        bytes memory data,
        uint256 value,
        string memory errorMessage
    ) internal returns (bytes memory) {
        require(
            address(this).balance >= value,
            "Address: insufficient balance for call"
        );
        (bool success, bytes memory returndata) = target.call{value: value}(
            data
        );
        return
            verifyCallResultFromTarget(
                target,
                success,
                returndata,
                errorMessage
            );
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(
        address target,
        bytes memory data
    ) internal view returns (bytes memory) {
        return
            functionStaticCall(
                target,
                data,
                "Address: low-level static call failed"
            );
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal view returns (bytes memory) {
        (bool success, bytes memory returndata) = target.staticcall(data);
        return
            verifyCallResultFromTarget(
                target,
                success,
                returndata,
                errorMessage
            );
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a delegate call.
     *
     * _Available since v3.4._
     */
    function functionDelegateCall(
        address target,
        bytes memory data
    ) internal returns (bytes memory) {
        return
            functionDelegateCall(
                target,
                data,
                "Address: low-level delegate call failed"
            );
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a delegate call.
     *
     * _Available since v3.4._
     */
    function functionDelegateCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal returns (bytes memory) {
        (bool success, bytes memory returndata) = target.delegatecall(data);
        return
            verifyCallResultFromTarget(
                target,
                success,
                returndata,
                errorMessage
            );
    }

    /**
     * @dev Tool to verify that a low level call to smart-contract was successful, and revert (either by bubbling
     * the revert reason or using the provided one) in case of unsuccessful call or if target was not a contract.
     *
     * _Available since v4.8._
     */
    function verifyCallResultFromTarget(
        address target,
        bool success,
        bytes memory returndata,
        string memory errorMessage
    ) internal view returns (bytes memory) {
        if (success) {
            if (returndata.length == 0) {
                // only check isContract if the call was successful and the return data is empty
                // otherwise we already know that it was a contract
                require(isContract(target), "Address: call to non-contract");
            }
            return returndata;
        } else {
            _revert(returndata, errorMessage);
        }
    }

    /**
     * @dev Tool to verify that a low level call was successful, and revert if it wasn't, either by bubbling the
     * revert reason or using the provided one.
     *
     * _Available since v4.3._
     */
    function verifyCallResult(
        bool success,
        bytes memory returndata,
        string memory errorMessage
    ) internal pure returns (bytes memory) {
        if (success) {
            return returndata;
        } else {
            _revert(returndata, errorMessage);
        }
    }

    function _revert(
        bytes memory returndata,
        string memory errorMessage
    ) private pure {
        // Look for revert reason and bubble it up if present
        if (returndata.length > 0) {
            // The easiest way to bubble the revert reason is using memory via assembly
            /// @solidity memory-safe-assembly
            assembly {
                let returndata_size := mload(returndata)
                revert(add(32, returndata), returndata_size)
            }
        } else {
            revert(errorMessage);
        }
    }
}

// File contracts/utils/Context.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity 0.8.19;

abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        this; // silence state mutability warning without generating bytecode - see https://github.com/ethereum/solidity/issues/2691
        return msg.data;
    }
}

// File contracts/utils/Ownable.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity 0.8.19;

abstract contract Ownable is Context {
    address private _owner;

    event OwnershipTransferred(
        address indexed previousOwner,
        address indexed newOwner
    );

    constructor() {
        address msgSender = _msgSender();
        _owner = msgSender;
        emit OwnershipTransferred(address(0), msgSender);
    }

    function owner() public view returns (address) {
        return _owner;
    }

    modifier onlyOwner() {
        require(
            _owner == _msgSender(),
            "OwnableStake: caller is not the owner"
        );
        _;
    }

    function renounceOwnership() public virtual onlyOwner {
        emit OwnershipTransferred(_owner, address(0));
        _owner = address(0);
    }

    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(
            newOwner != address(0),
            "OwnableStake: new owner is the zero address"
        );
        emit OwnershipTransferred(_owner, newOwner);
        _owner = newOwner;
    }
}

// File contracts/projects/SakaiDAO/libraries/MultiAdmin.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity 0.8.19;

contract MultiAdmin is Context, Ownable {
    address[9] public admins;

    event AdminAdded(address indexed admin);
    event AdminRemoved(address indexed admin);

    modifier onlyAdmin() {
        require(isAdmin(_msgSender()), "Only admin can call this");
        _;
    }

    constructor(address[9] memory _admins) {
        admins = _admins;
    }

    function isAdmin(address account) public view returns (bool) {
        for (uint i = 0; i < admins.length; i++) {
            if (admins[i] == account) {
                return true;
            }
        }
        return false;
    }

    function totalAdmins() public view returns (uint) {
        return admins.length;
    }

    function updateAdmin(uint8 index, address account) public onlyOwner {
        require(index < admins.length, "Index out of range");
        require(account != address(0), "Account is the zero address");
        require(!Address.isContract(account), "Account is a contract address");
        require(!isAdmin(account), "Account is already an admin");
        admins[index] = account;
    }
}

// File contracts/interfaces/IERC20.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity 0.8.19;

interface IERC20 {
    function totalSupply() external view returns (uint256);

    function balanceOf(address account) external view returns (uint256);

    function transfer(
        address recipient,
        uint256 amount
    ) external returns (bool);

    function allowance(
        address owner,
        address spender
    ) external view returns (uint256);

    function approve(address spender, uint256 amount) external returns (bool);

    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) external returns (bool);

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 value
    );
}

// File contracts/utils/ReentrancyGuard.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity 0.8.19;

abstract contract ReentrancyGuard {
    uint256 private constant _NOT_ENTERED = 1;
    uint256 private constant _ENTERED = 2;

    uint256 private _status;

    constructor() {
        _status = _NOT_ENTERED;
    }

    modifier nonReentrant() {
        _nonReentrantBefore();
        _;
        _nonReentrantAfter();
    }

    function _nonReentrantBefore() private {
        // On the first call to nonReentrant, _status will be _NOT_ENTERED
        require(_status != _ENTERED, "ReentrancyGuardStake: reentrant call");

        // Any calls to nonReentrant after this point will fail
        _status = _ENTERED;
    }

    function _nonReentrantAfter() private {
        // By storing the original value once again, a refund is triggered (see
        // https://eips.ethereum.org/EIPS/eip-2200)
        _status = _NOT_ENTERED;
    }

    /**
     * @dev Returns true if the reentrancy guard is currently set to "entered", which indicates there is a
     * `nonReentrant` function in the call stack.
     */
    function _reentrancyGuardEntered() internal view returns (bool) {
        return _status == _ENTERED;
    }
}

/**
 * This contract is part of SakaiDAO system.
 * purpose of this contract is for create proposal and vote
 * with SakaiDAO token, user can vote, create proposal
 */
contract SakaiProposal is MultiAdmin, ReentrancyGuard, IEpoch {
    address public tokenVoteAddress;
    uint256 public proposalAdminTreshold;
    uint256 public userVoteDuration;

    enum ProposalStatus {
        PENDING,
        PUBLISHED,
        REJECTED,
        CANCELED,
        FINISHED
    }

    uint256 public proposalId;
    uint256 public activeProposalId;

    // Sakai proposals
    struct Proposal {
        uint256 id;
        address owner;
        string title;
        string description;
        uint256 votes;
        ProposalStatus status; // 0: pending, 1: published, 2: rejected, 3: canceled, 4: finished
        uint256 adminApproved;
        uint256 adminRejected;
        uint256 timestamp;
        uint256 minimumEpochForVoting;
        uint256 userVoteStartTimestamp;
        uint256 userVoteEndTimestamp;
        uint256 approvePower;
        uint256 rejectPower;
        address[] admins;
        mapping(address => bool) adminsVoted;
        mapping(address => bool) adminsApproved;
        mapping(address => bool) adminsRejected;
        address[] voters;
        mapping(address => bool) votersVoted;
        mapping(address => bool) votersApproved;
        mapping(address => bool) votersRejected;
        mapping(address => uint256) votersApprovePower;
        mapping(address => uint256) votersRejectPower;
    }

    mapping(uint256 => Proposal) public proposals;
    mapping(uint256 => mapping(address => bool)) public adminHasVoted;
    mapping(uint256 => mapping(address => bool)) public userHasVoted;

    mapping(address => uint256) public activeProposalUsers;

    event UpdateProposalAdminTreshold(uint256 proposalAdminTreshold);
    event CreateProposal(
        uint256 proposalId,
        string title,
        string description,
        uint256 timestamp
    );
    event AdminVoteProposal(
        uint256 proposalId,
        address admin,
        bool isApproved,
        uint256 timestamp
    );
    event CancelProposal(uint256 proposalId, address admin, uint256 timestamp);
    event UserVoteProposal(
        uint256 proposalId,
        address user,
        bool isApproved,
        uint256 timestamp
    );
    event UpdateUserVoteDuration(uint256 userVoteDuration);

    constructor(
        address _tokenVoteAddress,
        address[9] memory _admins
    ) MultiAdmin(_admins) {
        tokenVoteAddress = _tokenVoteAddress;
        proposalAdminTreshold = 5;
        userVoteDuration = 3 days;
    }

    // Region internal functions

    function _activateProposal() internal {
        /** this function will activate proposal if there is no active proposal or active proposal is finished */
        if (
            activeProposalId == 0 ||
            proposals[activeProposalId].status == ProposalStatus.FINISHED
        ) {
            for (uint256 i = activeProposalId + 1; i <= proposalId; i++) {
                if (proposals[i].status == ProposalStatus.PENDING) {
                    activeProposalId = i;
                    break;
                }
            }
        }
    }

    function _createProposal(
        string memory _title,
        string memory _description
    ) internal {
        /** this function will create proposal */
        proposalId += 1;
        Proposal storage newProposal = proposals[proposalId];
        newProposal.id = proposalId;
        newProposal.owner = msg.sender;
        newProposal.title = _title;
        newProposal.description = _description;
        newProposal.status = ProposalStatus.PENDING;
        newProposal.timestamp = block.timestamp;
        activeProposalUsers[msg.sender] = proposalId;
        _activateProposal();
        emit CreateProposal(proposalId, _title, _description, block.timestamp);
    }

    function _cancelProposal(uint256 _proposalId) internal {
        /** this function will cancel proposal */

        proposals[_proposalId].status = ProposalStatus.CANCELED;
        activeProposalUsers[proposals[_proposalId].owner] = 0;

        emit CancelProposal(_proposalId, msg.sender, block.timestamp);
    }
    function _voteAdmin(uint256 _proposalId, bool _isApproved) internal {
        /** This function will allow admin to vote on a proposal */

        // Check if the admin has already voted
        require(
            !adminHasVoted[_proposalId][msg.sender],
            "Admin has already voted on this proposal"
        );

        // Record the admin's vote
        adminHasVoted[_proposalId][msg.sender] = true;
        proposals[_proposalId].adminsVoted[msg.sender] = true;
        proposals[_proposalId].admins.push(msg.sender);

        if (_isApproved) {
            // Increment the count of approved votes
            proposals[_proposalId].adminApproved++;
            proposals[_proposalId].adminsApproved[msg.sender] = true;

            // Check if the proposal has reached the admin approval threshold
            if (
                proposals[_proposalId].adminApproved >= proposalAdminTreshold &&
                proposals[_proposalId].status == ProposalStatus.PENDING
            ) {
                proposals[_proposalId].status = ProposalStatus.PUBLISHED;
                proposals[_proposalId].userVoteStartTimestamp = block.timestamp;
                proposals[_proposalId].userVoteEndTimestamp =
                    block.timestamp +
                    userVoteDuration;
            }
        } else {
            // Increment the count of rejected votes
            proposals[_proposalId].adminRejected++;
            proposals[_proposalId].adminsRejected[msg.sender] = true;

            // Assuming totalAdmins is a function that returns the total number of admins
            uint256 totalAdminsCount = 9; // Adjust with the actual contract address and function

            // Check if the proposal has reached the rejection threshold
            // Calculate the threshold for rejection: totalAdmins - proposalAdminTreshold
            if (
                proposals[_proposalId].adminRejected >=
                (totalAdminsCount - proposalAdminTreshold) &&
                proposals[_proposalId].status == ProposalStatus.PENDING
            ) {
                proposals[_proposalId].status = ProposalStatus.REJECTED;
                activeProposalUsers[proposals[_proposalId].owner] = 0;
            }
        }

        // Activate the proposal if needed
        _activateProposal();

        // Emit the event for the admin's vote
        emit AdminVoteProposal(
            _proposalId,
            msg.sender,
            _isApproved,
            block.timestamp
        );
    }

    function _voteUser(uint256 _proposalId, bool _isApproved) internal {
        /** this function will vote user */

        userHasVoted[_proposalId][msg.sender] = true;
        proposals[_proposalId].votersVoted[msg.sender] = true;
        proposals[_proposalId].voters.push(msg.sender);

        if (_isApproved) {
            proposals[_proposalId].votersApproved[msg.sender] = true;
            proposals[_proposalId].votersApprovePower[msg.sender] += IERC20(
                tokenVoteAddress
            ).balanceOf(msg.sender);
            proposals[_proposalId].approvePower += IERC20(tokenVoteAddress)
                .balanceOf(msg.sender);
        } else {
            proposals[_proposalId].votersRejected[msg.sender] = true;
            proposals[_proposalId].votersRejectPower[msg.sender] += IERC20(
                tokenVoteAddress
            ).balanceOf(msg.sender);
            proposals[_proposalId].rejectPower += IERC20(tokenVoteAddress)
                .balanceOf(msg.sender);
        }

        _updateProposalStatusIfNeeded(_proposalId);

        _activateProposal();
        emit UserVoteProposal(
            _proposalId,
            msg.sender,
            _isApproved,
            block.timestamp
        );
    }

    function _updateProposalStatusIfNeeded(uint256 _proposalId) internal {
        Proposal storage proposal = proposals[_proposalId];
        if (
            proposal.status == ProposalStatus.PUBLISHED &&
            proposal.userVoteEndTimestamp <= block.timestamp
        ) {
            if (proposal.rejectPower > proposal.approvePower) {
                proposal.status = ProposalStatus.REJECTED;
            } else {
                proposal.status = ProposalStatus.FINISHED;
            }
            activeProposalUsers[proposal.owner] = 0;
        }
    }
    // End region internal functions

    // Region external functions
    function activateProposal() external {
        _activateProposal();
    }
    function createProposal(
        string memory _title,
        string memory _description
    ) external nonReentrant {
        require(
            ITokenVote(tokenVoteAddress).isCanCreateProposal(msg.sender),
            "You can't create a proposal"
        );

        uint256 currentProposalId = activeProposalUsers[msg.sender];
        if (currentProposalId != 0) {
            require(
                proposals[currentProposalId].status ==
                    ProposalStatus.FINISHED ||
                    proposals[currentProposalId].status ==
                    ProposalStatus.REJECTED ||
                    proposals[currentProposalId].status ==
                    ProposalStatus.CANCELED ||
                    proposals[currentProposalId].status ==
                    ProposalStatus.PUBLISHED,
                "You can't create a proposal while your previous proposal is active"
            );
        }

        _createProposal(_title, _description);
    }

    function cancelProposal(uint256 _proposalId) external {
        require(
            proposals[_proposalId].status == ProposalStatus.PENDING,
            "SakaiVote: proposal is not pending"
        );
        require(
            proposals[_proposalId].owner == msg.sender,
            "SakaiVote: sender is not owner"
        );
        _cancelProposal(_proposalId);
    }

    function getCurrentEpoch() external view returns (uint256) {
        return activeProposalId;
    }

    function updateProposalAdminTreshold(
        uint256 _proposalAdminTreshold
    ) external onlyOwner {
        require(
            _proposalAdminTreshold <= totalAdmins(),
            "Proposal admin treshold can't be more than total admins"
        );
        proposalAdminTreshold = _proposalAdminTreshold;
        emit UpdateProposalAdminTreshold(_proposalAdminTreshold);
    }

    function updateUserVoteDuration(
        uint256 _userVoteDurationDays
    ) external onlyOwner {
        require(_userVoteDurationDays > 0, "User vote duration can't be 0");

        userVoteDuration = _userVoteDurationDays * 1 days;
        emit UpdateUserVoteDuration(_userVoteDurationDays);
    }

    function updateTokenVoteAddress(
        address _tokenVoteAddress
    ) external onlyOwner {
        tokenVoteAddress = _tokenVoteAddress;
    }

    function voteAdmin(
        uint256 _proposalId,
        bool _isApproved
    ) external nonReentrant onlyAdmin {
        require(
            _proposalId > 0 && _proposalId <= proposalId,
            "SakaiVote: proposalId is not valid"
        );
        require(
            adminHasVoted[_proposalId][msg.sender] == false,
            "SakaiVote: admin already voted"
        );
        _voteAdmin(_proposalId, _isApproved);
    }
    function voteUser(
        uint256 _proposalId,
        bool _isApproved
    ) external nonReentrant {
        require(
            _proposalId > 0 && _proposalId <= proposalId,
            "SakaiVote: proposalId is not valid"
        );
        require(
            !userHasVoted[_proposalId][msg.sender],
            "SakaiVote: user already voted"
        );

        _updateProposalStatusIfNeeded(_proposalId);

        require(
            proposals[_proposalId].status == ProposalStatus.PUBLISHED,
            "SakaiVote: proposal is not published"
        );
        require(
            proposals[_proposalId].userVoteStartTimestamp <= block.timestamp &&
                proposals[_proposalId].userVoteEndTimestamp >= block.timestamp,
            "SakaiVote: voting is not active"
        );
        require(
            ITokenVote(tokenVoteAddress).isCanVote(msg.sender, _proposalId),
            "You can't vote"
        );

        _voteUser(_proposalId, _isApproved);
    }

    function adminHasVote(
        uint256 _proposalId,
        address _admin
    ) external view returns (bool) {
        return proposals[_proposalId].adminsVoted[_admin];
    }

    function userHasVote(
        uint256 _proposalId,
        address _user
    ) external view returns (bool) {
        return proposals[_proposalId].votersVoted[_user];
    }

    function getTotalParticipantVoted(
        uint256 _proposalId
    ) external view returns (uint256) {
        return proposals[_proposalId].voters.length;
    }

    function setActivateProposalId(uint256 _proposalId) external onlyOwner {
        //close current proposal
        proposals[activeProposalId].status = ProposalStatus.FINISHED;

        //open new proposal
        activeProposalId = _proposalId;
        proposals[_proposalId].status = ProposalStatus.PUBLISHED;
    }

    function updateProposalStatus(uint256 _proposalId) external {
        _updateProposalStatusIfNeeded(_proposalId);
    }

    // End region external functions
}