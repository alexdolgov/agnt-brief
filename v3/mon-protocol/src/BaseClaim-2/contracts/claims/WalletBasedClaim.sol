// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

import {BaseClaim} from "./BaseClaim.sol";
import {IWalletBasedClaim} from "../interfaces/IWalletBasedClaim.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/**
 * @title Wallet based claims
 * @author jeet
 */
contract WalletBasedClaim is BaseClaim, IWalletBasedClaim {
    using SafeERC20 for IERC20;
    using SafeCast for uint256;

    // all claims linked to a user wallet
    mapping(address userAddress => mapping(uint256 vestingScheduleId => VestingData vestingData))
        public usersVestingData;

    /////////////////////////////////////////////
    //       Getter View Fns
    /////////////////////////////////////////////
    function getAllUserVestingData()
        external
        view
        returns (VestingData[] memory allUserVestingData)
    {
        VestingData[] memory _allUserVestingData = new VestingData[](
            vestingScheduleIds.length
        );

        for (uint256 i; i < vestingScheduleIds.length; ) {
            _allUserVestingData[i] = usersVestingData[msg.sender][
                vestingScheduleIds[i]
            ];

            unchecked {
                ++i;
            }
        }

        return _allUserVestingData;
    }

    function getUserVestingData(
        address _userAddress,
        uint256 _vestingScheduleId
    ) external view returns (VestingData memory userVestingData) {
        return usersVestingData[_userAddress][_vestingScheduleId];
    }

    /**
     * @dev Returns the amount of unlocked tokens of user.
     * @return userReleasableAmount the amount of releasable tokens
     */
    function computeUserReleasableAmount(
        address _userAddress,
        uint256 _vestingScheduleId
    ) external view returns (uint120 userReleasableAmount) {
        return
            _computeReleasableAmount(
                _vestingScheduleId,
                usersVestingData[_userAddress][_vestingScheduleId]
            );
    }

    /**
     * @dev Returns the amount of unlocked tokens for user wallet across all schedules
     * @param _userAddress wallet address
     * @return userVestingScheduleIds schedule id corresponding to releasable amount
     * @return userReleasableAmounts releasable amounts for user
     */
    function computeUserReleasableAmounts(
        address _userAddress
    )
        external
        view
        returns (
            uint256[] memory userVestingScheduleIds,
            uint120[] memory userReleasableAmounts
        )
    {
        uint256 vestingScheduleIdsCount = vestingScheduleIds.length;
        userVestingScheduleIds = new uint256[](vestingScheduleIdsCount);
        userReleasableAmounts = new uint120[](vestingScheduleIdsCount);

        for (uint256 i; i < vestingScheduleIdsCount; ) {
            userVestingScheduleIds[i] = vestingScheduleIds[i];
            userReleasableAmounts[i] = _computeReleasableAmount(
                vestingScheduleIds[i],
                usersVestingData[_userAddress][vestingScheduleIds[i]]
            );

            unchecked {
                ++i;
            }
        }
    }

    /////////////////////////////////////////////
    //        Admin Functions
    /////////////////////////////////////////////
    /**
     * @notice Adds vesting data for a beneficiaries.
     *         total amount has to be transfered before the schedule is created.
     * @dev The liquidity has to checked/managed manually as well before allocating
     * @param _beneficiaries           address of the beneficiaries of vested tokens
     * @param _vestingScheduleIds      array of vesing ids
     * @param _amounts                 amount of tokens to be released at the end of the vesting
     */
    function addUserVestingData(
        address[] calldata _beneficiaries,
        uint256[] calldata _vestingScheduleIds,
        uint256[] calldata _amounts
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        uint256 beneficiariesLength = _beneficiaries.length;
        if (
            beneficiariesLength != _vestingScheduleIds.length ||
            beneficiariesLength != _amounts.length
        ) {
            revert MismatchedArrays();
        }

        uint256 totalAmount;

        // NOTE: make sure vesting Id is correct while calling (no checks done)
        for (uint256 i; i < beneficiariesLength; ) {
            if (vestingSchedules[_vestingScheduleIds[i]].start == 0)
                revert InvalidVestingScheduleId();

            totalAmount += _amounts[i];
            usersVestingData[_beneficiaries[i]][_vestingScheduleIds[i]]
                .amountTotal += _amounts[i].toUint120();

            unchecked {
                ++i;
            }
        }

        totalVestedAmount += totalAmount;
    }

    /**
     * @notice Revokes the vesting schedule for given identifier.
     * @param _userAddresses          addresses of the beneficiary
     * @param _vestingScheduleIds     unique ids
     */
    function revoke(
        address[] calldata _userAddresses,
        uint256[] calldata _vestingScheduleIds
    ) external onlyRole(DEFAULT_ADMIN_ROLE) nonReentrant {
        uint256 userAddressesLength = _userAddresses.length;
        if (userAddressesLength != _vestingScheduleIds.length) {
            revert MismatchedArrays();
        }

        uint256 totalDeductedAmount;

        for (uint256 i; i < userAddressesLength; ) {
            VestingData storage vestingData = usersVestingData[
                _userAddresses[i]
            ][_vestingScheduleIds[i]];

            if (vestingData.revoked) revert VestingIsRevoked();

            // the remaining amount that will be unvested for user
            totalDeductedAmount += (vestingData.amountTotal -
                vestingData.released);

            vestingData.revoked = true;

            unchecked {
                ++i;
            }
        }

        totalVestedAmount -= totalDeductedAmount;
    }

    ////////////////////////////////////////////
    //        Release
    ////////////////////////////////////////////
    /**
     * @notice Releases the tokens to the staking contract
     * @dev Only the claim registry is able to release tokens
     */
    function releaseToStaking(
        address _user,
        uint256[] calldata _vestingScheduleIds
    )
        external
        nonReentrant
        whenNotPaused
        onlyClaimRegistry
        returns (uint120 transferredAmount)
    {
        if (address(staking) == address(0)) revert StakingNotSet();

        uint256 vestingScheduleIdsLength = _vestingScheduleIds.length;
        for (uint256 i; i < vestingScheduleIdsLength; ) {
            uint256 _vestingScheduleId = _vestingScheduleIds[i];
            VestingData storage vestingData = usersVestingData[_user][
                _vestingScheduleId
            ];

            if (vestingData.revoked) revert VestingIsRevoked();

            uint120 amount = _computeReleasableAmount(
                _vestingScheduleId,
                vestingData
            );

            if (amount <= 0) revert NoReleasableFunds();

            // Update the released amount
            vestingData.released += amount;

            // Transfer the amount
            monToken.safeTransfer(address(staking), uint256(amount));

            // Update the amount transfered
            transferredAmount += amount;

            unchecked {
                ++i;
            }
        }
    }
}
