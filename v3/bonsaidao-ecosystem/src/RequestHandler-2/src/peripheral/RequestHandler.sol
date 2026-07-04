// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

import { Auth, GlobalACL, SWAP_KEEPER, KEEPER_ROLE } from "../Auth.sol";
import { AssetVault } from "../vaults/AssetVault.sol";
import { AggregateVault } from "../vaults/AggregateVault.sol";
import { Emitter } from "./Emitter.sol";
import { StorageViewer } from "./StorageViewer.sol";
import { IVaultFees } from "../interfaces/IVaultFees.sol";
import { Delegatecall } from "../libraries/Delegatecall.sol";
import { ICallbackReceiver } from "../interfaces/ICallbackReceiver.sol";
import { Address } from "@openzeppelin/contracts/utils/Address.sol";
import { SafeCast } from "../libraries/SafeCast.sol";
import { ExcessivelySafeCall } from "ExcessivelySafeCall/ExcessivelySafeCall.sol";
import { CONFIG_MAX_COPY_UNTRUSTED_CALL } from "../constants.sol";

/// @title RequestHandler
/// @author Umami Devs
/// @dev Contract to handle execution of requests
contract RequestHandler is GlobalACL {
    using Address for address;
    using Delegatecall for address;
    using SafeCast for uint256;

    /// @dev Only called by self using try, catch block
    error OnlySelf();
    /// @dev Only fulfil requests outside of rebalance
    error OngoingRebalance();

    /// @dev the aggregate vault
    AggregateVault public aggregateVault;

    /// @dev storage viewer
    StorageViewer public storageViewer;

    /// @dev fee viewer
    IVaultFees public feeViewer;

    bool public callbackEnabled;

    constructor(Auth _auth, address _aggregateVault, address _storageViewer, address _feeViewer) GlobalACL(_auth) {
        aggregateVault = AggregateVault(payable(_aggregateVault));
        storageViewer = StorageViewer(_storageViewer);
        feeViewer = IVaultFees(_feeViewer);
        callbackEnabled = false;
    }

    /// @dev Callbacks enabled
    function setCallbackEnabled(bool _callbackEnabled) external onlyConfigurator {
        callbackEnabled = _callbackEnabled;
        storageViewer.getEmitter().emitSetCallbackEnabled(_callbackEnabled);
    }

    /// @dev set fee viewer
    function setFeeViewer(address _feeViewer) external onlyConfigurator {
        require(_feeViewer != address(0));
        feeViewer = IVaultFees(_feeViewer);
    }

    /**
     * @notice executes a pending request at the prices passed
     * @param key The request key to execute
     * @param priceData Current price data to execute the request at
     */
    function executeRequest(uint256 key, AggregateVault.SetPricesParams memory priceData)
        external
        onlyExecutionKeeper
        onlyOutsideRebalancePeriod
        setOraclePricing(priceData)
    {
        require(!aggregateVault.rebalanceOpen(), "RequestHandler: rebalance open");
        AggregateVault.OCRequest memory request = storageViewer.getRequest(key);
        Emitter emitter = storageViewer.getEmitter();
        bool success;

        try this._executeRequest(request) {
            success = true;
            // succesful
            emitter.emitRequestExecuted(key, request.account, request.vault, request.callback);
        } catch (bytes memory reason) {
            emitter.emitExecutionError(key, request.account, request.vault, request.isDeposit, reason);
            if (request.isDeposit) {
                AssetVault(request.vault).returnAssets(request.sender, request.amount);
            } else {
                AssetVault(request.vault).returnShares(request.sender, request.amount);
            }
        }

        aggregateVault.clearRequest(key);

        if (callbackEnabled) {
            if (request.isDeposit) {
                afterDepositExecution(key, success, request);
            } else {
                afterWithdrawalExecution(key, success, request);
            }
        }
    }

    /// @dev Contains logic for executing the request according to the fee and pricing strategy.
    function _executeRequest(AggregateVault.OCRequest memory request) external onlySelf {
        // check for non-zero request
        require(request.amount != 0, "RequestHandler: empty request");

        AssetVault assetVault = AssetVault(request.vault);

        uint256 decimals = assetVault.decimals();
        address underlyingToken = address(assetVault.asset());

        // withdraw
        if (!request.isDeposit) {
            uint256 pps = aggregateVault.getVaultPPS(request.vault, false, true);
            uint256 shares = request.amount;
            uint256 assets = (shares * pps / 10 ** decimals);
            (uint256 withdrawFees, uint256 managmentPerformanceFee) =
                feeViewer.getWithdrawalFee(underlyingToken, assets, true);
            uint256 assetsSansFees = assets - (withdrawFees + managmentPerformanceFee);
            require(
                assetsSansFees <= assetVault.asset().balanceOf(address(aggregateVault)),
                "RequestHandler: assets not available"
            );
            require(assetsSansFees >= request.minOut, "RequestHandler: minOut");
            aggregateVault.releaseWithdrawal(
                underlyingToken, request.account, assetsSansFees, withdrawFees, managmentPerformanceFee
            );
            AssetVault(request.vault).burnShares(shares);
            aggregateVault.incrementEpochDelta(underlyingToken, -(assets.toInt256()));
        }
        // deposit
        else {
            uint256 assets = request.amount;
            uint256 depositFees = feeViewer.getDepositFee(underlyingToken, assets, true);
            uint256 pps = aggregateVault.getVaultPPS(request.vault, true, true);
            uint256 assetsSansFees = assets - depositFees;
            uint256 shares = assetsSansFees * (10 ** decimals) / pps;
            require(shares >= request.minOut, "RequestHandler: minOut");
            require(shares != 0, "RequestHandler: ZERO_SHARES");
            require(
                AssetVault(request.vault).totalAssets() + assets <= aggregateVault.previewVaultCap(underlyingToken),
                "RequestHandler: over vault cap"
            );
            AssetVault(request.vault).lodgeAssets(
                assetsSansFees, storageViewer.getVaultState().depositFeeEscrow, depositFees
            );
            AssetVault(request.vault).mintTo(shares, request.account);
            aggregateVault.incrementEpochDelta(underlyingToken, assetsSansFees.toInt256());
        }
    }

    /// @dev Callback to be executed after the deposit has been executed
    function afterDepositExecution(uint256 key, bool success, AggregateVault.OCRequest memory request) internal {
        if (!isValidCallbackContract(request.callback)) return;

        bytes memory cd = abi.encodeCall(ICallbackReceiver.afterDepositExecution, (key, success, request));
        (bool callbackSuccess, bytes memory ret) = ExcessivelySafeCall.excessivelySafeCall(
            request.callback,
            storageViewer.gasRequirement(true) - storageViewer.gasRequirement(false),
            0,
            CONFIG_MAX_COPY_UNTRUSTED_CALL,
            cd
        );
        if (callbackSuccess) {
            storageViewer.getEmitter().emitRequestCallbackSuccess(key, request);
        } else {
            storageViewer.getEmitter().emitRequestCallbackError(key, ret);
        }
    }

    /// @dev Callback to be executed after the withdrawal has been executed
    function afterWithdrawalExecution(uint256 key, bool success, AggregateVault.OCRequest memory request) internal {
        if (!isValidCallbackContract(request.callback)) return;

        bytes memory cd = abi.encodeCall(ICallbackReceiver.afterWithdrawalExecution, (key, success, request));
        (bool callbackSuccess, bytes memory ret) = ExcessivelySafeCall.excessivelySafeCall(
            request.callback,
            storageViewer.gasRequirement(true) - storageViewer.gasRequirement(false),
            0,
            CONFIG_MAX_COPY_UNTRUSTED_CALL,
            cd
        );
        if (callbackSuccess) {
            storageViewer.getEmitter().emitRequestCallbackSuccess(key, request);
        } else {
            storageViewer.getEmitter().emitRequestCallbackError(key, ret);
        }
    }

    /// @dev Should the callback be attempted
    function isValidCallbackContract(address callbackContract) internal view returns (bool) {
        if (callbackContract == address(0)) return false;
        if (!callbackContract.isContract()) return false;

        return true;
    }

    /**
     * @notice Sets the oracle ricing
     */
    modifier setOraclePricing(AggregateVault.SetPricesParams memory prices) {
        require(
            prices.realtimeFeedTokens.length == prices.realtimeFeedData.length, "RequestHandler: invalid price params"
        );
        for (uint256 i = 0; i < prices.realtimeFeedTokens.length; i++) {
            storageViewer.getOracleWrapper().setAndGetLloPrice(prices.realtimeFeedTokens[i], prices.realtimeFeedData[i]);
        }
        _;
    }

    /// @dev Modifier to ensure the caller of the function is the contract itself.
    modifier onlySelf() {
        if (msg.sender != address(this)) revert OnlySelf();
        _;
    }

    /// @dev Modifier to endsure the vault is not in active rebalance
    modifier onlyOutsideRebalancePeriod() {
        if (storageViewer.rebalanceOpen()) {
            revert OngoingRebalance();
        }
        _;
    }
}
