// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

/// @title DistributeTeam
/// @notice Manages team member allocations and distributes ERC20 tokens and ETH according to allocation points.
contract DistributeTeam is Ownable {
    using SafeERC20 for IERC20;

    error InvalidParams();
    error ZeroAddress();
    error ZeroAmount();
    error MemberExists();
    error MemberMissing();
    error TeamNotConfigured();
    error NotTeamManager();

    struct MemberInfo {
        uint256 allocation;
        uint256 index;
        bool exists;
    }

    /// @notice Team multisig that can manage members alongside the owner.
    address public immutable teamMultisig;

    /// @notice Current set of team member wallets.
    address[] private _members;

    /// @notice Allocation metadata for each team member.
    mapping(address => MemberInfo) private _memberInfo;

    /// @notice Total number of team members.
    uint256 public memberCount;

    /// @notice Sum of all allocation points across team members.
    uint256 public totalAllocationPoints;

    event MemberAdded(address indexed account, uint256 allocation);
    event MemberUpdated(address indexed account, uint256 previousAllocation, uint256 newAllocation);
    event MemberRemoved(address indexed account);
    event TeamSet(uint256 memberCount, uint256 totalAllocationPoints);
    event TeamUpdated(uint256 memberCount, uint256 totalAllocationPoints);
    event TeamCleared();
    event TokenDistributed(address indexed token, uint256 amount);
    event EthDistributed(uint256 amount);

    constructor(address _teamMultisig) {
        if (_teamMultisig == address(0)) revert ZeroAddress();
        teamMultisig = _teamMultisig;
    }

    /**
     * @notice Reset the team and replace it with the provided members and allocations.
     * @dev Passing empty arrays clears the team.
     */
    function setTeam(address[] calldata accounts, uint256[] calldata allocations) external onlyTeamManager {
        if (accounts.length != allocations.length) revert InvalidParams();

        _clearTeam();

        for (uint256 i = 0; i < accounts.length; ++i) {
            _addMember(accounts[i], allocations[i]);
        }

        emit TeamSet(memberCount, totalAllocationPoints);
    }

    /**
     * @notice Update allocations for the provided team members, adding new members as needed.
     */
    function updateTeam(address[] calldata accounts, uint256[] calldata allocations) external onlyTeamManager {
        if (accounts.length != allocations.length) revert InvalidParams();

        for (uint256 i = 0; i < accounts.length; ++i) {
            address account = accounts[i];
            uint256 allocation = allocations[i];

            MemberInfo storage info = _memberInfo[account];
            if (info.exists) {
                _updateAllocation(account, allocation);
            } else {
                _addMember(account, allocation);
            }
        }

        emit TeamUpdated(memberCount, totalAllocationPoints);
    }

    /**
     * @notice Remove a team member completely.
     */
    function removeMember(address account) external onlyTeamManager {
        MemberInfo storage info = _memberInfo[account];
        if (!info.exists) revert MemberMissing();

        uint256 lastIndex = _members.length - 1;
        uint256 memberIndex = info.index;

        if (memberIndex != lastIndex) {
            address moved = _members[lastIndex];
            _members[memberIndex] = moved;
            _memberInfo[moved].index = memberIndex;
        }

        _members.pop();
        memberCount -= 1;
        totalAllocationPoints -= info.allocation;

        delete _memberInfo[account];

        emit MemberRemoved(account);
    }

    /**
     * @notice Distribute a single ERC20 token to the team.
     * @param token Token to distribute.
     * @param amount Amount of tokens to pull from the caller and distribute.
     */
    function distributeToken(address token, uint256 amount) external {
        _distributeToken(token, amount);
    }

    /**
     * @notice Distribute multiple ERC20 tokens to the team.
     * @param tokens Array of token addresses.
     * @param amounts Array of corresponding token amounts.
     */
    function distributeTokens(address[] calldata tokens, uint256[] calldata amounts) external {
        if (tokens.length != amounts.length) revert InvalidParams();

        for (uint256 i = 0; i < tokens.length; ++i) {
            _distributeToken(tokens[i], amounts[i]);
        }
    }

    /**
     * @notice Distribute the attached ETH to the team.
     */
    function distributeETH() external payable {
        uint256 amount = msg.value;
        if (amount == 0) revert ZeroAmount();
        _requireConfiguredTeam();
        _distributeETH(amount);
        emit EthDistributed(amount);
    }

    /**
     * @notice Return the current set of team member wallets.
     */
    function getMembers() external view returns (address[] memory) {
        return _members;
    }

    /**
     * @notice Return allocation information for a given wallet.
     */
    function getMemberInfo(address account) external view returns (uint256 allocation, bool exists) {
        MemberInfo memory info = _memberInfo[account];
        return (info.allocation, info.exists);
    }

    function _distributeToken(address token, uint256 amount) internal {
        if (token == address(0)) revert ZeroAddress();
        if (amount == 0) revert ZeroAmount();
        _requireConfiguredTeam();

        IERC20(token).safeTransferFrom(msg.sender, address(this), amount);
        _payoutToken(token, amount);

        emit TokenDistributed(token, amount);
    }

    function _payoutToken(address token, uint256 amount) internal {
        address[] memory snapshot = _members;
        uint256 len = snapshot.length;
        uint256 totalPoints = totalAllocationPoints;
        uint256 remaining = amount;

        for (uint256 i = 0; i < len; ++i) {
            address member = snapshot[i];
            uint256 allocation = _memberInfo[member].allocation;
            uint256 share = i == len - 1 ? remaining : Math.mulDiv(amount, allocation, totalPoints);
            if (share > 0) {
                IERC20(token).safeTransfer(member, share);
                remaining -= share;
            }
        }
    }

    function _distributeETH(uint256 amount) internal {
        address[] memory snapshot = _members;
        uint256 len = snapshot.length;
        uint256 totalPoints = totalAllocationPoints;
        uint256 remaining = amount;

        for (uint256 i = 0; i < len; ++i) {
            address member = snapshot[i];
            uint256 allocation = _memberInfo[member].allocation;
            uint256 share = i == len - 1 ? remaining : Math.mulDiv(amount, allocation, totalPoints);
            if (share > 0) {
                Address.sendValue(payable(member), share);
                remaining -= share;
            }
        }
    }

    function _addMember(address account, uint256 allocation) internal {
        if (account == address(0)) revert ZeroAddress();
        if (allocation == 0) revert ZeroAmount();

        MemberInfo storage info = _memberInfo[account];
        if (info.exists) revert MemberExists();

        _memberInfo[account] = MemberInfo({allocation: allocation, index: _members.length, exists: true});
        _members.push(account);
        memberCount += 1;
        totalAllocationPoints += allocation;

        emit MemberAdded(account, allocation);
    }

    function _updateAllocation(address account, uint256 newAllocation) internal {
        if (newAllocation == 0) revert ZeroAmount();
        MemberInfo storage info = _memberInfo[account];
        uint256 previousAllocation = info.allocation;
        if (previousAllocation == newAllocation) return;

        info.allocation = newAllocation;
        totalAllocationPoints = totalAllocationPoints - previousAllocation + newAllocation;

        emit MemberUpdated(account, previousAllocation, newAllocation);
    }

    function _clearTeam() internal {
        uint256 len = _members.length;
        if (len > 0) {
            for (uint256 i = 0; i < len; ++i) {
                delete _memberInfo[_members[i]];
            }
            delete _members;
        }
        memberCount = 0;
        totalAllocationPoints = 0;
        emit TeamCleared();
    }

    function _requireConfiguredTeam() internal view {
        if (memberCount == 0 || totalAllocationPoints == 0) revert TeamNotConfigured();
    }

    modifier onlyTeamManager() {
        if (msg.sender != owner() && msg.sender != teamMultisig) revert NotTeamManager();
        _;
    }
}
