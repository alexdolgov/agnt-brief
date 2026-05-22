// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.26;

import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {TransferHelper} from "@uniswap/v3-periphery/contracts/libraries/TransferHelper.sol";

import {IWithdrawController} from "./interfaces/IWithdrawController.sol";
import {IAccessRegistry} from "./interfaces/IAccessRegistry.sol";
import {IOracleRegistry} from "./interfaces/IOracleRegistry.sol";
import {IParamRegistry} from "./interfaces/IParamRegistry.sol";
import {IAssetsRouter} from "./interfaces/IAssetsRouter.sol";
import {Errors} from "./libraries/Errors.sol";
import {NormalizationLib} from "./libraries/NormalizationLib.sol";

import {Constants} from "./common/Constants.sol";
import {Token} from "./Token.sol";

/// @title WithdrawController
/// @author luoyhang003
/// @notice Handles withdrawal requests, processing, reviewing, rejection, and completion.
/// @dev Integrates with AccessRegistry for whitelisting, OracleRegistry for pricing,
///      ParamRegistry for fee/limit parameters, and AssetsRouter for asset routing.
///      Implements a multi-step withdrawal lifecycle controlled by admin/operator roles.
/// @dev
///  The withdrawal process transitions between the following states:
///
///  ┌───────────────────────────────────────────────────────────┐
///  │                        STATE FLOW                         │
///  └───────────────────────────────────────────────────────────┘
///
///  REQUESTED
///   - Initial state after a user submits a withdrawal request.
///   - Shares are transferred into the contract.
///   - Can be cancelled by the user → CANCELLED.
///   - Can be rejected by the operator → REJECTED.
///
///  CANCELLED (Terminal)
///   - User cancels their withdrawal request.
///   - Shares are returned to the requester.
///
///  PROCESSING
///   - Operator marks withdrawal as processing with reference oracle prices.
///   - Represents that withdrawal is acknowledged and being handled.
///   - Can transition to:
///        → REVIEWING (manual check required)
///        → PROCESSED (ready for completion)
///
///  REVIEWING
///   - Withdrawal under operator review.
///   - Can transition to:
///        → FORFEITED (shares penalized, sent to treasury)
///        → PROCESSED (approved and ready for completion)
///
///  REJECTED (Terminal)
///   - Operator rejects the withdrawal request.
///   - Original shares are refunded to the requester.
///
///  FORFEITED (Terminal)
///   - Withdrawal is penalized.
///   - Requester’s shares are transferred to the forfeit treasury.
///
///  PROCESSED
///   - Withdrawal has been validated and priced.
///   - Awaiting user to call `completeWithdrawal`.
///
///  COMPLETED (Terminal)
///   - Finalized state after user completes withdrawal.
///   - Shares are burned.
///   - Corresponding assets are transferred to the requester.
///
/// ┌───────────────────────────────────────────────────────────┐
/// │                STATE TRANSITIONS SUMMARY                  │
/// └───────────────────────────────────────────────────────────┘
///
///  REQUESTED ── cancelWithdrawal ────▶ CANCELLED(terminal)
///      │
///      └─────── markAsProcessing ────▶ PROCESSING
///      │
///      └─────── markAsRejected ──────▶ REJECTED(terminal)
///
///  PROCESSING ─ markAsReviewing ─────▶ REVIEWING
///      │
///      └─────── markAsProcessed ─────▶ PROCESSED
///
///  REVIEWING ── markAsForfeited ─────▶ FORFEITED(terminal)
///      │
///      └─────── markAsProcessed ─────▶ PROCESSED
///
///  PROCESSED ── completeWithdrawal ──▶ COMPLETED(terminal)
///
/// @custom:terminal CANCELLED, REJECTED, FORFEITED, and COMPLETED are terminal states.
///
contract WithdrawController is
    IWithdrawController,
    AccessControl,
    ReentrancyGuard,
    Constants
{
    using Math for uint256;
    using NormalizationLib for uint256;

    /*//////////////////////////////////////////////////////////////////////////
                                    STATE VARIABLES
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Role allowed to manage WithdrawController
    /// @dev Calculated as keccak256("WITHDRAWAL_ADMIN_ROLE").
    bytes32 public constant WITHDRAWAL_ADMIN_ROLE =
        keccak256("WITHDRAWAL_ADMIN_ROLE");

    /// @notice Role allowed to operate WithdrawController
    /// @dev Calculated as keccak256("WITHDRAWAL_OPERATOR_ROLE").
    bytes32 public constant WITHDRAWAL_OPERATOR_ROLE =
        keccak256("WITHDRAWAL_OPERATOR_ROLE");

    /// @notice ERC20 share token representing ownership in the vault
    Token public immutable shareToken;

    /// @notice Registry managing whitelisted users for withdrawal access
    IAccessRegistry public accessRegistry;

    /// @notice Registry providing oracle-based pricing for vault tokens and assets
    IOracleRegistry public oracleRegistry;

    /// @notice Registry holding fee rates, withdrawal caps, and forfeit/fee recipient
    IParamRegistry public paramRegistry;

    /// @notice Router responsible for routing assets to destinations
    IAssetsRouter public assetsRouter;

    /// @notice List of supported withdrawal assets
    address[] public withdrawalAssets;

    /// @notice Stores all withdrawal receipts (requests + state tracking)
    WithdrawalReceipt[] public withdrawalReceipts;

    /// @notice Mapping of supported withdrawal asset status
    mapping(address => bool) public isWithdrawalAsset;

    /// @notice Cached decimals for each withdrawal asset
    mapping(address => uint8) public tokenDecimals;

    /*//////////////////////////////////////////////////////////////////////////
                                    CONSTRUCTOR
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Deploys WithdrawController with initial configs.
    /// @param _defaultAdmin Address granted DEFAULT_ADMIN_ROLE.
    /// @param _adminRole Address granted WITHDRAWAL_ADMIN_ROLE.
    /// @param _operatorRole Address granted WITHDRAWAL_OPERATOR_ROLE.
    /// @param _shareToken ERC20 share token used for withdrawals.
    /// @param _accessRegistry Registry of whitelisted users.
    /// @param _oracleRegistry Registry for asset/oracle prices.
    /// @param _paramRegistry Registry for fees and limits.
    /// @param _assetsRouter Router contract for asset routing.
    /// @param _withdrawalAssets Initial list of supported withdrawal assets.
    /// @dev Validates input addresses, registers assets, and stores decimals.
    constructor(
        address _defaultAdmin,
        address _adminRole,
        address _operatorRole,
        address _shareToken,
        address _accessRegistry,
        address _oracleRegistry,
        address _paramRegistry,
        address _assetsRouter,
        address[] memory _withdrawalAssets
    ) {
        if (
            _defaultAdmin == address(0) ||
            _adminRole == address(0) ||
            _operatorRole == address(0) ||
            _shareToken == address(0) ||
            _accessRegistry == address(0) ||
            _oracleRegistry == address(0) ||
            _paramRegistry == address(0) ||
            _assetsRouter == address(0)
        ) revert Errors.ZeroAddress();

        _grantRole(DEFAULT_ADMIN_ROLE, _defaultAdmin);
        _grantRole(WITHDRAWAL_ADMIN_ROLE, _adminRole);
        _grantRole(WITHDRAWAL_OPERATOR_ROLE, _operatorRole);

        shareToken = Token(_shareToken);

        accessRegistry = IAccessRegistry(_accessRegistry);
        oracleRegistry = IOracleRegistry(_oracleRegistry);
        paramRegistry = IParamRegistry(_paramRegistry);
        assetsRouter = IAssetsRouter(_assetsRouter);

        uint256 i;
        uint256 length = _withdrawalAssets.length;
        for (i; i < length; i++) {
            address asset = _withdrawalAssets[i];

            if (asset == _shareToken) revert Errors.ConflictiveToken();

            if (asset == address(0)) revert Errors.ZeroAddress();
            if (oracleRegistry.getOracle(asset) == address(0))
                revert Errors.InvalidOracle();

            isWithdrawalAsset[asset] = true;
            withdrawalAssets.push(asset);

            uint8 decimals = ERC20(asset).decimals();

            if (decimals > 18) revert Errors.InvalidDecimals();
            tokenDecimals[asset] = decimals;

            emit WithdrawalAssetAdded(asset);
        }
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    WITHDRAWAL FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Request withdrawal of a specific asset by burning shares.
    /// @param _requestToken Asset to withdraw into.
    /// @param _shares Number of shares to redeem.
    /// @dev User must be whitelisted. Generates a withdrawal receipt.
    function requestWithdrawal(
        address _requestToken,
        uint256 _shares
    ) external {
        if (!accessRegistry.isWhitelisted(msg.sender))
            revert Errors.UserNotWhitelisted();

        _requestWithdrawal(_requestToken, _shares);
    }

    /// @notice Batch request withdrawals across multiple assets.
    /// @param _requestTokens List of withdrawal asset addresses.
    /// @param _shares Corresponding share amounts per asset.
    /// @dev Lengths must match. Generates multiple withdrawal receipts.
    function requestWithdrawals(
        address[] memory _requestTokens,
        uint256[] memory _shares
    ) external {
        if (!accessRegistry.isWhitelisted(msg.sender))
            revert Errors.UserNotWhitelisted();

        uint256 length = _requestTokens.length;
        if (length == 0 || _shares.length == 0 || length != _shares.length)
            revert Errors.InvalidArrayLength();

        uint256 i;
        for (i; i < length; i++) {
            _requestWithdrawal(_requestTokens[i], _shares[i]);
        }
    }

    /// @notice Cancel a single pending withdrawal request.
    /// @param _id Receipt ID of the withdrawal request.
    /// @dev Only the original requester can cancel. Shares are refunded.
    function cancelWithdrawal(uint256 _id) external {
        _cancelWithdrawal(_id);
    }

    /// @notice Batch cancel withdrawal requests.
    /// @param _ids An array of receipt IDs of the withdrawal requests.
    /// @dev Only the original requester can cancel. Shares are refunded.
    function cancelWithdrawals(uint256[] memory _ids) external {
        uint256 length = _ids.length;
        if (length == 0) revert Errors.InvalidArrayLength();

        uint256 i;
        for (i; i < length; i++) {
            _cancelWithdrawal(_ids[i]);
        }
    }

    /// @notice Complete a withdrawal once processed.
    /// @param _id Receipt ID of withdrawal.
    /// @dev Burns shares, transfers asset to user, applies fees.
    function completeWithdrawal(uint256 _id) external {
        _completeWithdrawal(_id);
    }

    /// @notice Batch complete withdrawals.
    /// @param _ids An array of receipt IDs of withdrawals.
    /// @dev Burns shares, transfers asset to user, applies fees.
    function completeWithdrawals(uint256[] memory _ids) external {
        uint256 length = _ids.length;
        if (length == 0) revert Errors.InvalidArrayLength();

        uint256 i;
        for (i; i < length; i++) {
            _completeWithdrawal(_ids[i]);
        }
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Returns total number of withdrawal receipts created.
    /// @return length_ Total number of withdrawal receipts.
    function getWithdrawalReceiptsLength()
        external
        view
        returns (uint256 length_)
    {
        return withdrawalReceipts.length;
    }

    /// @notice Paginates withdrawal receipts.
    /// @param _offset Start index in array.
    /// @param _limit Number of receipts to fetch.
    /// @return receipts_ List of withdrawal receipts within range.
    function getWithdrawalReceipts(
        uint256 _offset,
        uint256 _limit
    ) external view returns (WithdrawalReceipt[] memory receipts_) {
        uint256 length = withdrawalReceipts.length;
        if (_offset >= length) revert Errors.IndexOutOfBounds();
        if (_limit == 0) revert Errors.ZeroAmount();

        uint256 end = _offset + _limit;
        if (end > length) end = length;

        receipts_ = new WithdrawalReceipt[](end - _offset);

        for (uint256 i = 0; i < end - _offset; i++) {
            receipts_[i] = withdrawalReceipts[_offset + i];
        }
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    WITHDRAWAL PROCESS FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Mark receipts as `PROCESSING` with reference prices.
    /// @param _ids Array of receipt IDs.
    /// @param _priceIndex Oracle price index to use.
    /// @param _isCompleted Whether all are finalized as `PROCESSING`.
    /// @dev Operator-only. Sets asset and share prices in receipt.
    function markAsProcessing(
        uint256[] memory _ids,
        uint256 _priceIndex,
        bool _isCompleted
    ) external onlyRole(WITHDRAWAL_OPERATOR_ROLE) {
        uint256 length = _ids.length;
        if (length == 0) revert Errors.InvalidArrayLength();

        uint256 shareTokenPrice = oracleRegistry.getVaultTokenCutOffPrice(
            _priceIndex
        );

        uint256 i;
        for (i; i < length; i++) {
            uint256 id = _ids[i];

            if (id >= withdrawalReceipts.length)
                revert Errors.IndexOutOfBounds();

            WithdrawalReceipt storage receipt = withdrawalReceipts[id];

            if (receipt.status != WITHDRAWAL_STATUS.REQUESTED)
                revert Errors.InvalidReceiptStatus();

            uint256 requestAssetPrice = oracleRegistry.getCutOffPrice(
                receipt.requestAsset,
                _priceIndex
            );

            receipt.shareTokenPrice = shareTokenPrice;
            receipt.requestAssetPrice = requestAssetPrice;
            receipt.status = WITHDRAWAL_STATUS.PROCESSING;

            emit WithdrawalProcessing(shareTokenPrice, requestAssetPrice, id);
        }

        if (_isCompleted) emit AllMarkedAsProcessing();
    }

    /// @notice Emit event to notify server that all receipts are finalized as `PROCESSING`.
    function markAsProcessingComplete()
        external
        onlyRole(WITHDRAWAL_OPERATOR_ROLE)
    {
        emit AllMarkedAsProcessing();
    }

    /// @notice Mark receipts as `PROCESSED`, ready for completion.
    /// @param _ids Array of receipt IDs.
    function markAsProcessed(
        uint256[] memory _ids
    ) external onlyRole(WITHDRAWAL_OPERATOR_ROLE) {
        uint256 length = _ids.length;
        if (length == 0) revert Errors.InvalidArrayLength();

        uint256 i;
        for (i; i < length; i++) {
            uint256 id = _ids[i];

            if (id >= withdrawalReceipts.length)
                revert Errors.IndexOutOfBounds();

            WithdrawalReceipt storage receipt = withdrawalReceipts[id];
            if (
                receipt.status != WITHDRAWAL_STATUS.PROCESSING &&
                receipt.status != WITHDRAWAL_STATUS.REVIEWING
            ) revert Errors.InvalidReceiptStatus();

            receipt.status = WITHDRAWAL_STATUS.PROCESSED;

            emit WithdrawalProcessed(id);
        }
    }

    /// @notice Move receipts to `REVIEWING` state.
    /// @param _ids Array of receipt IDs.
    function markAsReviewing(
        uint256[] memory _ids
    ) external onlyRole(WITHDRAWAL_OPERATOR_ROLE) {
        uint256 length = _ids.length;
        if (length == 0) revert Errors.InvalidArrayLength();

        uint256 i;
        for (i; i < length; i++) {
            uint256 id = _ids[i];

            if (id >= withdrawalReceipts.length)
                revert Errors.IndexOutOfBounds();

            WithdrawalReceipt storage receipt = withdrawalReceipts[id];

            if (receipt.status != WITHDRAWAL_STATUS.PROCESSING)
                revert Errors.InvalidReceiptStatus();

            receipt.status = WITHDRAWAL_STATUS.REVIEWING;

            emit WithdrawalReviewing(id);
        }
    }

    /// @notice Reject withdrawal requests under review.
    /// @param _ids Array of receipt IDs.
    /// @dev Returns original shares to user.
    function markAsRejected(
        uint256[] memory _ids
    ) external onlyRole(WITHDRAWAL_OPERATOR_ROLE) {
        uint256 length = _ids.length;
        if (length == 0) revert Errors.InvalidArrayLength();

        uint256 i;
        for (i; i < length; i++) {
            uint256 id = _ids[i];

            if (id >= withdrawalReceipts.length)
                revert Errors.IndexOutOfBounds();

            WithdrawalReceipt storage receipt = withdrawalReceipts[id];

            if (receipt.status != WITHDRAWAL_STATUS.REQUESTED)
                revert Errors.InvalidReceiptStatus();

            TransferHelper.safeTransfer(
                address(shareToken),
                receipt.requester,
                receipt.requestShares
            );

            receipt.status = WITHDRAWAL_STATUS.REJECTED;

            emit WithdrawalRejected(id);
        }
    }

    /// @notice Forfeit withdrawals under review.
    /// @param _ids Array of receipt IDs.
    /// @dev Redirects shares to treasury (penalty).
    function markAsForfeited(
        uint256[] memory _ids
    ) external onlyRole(WITHDRAWAL_OPERATOR_ROLE) {
        uint256 length = _ids.length;
        if (length == 0) revert Errors.InvalidArrayLength();

        uint256 i;
        for (i; i < length; i++) {
            uint256 id = _ids[i];

            if (id >= withdrawalReceipts.length)
                revert Errors.IndexOutOfBounds();

            WithdrawalReceipt storage receipt = withdrawalReceipts[id];

            if (receipt.status != WITHDRAWAL_STATUS.REVIEWING)
                revert Errors.InvalidReceiptStatus();

            TransferHelper.safeTransfer(
                address(shareToken),
                paramRegistry.getForfeitTreasury(),
                receipt.requestShares
            );

            receipt.status = WITHDRAWAL_STATUS.FORFEITED;

            emit WithdrawalForfeited(id);
        }
    }

    /// @notice Repays assets back into the controller (usually for liquidity replenishment).
    /// @param _assets Array of ERC20 token addresses to repay.
    /// @param _amounts Array of amounts to repay for each corresponding asset.
    /// @dev Callable only by WITHDRAWAL_OPERATOR_ROLE.
    ///      Lengths of `_assets` and `_amounts` must match and be > 0.
    ///      Ensures asset is supported and amount is nonzero.
    ///      Tokens are transferred from operator to this contract.
    function repayAssets(
        address[] memory _assets,
        uint256[] memory _amounts
    ) external onlyRole(WITHDRAWAL_OPERATOR_ROLE) {
        uint256 length = _assets.length;
        if (length == 0 || _amounts.length == 0 || length != _amounts.length)
            revert Errors.InvalidArrayLength();

        uint256 i;
        for (i; i < length; i++) {
            address asset = _assets[i];
            uint256 amount = _amounts[i];

            if (!isWithdrawalAsset[asset]) revert Errors.UnsupportedAsset();
            if (amount == 0) revert Errors.ZeroAmount();

            TransferHelper.safeTransferFrom(
                asset,
                msg.sender,
                address(this),
                amount
            );

            emit AssetRepaid(asset, amount);
        }
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    ADMIN FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Adds a new supported withdrawal asset.
    /// @param _asset ERC20 token address to be added as a withdrawal option.
    /// @dev Callable only by WITHDRAWAL_ADMIN_ROLE.
    ///      Requires a valid oracle registered for `_asset`.
    ///      Stores token decimals (must be ≤ 18).
    ///      Emits {WithdrawalAssetAdded}.
    function addWithdrawalAsset(
        address _asset
    ) external onlyRole(WITHDRAWAL_ADMIN_ROLE) {
        if (withdrawalAssets.length >= paramRegistry.getArrayLengthLimit())
            revert Errors.ExceedArrayLengthLimit();
        if (_asset == address(0)) revert Errors.ZeroAddress();
        if (_asset == address(shareToken)) revert Errors.ConflictiveToken();
        if (isWithdrawalAsset[_asset]) revert Errors.AssetAlreadyAdded();
        if (oracleRegistry.getOracle(_asset) == address(0))
            revert Errors.InvalidOracle();

        isWithdrawalAsset[_asset] = true;
        withdrawalAssets.push(_asset);

        uint8 decimals = ERC20(_asset).decimals();

        if (decimals > 18) revert Errors.InvalidDecimals();
        tokenDecimals[_asset] = decimals;

        emit WithdrawalAssetAdded(_asset);
    }

    /// @notice Removes an existing withdrawal asset from the supported list.
    /// @param _asset ERC20 token address to remove.
    /// @dev Callable only by WITHDRAWAL_ADMIN_ROLE.
    ///      Reverts if `_asset` is not currently supported.
    ///      Updates mapping and storage list.
    ///      Emits {WithdrawalAssetRemoved}.
    function removeWithdrawalAsset(
        address _asset
    ) external onlyRole(WITHDRAWAL_ADMIN_ROLE) {
        if (_asset == address(0)) revert Errors.ZeroAddress();
        if (!isWithdrawalAsset[_asset]) revert Errors.AssetAlreadyRemoved();

        uint256 length = withdrawalAssets.length;
        uint256 i;
        for (i; i < length; i++) {
            if (withdrawalAssets[i] == _asset) {
                withdrawalAssets[i] = withdrawalAssets[length - 1];
                withdrawalAssets.pop();
                break;
            }
        }
        isWithdrawalAsset[_asset] = false;

        emit WithdrawalAssetRemoved(_asset);
    }

    /// @notice Force routes a specific amount of an asset through the AssetsRouter.
    /// @param _asset ERC20 token address to route.
    /// @param _amount Amount of `_asset` to route.
    /// @dev Callable only by WITHDRAWAL_ADMIN_ROLE.
    ///      Typically used in emergencies or manual corrections.
    ///      Resets and re-approves allowance before routing.
    function forceRouteAssets(
        address _asset,
        uint256 _amount
    ) external onlyRole(WITHDRAWAL_ADMIN_ROLE) {
        if (_asset == address(0)) revert Errors.ZeroAddress();
        if (_amount == 0) revert Errors.ZeroAmount();

        TransferHelper.safeApprove(_asset, address(assetsRouter), 0);
        TransferHelper.safeApprove(_asset, address(assetsRouter), _amount);

        assetsRouter.route(_asset, _amount);

        emit ForceRouteAssets(_asset, _amount);
    }

    /// @notice Updates the AssetsRouter contract used for routing assets.
    /// @param _assetsRouter Address of the new AssetsRouter contract.
    /// @dev Callable only by WITHDRAWAL_ADMIN_ROLE.
    ///      Emits {SetAssetsRouter}.
    ///      Does not reset allowances for all assets (admin must manage separately if needed).
    function setAssetsRouter(
        address _assetsRouter
    ) external onlyRole(WITHDRAWAL_ADMIN_ROLE) {
        if (_assetsRouter == address(0)) revert Errors.ZeroAddress();

        emit SetAssetsRouter(address(assetsRouter), _assetsRouter);

        assetsRouter = IAssetsRouter(_assetsRouter);
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @dev Internal logic for handling withdrawal requests.
    ///      Transfers shares from user, creates a withdrawal receipt,
    ///      applies fee rate from ParamRegistry, and marks status as REQUESTED.
    /// @param _requestToken Address of the withdrawal asset requested.
    /// @param _shares Amount of shares to redeem.
    /// @notice Emits {WithdrawalRequested}.
    /// @custom:reverts if user provides zero shares, unsupported asset, or withdraw is paused.
    function _requestWithdrawal(
        address _requestToken,
        uint256 _shares
    ) internal nonReentrant {
        if (_shares == 0) revert Errors.RequestZeroShare();
        if (!isWithdrawalAsset[_requestToken]) revert Errors.UnsupportedAsset();
        if (!paramRegistry.getRedeemEnabled(_requestToken))
            revert Errors.WithdrawPaused();

        TransferHelper.safeTransferFrom(
            address(shareToken),
            msg.sender,
            address(this),
            _shares
        );

        WithdrawalReceipt memory withdrawalReceipt;
        withdrawalReceipt.requester = msg.sender;
        withdrawalReceipt.requestAsset = _requestToken;
        withdrawalReceipt.requestShares = _shares;
        withdrawalReceipt.feeRate = paramRegistry.getRedeemFeeRate(
            _requestToken
        );
        withdrawalReceipt.status = WITHDRAWAL_STATUS.REQUESTED;

        emit WithdrawalRequested(
            msg.sender,
            _requestToken,
            _shares,
            withdrawalReceipts.length
        );

        withdrawalReceipts.push(withdrawalReceipt);
    }

    /// @dev Internal logic for cancelling a withdrawal request.
    ///      Refunds shares to requester and updates receipt status.
    /// @param _id ID of the withdrawal receipt to cancel.
    /// @notice Emits {WithdrawalCancelled}.
    /// @custom:reverts if caller is not requester or status is not REQUESTED.
    function _cancelWithdrawal(uint256 _id) internal {
        if (_id >= withdrawalReceipts.length) revert Errors.IndexOutOfBounds();

        WithdrawalReceipt storage receipt = withdrawalReceipts[_id];
        address requester = receipt.requester;
        uint256 requestShares = receipt.requestShares;

        if (requester != msg.sender) revert Errors.NotRequester();
        if (receipt.status != WITHDRAWAL_STATUS.REQUESTED)
            revert Errors.InvalidReceiptStatus();

        TransferHelper.safeTransfer(
            address(shareToken),
            requester,
            requestShares
        );

        receipt.status = WITHDRAWAL_STATUS.CANCELLED;

        emit WithdrawalCancelled(requester, requestShares, _id);
    }

    /// @dev Internal logic for completing withdrawals after being processed.
    ///      Calculates withdrawn amount using oracle prices, applies fee,
    ///      burns shares, and transfers assets to requester.
    /// @param _id ID of the withdrawal receipt to complete.
    /// @notice Emits {WithdrawalCompleted}.
    /// @custom:reverts if receipt is not PROCESSED.
    function _completeWithdrawal(uint256 _id) internal nonReentrant {
        if (_id >= withdrawalReceipts.length) revert Errors.IndexOutOfBounds();

        WithdrawalReceipt storage receipt = withdrawalReceipts[_id];
        address requester = receipt.requester;
        address requestAsset = receipt.requestAsset;
        uint256 requestShares = receipt.requestShares;
        uint256 feeRate = receipt.feeRate;

        if (msg.sender != requester) revert Errors.NotRequester();

        if (accessRegistry.isBlacklisted(requester))
            revert Errors.UserBlacklisted();

        if (receipt.status != WITHDRAWAL_STATUS.PROCESSED)
            revert Errors.InvalidReceiptStatus();

        uint256 withdrawnAmount = requestShares
            .mulDiv(
                receipt.shareTokenPrice,
                receipt.requestAssetPrice,
                Math.Rounding.Floor
            )
            .denormalize(tokenDecimals[requestAsset]);

        uint256 fee;
        if (feeRate > 0) {
            fee = withdrawnAmount.mulDiv(
                feeRate,
                FEE_DENOMINATOR,
                Math.Rounding.Ceil
            );

            TransferHelper.safeTransfer(
                requestAsset,
                paramRegistry.getFeeRecipient(),
                fee
            );
            withdrawnAmount -= fee;
        }

        shareToken.burn(requestShares);
        TransferHelper.safeTransfer(requestAsset, requester, withdrawnAmount);

        receipt.status = WITHDRAWAL_STATUS.COMPLETED;

        emit WithdrawalCompleted(
            requester,
            requestAsset,
            withdrawnAmount,
            fee,
            _id
        );
    }
}
