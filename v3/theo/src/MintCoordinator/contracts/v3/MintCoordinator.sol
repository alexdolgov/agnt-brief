// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {IERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Permit.sol";
import {IMintCoordinator} from "./interfaces/IMintCoordinator.sol";
import {TTokenV3} from "../v3/TTokenV3.sol";

contract MintCoordinator is IMintCoordinator, AccessControl {
    using SafeERC20 for IERC20;
    using EnumerableSet for EnumerableSet.AddressSet;

    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

    /// @notice address for tToken
    address public tToken;

    /// @notice address for asset to depost/withdraw (usdc/stablecoin)
    address public asset;

    ///
    /// DEPOSIT STORAGE
    ///

    uint256 public currentDepositEpoch;

    /// @notice deposit queue amount mapping before commitment (depositor => queued asset amount)
    mapping(address => uint256) private queuedDeposits;

    /// @notice set to track depositors in queue
    EnumerableSet.AddressSet private queuedDepositors;

    /// @notice deposit commitment mapping (depositor => committed asset amount)
    mapping(address => uint256) private committedDeposits;

    /// @notice set to track depositors with current request
    EnumerableSet.AddressSet private committedDepositors;

    /// @notice tToken completed deposits mapping (epoch => array of CompletedDeposit)
    mapping(uint256 => CompletedRequest[]) private completedDeposits;

    /// @notice user completed deposits mapping (user => array of CompletedDeposit)
    mapping(address => CompletedRequest[]) private userCompletedDeposits;

    ///
    /// REDEMPTION STORAGE
    ///

    uint256 public currentRedemptionEpoch;

    /// @notice redemption queue amount mapping before commitment (redeemer => queued tToken amount)
    mapping(address => uint256) private queuedRedemptions;

    /// @notice set to track rdeemers in queue
    EnumerableSet.AddressSet private queuedRedeemers;

    /// @notice redemption commitment mapping (redeemer => committed tToken amount)
    mapping(address => uint256) private committedRedemptions;

    /// @notice set to track redeemers with current request
    EnumerableSet.AddressSet private committedRedeemers;

    /// @notice tToken completed redemptions mapping (epoch => array of CompletedRedemption)
    mapping(uint256 => CompletedRequest[]) private completedRedemptions;

    /// @notice user completed redemptions mapping (user => array of CompletedRedemption)
    mapping(address => CompletedRequest[]) private userCompletedRedemptions;

    /// @notice modifier to check request parameters for addresses and whitelist status
    modifier checkRequestParams(Request calldata request) {
        // safety check that the tToken and asset match expected
        if (request.tToken != tToken) {
            revert InvalidTTokenAddress(request.tToken, tToken);
        }
        if (request.asset != asset) {
            revert InvalidTTokenAssetAddress(request.asset, asset);
        }
        // ensure user is whitelisted for tToken transfer
        if (!TTokenV3(request.tToken).canTransfer(request.to)) {
            revert InvalidTTokenTransfer(request.tToken, request.to);
        }
        _;
    }

    constructor(address _tToken, address _asset) {
        tToken = _tToken;
        asset = _asset;
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    /// @notice general function to accept array of requests
    function commitRequests(Request[] calldata requests) external onlyRole(MINTER_ROLE) {
        for (uint256 i = 0; i < requests.length; i++) {
            if (requests[i].isDeposit) {
                _requestDeposit(requests[i]);
            } else {
                _requestRedemption(requests[i]);
            }
        }
    }

    /**
     * @notice internal function to process a single deposit request
     * @dev saves committed deposit for later minting after price discovery
     */
    function _requestDeposit(Request calldata deposit) internal checkRequestParams(deposit) {
        // ensure direction is deposit
        if (!deposit.isDeposit) {
            revert InvalidDirection();
        }
        // create allowance
        _selfPermit(deposit.asset, deposit.from, deposit.amountAssetIn, deposit.deadline, deposit.permitSignature);
        // send asset to receiver
        IERC20(deposit.asset).safeTransferFrom(deposit.from, deposit.assetReceiver, deposit.amountAssetIn);

        // save queued deposit info
        queuedDepositors.add(deposit.to);
        queuedDeposits[deposit.to] += deposit.amountAssetIn;
    }

    /**
     * @notice internal function to process a single redemption request
     * @dev saves committed redemption for later processing after rwa arrival
     */
    function _requestRedemption(Request calldata redemption) internal checkRequestParams(redemption) {
        // ensure direction is redeem
        if (redemption.isDeposit) {
            revert InvalidDirection();
        }
        // create allowance
        _selfPermit(redemption.tToken, redemption.from, redemption.amountAssetIn, redemption.deadline, redemption.permitSignature);
        // send asset to receiver
        IERC20(redemption.tToken).safeTransferFrom(redemption.from, redemption.assetReceiver, redemption.amountAssetIn);

        // save queued redemption info
        queuedRedeemers.add(redemption.to);
        queuedRedemptions[redemption.to] += redemption.amountAssetIn;
    }

    /// @notice getter function for user queued deposits/redemptions
    function getUserQueued(address user) external view returns (uint256 depositQueuedAmount, uint256 redemptionQueuedAmount) {
        depositQueuedAmount = queuedDeposits[user];
        redemptionQueuedAmount = queuedRedemptions[user];
    }

    /// @notice getter function for user commitments for a tToken
    function getUserCommitments(address user) external view returns (uint256 depositAmount, uint256 redemptionAmount) {
        depositAmount = committedDeposits[user];
        redemptionAmount = committedRedemptions[user];
    }

    /// @notice getter function for total queued deposits
    function getTTokenQueues() external view returns (address[] memory depositors, address[] memory redeemers) {
        depositors = queuedDepositors.values();
        redeemers = queuedRedeemers.values();
    }

    /// @notice getter function for depositors/redeemers for a tToken
    function getTTokenCommittors() external view returns (address[] memory depositors, address[] memory redeemers) {
        depositors = committedDepositors.values();
        redeemers = committedRedeemers.values();
    }

    /// @notice getter function for completed deposits for a tToken
    function getTTokenCompletedDeposits(uint256 epoch) external view returns (CompletedRequest[] memory) {
        return completedDeposits[epoch];
    }

    /// @notice getter function for completed redemptions for a tToken
    function getTTokenCompletedRedemptions(uint256 epoch) external view returns (CompletedRequest[] memory) {
        return completedRedemptions[epoch];
    }

    /// @notice getter function for completed requests for a user
    function getUserCompletedRequests(address user) external view returns (CompletedRequest[] memory deposits, CompletedRequest[] memory redemptions) {
        deposits = userCompletedDeposits[user];
        redemptions = userCompletedRedemptions[user];
    }

    /// @notice commits all queued deposits for the current deposit epoch
    function commitDeposits(uint256 amountAsset) external {
        uint256 totalQueued;
        for (uint256 i = 0; i < queuedDepositors.length(); i++) {
            address depositor = queuedDepositors.at(i);
            uint256 depositorQueuedAmount = queuedDeposits[depositor];
            totalQueued += depositorQueuedAmount;
            // move from queued to committed
            committedDeposits[depositor] += depositorQueuedAmount;
            // reset queued deposit
            queuedDeposits[depositor] = 0;
            // add to committed set
            committedDepositors.add(depositor);
        }
        // clear queued depositors set
        delete queuedDepositors;

        // sanity check that total queued matches amountAsset
        if (totalQueued != amountAsset) {
            revert CommitmentAmountMismatch(amountAsset, totalQueued);
        }
    }

    /// @notice commits all queued redemptions for the current redemption epoch
    function commitRedemptions(uint256 amountTTokens) external {
        uint256 totalQueued;
        for (uint256 i = 0; i < queuedRedeemers.length(); i++) {
            address redeemer = queuedRedeemers.at(i);
            uint256 redeemerQueuedAmount = queuedRedemptions[redeemer];
            totalQueued += redeemerQueuedAmount;
            // move from queued to committed
            committedRedemptions[redeemer] += redeemerQueuedAmount;
            // reset queued redemption
            queuedRedemptions[redeemer] = 0;
            // add to committed set
            committedRedeemers.add(redeemer);
        }
        // clear queued redeemers set
        delete queuedRedeemers;
        // sanity check that total queued matches amountTTokens
        if (totalQueued != amountTTokens) {
            revert CommitmentAmountMismatch(amountTTokens, totalQueued);
        }
    }

    /**
     * @notice allows minter to mint tTokens from user committed deposits
     * @dev Based on exchange rate provided by minter, mints tTokens to each depositor based on their committed deposit
     */
    function completeCommittedDeposits(address[] memory depositors, uint256 exchangeRate) external onlyRole(MINTER_ROLE) {
        for (uint256 i = 0; i < depositors.length; i++) {
            address depositor = depositors[i];
            uint256 amountAsset = committedDeposits[depositor];
            if (amountAsset == 0) {
                continue;
            }
            // calculate tToken amount based on exchange rate (scaled to 1e18)
            uint256 tTokenAmount = (amountAsset * 1e18) / exchangeRate;
            // reset committed deposit
            committedDeposits[depositor] = 0;
            // remove depositor from set
            committedDepositors.remove(depositor);
            // optimistic mint to depositor
            TTokenV3(tToken).depositOptimistic(tTokenAmount, depositor);

            // save to completed deposits tracking
            CompletedRequest memory completedDeposit = CompletedRequest({
                isDeposit: true,
                epoch: currentDepositEpoch,
                timestamp: block.timestamp,
                receiver: depositor,
                tToken: tToken,
                amountOut: tTokenAmount,
                amountIn: amountAsset
            });
            completedDeposits[currentDepositEpoch].push(completedDeposit);
            userCompletedDeposits[depositor].push(completedDeposit);
        }
        // increment epoch
        currentDepositEpoch += 1;
    }

    /**
     * @notice allows minter to process redemptions for user committed redemptions
     * @dev Based on exchange rate provided by minter, burns tTokens from each redeemer based on their committed redemption and sends them asset from bank address
     */
    function completeCommittedRedemptions(address[] memory redeemers, uint256 exchangeRate, address bankAddress) external onlyRole(MINTER_ROLE) {
        for (uint i = 0; i < redeemers.length; i++) {
            address redeemer = redeemers[i];
            uint256 amountTToken = committedRedemptions[redeemer];
            if (amountTToken == 0) {
                continue;
            }
            // calculate asset amount based on exchange rate (scaled to 1e18)
            uint256 assetAmount = (amountTToken * exchangeRate) / 1e18;
            // reset committed redemption
            committedRedemptions[redeemer] = 0;
            // remove redeemer from set
            committedRedeemers.remove(redeemer);

            // tTokens sent from bank address to this contract for burn
            IERC20(tToken).safeTransferFrom(bankAddress, address(this), amountTToken);
            // burn tTokens
            TTokenV3(tToken).withdrawPending(amountTToken);

            // send asset to redeemer from bank address
            IERC20(asset).safeTransferFrom(bankAddress, redeemer, assetAmount);

            // save to completed redemptions tracking
            CompletedRequest memory completedRedemption = CompletedRequest({
                isDeposit: false,
                epoch: currentRedemptionEpoch,
                timestamp: block.timestamp,
                receiver: redeemer,
                tToken: tToken,
                amountOut: assetAmount,
                amountIn: amountTToken
            });
            completedRedemptions[currentRedemptionEpoch].push(completedRedemption);
            userCompletedRedemptions[redeemer].push(completedRedemption);
        }
        // increment epoch
        currentRedemptionEpoch += 1;
    }

    /**
     * @dev Internal function to check if allowance is needed, or call permit on the erc20Permit asset
     */
    function _selfPermit(address token, address sender, uint256 value, uint256 deadline, Signature memory sig) internal {
        if (IERC20(token).allowance(sender, address(this)) < value) {
            IERC20Permit(token).permit(sender, address(this), value, deadline, sig.v, sig.r, sig.s);
        }
    }

    function setMinter(address minter, bool isMinter) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (isMinter) {
            _grantRole(MINTER_ROLE, minter);
        } else {
            _revokeRole(MINTER_ROLE, minter);
        }
    }

    /// @dev recover accidental funds sent to this contract
    function recoverFunds(address token, address to, uint256 amount) external onlyRole(DEFAULT_ADMIN_ROLE) {
        IERC20(token).safeTransfer(to, amount);
    }
}
