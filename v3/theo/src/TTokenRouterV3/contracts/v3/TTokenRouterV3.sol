// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import {TTokenRouterV2} from "../v2/TTokenRouterV2.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {ITToken} from "../interfaces/ITToken.sol";
import {ITTokenRouterV3} from "./interfaces/ITTokenRouterV3.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

contract TTokenRouterV3 is TTokenRouterV2, ITTokenRouterV3 {
    using SafeERC20 for IERC20;
    using EnumerableSet for EnumerableSet.AddressSet;

    /// @notice committed deposit mapping (depositor => tToken => amountAssetIn)
    mapping(address => mapping(address => uint256)) private committedDeposits;
    /// @notice set to track depositors for a tToken (tToken => depositors set)
    mapping(address => EnumerableSet.AddressSet) private tTokenDepositors;

    /**  storage for completed deposits information (off-chain tracking) */

    // tToken completed deposits mapping (tToken => array of CompletedDeposit)
    mapping(address => CompletedDeposit[]) private completedDeposits;

    // user completed deposits mapping (user => array of CompletedDeposit)
    mapping(address => CompletedDeposit[]) private userCompletedDeposits;

    constructor() TTokenRouterV2() {}

    /**
     * @notice overrides the V2 deposit optimistic to allow for just comitted deposits with no tToken minting
     * @dev Saves committed deposit for later minting after price discovery
     */
    function _depositOptimistic(OptimisticDeposit calldata deposit) internal override {
        if (deposit.tTokenAssets == 0) {
            _commitDeposit(deposit);
            return;
        }
        super._depositOptimistic(deposit);
    }

    /// @notice internal function to save committed deposit
    function _commitDeposit(OptimisticDeposit calldata deposit) internal {
        // ensure user is whitelisted for tToken transfer
        if (!ITToken(deposit.tToken).canTransfer(deposit.to)) {
            revert InvalidTTokenTransfer(deposit.tToken, deposit.to);
        }
        // create allowance
        _selfPermit(deposit.assetIn, deposit.from, deposit.amountAssetIn, deposit.deadline, deposit.permitSignature);
        // send asset to receiver
        IERC20(deposit.assetIn).safeTransferFrom(deposit.from, deposit.assetReceiver, deposit.amountAssetIn);

        // save committed deposit info
        committedDeposits[deposit.to][deposit.tToken] += deposit.amountAssetIn;
        tTokenDepositors[deposit.tToken].add(deposit.to);
    }

    /// @notice getter function for user commitments for a tToken
    function getUserCommittedDeposit(address user, address tToken) external view returns (uint256) {
        return committedDeposits[user][tToken];
    }

    /// @notice getter function for depositors for a tToken
    function getTTokenDepositors(address tToken) external view returns (address[] memory) {
        return tTokenDepositors[tToken].values();
    }

    /// @notice getter function for completed deposits for a tToken
    function getTTokenCompletedDeposits(address tToken) external view returns (CompletedDeposit[] memory) {
        return completedDeposits[tToken];
    }

    /// @notice getter function for completed deposits for a user
    function getUserCompletedDeposits(address user) external view returns (CompletedDeposit[] memory) {
        return userCompletedDeposits[user];
    }

    /**
     * @notice allows minter to mint tTokens from user committed deposits
     * @dev Based on exchange rate provided by minter, mints tTokens to each depositor based on their committed deposit
     */
    function completeCommittedDeposits(address[] memory depositors, address tToken, uint256 exchangeRate) external onlyRole(MINTER_ROLE) {
        for (uint256 i = 0; i < depositors.length; i++) {
            address depositor = depositors[i];
            uint256 amountAsset = committedDeposits[depositor][tToken];
            if (amountAsset == 0) {
                continue;
            }
            // calculate tToken amount based on exchange rate (scaled to 1e18)
            uint256 tTokenAmount = (amountAsset * 1e18) / exchangeRate;
            // reset committed deposit
            committedDeposits[depositor][tToken] = 0;
            // remove depositor from set
            tTokenDepositors[tToken].remove(depositor);
            // optimistic mint to depositor
            ITToken(tToken).depositOptimistic(tTokenAmount, depositor);

            // save to completed deposits tracking
            CompletedDeposit memory completedDeposit = CompletedDeposit({timestamp: block.timestamp, receiver: depositor, tToken: tToken, amountAssetIn: amountAsset, amountTTokenOut: tTokenAmount});
            completedDeposits[tToken].push(completedDeposit);
            userCompletedDeposits[depositor].push(completedDeposit);
        }
    }
}
