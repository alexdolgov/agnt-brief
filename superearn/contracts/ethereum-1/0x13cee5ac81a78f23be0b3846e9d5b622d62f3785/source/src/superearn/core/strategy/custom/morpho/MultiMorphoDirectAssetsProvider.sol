// SPDX-License-Identifier: MIT
pragma solidity >=0.8.29 <0.9.0;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { IExternalAssetsProvider } from "@superearn/v2/interfaces/IExternalAssetsProvider.sol";
import { IMorphoBlue, MorphoMarketParams } from "@superearn/interface/IMorphoBlue.sol";

/**
 * @title MultiMorphoDirectAssetsProvider
 * @notice External assets provider for CustomStrategy that tracks multiple Morpho Blue direct market supply positions
 * @dev Returns the total value of all positions across multiple markets, denominated in a single loanToken:
 *      1. Raw loanToken balance held by the strategy
 *      2. Supply position values across all registered Morpho Blue markets
 *
 *      All registered markets MUST share the same loanToken (e.g., all USDC markets).
 *      Markets can be added/removed by the strategy's governance.
 *
 *      Share-to-asset conversion uses Morpho Blue's formula:
 *        assets = supplyShares * (totalSupplyAssets + VIRTUAL_ASSETS) / (totalSupplyShares + VIRTUAL_SHARES)
 *      where VIRTUAL_ASSETS = 1 and VIRTUAL_SHARES = 1e6.
 *
 * @custom:reference https://docs.morpho.org/
 */
contract MultiMorphoDirectAssetsProvider is IExternalAssetsProvider {
    // ============================================
    // CONSTANTS
    // ============================================

    uint256 internal constant VIRTUAL_SHARES = 1e6;
    uint256 internal constant VIRTUAL_ASSETS = 1;
    /// @dev Dust threshold for removeMarket — allows up to 100 wei of loanToken from rounding
    uint256 internal constant DUST_THRESHOLD = 100;

    // ============================================
    // IMMUTABLE STORAGE
    // ============================================

    address public immutable STRATEGY;
    address public immutable MORPHO;
    address public immutable LOAN_TOKEN;

    // ============================================
    // MUTABLE STORAGE
    // ============================================

    bytes32[] public marketIds;
    mapping(bytes32 => bool) public isRegistered;

    // ============================================
    // EVENTS
    // ============================================

    event MarketAdded(bytes32 indexed marketId, address collateralToken);
    event MarketRemoved(bytes32 indexed marketId);

    // ============================================
    // ERRORS
    // ============================================

    error ZeroAddress();
    error InvalidMarket();
    error MarketAlreadyRegistered();
    error MarketNotRegistered();
    error LoanTokenMismatch(address expected, address actual);
    error NotStrategyGovernance();
    error MarketHasActivePosition(bytes32 marketId, uint256 supplyAssets);

    // ============================================
    // MODIFIERS
    // ============================================

    modifier onlyStrategyGovernance() {
        (bool success, bytes memory data) = STRATEGY.staticcall(abi.encodeWithSignature("governance()"));
        if (!success || data.length < 32) revert NotStrategyGovernance();
        address governance = abi.decode(data, (address));
        if (msg.sender != governance) revert NotStrategyGovernance();
        _;
    }

    // ============================================
    // CONSTRUCTOR
    // ============================================

    /**
     * @notice Deploy a multi-market provider
     * @param _strategy The strategy address whose positions to track
     * @param _morpho Morpho Blue singleton address
     * @param _loanToken The shared loan token for all markets (e.g., USDC)
     */
    constructor(address _strategy, address _morpho, address _loanToken) {
        if (_strategy == address(0)) revert ZeroAddress();
        if (_morpho == address(0)) revert ZeroAddress();
        if (_loanToken == address(0)) revert ZeroAddress();

        STRATEGY = _strategy;
        MORPHO = _morpho;
        LOAN_TOKEN = _loanToken;
    }

    // ============================================
    // MARKET MANAGEMENT
    // ============================================

    /**
     * @notice Add a Morpho Blue market to track
     * @dev Market must exist and share the same loanToken as this provider
     * @param _marketId The market's ID (keccak256 of MarketParams)
     */
    function addMarket(bytes32 _marketId) external onlyStrategyGovernance {
        if (isRegistered[_marketId]) revert MarketAlreadyRegistered();

        (address loanToken,,,,) = IMorphoBlue(MORPHO).idToMarketParams(_marketId);
        if (loanToken == address(0)) revert InvalidMarket();
        if (loanToken != LOAN_TOKEN) revert LoanTokenMismatch(LOAN_TOKEN, loanToken);

        isRegistered[_marketId] = true;
        marketIds.push(_marketId);

        (, address collateralToken,,,) = IMorphoBlue(MORPHO).idToMarketParams(_marketId);
        emit MarketAdded(_marketId, collateralToken);
    }

    /**
     * @notice Remove a Morpho Blue market from tracking
     * @dev Swap-and-pop removal to avoid gaps in array
     * @param _marketId The market's ID to remove
     */
    function removeMarket(bytes32 _marketId) external onlyStrategyGovernance {
        if (!isRegistered[_marketId]) revert MarketNotRegistered();

        // Allow dust from rounding in share-to-asset conversion
        uint256 activeAssets = _getSupplyAssets(_marketId);
        if (activeAssets > DUST_THRESHOLD) revert MarketHasActivePosition(_marketId, activeAssets);

        isRegistered[_marketId] = false;

        uint256 len = marketIds.length;
        for (uint256 i = 0; i < len; i++) {
            if (marketIds[i] == _marketId) {
                marketIds[i] = marketIds[len - 1];
                marketIds.pop();
                break;
            }
        }

        emit MarketRemoved(_marketId);
    }

    // ============================================
    // IExternalAssetsProvider
    // ============================================

    /// @inheritdoc IExternalAssetsProvider
    function denominationToken() external view override returns (address) {
        return LOAN_TOKEN;
    }

    /// @inheritdoc IExternalAssetsProvider
    function getTotalAssets() external view override returns (uint256) {
        uint256 total = IERC20(LOAN_TOKEN).balanceOf(STRATEGY);

        uint256 len = marketIds.length;
        for (uint256 i = 0; i < len; i++) {
            total += _getSupplyAssets(marketIds[i]);
        }

        return total;
    }

    // ============================================
    // VIEW FUNCTIONS
    // ============================================

    /// @notice Get the number of registered markets
    function getMarketCount() external view returns (uint256) {
        return marketIds.length;
    }

    /// @notice Get all registered market IDs
    function getMarketIds() external view returns (bytes32[] memory) {
        return marketIds;
    }

    /// @notice Get MarketParams for a registered market
    function getMarketParams(bytes32 _marketId) external view returns (MorphoMarketParams memory) {
        (address loanToken, address collateralToken, address oracle, address irm, uint256 lltv) =
            IMorphoBlue(MORPHO).idToMarketParams(_marketId);
        return MorphoMarketParams({
            loanToken: loanToken,
            collateralToken: collateralToken,
            oracle: oracle,
            irm: irm,
            lltv: lltv
        });
    }

    /**
     * @notice Get breakdown of positions across all registered markets
     * @return idleBalance Raw loanToken balance held by strategy
     * @return totalSupplyAssets Total supply position value across all markets
     * @return perMarketAssets Array of supply assets per market (same order as marketIds)
     */
    function getPositionBreakdown()
        external
        view
        returns (uint256 idleBalance, uint256 totalSupplyAssets, uint256[] memory perMarketAssets)
    {
        idleBalance = IERC20(LOAN_TOKEN).balanceOf(STRATEGY);

        uint256 len = marketIds.length;
        perMarketAssets = new uint256[](len);

        for (uint256 i = 0; i < len; i++) {
            perMarketAssets[i] = _getSupplyAssets(marketIds[i]);
            totalSupplyAssets += perMarketAssets[i];
        }
    }

    /// @notice Get available liquidity in a specific market
    function getAvailableLiquidity(bytes32 _marketId) external view returns (uint256) {
        (uint128 totalSupply,, uint128 totalBorrow,,,) = IMorphoBlue(MORPHO).market(_marketId);
        return uint256(totalSupply) - uint256(totalBorrow);
    }

    // ============================================
    // INTERNAL FUNCTIONS
    // ============================================

    function _getSupplyAssets(bytes32 _marketId) internal view returns (uint256) {
        (uint256 supplyShares,,) = IMorphoBlue(MORPHO).position(_marketId, STRATEGY);
        if (supplyShares == 0) return 0;

        (uint128 totalSupplyAssets, uint128 totalSupplyShares,,,,) = IMorphoBlue(MORPHO).market(_marketId);

        return _toAssetsDown(supplyShares, uint256(totalSupplyAssets), uint256(totalSupplyShares));
    }

    function _toAssetsDown(uint256 shares, uint256 totalAssets, uint256 totalShares) internal pure returns (uint256) {
        return shares * (totalAssets + VIRTUAL_ASSETS) / (totalShares + VIRTUAL_SHARES);
    }
}
