// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IWETH} from "@wormhole/interfaces/IWETH.sol";
import "@wormhole/Utils.sol";

import {InterestLogic} from "../InterestLogic.sol";
import {ValidationLogic} from "../ValidationLogic.sol";
import {CommonAccountingLogic} from "./CommonAccountingLogic.sol";

import {HubSpokeStructs} from "../../../contracts/HubSpokeStructs.sol";
import {HubSpokeEvents} from "../../../contracts/HubSpokeEvents.sol";

library HubAccountingLogic {
    using SafeERC20 for IERC20;
    using ValidationLogic for HubSpokeStructs.HubState;
    using InterestLogic for HubSpokeStructs.HubState;

    error InsufficientFunds();
    error InvalidAction();
    error TransferFailed();
    error UnregisteredAsset();
    error UnusedParameterMustBeZero();
    error ZeroAddress();

    // events need to be in both library and contract to be picked up
    // see: https://ethereum.stackexchange.com/questions/11137/watching-events-defined-in-libraries
    event AccrualIndexUpdated(address indexed asset, uint256 deposit, uint256 borrow, uint256 timestamp);
    event Deposit(address indexed vault, address indexed asset, uint256 amount, uint256 vaultTotalDeposited);
    event Withdraw(address indexed vault, address indexed asset, uint256 amount, uint256 vaultTotalDeposited);
    event Borrow(address indexed vault, address indexed asset, uint256 amount, uint256 vaultTotalBorrowed);
    event Repay(address indexed vault, address indexed asset, uint256 amount, uint256 vaultTotalBorrowed);
    event ReservesWithdrawn(address indexed asset, uint256 amount, address destination);
    // end events from HubSpokeEvents

    function requireRegisteredToken(HubSpokeStructs.HubState storage _state, address token) public view {
        if (!_state.assetRegistry.getAssetInfo(token).exists) {
            revert UnregisteredAsset();
        }
    }

    function accountForUserAction(
        HubSpokeStructs.HubState storage _state,
        bytes32 userId,
        HubSpokeStructs.Action action,
        IERC20 asset,
        uint256 amount
    ) public {
        // TODO: re-index all based on bytes32 addressing
        address user = fromWormholeFormat(userId);

        updateAccrualIndices(_state, address(asset));

        if (action == HubSpokeStructs.Action.Withdraw || action == HubSpokeStructs.Action.WithdrawNative) {
            _state.checkAllowedToWithdraw(user, address(asset), amount);
        } else if (action == HubSpokeStructs.Action.Borrow || action == HubSpokeStructs.Action.BorrowNative) {
            _state.checkAllowedToBorrow(user, address(asset), amount);
        } else if (action == HubSpokeStructs.Action.Repay) {
            _state.checkAllowedToRepay(user, address(asset), amount);
        } else if (action == HubSpokeStructs.Action.Deposit) {
            _state.checkAllowedToDeposit(address(asset), amount);
        } else {
            revert InvalidAction();
        }

        updateVaultAmounts(_state, action, user, address(asset), amount);
    }

    /**
     * @dev Assets accrue interest over time, so at any given point in time the value of an asset is (amount of asset on day 1) * (the amount of interest that has accrued).
     * This function updates both the deposit and borrow interest accrual indices of the asset.
     *
     * @param assetAddress - The asset to update the interest accrual indices of
     */
    function updateAccrualIndices(
        HubSpokeStructs.HubState storage _state,
        address assetAddress
    ) public {
        _state.indices[assetAddress] = InterestLogic.getCurrentAccrualIndices(_state, assetAddress);
        _state.lastActivityBlockTimestamps[assetAddress] = block.timestamp;
        emit AccrualIndexUpdated(assetAddress, _state.indices[assetAddress].deposited, _state.indices[assetAddress].borrowed, block.timestamp);
    }

    /**
     * @dev Updates the vault's state to log either a deposit, borrow, withdraw, or repay
     *
     * @param action - the action (either Deposit, Borrow, Withdraw, or Repay)
     * @param vault - the address of the vault
     * @param assetAddress - the address of the relevant asset being logged
     * @param amount - the amount of the asset assetAddress being logged
     */
    function updateVaultAmounts(
        HubSpokeStructs.HubState storage _state,
        HubSpokeStructs.Action action,
        address vault,
        address assetAddress,
        uint256 amount
    ) public {
        HubSpokeStructs.DenormalizedVaultAmount memory vaultAmounts = _state.getVaultAmounts(vault, assetAddress);
        HubSpokeStructs.DenormalizedVaultAmount memory globalAmounts = _state.getGlobalAmounts(assetAddress);

        if (action == HubSpokeStructs.Action.Deposit) {
            vaultAmounts.deposited += amount;
            globalAmounts.deposited += amount;

            emit Deposit(vault, assetAddress, amount, vaultAmounts.deposited);
        } else if (action == HubSpokeStructs.Action.Withdraw || action == HubSpokeStructs.Action.WithdrawNative) {
            vaultAmounts.deposited -= amount;
            globalAmounts.deposited -= amount;

            emit Withdraw(vault, assetAddress, amount, vaultAmounts.deposited);
        } else if (action == HubSpokeStructs.Action.Borrow || action == HubSpokeStructs.Action.BorrowNative) {
            vaultAmounts.borrowed += amount;
            globalAmounts.borrowed += amount;

            emit Borrow(vault, assetAddress, amount, vaultAmounts.borrowed);
        } else if (action == HubSpokeStructs.Action.Repay) {
            if (amount > vaultAmounts.borrowed) {
                amount = vaultAmounts.borrowed;
            }
            vaultAmounts.borrowed -= amount;
            globalAmounts.borrowed -= amount;

            emit Repay(vault, assetAddress, amount, vaultAmounts.borrowed);
        } else {
            revert InvalidAction();
        }

        setVaultAmounts(_state, vault, assetAddress, vaultAmounts);
        setGlobalAmounts(_state, assetAddress, globalAmounts);
    }

    function setVaultAmounts(
        HubSpokeStructs.HubState storage _state,
        address vaultOwner,
        address assetAddress,
        HubSpokeStructs.DenormalizedVaultAmount memory vaultAmount
    ) public {
        _state.vault[vaultOwner][assetAddress].amounts = vaultAmount;
        _state.vault[vaultOwner][assetAddress].accrualIndices = InterestLogic.getCurrentAccrualIndices(_state, assetAddress);
    }

    function setGlobalAmounts(
        HubSpokeStructs.HubState storage _state,
        address assetAddress,
        HubSpokeStructs.DenormalizedVaultAmount memory vaultAmount
    ) public {
        _state.totalAssets[assetAddress].amounts = vaultAmount;
        _state.totalAssets[assetAddress].accrualIndices = InterestLogic.getCurrentAccrualIndices(_state, assetAddress);
    }

    /**
     * @notice Get the protocol's global reserve amount in an asset
     *
     * @param asset - the address of the asset
     * @return uint256 The amount of the asset in the protocol's reserve
     */
    function getReserveAmount(
        HubSpokeStructs.HubState storage _state,
        address asset
    ) public view returns (uint256) {
        if (asset == address(0)) {
            revert ZeroAddress();
        }
        HubSpokeStructs.DenormalizedVaultAmount memory globalAmounts = _state.getGlobalAmounts(asset);
        HubSpokeStructs.HubSpokeBalances storage spokeBalance = _state.wrappedTokenSpokeBalances[asset];
        return IERC20(asset).balanceOf(address(this)) + spokeBalance.finalized + spokeBalance.unfinalized + globalAmounts.borrowed - globalAmounts.deposited;
    }

    /**
     * @notice Withdraws reserves from the contract. If the amount is greater than the reserve balance, then
     * the entire reserve balance is withdrawn.
     * @param wrappedAsset: The address of the wrapped asset. Pass address(0) for native asset.
     * @param destination: The address to send the reserves to
     * @param amount: The amount of the wrapped asset to withdraw
     */
    function withdrawReserves(
        HubSpokeStructs.HubState storage _state,
        address wrappedAsset,
        address destination,
        uint256 amount
    ) public {
        if (destination == address(0)) {
            revert ZeroAddress();
        }

        uint256 reserveBalance = wrappedAsset == address(0) ? address(this).balance : getReserveAmount(_state, wrappedAsset);

        // can't withdraw more than reserve balance
        if (amount > reserveBalance) {
            amount = reserveBalance;
        }

        if (wrappedAsset == address(0)) {
            (bool success,) = payable(destination).call{value: amount}("");
            if (!success) revert TransferFailed();
        } else {
            // transfer reserve balance to destination
            IERC20(wrappedAsset).safeTransfer(destination, amount);
        }

        emit ReservesWithdrawn(wrappedAsset, amount, destination);
    }
}