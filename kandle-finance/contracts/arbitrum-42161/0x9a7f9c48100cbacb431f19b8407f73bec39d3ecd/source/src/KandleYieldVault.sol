// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {ERC4626} from "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {ECDSA} from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import {MessageHashUtils} from "@openzeppelin/contracts/utils/cryptography/MessageHashUtils.sol";
import {IAdapter} from "./interfaces/IAdapter.sol";
import {IKandleYieldVault} from "./interfaces/IKandleYieldVault.sol";
import {KandleVaultAccessControl} from "./abstract/KandleVaultAccessControl.sol";
import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";

/**
 * @title KandleYieldVault
 * @notice Yield-generating vault with order-based deposits/withdrawals and signed NAV updates
 * @dev Non-upgradeable vault contract with:
 *      - Deposit lock period (overwritten on each deposit)
 *      - Order-based deposit/withdrawal flow (user creates order, dev executes with signed NAV)
 *      - T+7 withdrawal delay
 *      - Performance fee based on user cost basis
 *      - Cost basis transfers with share transfers
 *      - Signed totalAssets updates
 */
contract KandleYieldVault is IKandleYieldVault, ERC4626, KandleVaultAccessControl, ReentrancyGuard, Pausable {
    using SafeERC20 for IERC20;
    using Math for uint256;
    using ECDSA for bytes32;
    using MessageHashUtils for bytes32;

    // ============================================
    // Constants
    // ============================================

    /// @notice Maximum performance fee rate (100% = 10000 basis points)
    uint256 public constant MAX_PERFORMANCE_FEE = 5000; // 50%

    /// @notice Basis points denominator (100% = 10000)
    uint256 public constant BPS_DENOMINATOR = 10000;

    /// @notice Default deposit lock period (can be updated by manager)
    uint256 public constant DEFAULT_DEPOSIT_LOCK_PERIOD = 7 days;

    /// @notice Default withdrawal delay period - T+7 (can be updated by manager)
    uint256 public constant DEFAULT_WITHDRAWAL_DELAY_PERIOD = 7 days;

    /// @notice Maximum allowed deposit lock period (180 days)
    uint256 public constant MAX_DEPOSIT_LOCK_PERIOD = 180 days;

    /// @notice Maximum allowed withdrawal delay period (30 days)
    uint256 public constant MAX_WITHDRAWAL_DELAY_PERIOD = 30 days;

    /// @notice Order type constants
    uint8 public constant ORDER_TYPE_DEPOSIT = 0;
    uint8 public constant ORDER_TYPE_MINT = 1;
    uint8 public constant ORDER_TYPE_WITHDRAW = 2;
    uint8 public constant ORDER_TYPE_REDEEM = 3;

    // ============================================
    // State Variables
    // ============================================

    /// @notice Investment adapter for yield generation
    IAdapter public adapter;

    /// @notice Performance fee rate in basis points (e.g., 2000 = 20%)
    uint256 public performanceFee;

    /// @notice Address to receive performance fees
    address public feeRecipient;

    /// @notice Authorized signer for NAV signatures
    address public authorizedSigner;

    /// @notice Deposit lock period in seconds
    uint256 public depositLockPeriod;

    /// @notice Withdrawal delay period in seconds (T+7)
    uint256 public withdrawalDelayPeriod;

    /// @notice Mapping of user address to their cost basis
    mapping(address => UserCostBasis) public userCostBasis;

    /// @notice Next order ID counter
    uint256 public nextOrderId;

    /// @notice Mapping of order ID to order
    mapping(uint256 => Order) public orders;

    /// @notice Cached total assets value (updated via signed updates)
    uint256 public cachedTotalAssets;

    /// @notice Nonce for NAV signature replay protection
    uint256 public navNonce;

    /// @notice Mapping of VIP users
    mapping(address => bool) public vipUsers;

    // ============================================
    // Constructor
    // ============================================

    /**
     * @notice Initialize the KandleYieldVault
     * @param params Yield vault deployment parameters (defined in IKandleYieldVault)
     * @dev The deployer (msg.sender) will be set as the initial admin
     */
    constructor(
        IKandleYieldVault.YieldVaultParams memory params
    ) ERC4626(params.asset) ERC20(params.name, params.symbol) KandleVaultAccessControl(msg.sender) {
        if (params.adapter == address(0)) revert InvalidAdapter();
        if (params.feeRecipient == address(0)) revert InvalidAddress();
        if (params.authorizedSigner == address(0)) revert InvalidAddress();
        if (params.performanceFee > MAX_PERFORMANCE_FEE) {
            revert PerformanceFeeTooHigh(params.performanceFee, MAX_PERFORMANCE_FEE);
        }

        adapter = IAdapter(params.adapter);
        feeRecipient = params.feeRecipient;
        performanceFee = params.performanceFee;
        authorizedSigner = params.authorizedSigner;
        depositLockPeriod = DEFAULT_DEPOSIT_LOCK_PERIOD;
        withdrawalDelayPeriod = DEFAULT_WITHDRAWAL_DELAY_PERIOD;
        nextOrderId = 1;

        _grantRole(MANAGER_ROLE, params.manager);
        _grantRole(DEVELOPER_ROLE, params.developer);
    }

    // ============================================
    // ERC4626 Core Functions (Disabled)
    // ============================================

    /**
     * @notice Get the decimals offset for share token
     * @dev Returns additional decimals for share token to prevent inflation attacks
     *      Offset of 3 provides 1000x precision for strong protection
     * @return Decimals offset (3 = 1000x precision)
     */
    function _decimalsOffset() internal view virtual override returns (uint8) {
        return 3;
    }

    /**
     * @notice Get total assets under management
     * @dev Returns cached totalAssets value updated via signed updates
     * @return Total assets denominated in the underlying asset
     */
    function totalAssets() public view override(ERC4626, IKandleYieldVault) returns (uint256) {
        return cachedTotalAssets;
    }

    /**
     * @notice Deposit assets and create a deposit order
     * @param assets Amount of assets to deposit
     * @param receiver Address to receive vault shares (must be msg.sender)
     * @return orderId The created order ID (not shares, as order needs to be executed)
     * @dev This creates a deposit order with 24 hour deadline
     *      Order will be executed later by dev, no assets transferred at order creation
     */
    function deposit(
        uint256 assets,
        address receiver
    ) public override(ERC4626, IKandleYieldVault) whenNotPaused returns (uint256) {
        return _createDepositOrder(msg.sender, receiver, assets, 0);
    }

    /**
     * @notice Mint shares and create a deposit order
     * @param shares Amount of shares to mint
     * @param receiver Address to receive vault shares (must be msg.sender)
     * @return orderId The created order ID (not assets, as order needs to be executed)
     * @dev This creates a deposit order with 24 hour deadline
     *      Order will be executed later by dev, no assets transferred at order creation
     *      The shares parameter is stored as minShares for slippage protection
     */
    function mint(
        uint256 shares,
        address receiver
    ) public override(ERC4626, IKandleYieldVault) whenNotPaused returns (uint256) {
        return _createDepositOrder(msg.sender, receiver, 0, shares);
    }

    /**
     * @notice Withdraw assets and create a withdrawal order
     * @param assets Amount of assets to withdraw (used as desired amount, not min)
     * @param receiver Address to receive assets (must be msg.sender)
     * @param owner Address of share owner (must be msg.sender)
     * @return orderId The created order ID (not shares, as order needs to be executed)
     * @dev This creates a withdrawal order with 30 day deadline
     *      Order will be executed after T+7 delay by dev
     */
    function withdraw(
        uint256 assets,
        address receiver,
        address owner
    ) public override(ERC4626, IKandleYieldVault) whenNotPaused returns (uint256) {
        return _createWithdrawalOrder(msg.sender, receiver, owner, 0, assets);
    }

    /**
     * @notice Redeem shares and create a withdrawal order
     * @param shares Amount of shares to redeem
     * @param receiver Address to receive assets (must be msg.sender)
     * @param owner Address of share owner (must be msg.sender)
     * @return orderId The created order ID (not assets, as order needs to be executed)
     * @dev This creates a withdrawal order with 30 day deadline
     *      Order will be executed after T+7 delay by dev
     */
    function redeem(
        uint256 shares,
        address receiver,
        address owner
    ) public override(ERC4626, IKandleYieldVault) whenNotPaused returns (uint256) {
        return _createWithdrawalOrder(msg.sender, receiver, owner, shares, 0);
    }

    // ============================================
    // Order Management Functions
    // ============================================

    /**
     * @notice Internal function to create a deposit order
     * @param caller Address that creates the order
     * @param receiver Address that will receive the shares
     * @param assets Amount of assets to deposit (0 if mint-based order)
     * @param shares Shares to mint (slippage protection or exact shares for mint)
     * @return orderId Created order ID
     * @dev No asset transfer at order creation - assets will be transferred during execution
     *      Deadline is automatically set to 24 hours from now
     *      Validates caller has sufficient balance and allowance
     */
    function _createDepositOrder(
        address caller,
        address receiver,
        uint256 assets,
        uint256 shares
    ) internal nonReentrant returns (uint256 orderId) {
        if (!vipUsers[caller]) revert NotVIP();
        require(caller == receiver, "Receiver must be caller");
        require(assets > 0 || shares > 0, "Invalid order parameters");

        // Determine order type: deposit if assets > 0, mint if shares only
        uint8 orderType = assets > 0 ? ORDER_TYPE_DEPOSIT : ORDER_TYPE_MINT;

        // Calculate required assets if only shares specified
        uint256 requiredAssets = orderType == ORDER_TYPE_DEPOSIT ? assets : previewMint(shares);

        // Verify caller has sufficient balance
        IERC20 assetToken = IERC20(asset());
        uint256 callerBalance = assetToken.balanceOf(caller);
        if (callerBalance < requiredAssets) {
            revert InsufficientBalance(caller, requiredAssets, callerBalance);
        }
        // Verify caller has sufficient allowance
        uint256 callerAllowance = assetToken.allowance(caller, address(this));
        if (callerAllowance < requiredAssets) {
            revert InsufficientAllowance(caller, requiredAssets, callerAllowance);
        }

        uint32 deadline = uint32(block.timestamp + 24 hours);
        // No asset transfer - order is just recorded
        // Assets will be transferred when dev executes the order

        orderId = nextOrderId++;

        orders[orderId] = Order({
            orderType: orderType,
            executed: false,
            deadline: deadline,
            requestTime: 0, // Not used for deposit orders
            caller: caller,
            owner: address(0), // Not used for deposit orders
            receiver: receiver,
            assetAmount: assets,
            shareAmount: shares
        });

        emit DepositOrderCreated(orderId, caller, receiver, assets, shares);
    }

    /**
     * @notice Internal function to create a withdrawal order
     * @param caller Address that creates the order
     * @param receiver Address that will receive the assets
     * @param owner Address that owns the shares
     * @param shares Amount of shares to redeem (0 if specifying assets)
     * @param assets Amount of assets to withdraw (0 if specifying shares)
     * @return orderId Created order ID
     * @dev Validates owner has sufficient shares and deposit lock has expired
     *      Deadline is automatically set to 30 days from now
     *      T+7 withdrawal delay will be enforced during execution
     */
    function _createWithdrawalOrder(
        address caller,
        address receiver,
        address owner,
        uint256 shares,
        uint256 assets
    ) internal nonReentrant returns (uint256 orderId) {
        require(receiver != address(0), "Receiver must be caller");
        require(shares > 0 || assets > 0, "Invalid withdrawal parameters");

        // Check if deposit is locked
        UserCostBasis storage basis = userCostBasis[owner];
        if (block.timestamp < basis.lockUntil) {
            revert DepositLocked(owner, basis.lockUntil);
        }

        // Determine order type: redeem if shares > 0, withdraw if assets only
        uint8 orderType = shares > 0 ? ORDER_TYPE_REDEEM : ORDER_TYPE_WITHDRAW;

        // Calculate required shares and verify balance
        uint256 requiredShares = orderType == ORDER_TYPE_REDEEM ? shares : previewWithdraw(assets);

        // Verify owner has sufficient shares
        uint256 ownerBalance = balanceOf(owner);
        if (ownerBalance < requiredShares) {
            revert InsufficientShares(owner, requiredShares, ownerBalance);
        }

        // Verify caller has sufficient allowance when caller != owner
        if (caller != owner) {
            uint256 callerAllowance = allowance(owner, caller);
            if (callerAllowance < requiredShares) {
                revert InsufficientAllowance(caller, requiredShares, callerAllowance);
            }
        }

        uint32 deadline = uint32(block.timestamp + 30 days);

        orderId = nextOrderId++;

        orders[orderId] = Order({
            orderType: orderType,
            executed: false,
            deadline: deadline,
            requestTime: uint32(block.timestamp),
            caller: caller,
            owner: owner,
            receiver: receiver,
            assetAmount: assets,
            shareAmount: shares
        });

        emit WithdrawalOrderCreated(orderId, msg.sender, receiver, owner, assets, shares);
    }

    function executeOrder(
        uint256 orderId,
        uint256 newTotalAssets,
        uint256 nonce,
        bytes calldata signature
    ) external whenNotPaused nonReentrant onlyDeveloper {
        Order storage order = orders[orderId];

        if (order.caller == address(0)) revert OrderNotFound(orderId);
        if (order.executed) revert OrderAlreadyExecuted(orderId);
        if (block.timestamp > order.deadline) revert OrderExpired(orderId, order.deadline);

        // Update totalAssets first with signature verification
        _updateTotalAssetsWithSignature(newTotalAssets, nonce, signature);

        if (order.orderType == ORDER_TYPE_DEPOSIT || order.orderType == ORDER_TYPE_MINT) {
            _executeDepositOrder(orderId);
        } else if (order.orderType == ORDER_TYPE_WITHDRAW || order.orderType == ORDER_TYPE_REDEEM) {
            _executeWithdrawalOrder(orderId);
        } else {
            revert InvalidOrderType(order.orderType);
        }
    }

    /**
     * @notice Cancel a pending order
     * @param orderId Order ID to cancel
     * @dev Can only be called by the order creator
     *      Order must not be executed yet
     */
    function cancelOrder(uint256 orderId) external nonReentrant {
        Order storage order = orders[orderId];

        // Verify order exists
        if (order.caller != msg.sender) revert OrderNotFound(orderId);

        // Verify order not already executed
        if (order.executed) revert OrderAlreadyExecuted(orderId);

        order.executed = true;

        emit OrderCancelled(orderId, msg.sender);
    }
    /**
     * @notice Execute a deposit order (internal)
     * @param orderId Order ID to execute
     * @dev First updates totalAssets via signature, then executes deposit using ERC4626 logic
     *      Follows standard ERC4626: deposit(assets) returns shares, mint(shares) returns assets
     */
    function _executeDepositOrder(uint256 orderId) internal {
        Order storage order = orders[orderId];

        uint256 assets;
        uint256 shares;

        if (order.orderType == ORDER_TYPE_DEPOSIT) {
            // Deposit order: user specified assets, calculate shares (like ERC4626 deposit)
            assets = order.assetAmount;
            shares = previewDeposit(assets);
        } else {
            // Mint order: user specified shares, calculate assets (like ERC4626 mint)
            shares = order.shareAmount;
            assets = previewMint(shares);
            // Limit assets to what user can afford
            uint256 maxAffordableAssets = Math.min(
                IERC20(asset()).balanceOf(order.caller),
                IERC20(asset()).allowance(order.caller, address(this))
            );

            if (assets > maxAffordableAssets) {
                assets = maxAffordableAssets;
                shares = previewDeposit(assets);  // Recalculate shares based on affordable assets (partial fill)
            }
        }

        // Mark order as executed
        order.executed = true;

        // Use overridden _deposit (handles transfer + mint + custom logic)
        _deposit(order.caller, order.receiver, assets, shares);

        emit DepositOrderExecuted(orderId, order.caller, order.receiver, assets, shares, totalAssets());
    }

    /**
     * @notice Execute a withdrawal order (internal, requires T+7 from request)
     * @param orderId Order ID to execute
     * @dev Executes withdrawal using ERC4626 logic with performance fee calculation
     */
    function _executeWithdrawalOrder(uint256 orderId) internal {
        Order storage order = orders[orderId];
        // Check T+7 delay
        uint256 earliestTime = order.requestTime + withdrawalDelayPeriod;
        if (block.timestamp < earliestTime) {
            revert WithdrawalNotReady(orderId, order.requestTime, earliestTime);
        }
        // Determine shares to burn and assets to receive using ERC4626 conversion
        uint256 shares;
        uint256 assets;

        if (order.orderType == ORDER_TYPE_REDEEM) {
            // Redeem order: user specified shares, calculate assets (like ERC4626 redeem)
            shares = order.shareAmount;
            assets = previewRedeem(shares);
        } else {
            // Withdraw order: user specified desired assets, calculate shares (like ERC4626 withdraw)
            // Note: order.assetAmount is the desired amount, actual assets received will be calculated
            shares = Math.min(balanceOf(order.owner), previewWithdraw(order.assetAmount));
            assets = convertToAssets(shares);
        }

        // Mark order as executed
        order.executed = true;

        // Use overridden _withdraw (handles burn + transfer + custom logic)
        uint256 fee = _execWithdraw(order.caller, order.receiver, order.owner, assets, shares);

        emit WithdrawalOrderExecuted(orderId, order.owner, shares, assets - fee, totalAssets(), fee);
    }

    // ============================================
    // TotalAssets Update with Signature
    // ============================================

    /**
     * @notice Update totalAssets with signed value
     * @param newTotalAssets New total assets value
     * @param nonce Nonce for replay protection (typically timestamp)
     * @param signature Signer's signature
     * @dev Can only be called by developer role
     */
    function updateTotalAssets(uint256 newTotalAssets, uint256 nonce, bytes calldata signature) external onlyDeveloper {
        _updateTotalAssetsWithSignature(newTotalAssets, nonce, signature);
    }

    /**
     * @notice Internal function to update totalAssets with signature verification
     * @param newTotalAssets New total assets value
     * @param nonce Nonce for replay protection (typically timestamp)
     * @param signature Signer's signature
     */
    function _updateTotalAssetsWithSignature(uint256 newTotalAssets, uint256 nonce, bytes calldata signature) internal {
        // Verify nonce is greater than previous (prevents replay attacks)
        if (nonce <= navNonce) revert InvalidNonce(nonce, navNonce);

        // Verify signature with chainId and nonce
        bytes32 messageHash = keccak256(abi.encode("UpdateTotalAssets", block.chainid, address(this), newTotalAssets, nonce));
        bytes32 ethSignedMessageHash = messageHash.toEthSignedMessageHash();
        address signer = ethSignedMessageHash.recover(signature);

        if (signer != authorizedSigner) revert InvalidSigner(signer);

        uint256 oldTotalAssets = cachedTotalAssets;
        cachedTotalAssets = newTotalAssets;

        // Update nonce after all validations pass
        navNonce = nonce;

        emit TotalAssetsUpdated(oldTotalAssets, newTotalAssets, uint32(nonce), signer);
    }

    // ============================================
    // Performance Fee Management
    // ============================================

    /**
     * @notice Calculate user's current profit
     * @param user User address
     * @return profit User's unrealized profit in assets (0 if in loss)
     * @return isProfit True if user has profit, false if loss
     */
    function getUserProfit(address user) public view returns (uint256 profit, bool isProfit) {
        UserCostBasis memory basis = userCostBasis[user];
        uint256 userShares = balanceOf(user);
        if (userShares == 0) return (0, false);

        uint256 currentValue = convertToAssets(userShares);
        if (currentValue > basis.totalCostBasis) {
            return (currentValue - basis.totalCostBasis, true);
        } else {
            return (basis.totalCostBasis - currentValue, false);
        }
    }

    /**
     * @notice Calculate performance fee for a user's withdrawal
     * @param user User address
     * @param sharesToRedeem Amount of shares being redeemed
     * @return feeInAssets Performance fee in assets
     * @return userProfit User's profit on this withdrawal
     */
    function calculatePerformanceFee(
        address user,
        uint256 sharesToRedeem
    ) public view returns (uint256 feeInAssets, uint256 userProfit) {
        uint256 assetsToReceive = convertToAssets(sharesToRedeem);
        return _calculatePerformanceFee(user, sharesToRedeem, assetsToReceive);
    }

    /**
     * @notice Update performance fee rate
     * @param newFee New performance fee in basis points
     * @dev Can only be called by admin
     */
    function setPerformanceFee(uint256 newFee) external onlyVaultManager {
        if (newFee > MAX_PERFORMANCE_FEE) {
            revert PerformanceFeeTooHigh(newFee, MAX_PERFORMANCE_FEE);
        }

        uint256 oldFee = performanceFee;
        performanceFee = newFee;

        emit PerformanceFeeUpdated(oldFee, newFee);
    }

    /**
     * @notice Update fee recipient address
     * @param newRecipient New fee recipient address
     * @dev Can only be called by admin
     */
    function setFeeRecipient(address newRecipient) external onlyVaultManager {
        if (newRecipient == address(0)) revert InvalidAddress();

        address oldRecipient = feeRecipient;
        feeRecipient = newRecipient;

        emit FeeRecipientUpdated(oldRecipient, newRecipient);
    }

    // ============================================
    // Configuration Functions
    // ============================================

    /**
     * @notice Set deposit lock period
     * @param newPeriod New lock period in seconds
     * @dev Can only be called by vault manager
     *      Maximum period is MAX_DEPOSIT_LOCK_PERIOD days to prevent unreasonable lock times
     */
    function setDepositLockPeriod(uint256 newPeriod) external onlyVaultManager {
        if (newPeriod > MAX_DEPOSIT_LOCK_PERIOD) {
            revert PeriodTooLong(newPeriod, MAX_DEPOSIT_LOCK_PERIOD);
        }

        uint256 oldPeriod = depositLockPeriod;
        depositLockPeriod = newPeriod;

        emit DepositLockPeriodUpdated(oldPeriod, newPeriod);
    }

    /**
     * @notice Set withdrawal delay period
     * @param newPeriod New delay period in seconds
     * @dev Can only be called by vault manager
     *      Maximum period is MAX_WITHDRAWAL_DELAY_PERIOD days to prevent unreasonable delay times
     */
    function setWithdrawalDelayPeriod(uint256 newPeriod) external onlyVaultManager {
        if (newPeriod > MAX_WITHDRAWAL_DELAY_PERIOD) {
            revert PeriodTooLong(newPeriod, MAX_WITHDRAWAL_DELAY_PERIOD);
        }

        uint256 oldPeriod = withdrawalDelayPeriod;
        withdrawalDelayPeriod = newPeriod;

        emit WithdrawalDelayPeriodUpdated(oldPeriod, newPeriod);
    }

    /**
     * @notice Set authorized signer for NAV signatures
     * @param newSigner New signer address
     * @dev Can only be called by admin
     */
    function setAuthorizedSigner(address newSigner) external onlyAdmin {
        if (newSigner == address(0)) revert InvalidAddress();
        address oldSigner = authorizedSigner;
        authorizedSigner = newSigner;
        emit AuthorizedSignerUpdated(oldSigner, newSigner);
    }

    // ============================================
    // Internal Functions
    // ============================================

    /**
     * @notice Override ERC4626's _deposit to add custom logic without emitting standard Deposit event
     * @param caller Address providing the assets
     * @param receiver Address receiving the shares
     * @param assets Amount of assets being deposited
     * @param shares Amount of shares being minted
     * @dev Custom implementation: transfer + mint + custom logic, no standard Deposit event
     *      Assets are transferred directly to adapter for management
     */
    function _deposit(address caller, address receiver, uint256 assets, uint256 shares) internal virtual override {
        // Transfer assets from caller directly to adapter (not vault)
        SafeERC20.safeTransferFrom(IERC20(asset()), caller, address(adapter), assets);

        // Update receiver cost basis and lock period
        _updateUserCostBasisOnDeposit(receiver, assets, shares);

        // Mint shares to receiver
        _mint(receiver, shares);

        // Update cached totalAssets
        cachedTotalAssets += assets;

        // Note: We don't emit the standard Deposit event here
        // Only DepositOrderExecuted event will be emitted in _executeDepositOrder
    }

    /**
     * @notice Override ERC4626's _withdraw to add custom logic without emitting standard Withdraw event
     * @param caller Address calling the withdrawal
     * @param receiver Address receiving the assets
     * @param owner Address owning the shares
     * @param assets Amount of assets being withdrawn (before fee)
     * @param shares Amount of shares being burned
     * @dev Custom implementation: burn + calculate fee + transfer + custom logic, no standard Withdraw event
     *      Includes allowance check when caller != owner (standard ERC4626 behavior)
     *      Assets are transferred from adapter (requires adapter approval to vault)
     */
    function _execWithdraw(
        address caller,
        address receiver,
        address owner,
        uint256 assets,
        uint256 shares
    ) internal virtual returns (uint256 fee) {
        // Standard ERC4626 allowance check: if caller is not owner, spend allowance
        if (caller != owner) {
            _spendAllowance(owner, caller, shares);
        }

        // Calculate and deduct performance fee
        (fee, ) = _calculatePerformanceFee(owner, shares, assets);
        uint256 assetsAfterFee = assets - fee;

        // Burn shares from owner
        _burn(owner, shares);

        // Update cached totalAssets after burn
        cachedTotalAssets -= assets;

        // Update user cost basis
        _updateUserCostBasisOnWithdrawal(owner, shares);

        // Transfer assets from adapter to receiver (requires adapter approval)
        SafeERC20.safeTransferFrom(IERC20(asset()), address(adapter), receiver, assetsAfterFee);

        // Transfer fee from adapter to fee recipient
        if (fee > 0) {
            SafeERC20.safeTransferFrom(IERC20(asset()), address(adapter), feeRecipient, fee);
        }

        // Note: We don't emit the standard Withdraw event here
        // Only WithdrawalOrderExecuted event will be emitted in _executeWithdrawalOrder
    }

    /**
     * @notice Override transfer to handle lock period check and cost basis transfer
     * @param from Sender address
     * @param to Receiver address
     * @param amount Amount of shares to transfer
     * @dev Cost basis is transferred proportionally with shares during regular transfers
     */
    function _update(address from, address to, uint256 amount) internal virtual override {
        // Check if sender's deposit is locked (skip for mint/burn)
        if (from != address(0) && to != address(0)) {
            UserCostBasis storage fromBasis = userCostBasis[from];
            if (block.timestamp < fromBasis.lockUntil) {
                revert DepositLocked(from, fromBasis.lockUntil);
            }
        }

        // Get sender's balance before transfer for cost basis calculation
        uint256 fromBalanceBefore = (from != address(0)) ? balanceOf(from) : 0;

        super._update(from, to, amount);

        // Transfer cost basis proportionally when transferring shares (skip for mint/burn)
        if (from != address(0) && to != address(0) && amount > 0) {
            UserCostBasis storage fromBasis = userCostBasis[from];

            if (fromBalanceBefore > 0 && fromBasis.totalCostBasis > 0) {
                // Calculate proportional cost basis being transferred
                // Use Ceil rounding to favor vault (transfer more cost = sender retains less = higher future fees)
                uint256 costToTransfer = fromBasis.totalCostBasis.mulDiv(amount, fromBalanceBefore, Math.Rounding.Ceil);

                // Remove from sender's cost basis
                fromBasis.totalCostBasis -= costToTransfer;

                emit UserCostBasisUpdated(from, fromBasis.totalCostBasis, fromBasis.lockUntil);

                // Add to receiver's cost basis
                UserCostBasis storage toBasis = userCostBasis[to];
                toBasis.totalCostBasis += costToTransfer;

                emit UserCostBasisUpdated(to, toBasis.totalCostBasis, toBasis.lockUntil);
            }
        }
    }

    /**
     * @notice Update user's cost basis on deposit
     * @param user User address
     * @param assets Amount of assets deposited
     */
    function _updateUserCostBasisOnDeposit(address user, uint256 assets, uint256 addShares) internal {
        UserCostBasis storage basis = userCostBasis[user];
        uint256 userShares = balanceOf(user);
        // Add to cost basis
        basis.totalCostBasis += assets;

        // Update lock period (weighted average lock)
        uint256 totalShares = userShares + addShares; // would not be zero here
        uint256 remainingLock = basis.lockUntil > block.timestamp ? basis.lockUntil - block.timestamp : 0;
        uint256 oldWeightedLock = userShares.mulDiv(remainingLock, totalShares, Math.Rounding.Floor);
        uint256 newWeightedLock = addShares.mulDiv(depositLockPeriod, totalShares, Math.Rounding.Floor);
        uint256 weightedLockPeriod = oldWeightedLock + newWeightedLock;
        basis.lockUntil = uint32(block.timestamp + weightedLockPeriod);

        emit UserCostBasisUpdated(user, basis.totalCostBasis, basis.lockUntil);
    }

    /**
     * @notice Update user's cost basis on withdrawal
     * @param user User address
     * @param shares Amount of shares burned
     */
    function _updateUserCostBasisOnWithdrawal(address user, uint256 shares) internal {
        UserCostBasis storage basis = userCostBasis[user];

        // Get user's balance before burn (add back the burned shares)
        uint256 userSharesBeforeBurn = balanceOf(user) + shares;

        if (userSharesBeforeBurn > 0 && basis.totalCostBasis > 0) {
            // Subtract from cost basis proportionally
            uint256 costToRemove = basis.totalCostBasis.mulDiv(shares, userSharesBeforeBurn, Math.Rounding.Floor);
            basis.totalCostBasis -= costToRemove;

            emit UserCostBasisUpdated(user, basis.totalCostBasis, basis.lockUntil);
        }
    }

    /**
     * @notice Calculate performance fee for withdrawal
     * @param user User address
     * @param shares Amount of shares being redeemed
     * @param assetsBeforeFee Assets before fee deduction
     * @return feeInAssets Performance fee in assets
     * @return profit User's profit on this withdrawal
     */
    function _calculatePerformanceFee(
        address user,
        uint256 shares,
        uint256 assetsBeforeFee
    ) internal view returns (uint256 feeInAssets, uint256 profit) {
        UserCostBasis memory basis = userCostBasis[user];
        uint256 userShares = balanceOf(user);
        if (userShares == 0 || shares == 0) {
            return (0, 0);
        }

        // Calculate cost basis for the shares being withdrawn
        // Use Floor rounding to favor vault (lower cost basis = higher profit = higher fee)
        uint256 costBasisForShares = basis.totalCostBasis.mulDiv(shares, userShares, Math.Rounding.Floor);

        // Only charge fee if there's a profit
        if (assetsBeforeFee > costBasisForShares) {
            profit = assetsBeforeFee - costBasisForShares;
            // Use Ceil rounding to favor vault (higher fee)
            feeInAssets = profit.mulDiv(performanceFee, BPS_DENOMINATOR, Math.Rounding.Ceil);
        }

        return (feeInAssets, profit);
    }

    // ============================================
    // Adapter Management
    // ============================================

    /**
     * @notice Update the investment adapter
     * @dev Can only be called by admin
     * @param newAdapter Address of the new adapter
     */
    function updateAdapter(address newAdapter) external onlyAdmin {
        if (newAdapter == address(0)) revert InvalidAdapter();

        address oldAdapter = address(adapter);
        adapter = IAdapter(newAdapter);

        emit AdapterUpdated(oldAdapter, newAdapter);
    }

    // ============================================
    // Asset Recovery
    // ============================================

    /**
     * @notice Recover accidentally sent tokens or native currency
     * @dev Only admin can recover assets
     * @param asset Address of token to recover (address(0) for native currency)
     * @param amount Amount to recover
     * @param to Recipient address
     */
    function recoverAsset(address asset, uint256 amount, address to) external onlyAdmin nonReentrant {
        if (to == address(0)) revert InvalidAddress();

        if (asset == address(0)) {
            // Transfer native token (ETH/BNB)
            require(address(this).balance >= amount, "Insufficient native balance");
            (bool success, ) = to.call{value: amount}("");
            require(success, "Native token transfer failed");
        } else {
            // Transfer ERC20 token
            IERC20(asset).safeTransfer(to, amount);
        }

        emit RecoveryAsset(asset, amount, to);
    }

    /**
     * @notice Allow contract to receive native currency
     */
    receive() external payable {}

    // ============================================
    // VIP Management Functions
    // ============================================

    /**
     * @notice Add multiple users to VIP list
     * @param users Array of user addresses to add as VIP
     * @dev Can only be called by vault manager
     */
    function addVIPs(address[] calldata users) external onlyVaultManager {
        uint256 length = users.length;
        for (uint256 i = 0; i < length; i++) {
            address user = users[i];
            if (user == address(0)) revert InvalidAddress();
            if (vipUsers[user]) revert AlreadyVIP(user);

            vipUsers[user] = true;
            emit VIPAdded(user);
        }
    }

    /**
     * @notice Remove multiple users from VIP list
     * @param users Array of user addresses to remove from VIP
     * @dev Can only be called by vault manager
     */
    function removeVIPs(address[] calldata users) external onlyVaultManager {
        uint256 length = users.length;
        for (uint256 i = 0; i < length; i++) {
            address user = users[i];
            if (!vipUsers[user]) revert NotExistingVIP(user);

            vipUsers[user] = false;
            emit VIPRemoved(user);
        }
    }

    /**
     * @notice Check if a user is VIP
     * @param user User address to check
     * @return True if user is VIP, false otherwise
     */
    function isVIP(address user) public view returns (bool) {
        return vipUsers[user];
    }

    // ============================================
    // Pause Management Functions
    // ============================================

    /**
     * @notice Pause all vault operations (deposits and withdrawals)
     * @dev Can only be called by admin as emergency brake
     *      When paused, all deposits, mints, withdrawals, and redemptions are blocked
     */
    function pause() external onlyAdmin {
        _pause();
    }

    /**
     * @notice Unpause all vault operations
     * @dev Can only be called by admin
     *      Resumes normal vault operations
     */
    function unpause() external onlyAdmin {
        _unpause();
    }
}
