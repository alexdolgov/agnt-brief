// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import {ITTokenRouterV2} from "../../v2/interfaces/ITTokenRouterV2.sol";

interface ITTokenRouterV3 is ITTokenRouterV2 {
    /// @notice struct for completed deposit info
    struct CompletedDeposit {
        uint256 timestamp;
        address receiver;
        address tToken;
        uint256 amountAssetIn;
        uint256 amountTTokenOut;
    }

    /// @notice getter function for user commitments for a tToken
    function getUserCommittedDeposit(address user, address tToken) external view returns (uint256);

    /// @notice getter function for list of depositors for a tToken
    function getTTokenDepositors(address tToken) external view returns (address[] memory);

    /// @notice allows minter to mint tTokens from user committed deposits
    function completeCommittedDeposits(address[] memory depositors, address tToken, uint256 exchangeRate) external;
}
