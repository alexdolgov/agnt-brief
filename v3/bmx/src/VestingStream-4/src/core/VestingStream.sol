// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.28;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Initializable} from "@openzeppelin/contracts/proxy/utils/Initializable.sol";

/// @title VestingStream - Linear vesting with cliff for issuer-directed allocations
/// @notice Per-launch clone. Supports up to 3 recipients with labeled allocations.
///         7-day cliff from liquidity seed time, then 3-year linear vesting.
///         Fully immutable after initialization. Only deployed for Advanced path with vesting.
contract VestingStream is Initializable {
    using SafeERC20 for IERC20;

    // ============ Constants ============

    uint256 public constant CLIFF_DURATION = 7 days;
    uint256 public constant VESTING_DURATION = 3 * 365 days;

    // ============ Types ============

    struct VestingAllocation {
        address recipient;
        uint256 totalAmount;
        uint256 claimed;
        string label;
    }

    // ============ State ============

    IERC20 public token;

    mapping(uint256 => VestingAllocation) public allocations; // vesting allocations by index (0-2)

    uint256 public allocationCount;
    uint256 public cliffEnd; // seedTime + 7 days
    uint256 public vestingEnd; // cliffEnd + 3 years

    address public initAuthorizer; // authorized initializer address

    // ============ Errors ============

    error NotRecipient();
    error NothingToClaim();
    error CliffNotEnded(uint256 cliffEnd_, uint256 currentTime);
    error ZeroAddress();
    error ArrayLengthMismatch();
    error InvalidAllocationId(uint256 id);
    error NotInitializer();
    error InitializerAlreadySet();

    // ============ Events ============

    event Claimed(uint256 indexed allocationId, address indexed recipient, uint256 amount);
    event VestingInitialized(uint256 cliffEnd_, uint256 vestingEnd_, uint256 allocationCount_);

    // ============ Constructor ============

    /// @dev Disable initialization on the implementation template
    constructor() {
        _disableInitializers();
    }

    // ============ Initialization ============

    /// @notice Set the authorized initializer
    /// @param _initAuthorizer Address authorized to call initialize()
    function setInitializer(
        address _initAuthorizer
    ) external {
        if (initAuthorizer != address(0)) revert InitializerAlreadySet();
        if (_initAuthorizer == address(0)) revert ZeroAddress();
        initAuthorizer = _initAuthorizer;
    }

    /// @notice Initialize the VestingStream clone (called by authorized initializer during seedLiquidity)
    /// @param _token The BoardwalkToken address
    /// @param _liquiditySeedTime Timestamp when liquidity was seeded
    /// @param _recipients Array of vesting recipient addresses (up to 3)
    /// @param _amounts Array of token amounts for each recipient
    /// @param _labels Array of labels for each allocation (e.g., "Treasury", "Team")
    function initialize(
        address _token,
        uint256 _liquiditySeedTime,
        address[] calldata _recipients,
        uint256[] calldata _amounts,
        string[] calldata _labels
    ) external initializer {
        if (msg.sender != initAuthorizer) revert NotInitializer();

        if (_token == address(0)) revert ZeroAddress();
        if (_recipients.length != _amounts.length) revert ArrayLengthMismatch();
        if (_recipients.length != _labels.length) revert ArrayLengthMismatch();

        token = IERC20(_token);
        cliffEnd = _liquiditySeedTime + CLIFF_DURATION;
        vestingEnd = cliffEnd + VESTING_DURATION;

        for (uint256 i = 0; i < _recipients.length;) {
            if (_recipients[i] == address(0)) revert ZeroAddress();
            allocations[i] =
                VestingAllocation({recipient: _recipients[i], totalAmount: _amounts[i], claimed: 0, label: _labels[i]});
            unchecked {
                ++i;
            }
        }
        allocationCount = _recipients.length;

        emit VestingInitialized(cliffEnd, vestingEnd, _recipients.length);
    }

    // ============ Core Functions ============

    /// @notice Claim vested tokens for a specific allocation
    /// @dev Only the designated recipient can claim. Reverts if cliff hasn't ended.
    /// @param allocationId Index of the vesting allocation (0-2)
    function claim(
        uint256 allocationId
    ) external {
        if (allocationId >= allocationCount) revert InvalidAllocationId(allocationId);

        VestingAllocation storage alloc = allocations[allocationId];
        if (msg.sender != alloc.recipient) revert NotRecipient();

        uint256 amount = claimable(allocationId);
        if (amount == 0) {
            if (block.timestamp < cliffEnd) {
                revert CliffNotEnded(cliffEnd, block.timestamp);
            }
            revert NothingToClaim();
        }

        alloc.claimed += amount;
        token.safeTransfer(alloc.recipient, amount);

        emit Claimed(allocationId, alloc.recipient, amount);
    }

    // ============ View Functions ============

    /// @notice Get the claimable amount for a vesting allocation
    /// @param allocationId Index of the vesting allocation
    /// @return Claimable token amount
    function claimable(
        uint256 allocationId
    ) public view returns (uint256) {
        if (allocationId >= allocationCount) return 0;

        VestingAllocation memory alloc = allocations[allocationId];

        if (block.timestamp < cliffEnd) return 0;

        uint256 elapsed = block.timestamp - cliffEnd;
        if (elapsed > VESTING_DURATION) elapsed = VESTING_DURATION;

        uint256 vested = alloc.totalAmount * elapsed / VESTING_DURATION;
        return vested - alloc.claimed;
    }

    /// @notice Get total vested amount for an allocation
    /// @param allocationId Index of the vesting allocation
    /// @return Total vested amount
    function totalVested(
        uint256 allocationId
    ) external view returns (uint256) {
        if (allocationId >= allocationCount) return 0;

        VestingAllocation memory alloc = allocations[allocationId];

        if (block.timestamp < cliffEnd) return 0;

        uint256 elapsed = block.timestamp - cliffEnd;
        if (elapsed > VESTING_DURATION) elapsed = VESTING_DURATION;

        return alloc.totalAmount * elapsed / VESTING_DURATION;
    }
}
