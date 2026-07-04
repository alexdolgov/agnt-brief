// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {Ownable2StepUpgradeable} from "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {IERC20, IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {ERC1967Utils} from "@openzeppelin/contracts/proxy/ERC1967/ERC1967Utils.sol";
import {IStrategy, IFeePolicy, IMasterOracle, IPositionRegistry} from "src/interfaces/IStrategy.sol";
import {SwapParams, SwapAggregator, SwapAggregatorDelegateCalls} from "src/components/SwapAggregator.sol";

/// @title Abstract Strategy contract
abstract contract Strategy is IStrategy, Initializable, UUPSUpgradeable, Ownable2StepUpgradeable {
    using SafeERC20 for IERC20;
    using Math for uint256;
    using SafeCast for uint256;
    using SwapAggregatorDelegateCalls for SwapAggregator;

    uint256 public constant UPDATE_SNAPSHOT_COOL_DOWN = 1 weeks;
    uint256 internal constant MAX_BPS = 100_00;
    uint256 internal constant MAX_REWARDS_DUST_BPS = 50; // 0.5%
    uint256 private constant ONE_USD = 1e18;
    address private constant ETH = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

    IMasterOracle public immutable oracle;
    SwapAggregator public immutable swapAggregator;

    /// @notice Emitted when a feature is called
    event FeatureCalled(uint256 allocatedBefore, uint256 allocatedAfter);

    /// @notice Emitted when a position is opened
    event PositionOpened(IERC20 indexed asset, uint256 pushed);

    /// @notice Emitted when a position is closed
    event PositionClosed(IERC20 indexed asset, uint256 pulled);

    /// @notice Emitted when rewards are claimed
    event RewardsClaimed(IERC20 indexed asset, uint256 claimed);

    /// @notice Emitted when a snapshot is taken
    event SnapshotUpdated(address indexed sender, uint256 timestamp, uint256 pendingFees, uint256 totalAllocated);

    /// @notice Emitted when fees are collected
    event FeesCollected(address indexed sender, IERC20 indexed asset, uint256 collected);

    /// @notice Emitted when the fee policy is updated
    event FeePolicyUpdated(IFeePolicy indexed oldFeePolicy, IFeePolicy indexed newFeePolicy);

    error PositionIsClosed();
    error PositionIsOpen();
    error InvalidStrategyId();
    error AddressIsNull();
    error AmountIsZero();
    error DustTooHigh();
    error TokenCanNotBeTransferred();
    error AmountGreaterThanMax();
    error TooEarlyToUpdateSnapshot();
    error SlippageTooHigh();
    error NewOwnerIsSameAsCurrent();
    error ZapIsNotSupportedForETH();
    error SenderCanNotCollectFee();
    error InvalidSwapParams();
    error SenderIsNotSelf();
    error ImplementationIsUpToDate();

    /// @custom:storage-location erc7201:odyssey.storage.Position
    struct PositionStorage {
        // global
        IPositionRegistry _positionRegistry;
        // strategy
        uint256 _strategyId;
        IFeePolicy _feePolicy;
        // current position
        IERC20 _asset;
        uint128 _totalShares;
        // snapshot
        uint128 _latestPendingFees;
        uint208 _latestTotalAllocated;
        uint48 _latestTimestamp;
    }

    bytes32 private constant PositionStorageLocation =
        keccak256(abi.encode(uint256(keccak256("odyssey.storage.Position")) - 1)) & ~bytes32(uint256(0xff));

    function _getPositionStorage() private pure returns (PositionStorage storage $) {
        bytes32 location = PositionStorageLocation;
        assembly {
            $.slot := location
        }
    }

    /// @notice The feature modifier
    /// This logic applies to almost all the features
    /// It's utilized to generically calculate fees and shares supply
    /// @dev There are a few use cases where it doesn't apply (i.e., open, close and claim)
    modifier isFeature() {
        _checkOwner();
        if (!isOpen()) revert PositionIsClosed();

        uint256 _allocatedBefore = _totalAllocated();
        _;
        uint256 _allocatedAfter = _totalAllocated();

        _calculateFeeAndUpdateShares(_allocatedBefore, _allocatedAfter);

        emit FeatureCalled(_allocatedBefore, _allocatedAfter);
    }

    /// @notice Validates who can call the `collectPendingFees()` function
    modifier onlyIfCanCollectFees() {
        if (!positionRegistry().isKeeper(msg.sender) && msg.sender != owner()) revert SenderCanNotCollectFee();
        _;
    }

    modifier onlySelf() {
        if (msg.sender != address(this)) revert SenderIsNotSelf();
        _;
    }

    constructor(IMasterOracle oracle_, SwapAggregator swapAggregator_) {
        if (address(oracle_) == address(0)) revert AddressIsNull();
        if (address(swapAggregator_) == address(0)) revert AddressIsNull();

        oracle = oracle_;
        swapAggregator = swapAggregator_;

        _disableInitializers();
    }

    /// @notice Initializes the position (proxy)
    /// @param strategyId_ The strategy's id
    /// @param owner_ The position's owner
    /// @param positionRegistry_ The position registry contract
    function initialize(uint256 strategyId_, address owner_, address positionRegistry_) external initializer {
        if (strategyId_ == 0) revert InvalidStrategyId();
        if (address(owner_) == address(0)) revert AddressIsNull();
        if (address(positionRegistry_) == address(0)) revert AddressIsNull();

        PositionStorage storage $ = _getPositionStorage();
        $._positionRegistry = IPositionRegistry(positionRegistry_);
        $._strategyId = strategyId_;

        __Ownable_init_unchained(owner_);
    }

    /// @notice Set the current position parameters when opening it
    /// @param positionParams_ The new position's params (e.g., tokens, protocol contracts, etc)
    function _setPositionParams(bytes memory positionParams_) internal virtual {
        (bytes memory _genericParams, bytes memory _customParams) = abi.decode(positionParams_, (bytes, bytes));
        PositionStorage storage $ = _getPositionStorage();
        $._asset = abi.decode(_genericParams, (IERC20));

        _setFeePolicy();

        _setCustomParams(_customParams);
    }

    /// @notice Set the current position's custom parameters (e.g., external protocol addresses)
    function _setCustomParams(bytes memory customParams_) internal virtual;

    /// @notice Unset the current positions parameters when closing it
    function _unsetParams() internal virtual {
        PositionStorage storage $ = _getPositionStorage();
        delete $._feePolicy;
        delete $._asset;
        delete $._totalShares;
        delete $._latestPendingFees;
        delete $._latestTotalAllocated;
        delete $._latestTimestamp;

        _unsetCustomParams();
    }

    /// @notice Unset the current position's custom parameters (e.g., external protocol addresses)
    function _unsetCustomParams() internal virtual;

    /// @notice Open feature
    /// @param positionParams_ The positions' params (i.e., collateral asset and target protocol config).
    /// The `positionParams_` is encoded by `abi.encode(_genericParams, _customParams)` where `_genericParams` is `abi.encode(collateral)`,
    /// and `_customParams` is protocol-related encoded params (See: `_setCustomParams` from the target strategy's implementation).
    /// @param pushParams_ The push feature's params
    /// The `pushParams_` is protocol-related encoded params (See: `_push` from the target strategy's implementation).
    function open(bytes memory positionParams_, bytes memory pushParams_) external override onlyOwner {
        if (isOpen()) revert PositionIsOpen();

        _setPositionParams(positionParams_);
        _push(pushParams_);
        uint256 _allocated = _totalAllocated();
        _calculateFeeAndUpdateShares(0, _allocated);

        emit PositionOpened(asset(), _allocated);
    }

    /// @notice Close feature
    /// This feature will claim any pending rewards, pull assets from yield routing, and, unset position's parameters.
    /// Any pending fees will be collected during the closure process.
    /// @dev It must pull all (or almost all) assets, otherwise it'll revert if the remaining value is > $1 worth
    /// @param claimParams_ The claim's params
    /// The `claimParams_` is protocol-related encoded params (See: `_claimAllAndAllocate` from the target strategy's implementation).
    /// @param pullParams_ The pull feature's params
    /// The `pullParams_` is protocol-related encoded params (See: `_pull` from the target strategy's implementation).
    /// @param withdrawParams_ To be used when the strategy requires (e.g. slippage param)
    /// The `withdrawParams_` is protocol-related encoded params (See: `_withdrawAsset` from the target strategy's implementation).
    function close(
        bytes memory claimParams_,
        bytes memory pullParams_,
        bytes memory withdrawParams_
    ) public override onlyOwner {
        if (!isOpen()) revert PositionIsClosed();

        uint256 _allocatedBefore = _totalAllocated();

        (SwapParams[] memory _swapParams, bytes memory _extraParams) = abi.decode(claimParams_, (SwapParams[], bytes));
        _claimAllAndAllocate(_swapParams, _extraParams);
        _pull(pullParams_);

        uint256 _allocatedAfter = _totalAllocated();
        IERC20 _asset = asset();

        if (oracle.quoteTokenToUsd(address(_asset), _allocatedAfter) >= ONE_USD) revert DustTooHigh();

        _calculateFeeAndUpdateShares(_allocatedBefore, _allocatedAfter);
        collectPendingFees(withdrawParams_);
        _unsetParams();

        emit PositionClosed(_asset, _allocatedAfter);
    }

    /// @notice Close feature
    /// This feature will claim any pending rewards, pull assets from yield routing, and, unset position's parameters.
    /// Any pending fees will be collected during the closure process.
    /// @dev It must pull all (or almost all) assets, otherwise it'll revert if the remaining value is > $1 worth
    /// @param claimParams_ The claim's params
    /// The `claimParams_` is protocol-related encoded params (See: `_claimAllAndAllocate` from the target strategy's implementation).
    /// @param pullParams_ The pull feature's params
    /// The `pullParams_` is protocol-related encoded params (See: `_pull` from the target strategy's implementation).
    function close(bytes memory claimParams_, bytes memory pullParams_) external override onlyOwner {
        close(claimParams_, pullParams_, "");
    }

    /// @notice Claim feature
    /// @param params_ The claim parameters
    /// The `params_` is protocol-related encoded params (See: `_claimAllAndAllocate` from the target strategy's implementation).
    function claim(bytes memory params_) external override onlyOwner returns (uint256 _claimed) {
        if (!isOpen()) revert PositionIsClosed();

        (SwapParams[] memory _swapParams, bytes memory _extraParams) = abi.decode(params_, (SwapParams[], bytes));
        _claimed = _claimAllAndAllocate(_swapParams, _extraParams);

        if (_claimed > 0) {
            uint256 _allocated = _totalAllocated();
            // Note: Using no delta value to not mint shares, therefore considering the claimed amount as profit
            _calculateFeeAndUpdateShares(_allocated, _allocated);
        }

        emit RewardsClaimed(asset(), _claimed);
    }

    /// @notice Swap and allocate feature
    /// This feature will swap tokens for `asset` and allocate resulting amount. It can be useful when there is non productive tokens sitting in the position.
    /// @param swapParams_ The swap params
    /// @param depositParams_ The extra deposit params (if any)
    /// The `depositParams_` is protocol-related encoded params (See: `_depositAsset` from the target strategy's implementation).
    function swapAndAllocate(SwapParams[] memory swapParams_, bytes memory depositParams_) external isFeature {
        uint256 _len = swapParams_.length;
        IERC20 _asset = asset();
        uint256 _assets;

        for (uint256 i; i < _len; ++i) {
            if (swapParams_[i].amountIn == 0) revert InvalidSwapParams();
            if (swapParams_[i].tokenIn == _asset) revert InvalidSwapParams();
            if (swapParams_[i].tokenOut != _asset) revert InvalidSwapParams();
            if (swapParams_[i].receiver != address(this)) revert InvalidSwapParams();

            (, uint256 _amountOut) = _swap(swapParams_[i]);

            _assets += _amountOut;
        }

        _depositAsset(_assets, depositParams_);
    }

    /// @notice Claim and allocate reward tokens
    /// This function will claim any pending rewards, swap them for `asset`, and, allocate to the position.
    /// @param swapParams_ The parameters to swap reward token for `asset`
    /// @param extraParams_ The additional parameters for claiming (if any)
    /// The `extraParams_` is protocol-related encoded params (See: `_claimAllAndAllocate` from the target strategy's implementation).
    /// @return _claimed Returns total claimed amount in `asset` tokens (i.e., swap amount out)
    function _claimAllAndAllocate(
        SwapParams[] memory swapParams_,
        bytes memory extraParams_
    ) internal virtual returns (uint256 _claimed) {}

    /// @notice Swap reward tokens for `asset`
    /// @param swapParams_ The swap params array
    /// @param tokens_ The reward tokens array
    /// @param amounts_ The claimed amounts
    function _swapRewardsForAssets(
        SwapParams[] memory swapParams_,
        IERC20[] memory tokens_,
        uint256[] memory amounts_
    ) internal returns (uint256 _claimedInAssets) {
        uint256 _len = swapParams_.length;

        if (_len != amounts_.length || _len != tokens_.length) revert InvalidSwapParams();

        IERC20 _asset = asset();

        for (uint256 i; i < _len; ++i) {
            uint256 _claimed = amounts_[i];

            if (_claimed == 0) continue;

            if (swapParams_[i].amountIn == 0) revert InvalidSwapParams();
            if (swapParams_[i].tokenIn != tokens_[i]) revert InvalidSwapParams();
            if (swapParams_[i].tokenOut != _asset) revert InvalidSwapParams();
            if (swapParams_[i].receiver != address(this)) revert InvalidSwapParams();

            (uint256 _amountIn, uint256 _amountOut) = _swap(swapParams_[i]);

            uint256 _maxDust = (_claimed * MAX_REWARDS_DUST_BPS) / MAX_BPS;

            if (_amountIn < _claimed && _claimed - _amountIn > _maxDust) revert DustTooHigh();

            _claimedInAssets += _amountOut;
        }
    }

    /// @notice Swap reward tokens for `asset`
    /// @param swapParams_ The swap params
    /// @param token_ The reward token
    /// @param amount_ The claimed amount
    function _swapRewardsForAssets(
        SwapParams[] memory swapParams_,
        IERC20 token_,
        uint256 amount_
    ) internal returns (uint256 _claimedInAssets) {
        IERC20[] memory _tokens = new IERC20[](1);
        _tokens[0] = token_;

        uint256[] memory _amounts = new uint256[](1);
        _amounts[0] = amount_;

        return _swapRewardsForAssets(swapParams_, _tokens, _amounts);
    }

    /// @notice Push feature
    /// This function will allocate the `asset` tokens following the strategy's yield routing
    /// @param params_ The push feature's params
    /// The `params_` is protocol-related encoded params (See: `_push` from the target strategy's implementation).
    function push(bytes memory params_) external override isFeature {
        _push(params_);
    }

    /// @notice Implementation for pushing assets to the strategy's yield routing
    /// @param params_ The push params
    function _push(bytes memory params_) internal virtual;

    /// @notice Pull feature
    /// This function will deallocate assets from target protocol. It's the inversion operation of `push`.
    /// @param params_ The pull feature's params
    /// The `params_` is protocol-related encoded params (See: `_pull` from the target strategy's implementation).
    function pull(bytes memory params_) external override isFeature {
        _pull(params_);
    }

    /// @notice Implementation for pulling assets from the strategy's yield routing
    /// @param params_ The pull params
    function _pull(bytes memory params_) internal virtual;

    /// @notice Deposit assets to the strategy
    function _depositAsset(uint256 amount_, bytes memory /*extraParams_*/) internal virtual {
        return _depositAsset(amount_);
    }

    /// @notice Deposit assets to the strategy (without `extraParams_`)
    function _depositAsset(uint256 amount_) internal virtual;

    /// @notice Withdraw assets from the strategy
    /// Mostly utilized to make assets available for fee collection
    function _withdrawAsset(
        uint256 amount_,
        bytes memory /*extraParams_*/
    ) internal virtual returns (uint256 _withdrawn) {
        return _withdrawAsset(amount_);
    }

    /// @notice Withdraw assets from the strategy (without `extraParams_`)
    function _withdrawAsset(uint256 amount_) internal virtual returns (uint256 _withdrawn);

    /// @notice Get the net amount of `asset` allocated to the strategy
    /// @return _assets The assets amount
    function totalAllocated() public view returns (uint256 _assets) {
        if (isOpen()) {
            return _totalAllocated();
        }
    }

    /// @notice Implements the `totalAllocated()` logic
    /// @dev This function is called on every feature execution; because of that, it's important to keep gas costs as low as possible
    /// @return _assets The assets amount
    function _totalAllocated() internal view virtual returns (uint256 _assets);

    /// @notice Get price per share
    /// This function is used to calculate the strategy's performance over time.
    /// Position's shares are internal values used for accounting purposes only.
    /// @return _pricePerShare The `asset` amount represented for each share
    function pricePerShare() external view returns (uint256 _pricePerShare) {
        if (isOpen()) {
            return
                _convertToAssets(
                    10 ** IERC20Metadata(address(asset())).decimals(),
                    _totalAllocated(),
                    Math.Rounding.Ceil
                );
        }
    }

    /// @notice Convert shares amount to assets
    /// @param shares_ The shares amount
    /// @param allocated_ The updated `totalAllocated` amount
    /// @param rounding_ The rounding rule
    /// @return _assets The assets amount
    function _convertToAssets(
        uint256 shares_,
        uint256 allocated_,
        Math.Rounding rounding_
    ) private view returns (uint256 _assets) {
        PositionStorage storage $ = _getPositionStorage();
        uint256 _totalShares = $._totalShares;
        return shares_.mulDiv(allocated_ + 1, _totalShares + 1, rounding_);
    }

    /// @notice Convert shares amount to assets
    /// @param assets_ The assets amount
    /// @param allocated_ The updated `totalAllocated` amount
    /// @param rounding_ The rounding rule
    /// @return _shares The shares amount
    function _convertToShares(
        uint256 assets_,
        uint256 allocated_,
        Math.Rounding rounding_
    ) private view returns (uint256 _shares) {
        PositionStorage storage $ = _getPositionStorage();
        uint256 _totalShares = $._totalShares;
        return assets_.mulDiv(_totalShares + 1, allocated_ + 1, rounding_);
    }

    /// @notice Preview how many shares will be minted when increasing allocated assets
    /// @param assets_ The assets increasing
    /// @param allocated_ The `totalAllocated` amount
    /// @return _shares The shares to mint
    function _previewDeposit(uint256 assets_, uint256 allocated_) private view returns (uint256 _shares) {
        return _convertToShares(assets_, allocated_, Math.Rounding.Floor);
    }

    /// @notice Preview how many shares will be burnt when decreasing allocated assets
    /// @param assets_ The assets decreasing
    /// @param allocated_ The `totalAllocated` amount
    /// @return _shares The shares to burn
    function _previewWithdraw(uint256 assets_, uint256 allocated_) private view returns (uint256 _shares) {
        return _convertToShares(assets_, allocated_, Math.Rounding.Ceil);
    }

    /// @notice Check if a non-asset token can be transferred out
    /// @dev There is no need to check `asset` token here because it's always allowed
    function _canTransferOut(IERC20 /*tokenOut_*/) internal view virtual returns (bool) {
        return false;
    }

    /// @notice Get current balance for the token
    function _balanceOf(IERC20 token_) private view returns (uint256) {
        return (address(token_) == ETH) ? address(this).balance : token_.balanceOf(address(this));
    }

    /// @notice Calculate the max amount that can be transferred out from the position
    /// Notes:
    /// - When the position is closed, any token and any amount can be transferred
    /// - When the position is open and the token is `asset` it must keep enough assets to pay for the pending fees
    /// - When the position is open and the token is allowed, any amount can be transferred
    ///
    /// @param tokenOut_ The token to transfer
    /// @return The max amount to transfer
    function _maxAmountOut(IERC20 tokenOut_) private view returns (uint256) {
        IERC20 _asset = asset();

        if (isOpen() && tokenOut_ != _asset && !_canTransferOut(tokenOut_)) revert TokenCanNotBeTransferred();

        uint256 _balance = _balanceOf(tokenOut_);

        // If allocated amount is enough to deduct fee in future then no need to take fee from current balance
        if (tokenOut_ == _asset) {
            uint256 _allocated = _totalAllocated();
            uint256 _fee = pendingFees();
            uint256 _forFee = _allocated >= _fee ? 0 : _fee - _allocated; // Balance reserved for fee payment
            return _balance > _forFee ? _balance - _forFee : 0;
        }

        return _balance;
    }

    /// @notice Transfer tokens out (with zap-out support)
    /// @param token_ The token to transfer
    /// @param to_ The transfer beneficiary
    /// @param amountOut_ The amount to transfer (Use `MAX_UINT256` value to transfer the maximum amount)
    /// @param zapOut_  The zap-out swap operation
    function transferOut(IERC20 token_, address to_, uint256 amountOut_, SwapParams memory zapOut_) external onlyOwner {
        _transferOut(token_, to_, amountOut_, zapOut_);
    }

    /// @notice Transfer tokens out to the owner (with zap-out support)
    /// @param token_ The token to transfer
    /// @param amountOut_ The amount to transfer (Use `MAX_UINT256` value to transfer the maximum amount)
    /// @param zapOut_  The zap-out swap operation
    function transferOut(IERC20 token_, uint256 amountOut_, SwapParams memory zapOut_) external onlyOwner {
        _transferOut(token_, owner(), amountOut_, zapOut_);
    }

    /// @notice Transfer tokens out to the owner
    /// @param token_ The token to transfer
    /// @param amountOut_ The amount to transfer (Use `MAX_UINT256` value to transfer the maximum amount)
    function transferOut(IERC20 token_, uint256 amountOut_) external onlyOwner {
        _transferOut(token_, owner(), amountOut_, SwapParams(0, token_, token_, 0, address(0), ""));
    }

    /// @notice Transfer tokens out (with zap-out support)
    function _transferOut(IERC20 token_, address to_, uint256 amountOut_, SwapParams memory zapOut_) private {
        uint256 _max = _maxAmountOut(token_);

        if (amountOut_ == type(uint256).max) {
            amountOut_ = _max;
        } else if (amountOut_ > _max) {
            revert AmountGreaterThanMax();
        }

        if (amountOut_ == 0) revert AmountIsZero();

        if (zapOut_.callData.length == 0) {
            if (address(token_) == ETH) {
                Address.sendValue(payable(to_), amountOut_);
            } else {
                token_.safeTransfer(to_, amountOut_);
            }
        } else {
            if (address(token_) == ETH) revert ZapIsNotSupportedForETH();
            if (zapOut_.tokenIn != token_) revert InvalidSwapParams();
            if (zapOut_.receiver != to_) revert InvalidSwapParams();
            if (zapOut_.amountIn > amountOut_) revert InvalidSwapParams();

            _swap(zapOut_);
        }
    }

    /// @notice Calculate fee and shares based on the allocated amount changing
    /// If the feature doesn't impact allocated amount, no shares are minted/burnt but fees may apply if the fee policy is timed-based (e.g., APY-based)
    /// @param allocatedBefore_ The allocated amount before the feature execution
    /// @param allocatedAfter_ The allocated amount after the feature execution
    function _calculateFeeAndUpdateShares(uint256 allocatedBefore_, uint256 allocatedAfter_) private {
        PositionStorage storage $ = _getPositionStorage();
        uint256 _fee;
        if (allocatedAfter_ > allocatedBefore_) {
            uint256 _amountIn = allocatedAfter_ - allocatedBefore_;
            _fee = feePolicy().quoteAllocatedInFee(_amountIn);
            $._totalShares += _previewDeposit(_amountIn, allocatedBefore_).toUint128();
        } else if (allocatedAfter_ < allocatedBefore_) {
            uint256 _amountOut = allocatedBefore_ - allocatedAfter_;
            _fee = feePolicy().quoteAllocatedOutFee(_amountOut);
            // Note: Avoid underflow due to rounding
            $._totalShares -= Math.min(_previewWithdraw(_amountOut, allocatedBefore_), $._totalShares).toUint128();
        } else {
            _fee = feePolicy().quoteTimeBasedFee();
        }

        _updateSnapshot({newPendingFees_: $._latestPendingFees + _fee, newTotalAllocated_: allocatedAfter_});
    }

    /// @notice Perform a swap using swap aggregator component
    function _swap(SwapParams memory swapParams_) internal returns (uint256 _amountIn, uint256 _amountOut) {
        return swapAggregator.delegateSwap(swapParams_);
    }

    /// @notice Get updated pending fee
    /// This function returns stored pending fees amount plus accrued fee since latest snapshot (if the fee policy is time-based)
    /// @return The updated pending fees amount
    function getUpdatedPendingFees() public view returns (uint256) {
        if (!isOpen()) return 0;
        PositionStorage storage $ = _getPositionStorage();
        return $._latestPendingFees + feePolicy().quoteTimeBasedFee();
    }

    /// @notice Update snapshot
    /// This function avoid having outdated fees to collect for a dormant position.
    /// Because of pending fee value are usually directly proportional to the total allocated, and assume some volatility condition,
    /// the caller may advantageously call this function (between features executions) to store more or less fees.
    /// To avoid this kind of behavior, this function can only be called after a cooldown period since the latest snapshot.
    /// @dev This function *MUST* be called whenever the total allocated amount or pending fees may change
    function updateSnapshot() external {
        if (!isOpen()) revert PositionIsClosed();
        PositionStorage storage $ = _getPositionStorage();
        if (block.timestamp < $._latestTimestamp + UPDATE_SNAPSHOT_COOL_DOWN) revert TooEarlyToUpdateSnapshot();

        uint256 _pendingFees = getUpdatedPendingFees();
        uint256 _allocated = _totalAllocated();

        _updateSnapshot(_pendingFees, _allocated);

        emit SnapshotUpdated(msg.sender, block.timestamp, _pendingFees, _allocated);
    }

    /// @notice Collect pending fees
    /// If the position hasn't enough assets balance, remaining amount will be withdrawn from the strategy
    /// @param withdrawParams_ To be used when the strategy requires (e.g., slippage param)
    /// The `withdrawParams_` is protocol-related encoded params (See: `_withdrawAsset` from the target strategy's implementation).
    function collectPendingFees(bytes memory withdrawParams_) public onlyIfCanCollectFees {
        uint256 _pendingFees = pendingFees();

        if (_pendingFees == 0) return;

        IERC20 _asset = asset();
        uint256 _balance = _balanceOf(_asset);
        uint256 _collected = _pendingFees;

        if (_balance < _pendingFees) {
            uint256 _withdrawAmount = Math.min(_pendingFees - _balance, totalAllocated());
            _collected = Math.min(_balance + _withdrawAsset(_withdrawAmount, withdrawParams_), _pendingFees);
        }

        _updateSnapshot({newPendingFees_: _pendingFees - _collected, newTotalAllocated_: totalAllocated()});

        _asset.safeTransfer(positionRegistry().feeCollector(), _collected);

        emit FeesCollected(msg.sender, asset(), _collected);
    }

    /// @notice Set the latest fee policy for the strategy
    function _setFeePolicy() private {
        PositionStorage storage $ = _getPositionStorage();
        IFeePolicy _current = $._feePolicy;

        IFeePolicy _latest = positionRegistry().feePolicyOf($._strategyId);
        if (_latest != _current) {
            if (address(_current) != address(0)) {
                emit FeePolicyUpdated(_current, _latest);
            }

            $._feePolicy = _latest;
        }
    }

    /// @notice Take a `totalAllocated` and `pendingFees` snapshot
    function _updateSnapshot(uint256 newPendingFees_, uint256 newTotalAllocated_) private {
        PositionStorage storage $ = _getPositionStorage();
        $._latestPendingFees = newPendingFees_.toUint128();
        $._latestTotalAllocated = newTotalAllocated_.toUint208();
        $._latestTimestamp = block.timestamp.toUint48();
    }

    /// @notice Called during implementation upgrade if any operation is needed (e.g. storage data adjustments)
    function migrate() external virtual onlySelf {}

    /// @notice Upgrade strategy with the latest implementation (if any)
    function upgrade() external onlyOwner {
        IPositionRegistry _positionRegistry = positionRegistry();
        uint256 _strategyId = strategyId();

        address[] memory implementations = _positionRegistry.implementationsOf(_strategyId);

        uint256 _currentIdx = _positionRegistry.implementationIndexOf(_strategyId, ERC1967Utils.getImplementation());
        uint256 _latestIdx = implementations.length - 1;

        if (_currentIdx == _latestIdx) revert ImplementationIsUpToDate();

        while (_currentIdx < _latestIdx) {
            this.upgradeToAndCall({
                newImplementation: implementations[++_currentIdx],
                data: abi.encodeCall(this.migrate, ())
            });
        }
    }

    /// @notice Check if there is a newer implementation for the strategy
    function isOutdated() external view returns (bool) {
        IPositionRegistry _positionRegistry = positionRegistry();
        uint256 _strategyId = strategyId();
        uint256 _currentIdx = _positionRegistry.implementationIndexOf(_strategyId, ERC1967Utils.getImplementation());
        address[] memory implementations = _positionRegistry.implementationsOf(_strategyId);
        uint256 _latestIdx = implementations.length - 1;
        return _currentIdx < _latestIdx;
    }

    /// @inheritdoc UUPSUpgradeable
    function _authorizeUpgrade(address /*newImplementation_*/) internal view override onlySelf {}

    /// @notice Update the fee policy with the latest version (if any)
    function updateFeePolicy() external onlyOwner {
        _setFeePolicy();
    }

    /// @notice Overrides `Ownable2StepUpgradeable._transferOwnership` and calls `positionRegistry` to keep ownership set on track
    /// @dev Do not call `updateOwnerOf` when initializing
    function _transferOwnership(address newOwner_) internal override {
        address _current = owner();
        if (_current == newOwner_) revert NewOwnerIsSameAsCurrent();

        if (_current != address(0)) {
            positionRegistry().updateOwnerOf(_current, newOwner_);
        }
        super._transferOwnership(newOwner_);
    }

    /// @notice Check if the position is open
    /// @return `true` if the position is open
    function isOpen() public view returns (bool) {
        return address(asset()) != address(0);
    }

    /// @notice Get position registry
    /// @return The position registry contract address
    function positionRegistry() public view returns (IPositionRegistry) {
        PositionStorage storage $ = _getPositionStorage();
        return $._positionRegistry;
    }

    /// @notice Get stored fee policy
    /// @return The fee policy contract address
    function feePolicy() public view returns (IFeePolicy) {
        PositionStorage storage $ = _getPositionStorage();
        return $._feePolicy;
    }

    /// @notice Get strategy's id
    /// @return The strategy id
    function strategyId() public view returns (uint256) {
        PositionStorage storage $ = _getPositionStorage();
        return $._strategyId;
    }

    /// @notice Get asset token
    /// @return The asset token address
    function asset() public view override returns (IERC20) {
        PositionStorage storage $ = _getPositionStorage();
        return $._asset;
    }

    /// @notice Get pending fees from the latest snapshot
    /// @return The pending fees
    function pendingFees() public view returns (uint256) {
        PositionStorage storage $ = _getPositionStorage();
        return $._latestPendingFees;
    }

    /// @notice Get total shares
    /// @return The total shares amount
    function totalShares() external view returns (uint256) {
        PositionStorage storage $ = _getPositionStorage();
        return $._totalShares;
    }

    /// @notice Get total allocated amount from the latest snapshot
    /// @return _latestTotalAllocated The latest total allocated stored
    /// @return _latestTimestamp The timestamp of the latest snapshot
    function latest() external view returns (uint256 _latestTotalAllocated, uint256 _latestTimestamp) {
        PositionStorage storage $ = _getPositionStorage();
        return ($._latestTotalAllocated, $._latestTimestamp);
    }
}
