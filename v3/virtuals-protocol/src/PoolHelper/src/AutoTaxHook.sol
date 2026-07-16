// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import {BaseHook} from "v4-periphery/src/utils/BaseHook.sol";
import {Hooks} from "v4-core/src/libraries/Hooks.sol";
import {IPoolManager} from "v4-core/src/interfaces/IPoolManager.sol";
import {PoolKey} from "v4-core/src/types/PoolKey.sol";
import {PoolId, PoolIdLibrary} from "v4-core/src/types/PoolId.sol";
import {BalanceDelta} from "v4-core/src/types/BalanceDelta.sol";
import {IERC20} from "v4-core/lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "v4-core/lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuard} from "v4-core/lib/openzeppelin-contracts/contracts/utils/ReentrancyGuard.sol";
import {Currency, CurrencyLibrary} from "v4-core/src/types/Currency.sol";
import {IHooks} from "v4-core/src/interfaces/IHooks.sol";
import {Ownable} from "v4-core/lib/openzeppelin-contracts/contracts/access/Ownable.sol";
import {SafeCast} from "v4-core/src/libraries/SafeCast.sol";
import {TickMath} from "v4-core/src/libraries/TickMath.sol";
import {SwapParams, ModifyLiquidityParams} from "v4-core/src/types/PoolOperation.sol";

/**
 * @title AutoTaxHook
 * @author @luiyongsheng
 * @notice A Uniswap V4 hook that automatically collects a 1% tax on swaps
 */
contract AutoTaxHook is BaseHook, Ownable, ReentrancyGuard {
    using Hooks for IHooks;
    using PoolIdLibrary for PoolKey;
    using CurrencyLibrary for Currency;
    using SafeERC20 for IERC20;
    using SafeCast for uint256;
    using SafeCast for int128;

    /*//////////////////////////////////////////////////////////////
                               CONSTANTS
    //////////////////////////////////////////////////////////////*/

    /// @notice Tax rate denominator (100 = 1% tax rate)
    uint128 public constant TAX_RATE_DENOMINATOR = 100;

    /// @notice Minimum fee amount to prevent precision loss attacks
    uint256 public constant MIN_FEE_AMOUNT = 1000; // 1000 wei minimum

    /// @notice Gas limit for external calls to prevent DoS
    uint256 public constant GAS_LIMIT = 50000;

    /*//////////////////////////////////////////////////////////////
                            STATE VARIABLES
    //////////////////////////////////////////////////////////////*/

    /// @notice Address that receives tax payments
    address public taxRecipient;

    /// @notice Immutable destination token for tax collection
    address internal immutable destinationToken;

    /// @notice Immutable pool key to identify the token0 and token1
    PoolKey public poolKey;

    /// @notice Flag to track if poolKey has been initialized
    bool private poolKeyInitialized;

    /// @notice Reentrancy lock for internal operations
    bool private _internalLock;

    /// @notice Emergency pause mechanism
    bool public paused;

    /*//////////////////////////////////////////////////////////////
                                EVENTS
    //////////////////////////////////////////////////////////////*/

    event TaxCollected(
        address indexed swapInitiator,
        uint256 feeAmount,
        Currency feeCurrency
    );

    event TaxRecipientUpdated(
        address indexed oldRecipient,
        address indexed newRecipient
    );

    event TaxSent(address indexed recipient, Currency currency, uint256 amount);

    event SwapExecuted(
        Currency inputCurrency,
        Currency outputCurrency,
        uint256 amountIn,
        uint256 amountOut
    );

    event InternalSwapFailed(
        Currency inputCurrency,
        Currency outputCurrency,
        uint256 amountIn,
        string reason
    );

    event EmergencyPauseToggled(bool paused);

    /*//////////////////////////////////////////////////////////////
                                ERRORS
    //////////////////////////////////////////////////////////////*/

    error InvalidTaxRecipient();
    error InvalidToken();
    error InvalidOwner();
    error TransferFailed();
    error ContractPaused();
    error ReentrancyDetected();
    error InsufficientFeeAmount();
    error UnsupportedPool();
    error PoolKeyAlreadyInitialized();

    /*//////////////////////////////////////////////////////////////
                               MODIFIERS
    //////////////////////////////////////////////////////////////*/

    modifier whenNotPaused() {
        if (paused) revert ContractPaused();
        _;
    }

    modifier nonReentrantInternal() {
        if (_internalLock) revert ReentrancyDetected();
        _internalLock = true;
        _;
        _internalLock = false;
    }

    /*//////////////////////////////////////////////////////////////
                              CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    constructor(
        IPoolManager _poolManager,
        address _owner,
        address _destinationToken
    ) BaseHook(_poolManager) Ownable(_owner) {
        if (_owner == address(0)) revert InvalidOwner();
        destinationToken = _destinationToken;
        paused = true;
    }

    /*//////////////////////////////////////////////////////////////
                            HOOK PERMISSIONS
    //////////////////////////////////////////////////////////////*/

    function getHookPermissions()
        public
        pure
        override
        returns (Hooks.Permissions memory)
    {
        return
            Hooks.Permissions({
                beforeInitialize: false,
                afterInitialize: true,
                beforeAddLiquidity: false,
                afterAddLiquidity: false,
                beforeRemoveLiquidity: false,
                afterRemoveLiquidity: false,
                beforeSwap: false,
                afterSwap: true,
                beforeDonate: false,
                afterDonate: false,
                beforeSwapReturnDelta: false,
                afterSwapReturnDelta: true,
                afterAddLiquidityReturnDelta: false,
                afterRemoveLiquidityReturnDelta: false
            });
    }

    /*//////////////////////////////////////////////////////////////
                            MAIN HOOK LOGIC
    //////////////////////////////////////////////////////////////*/

    function _afterInitialize(
        address,
        PoolKey calldata key,
        uint160,
        int24
    ) internal override whenNotPaused returns (bytes4) {
        if (poolKeyInitialized) revert PoolKeyAlreadyInitialized();

        // Validate that the pool contains our destination token
        if (!_isPoolSupported(key)) revert UnsupportedPool();

        poolKey = key;
        poolKeyInitialized = true;
        return BaseHook.afterInitialize.selector;
    }

    function _afterSwap(
        address,
        PoolKey calldata key,
        SwapParams calldata params,
        BalanceDelta delta,
        bytes calldata
    )
        internal
        override
        whenNotPaused
        nonReentrantInternal
        returns (bytes4, int128)
    {
        // Calculate fee amount with improved precision
        (Currency feeCurrency, uint256 feeAmount) = _calculateFee(
            key,
            params,
            delta
        );

        // Skip if fee is too small to prevent precision loss attacks
        if (feeAmount < MIN_FEE_AMOUNT) {
            return (IHooks.afterSwap.selector, int128(0));
        }

        // Take the fee from the pool
        poolManager.take(feeCurrency, address(this), feeAmount);
        emit TaxCollected(msg.sender, feeAmount, feeCurrency);

        // Convert fee to destination token if it's not already in destination token
        if (Currency.unwrap(feeCurrency) != destinationToken) {
            _safeSwapToDestinationToken(key, feeCurrency, feeAmount);
        }

        // Distribute accumulated destination token to tax recipient
        if (taxRecipient != address(0)) {
            _safeSendDestinationTokenToTaxRecipient();
        }

        return (IHooks.afterSwap.selector, feeAmount.toInt128());
    }

    /*//////////////////////////////////////////////////////////////
                           INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @dev Check if the pool contains our destination token
     */
    function _isPoolSupported(
        PoolKey calldata key
    ) internal view returns (bool) {
        return
            Currency.unwrap(key.currency0) == destinationToken ||
            Currency.unwrap(key.currency1) == destinationToken;
    }

    /**
     * @dev Check if two pool keys are equal
     */
    function _isPoolEqual(
        PoolKey calldata key1,
        PoolKey memory key2
    ) internal pure returns (bool) {
        return
            Currency.unwrap(key1.currency0) ==
            Currency.unwrap(key2.currency0) &&
            Currency.unwrap(key1.currency1) ==
            Currency.unwrap(key2.currency1) &&
            key1.fee == key2.fee &&
            key1.tickSpacing == key2.tickSpacing &&
            key1.hooks == key2.hooks;
    }

    /**
     * @dev Calculate fee amount with improved precision and validation
     */
    function _calculateFee(
        PoolKey calldata key,
        SwapParams calldata params,
        BalanceDelta delta
    ) internal pure returns (Currency feeCurrency, uint256 feeAmount) {
        bool specifiedTokenIs0 = (params.amountSpecified < 0 ==
            params.zeroForOne);
        int128 swapAmount;

        (feeCurrency, swapAmount) = specifiedTokenIs0
            ? (key.currency1, delta.amount1())
            : (key.currency0, delta.amount0());

        // Convert to absolute value
        if (swapAmount < 0) swapAmount = -swapAmount;

        // Calculate fee with proper precision
        feeAmount = uint128(swapAmount) / TAX_RATE_DENOMINATOR;
    }

    /**
     * @dev Safely swap collected fee to destination token
     */
    function _safeSwapToDestinationToken(
        PoolKey calldata key,
        Currency feeCurrency,
        uint256 feeAmount
    ) internal {
        // Determine swap direction
        bool zeroForOne = feeCurrency == key.currency0;

        // Sync and settle the fee currency
        poolManager.sync(feeCurrency);

        if (feeCurrency.isAddressZero()) {
            poolManager.settle{value: feeAmount}();
        } else {
            IERC20(Currency.unwrap(feeCurrency)).safeTransfer(
                address(poolManager),
                feeAmount
            );
            poolManager.settle();
        }

        // Execute swap
        SwapParams memory swapParams = SwapParams({
            zeroForOne: zeroForOne,
            amountSpecified: -int256(feeAmount),
            sqrtPriceLimitX96: zeroForOne
                ? TickMath.MIN_SQRT_PRICE + 1
                : TickMath.MAX_SQRT_PRICE - 1
        });

        try poolManager.swap(key, swapParams, "") returns (
            BalanceDelta swapDelta
        ) {
            // Take the destination token amount we receive
            int128 destinationAmount = zeroForOne
                ? swapDelta.amount1()
                : swapDelta.amount0();

            if (destinationAmount > 0) {
                uint256 outputAmount = uint256(int256(destinationAmount));
                poolManager.take(
                    Currency.wrap(destinationToken),
                    address(this),
                    outputAmount
                );

                emit SwapExecuted(
                    feeCurrency,
                    Currency.wrap(destinationToken),
                    feeAmount,
                    outputAmount
                );
            }
        } catch Error(string memory reason) {
            // If internal swap fails, emit event and continue
            emit InternalSwapFailed(
                feeCurrency,
                Currency.wrap(destinationToken),
                feeAmount,
                reason
            );
        } catch (bytes memory) {
            // If internal swap fails with custom error, emit generic event
            emit InternalSwapFailed(
                feeCurrency,
                Currency.wrap(destinationToken),
                feeAmount,
                "Custom error in internal swap"
            );
        }
    }

    /**
     * @dev Safely send destination token to tax recipient with gas limit
     */
    function _safeSendDestinationTokenToTaxRecipient() internal {
        uint256 balance = _getBalance(Currency.wrap(destinationToken));

        if (balance == 0) return;

        if (destinationToken == address(0)) {
            // Handle native ETH with gas limit
            (bool success, ) = payable(taxRecipient).call{
                value: balance,
                gas: GAS_LIMIT
            }("");
            if (!success) revert TransferFailed();
        } else {
            // Handle ERC20 token
            IERC20(destinationToken).safeTransfer(taxRecipient, balance);
        }

        emit TaxSent(taxRecipient, Currency.wrap(destinationToken), balance);
    }

    /**
     * @dev Get balance of a currency in this contract
     */
    function _getBalance(Currency currency) internal view returns (uint256) {
        if (currency.isAddressZero()) {
            return address(this).balance;
        } else {
            return IERC20(Currency.unwrap(currency)).balanceOf(address(this));
        }
    }

    /*//////////////////////////////////////////////////////////////
                           ADMIN FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @dev Set the tax recipient address
     * @param _taxRecipient The address to receive tax payments
     */
    function setTaxRecipient(address _taxRecipient) external onlyOwner {
        if (_taxRecipient == address(0)) revert InvalidTaxRecipient();

        address oldRecipient = taxRecipient;
        taxRecipient = _taxRecipient;

        emit TaxRecipientUpdated(oldRecipient, _taxRecipient);
    }

    /**
     * @dev Emergency pause mechanism
     */
    function setPaused(bool _paused) external onlyOwner {
        paused = _paused;
        emit EmergencyPauseToggled(_paused);
    }

    /*//////////////////////////////////////////////////////////////
                         EMERGENCY FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @dev Emergency withdrawal of native tokens
     */
    function emergencyWithdrawETH() external onlyOwner nonReentrant {
        uint256 balance = address(this).balance;
        if (balance == 0) revert InsufficientFeeAmount();

        (bool success, ) = payable(owner()).call{value: balance}("");
        if (!success) revert TransferFailed();
    }

    /**
     * @dev Emergency withdrawal of ERC20 tokens
     */
    function emergencyWithdrawERC20(
        address token
    ) external onlyOwner nonReentrant {
        if (token == address(0)) revert InvalidToken();

        uint256 balance = IERC20(token).balanceOf(address(this));
        if (balance == 0) revert InsufficientFeeAmount();

        IERC20(token).safeTransfer(owner(), balance);
    }

    /*//////////////////////////////////////////////////////////////
                          RECEIVE FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    receive() external payable {
        // Only accept ETH from expected sources
        if (msg.sender != address(poolManager) && msg.sender != taxRecipient) {
            revert TransferFailed();
        }
    }

    /*//////////////////////////////////////////////////////////////
                            VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @dev Get current contract status
     */
    function getContractStatus()
        external
        view
        returns (
            address _taxRecipient,
            bool _paused,
            uint256 _ethBalance,
            uint256 _taxRate,
            address _destinationToken
        )
    {
        return (
            taxRecipient,
            paused,
            address(this).balance,
            TAX_RATE_DENOMINATOR,
            destinationToken
        );
    }

    /**
     * @dev Check if the pool has been initialized
     */
    function isPoolInitialized() external view returns (bool) {
        return poolKeyInitialized;
    }

    /**
     * @dev Get token0 address
     */
    function token0() external view returns (address) {
        if (!poolKeyInitialized) revert UnsupportedPool();
        return Currency.unwrap(poolKey.currency0);
    }

    /**
     * @dev Get token1 address
     */
    function token1() external view returns (address) {
        if (!poolKeyInitialized) revert UnsupportedPool();
        return Currency.unwrap(poolKey.currency1);
    }
}
