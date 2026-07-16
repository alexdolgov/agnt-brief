// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IXFly is IERC20 {
    enum VestState {
        None,
        Vested,
        Canceled,
        Exited
    }

    struct VestPosition {
        VestState vestState;
        /// @dev Vest start unix timestamp
        uint64 startTime;
        /// @dev Vest end unix timestamp
        uint64 endTime;
        /// @dev Amount of xFly
        uint256 amount;
        /// @dev Vest identifier (starting from 0)
        uint256 vestId;
    }

    event ModifyVesting(
        address indexed user,
        uint256 indexed vestId,
        uint256 amount,
        VestState vestState
    );

    event InstantExit(address indexed user, uint256);

    event Converted(address indexed user, uint256);

    event UpdateWhitelistFrom(
        address indexed candidate,
        bool status,
        bool success
    );

    event UpdateWhitelistTo(
        address indexed candidate,
        bool status,
        bool success
    );

    /// @notice Returns info on a user's vests
    function vestInfo(address user, uint256)
        external
        view
        returns (
            VestState vestState,
            uint64 startTime,
            uint64 endTime,
            uint256 amount,
            uint256 vestId
        );

    /// @notice Max slashing amount
    function SLASHING_PENALTY() external view returns (uint256);

    /// @notice Denominator
    function BASIS() external view returns (uint256);

    /// @notice The minimum vesting length
    function MIN_VEST() external view returns (uint256);

    /// @notice The maximum vesting length
    function MAX_VEST() external view returns (uint256);

    function fly() external view returns (address);

    /// @notice Pauses the contract
    function pause() external;

    /// @notice Unpauses the contract
    function unpause() external;

    /// @notice Mints xFly for each Fly.
    function convertEmissionsToken(uint256 amount) external;

    /// @notice Exit instantly with a penalty
    /// @param amount Amount of xFly to exit
    function exit(uint256 amount) external returns (uint256 exitedAmount);

    function createVest(uint256 amount) external;

    function exitVest(uint256 vestId) external;

    /// @notice Returns the amount of FLY within the contract
    function getBalanceResiding() external view returns (uint256);

    /// @notice Weturns the total number of individual vests the user has
    function usersTotalVests(address who)
        external
        view
        returns (uint256 numOfVests);

    /// @notice Whether the address is whitelisted as sender
    function isWhitelistedFrom(address who) external view returns (bool);

    /// @notice Whether the address is whitelisted as receiver
    function isWhitelistedTo(address who) external view returns (bool);

    /// @notice returns the vest info for a user
    /// @param who Who to check
    /// @param vestId Vest id to check
    /// @return VestPosition Vest info
    function getVestInfo(address who, uint256 vestId)
        external
        view
        returns (VestPosition memory);
}
