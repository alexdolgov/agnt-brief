// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.30;

import {ReentrancyGuardUpgradeable} from "@openzeppelin-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin-upgradeable/access/AccessControlUpgradeable.sol";
import {IAccessControl} from "@openzeppelin/contracts/access/IAccessControl.sol";
import {Initializable} from "@openzeppelin-upgradeable/proxy/utils/Initializable.sol";
import {UUPSUpgradeable} from "@openzeppelin-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {EIP712Upgradeable} from "@openzeppelin-upgradeable/utils/cryptography/EIP712Upgradeable.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import {PricingLibrary} from "src/fdf/contracts/libraries/PricingLibrary.sol";
import {IFeeManager} from "src/fdf/contracts/interfaces/IFeeManager.sol";
import {IFeeManagerV3} from "src/fdf/contracts/interfaces/upgrades/IFeeManagerV3.sol";
import {IFDFPair} from "src/fdf/contracts/interfaces/IFDFPair.sol";
import {IFDFPairV2} from "src/fdf/contracts/interfaces/upgrades/IFDFPairV2.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IPlayer} from "src/fdf/contracts/interfaces/IPlayer.sol";
import {ECDSA} from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import {IERC1155Receiver} from "@openzeppelin/contracts/token/ERC1155/IERC1155Receiver.sol";
import {ERC165} from "@openzeppelin/contracts/utils/introspection/ERC165.sol";
import {IERC165} from "@openzeppelin/contracts/utils/introspection/IERC165.sol";

/**
 * @dev Like Uniswap, tokens with 0 decimals and low supply are susceptible to significant rounding errors when it comes to removing liquidity, possibly preventing them to be withdrawn without some collaboration between liquidity providers.
 * @title FDFPairV2
 * @notice This contract implements a custom AMM for player token trading without traditional LP tokens
 * 
 * @dev Key Design Features:
 * - NO LP TOKENS: Uses direct liquidity tracking via mappings instead of ERC20 LP tokens
 * - MULTI-TOKEN AMM: Each player token has its own liquidity pool paired with a single currency
 * - CONSTANT PRODUCT: Uses x*y=k formula for price discovery like Uniswap
 * - SIGNATURE-GATED TRADES: All purchases require backend signature authorization
 * - UPGRADEABLE: Uses UUPS pattern for contract upgrades
 * - ROLE-BASED ACCESS: Governor and Admin roles for different permission levels
 * 
 * @dev Architecture Overview:
 * 1. Liquidity Providers deposit player tokens + currency without receiving LP tokens
 * 2. Liquidity tracked directly in mappings by (playerId => provider => amount)
 * 3. Traders buy/sell player tokens through AMM pricing with signature verification
 * 4. Fees collected and distributed to treasury
 * 
 * @dev Security Considerations:
 * - Like Uniswap, tokens with 0 decimals and low supply are susceptible to significant 
 *   rounding errors when removing liquidity, possibly preventing withdrawal without 
 *   collaboration between liquidity providers.
 * - EIP-712 signature verification prevents unauthorized trades
 * - Reentrancy protection on all state-changing functions
 * - Role-based access control for administrative functions
 */
contract FDFPairV2 is Initializable, ReentrancyGuardUpgradeable, IFDFPairV2, AccessControlUpgradeable, EIP712Upgradeable, UUPSUpgradeable, IERC1155Receiver, ERC165 {

    using SafeERC20 for IERC20;

    // ═══════════════════════════════════════════════════════════════════════════════════
    // CONSTANTS
    // ═══════════════════════════════════════════════════════════════════════════════════

    /// @notice Role identifier for governors (highest permission level)
    /// @dev Governors can modify all contract parameters and upgrade the contract
    bytes32 public constant GOVERNOR_ROLE = keccak256("GOVERNOR_ROLE");
    
    /// @notice Role identifier for admins (intermediate permission level) 
    /// @dev Admins can perform operational tasks but cannot upgrade the contract
    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");

    /// @notice Role identifier for liquidity providers (intermediate permission level) 
    /// @dev Liquidity providers can add liquidity to the pool
    bytes32 public constant LIQUIDITY_PROVIDER_ROLE = keccak256("LIQUIDITY_PROVIDER_ROLE");

    /// @notice EIP-712 type hash for buy token authorization signatures
    /// @dev Used to verify that buy transactions are authorized by the backend
    bytes32 public constant BUY_TYPEHASH = keccak256(
        "BuyTokens(address buyer,uint256[] playerTokenIds,uint256[] amounts,uint256 maxCurrencySpend,uint256 deadline,uint256 nonce)"
    );

    /// @notice ERC1155 return value for single token received
    /// @dev Standard return value to confirm successful ERC1155 token receipt
    bytes4 private constant ERC1155_RECEIVED_VALUE = 0xf23a6e61;
    
    /// @notice ERC1155 return value for batch tokens received
    /// @dev Standard return value to confirm successful ERC1155 batch token receipt
    bytes4 private constant ERC1155_BATCH_RECEIVED_VALUE = 0xbc197c81;

    /// @notice Method signature for sell tokens operation
    /// @dev Used to route ERC1155 transfers to the correct handler function
    bytes4 public constant SELLTOKENS_SIG = 0xade79c7a;
    
    /// @notice Method signature for add liquidity operation
    /// @dev Used to route ERC1155 transfers to the correct handler function
    bytes4 public constant ADDLIQUIDITY_SIG = 0x82da2b73;

    /// @notice Denominator for fee basis points calculation (100,000 = 100%)
    /// @dev Provides 5 decimal precision for fee calculations (e.g., 1 = 0.001%)
    uint256 internal constant FEE_BASIS_POINTS_DENOMINATOR = 100_000;

    // ═══════════════════════════════════════════════════════════════════════════════════
    // STATE VARIABLES (OPTIMIZED FOR STORAGE)
    // ═══════════════════════════════════════════════════════════════════════════════════

    /// @notice ERC1155 player token contract interface
    /// @dev Handles all player token operations (minting, burning, transfers, metadata)
    IPlayer public playerToken;
    
    /// @notice ERC20 currency token contract interface  
    /// @dev The base currency used for all trading pairs (e.g., USDC, USDT)
    IERC20 public currencyToken;
    
    /// @notice Fee manager contract interface
    /// @dev Calculates dynamic fees based on various factors (volume, player performance, etc.)
    IFeeManager public feeManager;

    /// @notice Treasury wallet address for fee collection
    /// @dev All trading fees are sent to this address for protocol revenue
    address public treasury;

    /// @notice Minimum currency amount for new pools
    uint256 public minCurrencyAmountForNewPools;
    
    /// @notice Currency reserves for each player token pool
    /// @dev playerId => currency amount in the AMM pool for price calculations
    mapping(uint256 => uint256) public currencyReservesByPlayerId;
    
    /// @notice Tracks which player IDs exist in the system
    /// @dev playerId => true if this player has ever had liquidity added
    mapping(uint256 => bool) private playerIdExists;
    
    /// @notice Sequential nonces for replay protection
    /// @dev user address => last used nonce (must increment for each transaction)
    mapping(address => uint256) public usedNonces;

    /// @notice Array of all player IDs that have liquidity pools
    /// @dev Used for iteration and pool discovery
    uint256[] private allPlayerIds;

    /// @notice Signature for swapTokens function
    bytes4 public constant SWAP_TOKENS_SIG = 0xade79c7c;

    // V2 addition: version tracking
    uint256 public upgradeVersion;

    /// @notice Storage gap for future contract upgrades
    /// @dev Reserves storage slots to prevent storage collisions during upgrades
    uint256[49] private __gap;

    struct AddLiquidityInfo {
        uint256 playerId;
        uint256 tokenAmount;
        uint256 maxCurrency;
        uint256 currencyReserve;
        uint256 currencyAmount;
    }

    // ═══════════════════════════════════════════════════════════════════════════════════
    // CONSTRUCTOR
    // ═══════════════════════════════════════════════════════════════════════════════════

    /**
     * @notice Contract constructor that disables initializers
     * @dev Required for UUPS upgradeable contracts to prevent implementation contract initialization
     */
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    // ═══════════════════════════════════════════════════════════════════════════════════
    // INITIALIZE
    // ═══════════════════════════════════════════════════════════════════════════════════

    /**
     * @notice Initializes the FDFPair contract with core parameters
     * @dev Replaces constructor for upgradeable contracts. Can only be called once.
     * 
     * @param _playerTokenAddr Address of the ERC1155 player token contract
     * @param _currencyTokenAddr Address of the ERC20 currency token contract  
     * @param _governorAddress Address that will receive both GOVERNOR_ROLE, ADMIN_ROLE, and LIQUIDITY_PROVIDER_ROLE
     * @param _treasury Address where trading fees will be sent
     * @param _feeManager Address of the fee manager contract for dynamic fee calculation
     * 
     * @custom:security All addresses must be non-zero to prevent misconfiguration
     * @custom:security LP fees cannot exceed 100% to prevent invalid fee configuration
     */
    function initialize(address _playerTokenAddr, address _currencyTokenAddr, address _governorAddress, address _treasury, address _feeManager) public initializer {
        // Input validation - ensure no zero addresses
        if (_playerTokenAddr == address(0) || _currencyTokenAddr == address(0) || _treasury == address(0) || _feeManager == address(0) || _governorAddress == address(0)) revert INVALID_INPUT();
        
        // Initialize OpenZeppelin upgradeable components
        __ReentrancyGuard_init();
        __AccessControl_init();
        __EIP712_init("FDF Pair", "1");
        __UUPSUpgradeable_init();
        
        // Set core contract references
        playerToken = IPlayer(_playerTokenAddr);
        
        currencyToken = IERC20(_currencyTokenAddr);
        treasury = _treasury;
        feeManager = IFeeManager(_feeManager);
        minCurrencyAmountForNewPools = 20_000 * 10**6; // 20000 USDC

        // Set up role hierarchy (Governor manages Admin and Liquidity Provider roles)
        _setRoleAdmin(GOVERNOR_ROLE, GOVERNOR_ROLE);
        _setRoleAdmin(ADMIN_ROLE, GOVERNOR_ROLE);
        _setRoleAdmin(LIQUIDITY_PROVIDER_ROLE, GOVERNOR_ROLE);
        
        // Grant initial roles to the governor address
        _grantRole(GOVERNOR_ROLE, _governorAddress);
        _grantRole(ADMIN_ROLE, _governorAddress);
        _grantRole(LIQUIDITY_PROVIDER_ROLE, _governorAddress);
    }


    /**
     * @notice Initializes the V2 upgrade
     * @dev This function should be called after upgrading to V2
     */
    function initializeV2() external onlyRole(GOVERNOR_ROLE) {
        require(upgradeVersion == 0, "Already initialized");
        upgradeVersion = 2;
    }

    // ═══════════════════════════════════════════════════════════════════════════════════
    // LIQUIDITY FUNCTIONS
    // ═══════════════════════════════════════════════════════════════════════════════════

    /**
     * @notice Add liquidity to player token pools by tracking actual deposits
     * @dev Simplified approach that tracks actual currency and token amounts deposited
     * 
     * Key Simplifications:
     * - NO LIQUIDITY UNITS: Tracks actual currency and token deposits
     * - PROPORTIONAL DEPOSITS: Still maintains existing pool ratios for existing pools
     * - DIRECT TRACKING: Simple mapping updates for provider balances
     * 
     * @param _liquidityProviderAddr Address providing liquidity
     * @param _playerTokenIds Array of player IDs where liquidity is being added (must be sorted)
     * @param _playerTokenAmounts Array of player token amounts being deposited
     * @param _maxCurrencySpend Array of maximum currency to spend per player ID (slippage protection)
     * @param _deadline The time at which the transaction must confirm
     * 
     */
    function _addLiquidity(
        address _liquidityProviderAddr,
        uint256[] memory _playerTokenIds,
        uint256[] memory _playerTokenAmounts,
        uint256[] memory _maxCurrencySpend,
        uint256 _deadline
    ) internal nonReentrant {
        if (_deadline < block.timestamp) revert DEADLINE_EXCEEDED();

        uint256 numberOfPlayerIds = _playerTokenIds.length;
        uint256 totalCurrencyToTransfer = 0;

        uint256[] memory currencyAmounts = new uint256[](numberOfPlayerIds);

        // Get Player token reserves.
        uint256[] memory playerTokenReserves = _getPlayerTokenReserves(_playerTokenIds);
        
        // Process each player token pool
        for (uint256 i = 0; i < numberOfPlayerIds; i++) {
            AddLiquidityInfo memory liquidityInfo;
            liquidityInfo.playerId = _playerTokenIds[i];
            liquidityInfo.tokenAmount = _playerTokenAmounts[i];
            liquidityInfo.maxCurrency = _maxCurrencySpend[i];
            
            if (liquidityInfo.maxCurrency == 0) revert ZERO_MAX_CURRENCY();
            if (liquidityInfo.tokenAmount == 0) revert ZERO_TOKENS_AMOUNT();

            liquidityInfo.currencyReserve = currencyReservesByPlayerId[liquidityInfo.playerId];
            
            // For existing pools: maintain proportional deposits
            if (liquidityInfo.currencyReserve > 0) {
                // Calculate proportional currency needed: (tokenAmount * currencyReserve) / (tokenReserve - tokenAmount)
                liquidityInfo.currencyAmount = (liquidityInfo.tokenAmount * liquidityInfo.currencyReserve) / (playerTokenReserves[i] - liquidityInfo.tokenAmount);
                if (liquidityInfo.maxCurrency < liquidityInfo.currencyAmount) revert MAX_CURRENCY_AMOUNT_EXCEEDED();
            } 
            // For new pools: use specified currency amount
            else {
                if (liquidityInfo.maxCurrency < minCurrencyAmountForNewPools) revert INVALID_CURRENCY_AMOUNT();
                liquidityInfo.currencyAmount = liquidityInfo.maxCurrency;
            }

            // Update reserves
            currencyReservesByPlayerId[liquidityInfo.playerId] += liquidityInfo.currencyAmount;
            
            currencyAmounts[i] = liquidityInfo.currencyAmount;
            totalCurrencyToTransfer += liquidityInfo.currencyAmount;
        }

        // Transfer currency from provider to contract
        currencyToken.safeTransferFrom(_liquidityProviderAddr, address(this), totalCurrencyToTransfer);

        emit LiquidityAdded(_liquidityProviderAddr, _playerTokenIds, _playerTokenAmounts, currencyAmounts);
    }

    // ═══════════════════════════════════════════════════════════════════════════════════
    // EXCHANGE FUNCTIONS
    // ═══════════════════════════════════════════════════════════════════════════════════

    /**
     * @notice Buy player tokens with currency using signature-gated authorization
     * @dev This is the main entry point for purchasing player tokens with strict security controls
     * 
     * Security Features:
     * - SIGNATURE VERIFICATION: All purchases must be pre-authorized by backend service
     * - NONCE PROTECTION: Sequential nonces prevent replay attacks
     * - DEADLINE PROTECTION: Prevents delayed execution in volatile markets
     * - SLIPPAGE PROTECTION: Maximum spend limit protects against price manipulation
     * - ATOMIC OPERATIONS: All trades succeed or entire transaction reverts
     * 
     * Authorization Flow:
     * 1. User requests purchase authorization from backend
     * 2. Backend validates user, generates nonce, signs transaction parameters
     * 3. User submits transaction with signature
     * 4. Contract verifies signature matches expected signer
     * 5. Contract executes trade if all validations pass
     * 
     * @param _playerTokenIds Array of player IDs to purchase (must be sorted, no duplicates)
     * @param _playerTokenAmountsToBuy Array of token amounts to buy (1:1 with player IDs)
     * @param _maxCurrencySpend Maximum total currency willing to spend (slippage protection)
     * @param _deadline Transaction expiration timestamp (prevents stale transactions)
     * @param _recipient Address to receive tokens (or msg.sender if zero address)
     * @param _signature Backend signature authorizing this specific purchase
     * @param _nonce Sequential nonce for replay protection (must be usedNonces[user] + 1)
     * 
     * @return currencySpent Array of actual currency spent per player token
     * 
     * @custom:security Signature must match EIP712 format with domain separator
     * @custom:gas-optimization Excess currency automatically refunded to recipient
     */
    function buyTokens(uint256[] memory _playerTokenIds, uint256[] memory _playerTokenAmountsToBuy, uint256 _maxCurrencySpend, uint256 _deadline, address _recipient, bytes calldata _signature, uint256 _nonce) external override returns (uint256[] memory) {
        _validateBuyTokens(_playerTokenIds, _playerTokenAmountsToBuy, _maxCurrencySpend, _deadline, _nonce, _signature);
        
        //Updated latest used nonce for user.
        usedNonces[msg.sender] = _nonce;

        //1. Transfer currency from buyer to exchange
        currencyToken.safeTransferFrom(msg.sender, address(this), _maxCurrencySpend);

        return _executeBuyTokens(_playerTokenIds, _playerTokenAmountsToBuy, _maxCurrencySpend, _recipient);
    }

    function _validateBuyTokens(
        uint256[] memory _playerTokenIds,
        uint256[] memory _playerTokenAmountsToBuy,
        uint256 _maxCurrencySpend,
        uint256 _deadline,
        uint256 _nonce,
        bytes calldata _signature
    ) internal view {
        if (_deadline < block.timestamp) revert DEADLINE_EXCEEDED();
        if (_playerTokenIds.length == 0) revert INVALID_CURRENCY_IDS_AMOUNT();
        if (_playerTokenIds.length != _playerTokenAmountsToBuy.length) revert INVALID_TOKENS_AMOUNT();
        if (_nonce <= usedNonces[msg.sender]) revert IPlayer.InvalidNonce();

        // Check if all players are active.
        for (uint256 i = 0; i < _playerTokenIds.length;) {
            if (!playerToken.isBuyable(_playerTokenIds[i])) revert IPlayer.PlayerNotBuyable();
            unchecked { i++; }
        }

        //Verify signature for game account authorization.
        bytes32 structHash = keccak256(abi.encode(BUY_TYPEHASH, msg.sender, keccak256(abi.encodePacked(_playerTokenIds)), keccak256(abi.encodePacked(_playerTokenAmountsToBuy)), _maxCurrencySpend, _deadline, _nonce));
        bytes32 digest = keccak256(abi.encodePacked("\x19\x01", _domainSeparatorV4(), structHash));
        
        //Verify signature was created by one of the txSigners from Player contract.
        address recoveredSigner = ECDSA.recover(digest, _signature);
        address[] memory txSigners = playerToken.getTxSigners();
        
        bool validSigner = false;
        for (uint256 i = 0; i < txSigners.length;) {
            if (recoveredSigner == txSigners[i]) {
                validSigner = true;
                break;
            }
            unchecked { i++; }
        }
        if (!validSigner) revert IPlayer.InvalidSignature();
    }

    function _executeBuyTokens(
        uint256[] memory _playerTokenIds,
        uint256[] memory _playerTokenAmountsToBuy,
        uint256 _maxCurrencySpend,
        address _recipient
    ) internal returns (uint256[] memory) {
        return _executeBuyTokensWithFeeControl(_playerTokenIds, _playerTokenAmountsToBuy, _maxCurrencySpend, _recipient, false);
    }

    function _executeBuyTokensWithFeeControl(
        uint256[] memory _playerTokenIds,
        uint256[] memory _playerTokenAmountsToBuy,
        uint256 _maxCurrencySpend,
        address _recipient,
        bool _isSwapFee
    ) internal returns (uint256[] memory) {
        //2. Execute the trade.
        (uint256[] memory currencySpent, uint256[] memory feeAmounts) = _swapCurrencyForPlayerTokens(
            _playerTokenIds, _playerTokenAmountsToBuy, _maxCurrencySpend, _recipient == address(0x0) ? msg.sender : _recipient, _isSwapFee);

        //3. Send fees to treasury if any.
        uint256 totalFeeAmount = 0;
        for(uint256 i = 0; i < feeAmounts.length;) {
            totalFeeAmount += feeAmounts[i];
            unchecked { i++; }
        }

        if (totalFeeAmount > 0) {
            currencyToken.safeTransfer(treasury, totalFeeAmount);
        }

        //4. Get new price for each player id and emit event.
        {
            uint256[] memory newPrices = getPrices(_playerTokenIds);
            emit PlayerTokensPurchase(
                msg.sender,
                _recipient == address(0x0) ? msg.sender : _recipient,
                _playerTokenIds,
                _playerTokenAmountsToBuy,
                currencySpent,
                newPrices,
                feeAmounts
            );
        }

        return currencySpent;
    }

    /**
     * @notice Swap player tokens for other player tokens (player-to-player swap)
     * @dev This function allows users to swap one player token for another without paying buy fees
     * 
     * Swap Flow:
     * 1. Validate swap parameters and signature
     * 2. Pull tokens from user
     * 3. Sell input tokens for currency (with sell fees)
     * 4. Buy output tokens with received currency (without buy fees)
     * 5. Check minimum output amount is satisfied
     * 6. Transfer output tokens to recipient
     * 
     * @param params SwapTokensParams struct containing all swap parameters
     * 
     * @return playerTokenAmountOut Actual amount of output tokens received
     */
    function _swapTokens(
        address _from,
        SwapTokensParams memory params
    ) internal returns (bytes4) {
        uint256 totalCurrencyReceived;
        uint256 totalSellFeeAmount;
        uint256[] memory tokenAmountsToBuy;
        uint256[] memory currencyReceivedArr;
        uint256[] memory sellFeeAmounts;
        
        // 1. Sell input tokens for currency
        (currencyReceivedArr, sellFeeAmounts) = _swapPlayerTokensForCurrency(
            params.playerTokenIdsIn,
            params.playerTokenAmountsIn,
            0,
            params.deadline,
            address(this),
            _from
        );
        
        // 2. Calculate total currency received and fees using assembly
        assembly {
            let arrLen := mload(currencyReceivedArr)
            let currRecvPtr := add(currencyReceivedArr, 0x20)
            let sellFeePtr := add(sellFeeAmounts, 0x20)
            
            for { let i := 0 } lt(i, arrLen) { i := add(i, 1) } {
                let currRecv := mload(add(currRecvPtr, mul(i, 0x20)))
                let sellFee := mload(add(sellFeePtr, mul(i, 0x20)))
                
                totalCurrencyReceived := add(totalCurrencyReceived, currRecv)
                totalSellFeeAmount := add(totalSellFeeAmount, sellFee)
            }
        }
        
        // 3. Calculate output amounts
        tokenAmountsToBuy = new uint256[](params.playerTokenIdsOut.length);
        
        for (uint256 i = 0; i < params.playerTokenIdsOut.length;) {
            uint256 playerId = params.playerTokenIdsOut[i];
            (tokenAmountsToBuy[i],,,) = _calculateBuyPriceForCurrencyWithSwapFee(
                currencyReceivedArr[i],
                currencyReservesByPlayerId[playerId],
                playerToken.balanceOf(address(this), playerId)
            );

            // Check minimum output amount
            if (tokenAmountsToBuy[i] < params.playerTokenAmountsOut[i]) revert INSUFFICIENT_TOKENS();
            unchecked { i++; }
        }
        
        // 4. Execute buy
        _executeBuyTokensWithFeeControl(
            params.playerTokenIdsOut,
            tokenAmountsToBuy,
            totalCurrencyReceived,
            params.recipient,
            true
        );
        
        // 5. Send sell fees to treasury
        if (totalSellFeeAmount > 0) {
            currencyToken.safeTransfer(treasury, totalSellFeeAmount);
        }
        
        // 6. Emit swap event
        emit TokensSwapped(
            msg.sender,
            params.recipient,
            params.playerTokenIdsIn,
            params.playerTokenAmountsIn,
            params.playerTokenIdsOut,
            tokenAmountsToBuy,
            currencyReceivedArr,
            sellFeeAmounts
        );
        
        return ERC1155_BATCH_RECEIVED_VALUE;
    }

    /**
     * Convert currency tokens to Player tokens and transfer Player tokens to recipient.
     * @param _playerTokenIds Array of playerIds that are being bought.
     * @param _playerTokenAmountsToBuy Array of the amount of tokens bought for each playerId in _playerTokenIds.
     * @param _maxCurrencySpend Maximum amount of currency to be spent.
     * @param _recipient The address that receives output tokens.
     * @param _isSwapFee Whether this is a swap operation (applies reduced fee)
     * @return currencySpentPerToken Array of currency tokens sold per playerId.
     * @return feeAmounts Array of fee amounts paid per playerId.
     */
    function _swapCurrencyForPlayerTokens(
        uint256[] memory _playerTokenIds,
        uint256[] memory _playerTokenAmountsToBuy,
        uint256 _maxCurrencySpend,
        address _recipient,
        bool _isSwapFee
    ) internal nonReentrant returns (uint256[] memory currencySpentPerToken, uint256[] memory feeAmounts) {
        uint256 totalCurrencyRefund = _maxCurrencySpend;

        // Initialize variables
        currencySpentPerToken = new uint256[](_playerTokenIds.length); // Amount of currency sold per playerId.
        feeAmounts = new uint256[](_playerTokenIds.length); // Amount of fees paid per playerId.

        // Get Player token reserves per player id.
        uint256[] memory playerTokenReserves = _getPlayerTokenReserves(_playerTokenIds);
    
        // Remove liquidity for each id in _playerTokenIds.
        for (uint256 i = 0; i < _playerTokenIds.length; i++) {
            uint256 playerTokenId = _playerTokenIds[i];
            // Store amount from argument arrays.
            uint256 currentPlayerTokenReserve = playerTokenReserves[i];

            if (_playerTokenAmountsToBuy[i] == 0) revert ZERO_TOKENS_BOUGHT();

            // Load currency reserves for the playerId.
            uint256 currencyReserve = currencyReservesByPlayerId[playerTokenId];

            // Get actual spot price for 1 token and calculate buy fee
            uint256 buyPriceForOneToken = currentPlayerTokenReserve == 0 ? 0 : (currencyReserve * 1e18) / currentPlayerTokenReserve;
            
            // Update EMA price to track buy activity and get fee (reduced for swaps)
            uint256 buyFeeAmount = IFeeManagerV3(address(feeManager)).getBuyFeeAndUpdateEMA(playerTokenId, buyPriceForOneToken, _isSwapFee);

            // Recalculate currency amount to send for purchase (Max currency user wants to spend already received by contract at this point).
            PricingLibrary.PriceBreakdown memory breakdown = PricingLibrary.buyNumSharesWithBreakdown(
                _playerTokenAmountsToBuy[i], 
                currencyReserve, 
                currentPlayerTokenReserve,
                buyFeeAmount,
                FEE_BASIS_POINTS_DENOMINATOR
            );
            
            // Check if the user has enough currency to buy the tokens.
            if (totalCurrencyRefund < breakdown.totalAmount) revert MAX_CURRENCY_AMOUNT_EXCEEDED();

            // Calculate currency to refund (if any), if price has changes.
            totalCurrencyRefund -= breakdown.totalAmount;

            // Update the currency amount for the player id to tracking array.
            currencySpentPerToken[i] = breakdown.totalAmount;

            // Update the fee amount for the player id to tracking array.
            feeAmounts[i] = breakdown.feeAmount;

            // Update individual currency reserve amount
            currencyReservesByPlayerId[playerTokenId] = currencyReserve + (breakdown.totalAmount - breakdown.feeAmount);

            // Invariant check - Following Uniswap V2's approach
            // Check that the trade (with fee extraction) maintains constant product
            uint256 kBefore = currencyReserve * currentPlayerTokenReserve;
            uint256 kAfter = (currencyReserve + breakdown.totalAmount - breakdown.feeAmount) * (currentPlayerTokenReserve - _playerTokenAmountsToBuy[i]);
            
            if (kAfter < kBefore) {
                revert K_INVARIANT_VIOLATED();
            }
        }

        // The actual transfer of ERC1155 Player tokens happens here.
        playerToken.safeBatchTransferFrom(
            address(this),  // from exchange
            _recipient,     // to buyer
            _playerTokenIds,      // playerIds
            _playerTokenAmountsToBuy,  // amounts
            ""             // no data
        );

        // Refund excess currency, if any.
        if (totalCurrencyRefund > 0) {
            currencyToken.safeTransfer(_recipient, totalCurrencyRefund);
        }

        return (currencySpentPerToken, feeAmounts);
    }

    /**
     * @notice Convert Player tokens to currency tokens and transfers Player tokens to recipient.
     * @dev User specifies EXACT Player tokens sold and MINIMUM currency tokens received.
     * @dev Assumes that all trades will be valid, or the whole tx will fail.
     * @dev Sorting _playerTokenIds is mandatory for efficient way of preventing duplicated IDs (which would lead to errors).
     * @param _playerTokenIds Array of Player playerIds that are sold.
     * @param _playerTokenAmountsToSell  Array of amount of Player tokens sold for each playerId in _playerTokenIds.
     * @param _minCurrencyToReceive Minimum amount of currency tokens to receive.
     * @param _deadline Timestamp after which this transaction will be reverted.
     * @param _recipient The address that receives output currency tokens.
     * @return currencyReceived How much currency was actually purchased.
     * @return feeAmounts Array of fee amounts paid per playerId.
     */
    function _swapPlayerTokensForCurrency(
        uint256[] memory _playerTokenIds,
        uint256[] memory _playerTokenAmountsToSell,
        uint256 _minCurrencyToReceive,
        uint256 _deadline,
        address _recipient,
        address _seller
    ) internal nonReentrant returns (uint256[] memory currencyReceived, uint256[] memory feeAmounts) {
        if (_deadline < block.timestamp) revert DEADLINE_EXCEEDED();

        // Number of Player Ids to sell
        uint256 numberOfPlayerIds = _playerTokenIds.length;

        uint256 totalCurrencyToTransfer = 0; // Total amount of currency to transfer.
        currencyReceived = new uint256[](numberOfPlayerIds);
        feeAmounts = new uint256[](numberOfPlayerIds); // Initialize fee amounts array

        // Get Player token reserves.
        uint256[] memory playerTokenReserves = _getPlayerTokenReserves(_playerTokenIds);

        // Process each Player token sale: remove currency from reserves 
        // (Player liquidity was already added via the transfer).
        for (uint256 i = 0; i < numberOfPlayerIds; i++) {
            SellTradeVars memory sellVars;
            // Store current id and amount from argument arrays
            sellVars.saleAmount = _playerTokenAmountsToSell[i];    
            if (sellVars.saleAmount == 0) revert ZERO_TOKENS_SOLD();

            sellVars.playerId = _playerTokenIds[i];
            sellVars.currentPlayerTokenReserve = playerTokenReserves[i] - sellVars.saleAmount;

            // Load currency reserves for the playerId.
            sellVars.currentCurrencyReserve = currencyReservesByPlayerId[sellVars.playerId];

            //Get actual spot price for 1 token
            sellVars.sellPriceForOneToken = sellVars.currentPlayerTokenReserve == 0 ? 0 : (sellVars.currentCurrencyReserve * 1e18) / sellVars.currentPlayerTokenReserve;
            
            (sellVars.sellFeeRate, ) = feeManager.calculateSellFee(sellVars.playerId, sellVars.sellPriceForOneToken , sellVars.currentPlayerTokenReserve, sellVars.saleAmount, _seller);

            // Calculate how much currency seller will receive. Use current reserves, not after-trade reserves
            PricingLibrary.PriceBreakdown memory breakdown = PricingLibrary.sellNumSharesWithBreakdown(
                sellVars.saleAmount, 
                sellVars.currentPlayerTokenReserve, 
                sellVars.currentCurrencyReserve,
                sellVars.sellFeeRate, //Fee from fee manager.
                FEE_BASIS_POINTS_DENOMINATOR
             );

            // Invariant check - Following Uniswap V2's approach (same as buy function)
            // Check that the gross trade (before fee extraction) maintains constant product
            // k_before = currencyReserve * tokenReserve (before trade)
            // k_after_gross = (currencyReserve - grossCurrencyOut) * (tokenReserve + tokensIn)
            uint256 kBefore = sellVars.currentCurrencyReserve * sellVars.currentPlayerTokenReserve;

            uint256 grossCurrencyOut = breakdown.totalAmount + breakdown.feeAmount;
            
            uint256 kAfterGross = (sellVars.currentCurrencyReserve - grossCurrencyOut) * (sellVars.currentPlayerTokenReserve + sellVars.saleAmount);
            
            if (kAfterGross < kBefore) {
                revert K_INVARIANT_VIOLATED();
            }

            // Update the currency amount for the playerId to tracking array.
            currencyReceived[i] = breakdown.totalAmount;

            // Update the fee amount for the playerId to tracking array.
            feeAmounts[i] = breakdown.feeAmount;

            // Final amount of currency seller will receive.
            totalCurrencyToTransfer += breakdown.totalAmount;

            // Update individual currency reserve amount for the playerId.
            currencyReservesByPlayerId[sellVars.playerId] = sellVars.currentCurrencyReserve - grossCurrencyOut;
        }

        if (totalCurrencyToTransfer < _minCurrencyToReceive) revert INSUFFICIENT_CURRENCY_AMOUNT();

        // Transfer currency here
        if (_recipient != address(this)) {
            currencyToken.safeTransfer(_recipient, totalCurrencyToTransfer);
        }

        return (currencyReceived, feeAmounts);
    }

    /**
     * @notice Central router for all ERC1155 token transfers to this contract
     * @dev This function replaces traditional approve+transferFrom patterns with direct transfers
     * 
     * Routing Logic:
     * - SELLTOKENS_SIG: Routes to token selling functionality
     * - ADDLIQUIDITY_SIG: Routes to liquidity addition functionality  
     * - Invalid signatures: Revert transaction
     * 
     * Data Encoding Format:
     * _data = abi.encode(bytes4 methodSignature, MethodStruct parameters)
     * 
     * Security Features:
     * - Only authorized token contracts can call
     * - Method signature verification prevents wrong routing
     * - Each operation has its own parameter validation
     * 
     * @param _from Original token owner (the user initiating the transfer)
     * @param _playerTokenIds Array of ERC1155 token IDs being transferred
     * @param _playerTokenAmounts Array of amounts for each token ID
     * @param _data Encoded method signature and operation-specific parameters
     * 
     * @return ERC1155_BATCH_RECEIVED_VALUE Standard ERC1155 acceptance value
     * 
     * @custom:gas-efficient Single function handles all transfer types
     * @custom:security Prevents unauthorized token deposits via signature validation
     */
    function onERC1155BatchReceived(
        address, // _operator (unused)
        address _from,
        uint256[] memory _playerTokenIds,
        uint256[] memory _playerTokenAmounts,
        bytes memory _data
    ) public override(IERC1155Receiver, IFDFPair) returns (bytes4) {
        if(msg.sender != address(playerToken)) revert INVALID_TOKENS_TRANSFERRED();

        // Extract the method signature from encoded data
        bytes4 methodSignature = abi.decode(_data, (bytes4));

        if (methodSignature == SELLTOKENS_SIG) {
            return _handleTokenSale(_from, _playerTokenIds, _playerTokenAmounts, _data);
        } 
        else if (methodSignature == ADDLIQUIDITY_SIG) {
            if(!hasRole(LIQUIDITY_PROVIDER_ROLE, _from)) {
                revert INVALID_FROM_ADDRESS();
            }
            return _handleAddLiquidity(_from, _playerTokenIds, _playerTokenAmounts, _data);
        } else if (methodSignature == SWAP_TOKENS_SIG) {
            // Decode the SwapTokensParams from the data
            (, bytes memory paramsData) = abi.decode(_data, (bytes4, bytes));
            SwapTokensParams memory params = abi.decode(paramsData, (SwapTokensParams));
            return _swapTokens(_from, params);
        }
        
        revert INVALID_METHOD();
    }

    /**
     * @dev Will pass to onERC115Batch5Received
     */
    function onERC1155Received(
        address _operator, 
        address _from, 
        uint256 _id, 
        uint256 _amount, 
        bytes memory _data
    )
        public
        override(IERC1155Receiver, IFDFPair)
        returns (bytes4)
    {
        uint256[] memory ids = new uint256[](1);
        uint256[] memory amounts = new uint256[](1);

        ids[0] = _id;
        amounts[0] = _amount;

        if(ERC1155_BATCH_RECEIVED_VALUE != onERC1155BatchReceived(_operator, _from, ids, amounts, _data)) {
            revert INVALID_ONRECEIVED_MESSAGE();
        }

        return ERC1155_RECEIVED_VALUE;
    }

    // ═══════════════════════════════════════════════════════════════════════════════════
    // HELPER FUNCTIONS - Internal Operation Handlers
    // ═══════════════════════════════════════════════════════════════════════════════════

    /**
     * @notice Calculate buy price when user specifies token amounts
     * @param _tokenAmount The amount of tokens to buy
     * @param _currencyReserve The currency reserve for this player
     * @param _playerTokenReserve The player token reserve
     * @return totalAmount The total currency needed
     * @return feeAmount The fee amount
     * @return feeRate The fee rate
     * @return feeType The fee type
     */
    function _calculateBuyPriceForTokens(
        uint256 _tokenAmount,
        uint256 _currencyReserve,
        uint256 _playerTokenReserve
    ) internal view returns (uint256 totalAmount, uint256 feeAmount, uint256 feeRate, uint8 feeType) {

        (uint256 buyFeeRate, uint8 feeType) = IFeeManagerV3(address(feeManager)).getBuyFeeSimulated(false);
        
        PricingLibrary.PriceBreakdown memory breakdown = PricingLibrary.buyNumSharesWithBreakdown(
            _tokenAmount, 
            _currencyReserve,
            _playerTokenReserve,
            buyFeeRate,
            FEE_BASIS_POINTS_DENOMINATOR
        );

        return (breakdown.totalAmount, breakdown.feeAmount, buyFeeRate, feeType);
    }

    /**
     * @notice Calculate buy price when user specifies currency amounts
     * @param _currencyAmount The amount of currency to spend
     * @param _currencyReserve The currency reserve for this player
     * @param _playerTokenReserve The player token reserve
     * @return totalAmount The total tokens that can be bought
     * @return feeAmount The fee amount
     * @return feeRate The fee rate
     * @return feeType The fee type
     */
    function _calculateBuyPriceForCurrency(
        uint256 _currencyAmount,
        uint256 _currencyReserve,
        uint256 _playerTokenReserve
    ) internal view returns (uint256 totalAmount, uint256 feeAmount, uint256 feeRate, uint8 feeType) {

        (uint256 buyFeeRate, uint8 feeType) = IFeeManagerV3(address(feeManager)).getBuyFeeSimulated(false);
        
        PricingLibrary.PriceBreakdown memory breakdown = PricingLibrary.spendCurrencyForSharesWithBreakdown(
            _currencyAmount,
            _currencyReserve,
            _playerTokenReserve,
            buyFeeRate,
            FEE_BASIS_POINTS_DENOMINATOR
        );

        return (breakdown.totalAmount, breakdown.feeAmount, buyFeeRate, feeType);
    }

    /**
     * @notice Calculate buy price for swaps with reduced fee
     * @param _currencyAmount The amount of currency to spend
     * @param _currencyReserve The currency reserve for this player
     * @param _playerTokenReserve The player token reserve
     * @return totalAmount The total tokens that can be bought
     * @return feeAmount The fee amount
     * @return feeRate The fee rate
     * @return feeType The fee type
     */
    function _calculateBuyPriceForCurrencyWithSwapFee(
        uint256 _currencyAmount,
        uint256 _currencyReserve,
        uint256 _playerTokenReserve
    ) internal view returns (uint256 totalAmount, uint256 feeAmount, uint256 feeRate, uint8 feeType) {
        (uint256 buyFeeRate, uint8 feeType) = IFeeManagerV3(address(feeManager)).getBuyFeeSimulated(true);
        
        PricingLibrary.PriceBreakdown memory breakdown = PricingLibrary.spendCurrencyForSharesWithBreakdown(
            _currencyAmount,
            _currencyReserve,
            _playerTokenReserve,
            buyFeeRate,
            FEE_BASIS_POINTS_DENOMINATOR
        );

        return (breakdown.totalAmount, breakdown.feeAmount, buyFeeRate, feeType);
    }

    /**
     * @notice Handles player token sale operations via ERC1155 transfer
     * @dev Called when users transfer player tokens to this contract for selling
     * 
     * Operation Flow:
     * 1. Validate tokens came from player token contract
     * 2. Decode sale parameters from transfer data
     * 3. Execute currency-for-tokens swap via internal function
     * 4. Transfer fees to treasury
     * 5. Emit sale event with updated prices
     * 
     * @param _from Original token owner (seller)
     * @param _playerTokenIds Array of player token IDs being sold
     * @param _playerTokenAmounts Array of amounts being sold per token ID
     * @param _data Encoded SellTokensObj parameters
     * 
     * @return ERC1155_BATCH_RECEIVED_VALUE Standard acceptance value
     * 
     * @custom:access-control Only callable via onERC1155BatchReceived from player token contract
     * @custom:gas-optimization Batches multiple token sales in single transaction
     */
    function _handleTokenSale(
        address _from,
        uint256[] memory _playerTokenIds,
        uint256[] memory _playerTokenAmounts,
        bytes memory _data
    ) private returns (bytes4) {
        SellTokensObj memory params;
        (, params) = abi.decode(_data, (bytes4, SellTokensObj));
        
        address recipient = params.recipient == address(0x0) ? _from : params.recipient;

        // 1. Execute the trade
        (uint256[] memory currencyReceived, uint256[] memory feeAmounts) = _swapPlayerTokensForCurrency(
            _playerTokenIds,
            _playerTokenAmounts,
            params.minCurrencyToReceive,
            params.deadline,
            recipient,
            _from
        );

        // 2.  Get new price for each player id.
        uint256[] memory newPlayerPrices = getPrices(_playerTokenIds);

        // 3. Send fees to treasury.
        uint256 totalFeeAmount = 0;
        for(uint256 i = 0; i < feeAmounts.length;) {
            totalFeeAmount += feeAmounts[i];
            unchecked { i++; }
        }
        currencyToken.safeTransfer(treasury, totalFeeAmount);

        // 4. Emit event
        emit CurrencyPurchase(
            _from,
            recipient,
            _playerTokenIds,
            _playerTokenAmounts,
            currencyReceived,
            newPlayerPrices,
            feeAmounts
        );

        return ERC1155_BATCH_RECEIVED_VALUE;
    }

    /**
     * @dev Handles liquidity addition operations
     */
    function _handleAddLiquidity(
        address _from,
        uint256[] memory _playerTokenIds,
        uint256[] memory _playerTokenAmounts,
        bytes memory _data
    ) private returns (bytes4) {
            
        AddLiquidityObj memory params;
        (, params) = abi.decode(_data, (bytes4, AddLiquidityObj));

        _addLiquidity(
            _from,
            // params.liquidityProvider,
            _playerTokenIds,
            _playerTokenAmounts,
            params.maxCurrencyToDeposit,
            params.deadline
        );

        // Track new player IDs
        for(uint256 i = 0; i < _playerTokenIds.length; i++) {
            if (!playerIdExists[_playerTokenIds[i]]) {
                allPlayerIds.push(_playerTokenIds[i]);
                playerIdExists[_playerTokenIds[i]] = true;
            }
        }

        return ERC1155_BATCH_RECEIVED_VALUE;
    }

    // ═══════════════════════════════════════════════════════════════════════════════════
    // GETTER FUNCTIONS
    // ═══════════════════════════════════════════════════════════════════════════════════

    /**
     * @notice Get currency reserves for multiple player token pools
     * @dev Returns the amount of currency available for trading in each pool
     * 
     * Use Cases:
     * - Price calculation interfaces
     * - Pool analytics and monitoring
     * - Trading strategy development
     * - Liquidity assessment
     * 
     * @param _playerTokenIds Array of player IDs to query
     * @return currencyReserves Array of currency amounts in each pool (matches input order)
     * 
     * @custom:view-function Gas-efficient read-only operation
     * @custom:batch-query Single call returns multiple pool data
     */
    function getCurrencyReserves(uint256[] calldata _playerTokenIds) external view override returns (uint256[] memory) {
        uint256 numberOfPlayerIds = _playerTokenIds.length;
        uint256[] memory currencyReserves = new uint256[](numberOfPlayerIds);

        for (uint256 i = 0; i < numberOfPlayerIds; i++) {
            currencyReserves[i] = currencyReservesByPlayerId[_playerTokenIds[i]];
        }
        
        return currencyReserves;
    }

    /**
     * @notice The user can specify the amount of tokens to buy, or the amount of currency to spend, 
     and they will get the amount of tokens that can be bought or the amount of currency needed to buy the tokens.
     * @param _playerTokenIds Array of player ids of Player tokens being bought.
     * @param _playerTokenAmountsToBuy Amount of Player tokens being bought.
     * @param _currencyAmountsToSpend Amount of currency to spend.
     * @return amountsToReceive Amount of tokens that can be bought for each ID, or the amount of currency needed to buy the tokens for each ID.
     * @return feeAmounts Amount of fee amount for each player id.
     * @return feeRates Amount of fee rate for each player id.
     * @return feeTypes Amount of fee type for each player id.
     */
    function getBuyPrice(
        uint256[] calldata _playerTokenIds,
        uint256[] calldata _playerTokenAmountsToBuy,
        uint256[] calldata _currencyAmountsToSpend
    ) external view override returns (uint256[] memory amountsToReceive, uint256[] memory feeAmounts, uint256[] memory feeRates, uint8[] memory feeTypes) {
        
        // Ensure we are buying at least one token.
        if(_playerTokenIds.length == 0) revert INVALID_INPUT();

         // Ensure at least one array matches _ids length
        if(_playerTokenAmountsToBuy.length != _playerTokenIds.length && _currencyAmountsToSpend.length != _playerTokenIds.length) revert INVALID_INPUT();

        if(_playerTokenAmountsToBuy.length == 0 && _currencyAmountsToSpend.length == 0) revert INVALID_INPUT();

        // Cannot check buy price for both tokens and currency simultaneously.
        if(_playerTokenAmountsToBuy.length > 0 && _currencyAmountsToSpend.length > 0) revert INVALID_INPUT();
        
        uint256 numberOfPlayerIds = _playerTokenIds.length;
        amountsToReceive = new uint256[](numberOfPlayerIds);
        feeAmounts = new uint256[](numberOfPlayerIds);
        feeRates = new uint256[](numberOfPlayerIds);
        feeTypes = new uint8[](numberOfPlayerIds);

        for (uint256 i = 0; i < numberOfPlayerIds; i++) {

            // Load Player token reserve for player id.
            uint256 playerTokenReserve = playerToken.balanceOf(address(this), _playerTokenIds[i]);

            uint256 currencyReserve = currencyReservesByPlayerId[_playerTokenIds[i]];

             // If inputting tokens, calculate currency needed.
            if (_playerTokenAmountsToBuy.length == _playerTokenIds.length) {
                (amountsToReceive[i], feeAmounts[i], feeRates[i], feeTypes[i]) = _calculateBuyPriceForTokens(
                    _playerTokenAmountsToBuy[i],
                    currencyReserve,
                    playerTokenReserve
                );
            }
             // If inputting currency, calculate tokens that can be bought.
            else if (_currencyAmountsToSpend.length == _playerTokenIds.length) {
                (amountsToReceive[i], feeAmounts[i], feeRates[i], feeTypes[i]) = _calculateBuyPriceForCurrency(
                    _currencyAmountsToSpend[i],
                    currencyReserve,
                    playerTokenReserve
                );
            }
        }

        // Return currency/tokens amounts and fee amounts.
        return (amountsToReceive, feeAmounts, feeRates, feeTypes);
    }

    /**
     * @notice Get the current price for 1 token of each player id.
     * @param _playerTokenIds Array of player ids of Player tokens being bought.
     * @return amountsToReceive Returns the buy prices for each player id.
     */
    function getPrices(
        uint256[] memory _playerTokenIds
    ) public view override returns (uint256[] memory amountsToReceive) {
        // Ensure the array is not empty
        if(_playerTokenIds.length == 0) revert INVALID_INPUT();
        
        amountsToReceive = new uint256[](_playerTokenIds.length);

        for (uint256 i = 0; i < _playerTokenIds.length; i++) {
            // Load Player token reserve for player id.
            amountsToReceive[i] = PricingLibrary.buyNumSharesWithoutFee(
                    1 * 10 ** 18, // Get price for 1 token
                    currencyReservesByPlayerId[_playerTokenIds[i]],
                    playerToken.balanceOf(address(this), _playerTokenIds[i])
            );
        }

        // Return currency amounts.
        return amountsToReceive;
    }

    /**
     * @notice Helper function to calculate sell price for a single player token
     * @param _playerId The player token ID
     * @param _amountToSell The amount of tokens to sell
     * @param _sender The address of the seller
     * @return amountToReceive Amount of currency that will be received
     * @return feeAmount Amount of fee
     * @return feeRate Fee rate applied
     * @return feeType Fee type applied
     */
    function _calculateSingleSellPrice(
        uint256 _playerId, 
        uint256 _amountToSell, 
        address _sender
    ) internal view returns (uint256 amountToReceive, uint256 feeAmount, uint256 feeRate, uint8 feeType) {
        // Load reserves
        uint256 playerTokenReserve = playerToken.balanceOf(address(this), _playerId);
        uint256 currencyReserve = currencyReservesByPlayerId[_playerId];

        // Calculate spot price
        uint256 sellPriceForOneToken = playerTokenReserve == 0 ? 0 : (currencyReserve * 1e18) / playerTokenReserve;

        // Get fee rate
        (uint256 sellFeeRate, uint8 sellFeeType) = feeManager.calculateSellFeeSimulated(_playerId, sellPriceForOneToken, playerTokenReserve, _amountToSell, _sender);

        // Calculate final amount directly without struct to avoid YulException
        amountToReceive = PricingLibrary.sellNumShares(
            _amountToSell, 
            playerTokenReserve, 
            currencyReserve,
            sellFeeRate,
            FEE_BASIS_POINTS_DENOMINATOR
        );
        
        // Calculate fee amount from gross output
        uint256 grossAmount = PricingLibrary.sellNumSharesWithoutFee(_amountToSell, playerTokenReserve, currencyReserve);
        feeAmount = (grossAmount * sellFeeRate) / FEE_BASIS_POINTS_DENOMINATOR;
        
        feeRate = sellFeeRate;
        feeType = sellFeeType;
    }

    /**
     * @notice The user can specify the amount of tokens to sell and they will get the amount of currency they will receive.
     * @param _playerTokenIds Array of player ids of Player tokens sold.
     * @param _playerTokenAmountsToSell Array of amount of each Player token sold.
     * @return amountsToReceive Amount of currency that the user will receive for each ID
     * @return feeAmounts Amount of fee amount for each player id.
     * @return feeRates Amount of fee rate for each player id.
     * @return feeTypes Amount of fee type for each player id.
     */
    function getSellPrice(
        uint256[] memory _playerTokenIds, 
        uint256[] memory _playerTokenAmountsToSell
    ) external view override returns (uint256[] memory amountsToReceive, uint256[] memory feeAmounts, uint256[] memory feeRates, uint8[] memory feeTypes) {

        if(_playerTokenAmountsToSell.length != _playerTokenIds.length) revert INVALID_INPUT();

        if(_playerTokenAmountsToSell.length == 0) revert INVALID_INPUT();

        uint256 numberOfPlayerIds = _playerTokenIds.length;
        amountsToReceive = new uint256[](numberOfPlayerIds);
        feeAmounts = new uint256[](numberOfPlayerIds);
        feeRates = new uint256[](numberOfPlayerIds);
        feeTypes = new uint8[](numberOfPlayerIds);

        for (uint256 i = 0; i < numberOfPlayerIds; i++) {
            (amountsToReceive[i], feeAmounts[i], feeRates[i], feeTypes[i]) = _calculateSingleSellPrice(
                _playerTokenIds[i], 
                _playerTokenAmountsToSell[i], 
                msg.sender
            );
        }

        // Return currency/tokens amounts and fee amounts.
        return (amountsToReceive, feeAmounts, feeRates, feeTypes);
    }

    /**
     * @notice Get the expected output amounts and fees for a token swap operation
     * @dev Simulates the swap operation without executing it, similar to getBuyPrice and getSellPrice
     * @param _playerTokenIdsIn Array of player token IDs to sell (currently only supports single token)
     * @param _playerTokenAmountsIn Array of amounts to sell
     * @param _playerTokenIdsOut Array of player token IDs to buy (currently only supports single token)
     * @return amountsToReceive Array of output token amounts that will be received
     * @return feeAmounts Array of fee amounts (only applied on sell operation)
     * @return feeRates Array of fee rates (only applied on sell operation)
     * @return feeTypes Array of fee types (only applied on sell operation)
     * 
     * @custom:note Currently only supports single token swaps (array length must be 1)
     */
    function getSwapPrice(
        uint256[] memory _playerTokenIdsIn,
        uint256[] memory _playerTokenAmountsIn,
        uint256[] memory _playerTokenIdsOut
    ) external view returns (uint256[] memory amountsToReceive, uint256[] memory feeAmounts, uint256[] memory feeRates, uint8[] memory feeTypes) {
        // Validate inputs
        if (_playerTokenIdsIn.length != _playerTokenAmountsIn.length) revert INVALID_INPUT();
        if (_playerTokenIdsIn.length != 1 || _playerTokenIdsOut.length != 1) revert INVALID_INPUT(); // Currently only support single token swaps

        // Initialize return arrays
        uint256 numberOfPlayerIds = _playerTokenIdsIn.length;
        uint256[] memory currencyReceived = new uint256[](numberOfPlayerIds);
        uint256[] memory sellFeeAmounts = new uint256[](numberOfPlayerIds);
        uint256[] memory sellFeeRates = new uint256[](numberOfPlayerIds);
        
        amountsToReceive = new uint256[](numberOfPlayerIds);
        feeAmounts = new uint256[](numberOfPlayerIds);
        feeRates = new uint256[](numberOfPlayerIds);
        feeTypes = new uint8[](numberOfPlayerIds);

        // Step 1: Calculate currency received from selling input tokens (with sell fees) using helper function
        for (uint256 i = 0; i < numberOfPlayerIds; i++) {
            (currencyReceived[i], sellFeeAmounts[i], sellFeeRates[i], feeTypes[i]) = _calculateSingleSellPrice(
                _playerTokenIdsIn[i],
                _playerTokenAmountsIn[i],
                msg.sender
            );
        }

        // Step 2: Calculate output tokens that can be bought with received currency (with reduced swap buy fees)
        for (uint256 i = 0; i < numberOfPlayerIds; i++) {
            uint256 playerIdOut = _playerTokenIdsOut[i];
            uint256 playerTokenReserveOut = playerToken.balanceOf(address(this), playerIdOut);
            uint256 currencyReserveOut = currencyReservesByPlayerId[playerIdOut];

            // Calculate tokens that can be bought with swap fees applied
            (amountsToReceive[i], feeAmounts[i], feeRates[i],) = _calculateBuyPriceForCurrencyWithSwapFee(
                currencyReceived[i],
                currencyReserveOut,
                playerTokenReserveOut
            );
            
            // Add sell fees to total fee amounts
            feeAmounts[i] += sellFeeAmounts[i];
            feeRates[i] += sellFeeRates[i];
        }

        return (amountsToReceive, feeAmounts, feeRates, feeTypes);
    }

    /**
     * Get the address of the Player token contract.
     * @return Address of Player token contract.
     */
    function getPlayerTokenAddress() external view override returns (address) {
        return address(playerToken);
    }

    /**
     * @return Address of the currency contract that is used as currency
     */
    function getCurrencyInfo() external view override returns (address) {
        return (address(currencyToken));
    }

    /**
     * @notice Get the currency reserves and player token reserves for a given array of player token IDs.
     * @param _playerTokenIds Array of player token IDs to query.
     * @return _currencyReserves Array of currency reserves for each player token ID.
     * @return _playerTokenReserves Array of player token reserves for each player token ID.
     */
    function getPoolInfo(uint256[] memory _playerTokenIds) external view override returns (uint256[] memory _currencyReserves, uint256[] memory _playerTokenReserves) {
        // Ensure the array is not empty
        if(_playerTokenIds.length == 0) revert INVALID_INPUT();

        uint256 numberOfPlayerIds = _playerTokenIds.length;
        _currencyReserves = new uint256[](numberOfPlayerIds);
        _playerTokenReserves = new uint256[](numberOfPlayerIds);
        
        // Get player token reserves using existing helper function
        _playerTokenReserves = _getPlayerTokenReserves(_playerTokenIds);
        
        // Populate currency reserves and LP token supplies
        for (uint256 i = 0; i < numberOfPlayerIds;) {
            _currencyReserves[i] = currencyReservesByPlayerId[_playerTokenIds[i]];

            unchecked { i++; }
        }

        return (_currencyReserves, _playerTokenReserves);
    }

    /**
     * @notice Get all players IDs that have been added to the exchange.
     * @return Array of all player IDs in the exchange.
     */
    function getAllPlayerIds() external view returns (uint256[] memory) {
        return allPlayerIds;
    }

    /**
     * @notice Return Player token reserves for given player ids.
     * @dev Assumes that ids are sorted from lowest to highest with no duplicates. This assumption allows for checking the token reserves only once, otherwise token reserves need to be re-checked individually or would have to do more expensive duplication checks.
     * @param _playerTokenIds Array of player ids to query their reserve balance.
     * @return Array of reserves by player id.
     */
    function _getPlayerTokenReserves(uint256[] memory _playerTokenIds) internal view returns (uint256[] memory) {
        uint256 numberOfPlayerIds = _playerTokenIds.length;

        // Regular balance query if only 1 token, otherwise batch query
        if (numberOfPlayerIds == 1) {
            uint256[] memory playerTokenReserves = new uint256[](1);
            playerTokenReserves[0] = playerToken.balanceOf(address(this), _playerTokenIds[0]);
            return playerTokenReserves;
        } else {
            // Lazy check preventing duplicates & build address array for query
            address[] memory thisAddressArray = new address[](numberOfPlayerIds);
            thisAddressArray[0] = address(this);

            for (uint256 i = 1; i < numberOfPlayerIds; i++) {
                if (_playerTokenIds[i - 1] >= _playerTokenIds[i]) revert UNSORTED_OR_DUPLICATE_TOKEN_IDS();
                thisAddressArray[i] = address(this);
            }
            return playerToken.balanceOfBatch(thisAddressArray, _playerTokenIds);
        }
    }

    /**
     * Get the current nonce for a user.
     * @param _user The user to get the nonce for.
     * @return The current nonce for the user.
     */
    function getCurrentNonce(address _user) external view returns (uint256) {
        if(_user == address(0)) revert ZERO_ADDRESS();

        return usedNonces[_user];
    }

    /**
     * @notice Get the address of the fee manager contract.
     * @return Address of the fee manager contract.
     */
    function getFeeManager() external view returns (address) {
        return address(feeManager);
    }

    // ═══════════════════════════════════════════════════════════════════════════════════
    // SETTER FUNCTIONS
    // ═══════════════════════════════════════════════════════════════════════════════════

    /**
     * @notice Set the treasury wallet address.
     * @param _treasury Address of the treasury wallet.
     */
    function setTreasuryAddress(address _treasury) external onlyRole(GOVERNOR_ROLE) {
        if (_treasury == address(0)) revert ZERO_ADDRESS();

        treasury = _treasury;
        emit TreasuryAddressSet(_treasury);
    }

    /**
     * @notice Set the fee manager address.
     * @param _feeManager Address of the fee manager contract.
     */
    function setFeeManager(address _feeManager) external onlyRole(GOVERNOR_ROLE) {
        if (_feeManager == address(0)) revert ZERO_ADDRESS();
        
        feeManager = IFeeManager(_feeManager);
        emit FeeManagerSet(_feeManager);
    }

    /**
     * @notice Set the player token address.
     * @param _playerToken Address of the player token contract.
     */
    function setPlayerToken(address _playerToken) external onlyRole(GOVERNOR_ROLE) {
        if (_playerToken == address(0)) revert ZERO_ADDRESS();
        
        playerToken = IPlayer(_playerToken);
        emit PlayerTokenSet(_playerToken);
    }

    /**
     * @notice Set the liquidity provider role.
     * @param _liquidityProvider Address of the liquidity provider.
     */
    function setLiquidityProviderRole(address _liquidityProvider) external onlyRole(GOVERNOR_ROLE) {
        if (_liquidityProvider == address(0)) revert ZERO_ADDRESS();
        grantRole(LIQUIDITY_PROVIDER_ROLE, _liquidityProvider);
        emit LiquidityProviderRoleSet(_liquidityProvider);
    }

    /**
     * @notice Reset the nonce for a user.
     * @param _user The user to reset the nonce for.
     * @param _newNonce The new nonce to set.
     */
    function resetUserNonce(address _user, uint256 _newNonce) external onlyRole(ADMIN_ROLE) {
        if(_user == address(0)) revert ZERO_ADDRESS();

        usedNonces[_user] = _newNonce;
        emit UserNonceReset(_user, _newNonce);
    }

    /**
     * @notice Set the minimum currency amount for new pools.
     * @param _minCurrencyAmountForNewPools The minimum currency amount for new pools.
     */
    function setMinCurrencyAmountForNewPools(uint256 _minCurrencyAmountForNewPools) external onlyRole(GOVERNOR_ROLE) {
        if(_minCurrencyAmountForNewPools == 0) revert ZERO_AMOUNT();
        minCurrencyAmountForNewPools = _minCurrencyAmountForNewPools;
        emit MinCurrencyAmountForNewPoolsSet(_minCurrencyAmountForNewPools);
    }

    // ═══════════════════════════════════════════════════════════════════════════════════
    // SUPPORT INTERFACE
    // ═══════════════════════════════════════════════════════════════════════════════════

    /**
     * @notice Indicates which interfaces this contract supports
     * @dev Required by ERC165 standard for interface detection
     * 
     * Supported Interfaces:
     * - IFDFPair: Core AMM functionality
     * - IFDFPairV2: Core AMM functionality Upgraded
     * - IERC1155Receiver: Handles ERC1155 token transfers
     * - IAccessControl: Role-based access control
     * - Standard OpenZeppelin interfaces via inheritance
     * 
     * @param interfaceId The interface identifier to check
     * @return bool True if the interface is supported
     * 
     * @custom:standard ERC165 interface detection standard
     * @custom:compatibility Ensures proper integration with other contracts
     */
    function supportsInterface(bytes4 interfaceId) public view virtual override(AccessControlUpgradeable, ERC165, IERC165) returns (bool) {
        return 
            interfaceId == type(IFDFPair).interfaceId ||
            interfaceId == type(IFDFPairV2).interfaceId ||
            interfaceId == type(IERC1155Receiver).interfaceId ||
            interfaceId == type(IAccessControl).interfaceId ||
            super.supportsInterface(interfaceId);
    }

    // ═══════════════════════════════════════════════════════════════════════════════════
    // UPGRADE FUNCTIONS
    // ═══════════════════════════════════════════════════════════════════════════════════

    /**
     * @notice Authorizes contract upgrades to new implementations
     * @dev Required by UUPSUpgradeable pattern for secure upgrade mechanism
     * 
     * Security Model:
     * - Only GOVERNOR_ROLE can authorize upgrades
     * - Prevents unauthorized contract modifications
     * - Maintains upgrade path for bug fixes and feature additions
     * - Storage layout preserved via __gap array
     * 
     * @param newImplementation Address of the new contract implementation
     * 
     * @custom:access-control Requires GOVERNOR_ROLE (highest permission level)
     * @custom:security Critical function that controls contract evolution
     * @custom:upgrade-safety Storage gap ensures safe upgrades
     */
    function _authorizeUpgrade(address newImplementation) internal override onlyRole(GOVERNOR_ROLE) {}
}
