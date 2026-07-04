// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {UnilaunchTokenVesting} from "./UnilaunchTokenVesting.sol";

/// @title UnilaunchTokenVestingFactory
/// @notice Holds vesting allocation and deploys per-member schedules with minimums enforced by UnilaunchTokenVesting.
contract UnilaunchTokenVestingFactory is AccessControl {
    using SafeERC20 for IERC20;

    bytes32 public constant SCHEDULER_ROLE = keccak256("SCHEDULER_ROLE");

    struct VestingInfo {
        address vesting;
        address beneficiary;
        uint256 amount;
        uint256 cliff;
        uint256 end;
        uint256 createdAt;
    }

    address public immutable token;

    VestingInfo[] internal _allVestings;
    mapping(address => uint256[]) internal _beneficiaryToIndices;

    event VestingCreated(address indexed vesting, address indexed beneficiary, uint256 amount, uint256 cliff, uint256 end);

    error InvalidAddress();
    error InvalidAmount();
    error InsufficientBalance();

    constructor(address _token, address admin) {
        if (_token == address(0) || admin == address(0)) revert InvalidAddress();
        token = _token;
        _grantRole(DEFAULT_ADMIN_ROLE, admin);
        _grantRole(SCHEDULER_ROLE, admin);
    }

    function createVesting(address beneficiary, uint256 amount, uint256 cliff, uint256 end)
        external
        onlyRole(SCHEDULER_ROLE)
        returns (address vesting)
    {
        if (beneficiary == address(0)) revert InvalidAddress();
        if (amount == 0) revert InvalidAmount();
        if (IERC20(token).balanceOf(address(this)) < amount) revert InsufficientBalance();

        vesting = address(new UnilaunchTokenVesting(token, beneficiary, amount, cliff, end));
        IERC20(token).safeTransfer(vesting, amount);

        _allVestings.push(
            VestingInfo({
                vesting: vesting,
                beneficiary: beneficiary,
                amount: amount,
                cliff: cliff,
                end: end,
                createdAt: block.timestamp
            })
        );
        _beneficiaryToIndices[beneficiary].push(_allVestings.length - 1);

        emit VestingCreated(vesting, beneficiary, amount, cliff, end);
    }

    function createVestings(
        address[] calldata beneficiaries,
        uint256[] calldata amounts,
        uint256[] calldata cliffs,
        uint256[] calldata ends
    ) external onlyRole(SCHEDULER_ROLE) returns (address[] memory vestings) {
        uint256 count = beneficiaries.length;
        if (count == 0) revert InvalidAmount();
        if (amounts.length != count || cliffs.length != count || ends.length != count) revert InvalidAmount();

        vestings = new address[](count);
        for (uint256 i = 0; i < count; i++) {
            address beneficiary = beneficiaries[i];
            uint256 amount = amounts[i];
            uint256 cliff = cliffs[i];
            uint256 end = ends[i];

            if (beneficiary == address(0)) revert InvalidAddress();
            if (amount == 0) revert InvalidAmount();
            if (IERC20(token).balanceOf(address(this)) < amount) revert InsufficientBalance();

            address vesting = address(new UnilaunchTokenVesting(token, beneficiary, amount, cliff, end));
            IERC20(token).safeTransfer(vesting, amount);

            _allVestings.push(
                VestingInfo({
                    vesting: vesting,
                    beneficiary: beneficiary,
                    amount: amount,
                    cliff: cliff,
                    end: end,
                    createdAt: block.timestamp
                })
            );
            _beneficiaryToIndices[beneficiary].push(_allVestings.length - 1);

            vestings[i] = vesting;
            emit VestingCreated(vesting, beneficiary, amount, cliff, end);
        }
    }

    function getVestingsPaginated(uint256 offset, uint256 limit)
        external
        view
        returns (VestingInfo[] memory vestings, uint256 totalCount)
    {
        totalCount = _allVestings.length;
        if (offset == 0 && limit == 0) {
            vestings = _allVestings;
            return (vestings, totalCount);
        }
        if (limit == 0) limit = totalCount;
        if (offset >= totalCount) return (new VestingInfo[](0), totalCount);

        uint256 count = (offset + limit > totalCount) ? (totalCount - offset) : limit;
        vestings = new VestingInfo[](count);
        for (uint256 i = 0; i < count; i++) {
            vestings[i] = _allVestings[offset + i];
        }
    }

    function getVestingsByBeneficiaryPaginated(address beneficiary, uint256 offset, uint256 limit)
        external
        view
        returns (VestingInfo[] memory vestings, uint256 totalCount)
    {
        uint256[] storage indices = _beneficiaryToIndices[beneficiary];
        totalCount = indices.length;
        if (offset == 0 && limit == 0) {
            vestings = new VestingInfo[](totalCount);
            for (uint256 i = 0; i < totalCount; i++) {
                vestings[i] = _allVestings[indices[i]];
            }
            return (vestings, totalCount);
        }
        if (limit == 0) limit = totalCount;
        if (offset >= totalCount) return (new VestingInfo[](0), totalCount);

        uint256 count = (offset + limit > totalCount) ? (totalCount - offset) : limit;
        vestings = new VestingInfo[](count);
        for (uint256 i = 0; i < count; i++) {
            vestings[i] = _allVestings[indices[offset + i]];
        }
    }
}
