// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.20;

import "../interfaces/IStrategyAdapter.sol";
import "../interfaces/IPendleOracle.sol";
import "../interfaces/IPendleMarket.sol";
import {AggregatorV3Interface} from "../interfaces/AggregatorV3Interface.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {OwnableDelayModule} from "../OwnableDelayModule.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";


interface IBaseVault {
    function safeWallet() external view returns (address);
}


/**
 * @title PendleAdapter
 * @notice Strategy adapter for Pendle PT positions that calculates TVL using USD-based pricing
 * @dev This adapter tracks PT token balances and values them in USD using Pendle oracle + Chainlink price feeds
 * @dev All TVL values are returned in USD terms with 18 decimal precision
 */
contract PendleAdapter is IStrategyAdapter, OwnableDelayModule, ReentrancyGuard {
    using SafeERC20 for IERC20;

    /// @notice The vault contract address (to get safe wallet reference)
    address public immutable vault;

    /// @notice The underlying asset (e.g., USDC, USDT, etc.)
    /// Vault's asset
    address public immutable underlyingAsset;

    /// @notice Chainlink oracle for BaseVault's underlying asset (e.g., USDC/USD)
    address public baseAssetChainlinkOracle;

    /// @notice Stale window for base asset oracle
    uint256 public baseAssetStaleWindow;

    /// @notice Array of PT token addresses this adapter tracks
    address[] public ptTokens;

    /// @notice Array of corresponding Pendle market addresses for each PT token
    address[] public markets;

    /// @notice Array of underlying asset addresses for each PT token
    address[] public underlyingAssets;

    /// @notice Array of Chainlink oracle addresses for each underlying asset
    address[] public chainlinkOracles;

    /// @notice Array of TWAP durations for each PT token (in seconds)
    uint32[] public twapDurations;

    /// @notice Mapping to check if a PT token is tracked
    mapping(address => bool) public isTrackedPT;

    /// @notice Mapping of stale window (max age in seconds) per Chainlink oracle
    mapping(address => uint256) public staleWindow;

    /// @notice Pendle oracle for getting PT prices
    IPendleOracle public pendleOracle;

    /// @notice Controller address for operational functions
    address public controller;

    /// @notice Maximum number of PT tokens to prevent DoS attacks
    uint256 public constant MAX_PT_TOKENS = 50;

    /// @notice Grace period after expiry before forced removal (1 days)
    uint256 public constant EXPIRY_GRACE_PERIOD = 1 days;

    /// @notice Mapping to track PT token expiry timestamps
    mapping(address => uint256) public ptTokenExpiry;

    // Events
    event PTTokenAdded(
        address indexed ptToken,
        address indexed market,
        address indexed underlyingAsset,
        address chainlinkOracle,
        uint32 twapDuration
    );
    event PTTokenRemoved(address indexed ptToken);
    event PendleOracleUpdated(address indexed oldOracle, address indexed newOracle);
    event SafeWalletUpdated(address indexed oldSafeWallet, address indexed newSafeWallet);
    event ControllerUpdated(address indexed oldController, address indexed newController);
    event PTTokenLimitReached(uint256 currentCount, uint256 maxLimit);
    event ExpiredPTDetected(address indexed ptToken, address indexed market, uint256 balance, uint256 expiryTime);
    event ExpiredPTMustBeRemoved(address indexed ptToken, uint256 expiryTime, uint256 currentTime);


    // Errors
    error PTTokenAlreadyTracked();
    error PTTokenNotTracked();
    error ZeroAddress();
    error InvalidController();
    error OnlyController();
    error InvalidTwapDuration();
    error MarketNotFound();
    error ArrayLengthMismatch();
    error TooManyPTTokens();
    error InvalidOraclePrice();
    error StaleOraclePrice();
    error PriceOutOfBound();

    /**
     * @notice Constructor to initialize the Pendle adapter
     * @param _owner The owner of the adapter
     * @param _vault The vault address where user make deposits
     * @param _underlyingAsset The underlying asset address
     * @param _pendleOracle The Pendle oracle address
     * @param _controller The controller address for operational functions
     */
    constructor(
        address _owner,
        address _vault,
        address _underlyingAsset,
        address _pendleOracle,
        address _controller,
        address _baseAssetChainlinkOracle,  
        uint256 _baseAssetStaleWindow      
    ){
        if (_vault == address(0)) revert ZeroAddress();
        if (_underlyingAsset == address(0)) revert ZeroAddress();
        if (_pendleOracle == address(0)) revert ZeroAddress();
        if (_controller == address(0)) revert InvalidController();
        if (_owner == address(0)) revert ZeroAddress();

        vault = _vault;
        underlyingAsset = _underlyingAsset;
        pendleOracle = IPendleOracle(_pendleOracle);
        controller = _controller;
        baseAssetChainlinkOracle = _baseAssetChainlinkOracle; 
        staleWindow[_baseAssetChainlinkOracle] = _baseAssetStaleWindow;  
    }

    // --- Modifiers ---

    modifier onlyController() {
        if (msg.sender != controller) revert OnlyController();
        _;
    }

    /**
    * @notice Get total value locked in USD terms using Chainlink price feeds
    * @dev Handles both active PT tokens (via oracle) and expired PT tokens (1:1 conversion)
    * @return Total value of all PT positions in 18 decimal precision USD
    */
    function getTVL() external view returns (uint256) {
        uint256 totalValueUSD = 0;

        unchecked {
            uint256 len = ptTokens.length;
            uint256 maxIter = len < MAX_PT_TOKENS ? len : MAX_PT_TOKENS;
            
            for (uint256 i = 0; i < maxIter; i++) {
                // Get PT token balance in the safe wallet
                uint256 ptBalance = IERC20(ptTokens[i]).balanceOf(safeWallet());

                if (ptBalance > 0) {
                    // Check if PT token has expired
                    bool isExpired = false;
                    try IPendleMarket(markets[i]).isExpired() returns (bool expired) {
                        isExpired = expired;
                    } catch {
                        // If cannot determine expiry, treat as active
                        isExpired = false;
                    }
                    
                    // Get token decimals for proper scaling
                    uint8 ptDecimals = _getTokenDecimals(ptTokens[i]);
                    
                    // Get Chainlink USD price for underlying asset
                    (uint256 usdPrice18, ) = _getValidatedOraclePrice(chainlinkOracles[i]);
                    
                    // Normalize PT balance to 18 decimals
                    uint256 normalizedPTBalance = ptBalance;
                    if (ptDecimals < 18) {
                        normalizedPTBalance = ptBalance * (10 ** (18 - ptDecimals));
                    } else if (ptDecimals > 18) {
                        normalizedPTBalance = ptBalance / (10 ** (ptDecimals - 18));
                    }
                    
                    uint256 underlyingValue18;
                    
                    if (isExpired) {
                        // EXPIRED PT TOKEN: Use 1:1 conversion (no oracle)
                        // For expired PT: 1 PT = 1 underlying (rate = 1e18)
                        underlyingValue18 = normalizedPTBalance;
                        
                    } else {
                        // ACTIVE PT TOKEN: Use Pendle oracle
                        // Get PT->underlying rate via Pendle oracle
                        uint256 ptToUnderlying;
                        try pendleOracle.getPtToAssetRate(markets[i], twapDurations[i]) returns (uint256 rate) {
                            ptToUnderlying = rate;
                        } catch {
                            revert InvalidOraclePrice();
                        }

                        if (ptToUnderlying == 0) revert InvalidOraclePrice();
                        
                        // Calculate underlying value using oracle rate
                        underlyingValue18 = Math.mulDiv(normalizedPTBalance, ptToUnderlying, 1e18);
                    }
                    
                    // Convert underlying value to USD
                    uint256 usdValue = Math.mulDiv(underlyingValue18, usdPrice18, 1e18);
                    totalValueUSD += usdValue;
                }
            }
        }

        return totalValueUSD;
    }

    /**
     * @notice Get total value locked in BaseVault's underlying asset terms
     * @dev Optimized to skip price conversion when PT underlying matches vault asset
     *      For same-asset PT tokens: Direct conversion with only decimal normalization
     *      For cross-asset PT tokens: Full USD price conversion via Chainlink
     * @return Total value in BaseVault's asset decimals (e.g., 6 for USDC)
     */
    function getTotalAssets() external view returns (uint256) {
        // Get BaseVault's underlying asset info
        uint8 baseAssetDecimals = _getTokenDecimals(underlyingAsset);
        uint256 totalValueInBaseAsset = 0;

        unchecked {
            uint256 len = ptTokens.length;
            uint256 maxIter = len < MAX_PT_TOKENS ? len : MAX_PT_TOKENS;

            for (uint256 i = 0; i < maxIter; i++) {
                uint256 ptBalance = IERC20(ptTokens[i]).balanceOf(safeWallet());
                if (ptBalance == 0) continue;

                // ==========================================
                // STEP 1: Check if PT token is expired
                // ==========================================
                bool isExpired = false;
                try IPendleMarket(markets[i]).isExpired() returns (bool expired) {
                    isExpired = expired;
                } catch {
                    isExpired = false;
                }

                // ==========================================
                // STEP 2: Get PT → Underlying conversion
                // ==========================================
                uint256 underlyingAmount; // In PT's underlying native decimals

                if (isExpired) {
                    // Expired: 1 PT = 1 underlying (1:1 rate)
                    underlyingAmount = ptBalance;
                } else {
                    // Active: Use Pendle oracle rate
                    uint256 ptToUnderlying;
                    try pendleOracle.getPtToAssetRate(markets[i], twapDurations[i]) returns (uint256 rate) {
                        ptToUnderlying = rate;
                    } catch {
                        revert InvalidOraclePrice();
                    }
                    if (ptToUnderlying == 0) revert InvalidOraclePrice();

                    // Calculate underlying amount (in PT's native decimals)
                    underlyingAmount = Math.mulDiv(ptBalance, ptToUnderlying, 1e18);
                }

                // ==========================================
                // STEP 3: Check if same asset or cross-asset
                // ==========================================
                if (underlyingAssets[i] == underlyingAsset) {
                    // Only need to normalize decimals
                    
                    uint8 underlyingDecimals = _getTokenDecimals(underlyingAssets[i]);
                    uint256 baseAssetValue = underlyingAmount;
                    
                    // Normalize decimals if needed
                    if (underlyingDecimals != baseAssetDecimals) {
                        if (underlyingDecimals < baseAssetDecimals) {
                            baseAssetValue = underlyingAmount * (10 ** (baseAssetDecimals - underlyingDecimals));
                        } else {
                            baseAssetValue = underlyingAmount / (10 ** (underlyingDecimals - baseAssetDecimals));
                        }
                    }
                    
                    totalValueInBaseAsset += baseAssetValue;
                    
                } else {
                  
                    // Normalize underlying to 18 decimals
                    uint8 underlyingDecimals = _getTokenDecimals(underlyingAssets[i]);
                    uint256 normalizedUnderlying = underlyingAmount;
                    
                    if (underlyingDecimals < 18) {
                        normalizedUnderlying = underlyingAmount * (10 ** (18 - underlyingDecimals));
                    } else if (underlyingDecimals > 18) {
                        normalizedUnderlying = underlyingAmount / (10 ** (underlyingDecimals - 18));
                    }
                    
                    // Get Chainlink prices
                    (uint256 underlyingUsdPrice18, ) = _getValidatedOraclePrice(chainlinkOracles[i]);
                    (uint256 baseAssetUsdPrice18, ) = _getValidatedOraclePrice(baseAssetChainlinkOracle);
                    
                    // Calculate USD value
                    uint256 usdValue18 = Math.mulDiv(normalizedUnderlying, underlyingUsdPrice18, 1e18);
                    
                    // Convert USD to BaseVault asset
                    uint256 baseAssetValue18 = Math.mulDiv(usdValue18, 1e18, baseAssetUsdPrice18);
                    
                    // Normalize to base asset decimals
                    uint256 baseAssetValue;
                    if (baseAssetDecimals < 18) {
                        baseAssetValue = baseAssetValue18 / (10 ** (18 - baseAssetDecimals));
                    } else if (baseAssetDecimals > 18) {
                        baseAssetValue = baseAssetValue18 * (10 ** (baseAssetDecimals - 18));
                    } else {
                        baseAssetValue = baseAssetValue18;
                    }
                    
                    totalValueInBaseAsset += baseAssetValue;
                }
            }
        }

        return totalValueInBaseAsset;
    }

    /**
     * @notice Remove multiple PT tokens from tracking in batch (controller only)
     * @param _ptTokens Array of PT token addresses to remove
     */
    function removePTTokensBatch(address[] calldata _ptTokens) external onlyController nonReentrant {
        if (_ptTokens.length == 0) return; // Early return for empty array

        // Create a temporary array to track indices to remove
        uint256[] memory indicesToRemove = new uint256[](_ptTokens.length);
        uint256 validRemovals = 0;

        // First pass: validate all tokens and collect their indices
        for (uint256 i = 0; i < _ptTokens.length; i++) {
            if (!isTrackedPT[_ptTokens[i]]) revert PTTokenNotTracked();

            // Find the index of the PT token to remove
            for (uint256 j = 0; j < ptTokens.length; j++) {
                if (ptTokens[j] == _ptTokens[i]) {
                    indicesToRemove[validRemovals] = j;
                    validRemovals++;
                    break;
                }
            }
        }

        // Sort indices in descending order to avoid index shifting issues
        // Only sort if more than one index
        if (validRemovals > 1) {
            for (uint256 i = 0; i < validRemovals - 1; i++) {
                for (uint256 j = 0; j < validRemovals - i - 1; j++) {
                    if (indicesToRemove[j] < indicesToRemove[j + 1]) {
                        uint256 temp = indicesToRemove[j];
                        indicesToRemove[j] = indicesToRemove[j + 1];
                        indicesToRemove[j + 1] = temp;
                    }
                }
            }
        }

        // Second pass: remove tokens from arrays (start from highest index)
        for (uint256 i = 0; i < validRemovals; i++) {
            uint256 indexToRemove = indicesToRemove[i];

            // Remove from all arrays by moving last element to the position and popping
            if (indexToRemove < ptTokens.length) {
                // Move last into slot
                ptTokens[indexToRemove] = ptTokens[ptTokens.length - 1];
                markets[indexToRemove] = markets[markets.length - 1];
                underlyingAssets[indexToRemove] = underlyingAssets[underlyingAssets.length - 1];
                chainlinkOracles[indexToRemove] = chainlinkOracles[chainlinkOracles.length - 1];
                twapDurations[indexToRemove] = twapDurations[twapDurations.length - 1];

                // Pop last
                ptTokens.pop();
                markets.pop();
                underlyingAssets.pop();
                chainlinkOracles.pop();
                twapDurations.pop();
            }
        }

        // Third pass: clean up mappings and emit events
        for (uint256 i = 0; i < _ptTokens.length; i++) {
            delete isTrackedPT[_ptTokens[i]];
            emit PTTokenRemoved(_ptTokens[i]);
        }
    }

    /**
    * @notice Add multiple PT tokens for tracking in batch (controller only)
    * @param _ptTokens Array of PT token addresses
    * @param _markets Array of corresponding market addresses
    * @param _underlyingAssets Array of corresponding underlying asset addresses
    * @param _chainlinkOracles Array of corresponding Chainlink oracle addresses
    * @param _staleWindow Array of stale windows (seconds) per chainlink oracle
    * @param _twapDurations Array of TWAP durations for each PT token (in seconds)
    */
    function addPTTokensBatch(
        address[] calldata _ptTokens,
        address[] calldata _markets,
        address[] calldata _underlyingAssets,
        address[] calldata _chainlinkOracles,
        uint256[] calldata _staleWindow,
        uint32[] calldata _twapDurations
    ) external onlyController nonReentrant {
        if (ptTokens.length + _ptTokens.length > MAX_PT_TOKENS) {
            emit PTTokenLimitReached(ptTokens.length + _ptTokens.length, MAX_PT_TOKENS);
            revert TooManyPTTokens();
        }
        if (
            _ptTokens.length != _markets.length ||
            _ptTokens.length != _underlyingAssets.length ||
            _ptTokens.length != _chainlinkOracles.length ||
            _ptTokens.length != _twapDurations.length ||
            _ptTokens.length != _staleWindow.length 
        ) revert ArrayLengthMismatch();

        for (uint256 i = 0; i < _ptTokens.length; i++) {
            if (
                _ptTokens[i] == address(0) ||
                _markets[i] == address(0) ||
                _underlyingAssets[i] == address(0) ||
                _chainlinkOracles[i] == address(0)
            ) revert ZeroAddress();
            if (_twapDurations[i] == 0) revert InvalidTwapDuration();
            if (isTrackedPT[_ptTokens[i]]) revert PTTokenAlreadyTracked();

            require(_staleWindow[i] > 0 && _staleWindow[i] <= 1 days, "Invalid staleWindow");
            
            // Validate market <-> PT token mapping
            (, address marketPT, ) = IPendleMarket(_markets[i]).readTokens();
            require(marketPT == _ptTokens[i], "PT token mismatch");

            addPTArray(_ptTokens[i], _markets[i], _underlyingAssets[i], _chainlinkOracles[i], _twapDurations[i], _staleWindow[i]);

            emit PTTokenAdded(
                _ptTokens[i],
                _markets[i],
                _underlyingAssets[i],
                _chainlinkOracles[i],
                _twapDurations[i]
            );
        }
    }

    function addPTArray(address _ptToken, address _market, address _underlyingAssets, address _chainlinkOracles, uint32 _twapDurations, uint256 _staleWindow) internal {
        ptTokens.push(_ptToken);
        markets.push(_market);
        underlyingAssets.push(_underlyingAssets);
        chainlinkOracles.push(_chainlinkOracles);
        twapDurations.push(_twapDurations);
        
        isTrackedPT[_ptToken] = true;
        staleWindow[_chainlinkOracles] = _staleWindow;
    }

    /**
    * @notice Update expiry timestamps for PT tokens (controller only)
    * @dev Call this after adding PT tokens to set their expiry dates
    * @param _ptTokens Array of PT token addresses
    * @param _expiryTimestamps Array of expiry timestamps for each PT token
    */
    function updatePTTokenExpiry(
        address[] calldata _ptTokens,
        uint256[] calldata _expiryTimestamps
    ) external onlyController nonReentrant {
        if (_ptTokens.length != _expiryTimestamps.length) revert ArrayLengthMismatch();
        
        for (uint256 i = 0; i < _ptTokens.length; i++) {
            if (!isTrackedPT[_ptTokens[i]]) revert PTTokenNotTracked();
            ptTokenExpiry[_ptTokens[i]] = _expiryTimestamps[i];
        }
    }

    /**
     * @notice Get comprehensive configuration data
     * @return safeWallet_ The safe wallet address
     * @return underlyingAsset_ The underlying asset address
     * @return pendleOracle_ The Pendle oracle address
     * @return controller_ The controller address
     * @return ptTokenCount The number of tracked PT tokens
     */
    function getAdapterConfig()
        external
        view
        returns (
            address safeWallet_,
            address underlyingAsset_,
            address pendleOracle_,
            address controller_,
            uint256 ptTokenCount
        )
    {
        return (
            safeWallet(),
            underlyingAsset,
            address(pendleOracle),
            controller,
            ptTokens.length
        );
    }

    /**
     * @notice Update Pendle oracle address
     * @param _pendleOracle New Pendle oracle address
     */
    function updatePendleOracle(address _pendleOracle) external onlyOwner nonReentrant {
        if (_pendleOracle == address(0)) revert ZeroAddress();
        address oldOracle = address(pendleOracle);
        pendleOracle = IPendleOracle(_pendleOracle);
        emit PendleOracleUpdated(oldOracle, _pendleOracle);
    }

    /**
    * @notice Get the current safe wallet address from vault
    * @return The safe wallet address
    */
    function safeWallet() public view returns (address) {
        return IBaseVault(vault).safeWallet();
    }


    /**
     * @notice Update controller address (owner only)
     * @param _controller New controller address
     */
    function updateController(address _controller) external onlyOwner nonReentrant {
        if (_controller == address(0)) revert InvalidController();
        address oldController = controller;
        controller = _controller;
        emit ControllerUpdated(oldController, _controller);
    }

    /**
     * @notice Update PT token configuration (controller only)
     * @param _ptToken The PT token address
     * @param _newMarket The new market address
     * @param _newUnderlyingAsset The new underlying asset address
     * @param _newChainlinkOracle The new Chainlink oracle address
     * @param _newTwapDuration The new TWAP duration (0 = keep current)
     */
    function updatePTToken(
        address _ptToken,
        address _newMarket,
        address _newUnderlyingAsset,
        address _newChainlinkOracle,
        uint256 _newStaleWindow,
        uint32 _newTwapDuration
    ) external onlyController nonReentrant {
        if (!isTrackedPT[_ptToken]) revert PTTokenNotTracked();
        if (
            _newMarket == address(0) ||
            _newUnderlyingAsset == address(0) ||
            _newChainlinkOracle == address(0)
        ) {
            revert ZeroAddress();
        }

        // Find the index and update all arrays
        for (uint256 i = 0; i < ptTokens.length; i++) {
            if (ptTokens[i] == _ptToken) {
                markets[i] = _newMarket;
                underlyingAssets[i] = _newUnderlyingAsset;
                chainlinkOracles[i] = _newChainlinkOracle;
                staleWindow[chainlinkOracles[i]] = _newStaleWindow;
                if (_newTwapDuration > 0) {
                    twapDurations[i] = _newTwapDuration;
                }
                break;
            }
        }

        emit PTTokenAdded(
            _ptToken,
            _newMarket,
            _newUnderlyingAsset,
            _newChainlinkOracle,
            _newTwapDuration > 0 ? _newTwapDuration : 900 // Use provided or default
        );
    }

    /**
     * @notice Get basic portfolio information
     * @return ptTokenList Array of PT token addresses
     * @return balanceList Array of PT token balances in safe wallet
     * @return totalTVL Total TVL across all PT positions
     */
    function getPortfolioSummary()
        external
        view
        returns (
            address[] memory ptTokenList,
            uint256[] memory balanceList,
            uint256 totalTVL
        )
    {
        uint256 length = ptTokens.length;
        ptTokenList = ptTokens;
        balanceList = new uint256[](length);
        totalTVL = this.getTVL();

        for (uint256 i = 0; i < length; i++) {
            balanceList[i] = IERC20(ptTokens[i]).balanceOf(safeWallet());
        }

        return (ptTokenList, balanceList, totalTVL);
    }

    /**
    * @notice Get PT token to underlying asset conversion rate
    * @dev Returns 1:1 rate for expired tokens, oracle rate for active tokens
    * @param _ptToken The PT token address to get the rate for
    * @return rate The conversion rate of 1 PT token to underlying asset (18 decimal precision)
    *         1e18 = 1.0 (100%), 0.985e18 = 0.985 (98.5%)
    */
    function getPtToAssetRate(address _ptToken) external view returns (uint256) {
        if (!isTrackedPT[_ptToken]) revert PTTokenNotTracked();

        // Find the index of the PT token
        uint256 tokenIndex;
        bool found = false;
        for (uint256 i = 0; i < ptTokens.length; i++) {
            if (ptTokens[i] == _ptToken) {
                tokenIndex = i;
                found = true;
                break;
            }
        }

        if (!found) revert PTTokenNotTracked();

        // Check if token has expired
        bool isExpired = false;
        try IPendleMarket(markets[tokenIndex]).isExpired() returns (bool expired) {
            isExpired = expired;
        } catch {
            // If cannot determine, treat as active
            isExpired = false;
        }

        // If expired, return 1:1 rate (no discount)
        if (isExpired) {
            return 1e18; // 1 PT = 1 underlying asset (100%)
        }

        // If active, use Pendle oracle
        uint256 ptToUnderlying;
        try pendleOracle.getPtToAssetRate(markets[tokenIndex], twapDurations[tokenIndex]) returns (uint256 rate) {
            ptToUnderlying = rate;
        } catch {
            revert InvalidOraclePrice();
        }

        if (ptToUnderlying == 0) revert InvalidOraclePrice();

        return ptToUnderlying;
    }

    /**
     * @notice Get the TWAP duration for a specific PT token
     * @param _ptToken The PT token address
     * @return The TWAP duration in seconds for the specified PT token
     */
    function getTwapDuration(address _ptToken) external view returns (uint32) {
        for (uint256 i = 0; i < ptTokens.length; i++) {
            if (ptTokens[i] == _ptToken) {
                return twapDurations[i];
            }
        }
        return 0; // Return 0 if PT token not found
    }

    /**
     * @notice Helper function to safely get token decimals
     * @param token Address of the token
     * @return Number of decimals (defaults to 18 if not available)
     */
    function _getTokenDecimals(address token) internal view returns (uint8) {
        if (token == address(0)) return 18;

        try IERC20Metadata(token).decimals() returns (uint8 decimals) {
            // Sanity check: decimals should be reasonable (0-77)
            if (decimals > 77) return 18;
            return decimals;
        } catch {
            return 18; // Default to 18 decimals if not available
        }
    }

    /**
     * @notice Internal helper to fetch Chainlink price and validate freshness/staleness
     * @param oracle The Chainlink oracle address
     * @return price18 Price normalized to 18 decimals
     * @return oracleDecimals The original decimals of the Chainlink feed
     *
     * Requirements:
     *  - answer > 0
     *  - answeredInRound >= roundId
     *  - if staleWindow[oracle] > 0 then (block.timestamp - updatedAt) <= staleWindow[oracle]
     */
    function _getValidatedOraclePrice(address oracle) internal view returns (uint256 price18, uint8 oracleDecimals) {
        if (oracle == address(0)) revert ZeroAddress();

        // latestRoundData(): (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound)
        (
            uint80 roundID,
            int256 answer,
            ,
            uint256 updatedAt,
            uint80 answeredInRound
        ) = AggregatorV3Interface(oracle).latestRoundData();

        if (answer <= 0) revert InvalidOraclePrice();
        if (answeredInRound < roundID) revert StaleOraclePrice();

        require(uint16(roundID >> 64) == uint16(answeredInRound >> 64), "Phase mismatch");

        // prevent future timestamps ---
        require(updatedAt > 0 && updatedAt <= block.timestamp, "Invalid timestamp");


        // Check freshness/stale window
        uint256 maxAge = staleWindow[oracle];

        oracleDecimals = AggregatorV3Interface(oracle).decimals();

        uint256 raw = uint256(answer);
        if (oracleDecimals < 18) {
            price18 = raw * (10 ** (18 - oracleDecimals));
        } else if (oracleDecimals > 18) {
            price18 = raw / (10 ** (oracleDecimals - 18));
        } else {
            price18 = raw;
        }

        address currentPhaseAggregator = AggregatorV3Interface(oracle).aggregator();
        uint256 minPrice = AggregatorV3Interface(currentPhaseAggregator).minAnswer();
        uint256 maxPrice = AggregatorV3Interface(currentPhaseAggregator).maxAnswer();

        if (uint(raw) >= maxPrice || uint(raw) <= minPrice) revert PriceOutOfBound();

        if (maxAge > 0) {
            // if updatedAt is 0 (feed never updated), treat as stale
            if (updatedAt == 0) revert StaleOraclePrice();
            if (block.timestamp - updatedAt > maxAge) revert StaleOraclePrice();
        }
    }

    /**
    * @notice Get list of expired PT tokens currently tracked
    * @dev Useful for monitoring and operational management
    * @return expired Array of expired PT token addresses
    * @return expiredCount Number of expired PT tokens
    */
    function getExpiredPTTokens() external view returns (address[] memory expired, uint256 expiredCount) {
        uint256 count = 0;
        address[] memory temp = new address[](ptTokens.length);
        
        for (uint256 i = 0; i < ptTokens.length; i++) {
            try IPendleMarket(markets[i]).isExpired() returns (bool isExpired) {
                if (isExpired) {
                    temp[count] = ptTokens[i];
                    count++;
                }
            } catch {
                // Skip if cannot determine
            }
        }
        
        expired = new address[](count);
        for (uint256 i = 0; i < count; i++) {
            expired[i] = temp[i];
        }
        
        return (expired, count);
    }

    /**
    * @notice Check if adapter has expired PT tokens exceeding grace period
    * @dev Returns tokens that should be removed immediately
    * @return hasExpired True if any expired PT exceeds grace period
    * @return expiredTokens Array of PT tokens that must be removed
    */
    function hasExpiredPTExceedingGrace() external view returns (bool hasExpired, address[] memory expiredTokens) {
        uint256 count = 0;
        address[] memory temp = new address[](ptTokens.length);
        
        for (uint256 i = 0; i < ptTokens.length; i++) {
            try IPendleMarket(markets[i]).isExpired() returns (bool isExpired) {
                if (isExpired) {
                    uint256 expiryTime = ptTokenExpiry[ptTokens[i]];
                    // Check if it's been more than 30 days since expiry
                    if (expiryTime > 0 && block.timestamp > expiryTime + EXPIRY_GRACE_PERIOD) {
                        temp[count] = ptTokens[i];
                        count++;
                    }
                }
            } catch {
                // Skip if cannot determine
            }
        }
        
        expiredTokens = new address[](count);
        for (uint256 i = 0; i < count; i++) {
            expiredTokens[i] = temp[i];
        }
        
        hasExpired = count > 0;
        return (hasExpired, expiredTokens);
    }

}
