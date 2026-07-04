// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";
import {IPoolManager} from "@uniswap/v4-core/src/interfaces/IPoolManager.sol";
import {PoolKey} from "@uniswap/v4-core/src/types/PoolKey.sol";
import {Currency} from "@uniswap/v4-core/src/types/Currency.sol";
import {IPositionManager} from "@uniswap/v4-periphery/src/interfaces/IPositionManager.sol";
import {IAllowanceTransfer} from "permit2/src/interfaces/IAllowanceTransfer.sol";
import "./interfaces/IDistributor.sol";
import "./interfaces/ILaunchpadViewer.sol";
import "./interfaces/ITruthMarketV2.sol";
import "./libraries/UniswapV4LPHelper.sol";
import "./libraries/Roles.sol";

/// @title TruthMarketV2SingleSideLiquidityPositionDistributor
/// @notice Distributor for Community markets that mints outcome tokens and creates single-sided LP positions
/// @dev For each depositor: mints YES/NO tokens, transfers their chosen side, creates LP with opposing side
contract TruthMarketV2SingleSideLiquidityPositionDistributor is IDistributor, ReentrancyGuard, AccessControl {
    using SafeERC20 for IERC20;

    // Structs ///////////////////////////////////////////////////////////

    struct OutcomePoolData {
        uint256 outcome;
        address token;
        PoolKey poolKey;
        UniswapV4LPHelper.SingleSidedPositionParams params;
    }

    // Immutable state ///////////////////////////////////////////////////

    IPoolManager public immutable poolManager;
    IPositionManager public immutable positionManager;
    IAllowanceTransfer public immutable permit2;
    address public immutable paymentToken;

    // Errors ////////////////////////////////////////////////////////////

    error InvalidOutcome(uint256 outcome);
    error OnlyPositionManager();

    // Constructor ///////////////////////////////////////////////////////

    constructor(address _poolManager, address _positionManager, address _permit2, address _paymentToken) {
        require(_poolManager != address(0), "Invalid pool manager");
        require(_positionManager != address(0), "Invalid position manager");
        require(_permit2 != address(0), "Invalid permit2");
        require(_paymentToken != address(0), "Invalid payment token");

        poolManager = IPoolManager(_poolManager);
        positionManager = IPositionManager(_positionManager);
        permit2 = IAllowanceTransfer(_permit2);
        paymentToken = _paymentToken;

        _grantRole(Roles.DEFAULT_ADMIN_ROLE, msg.sender);
    }

    // External functions ////////////////////////////////////////////////

    /// @notice Distributes outcome tokens and LP positions to depositors
    /// @dev Called by Launchpad after market launch. Protocol fee already deducted.
    ///      Restricted to OPERATOR_ROLE (typically the Launchpad contract)
    /// @param viewer The launchpad viewer to query depositor data
    /// @param proposalId The proposal ID
    function distribute(ILaunchpadViewer viewer, uint256 proposalId, uint256 distributable)
        external
        override
        nonReentrant
        onlyRole(Roles.OPERATOR_ROLE)
    {
        if (viewer.proposalPhase(proposalId) != ProposalPhase.Launched) revert ProposalNotLaunched();

        ITruthMarketV2 market = ITruthMarketV2(viewer.proposalMarket(proposalId));

        // Get all depositors and outcomes
        address[] memory depositors = viewer.proposalDepositors(proposalId);

        // Early return if no depositors
        if (depositors.length == 0) return;

        // Calculate total payment token amount needed
        uint256 totalDeposits = viewer.proposalTotalDeposits(proposalId);

        // Early return if nothing to distribute
        if (totalDeposits == 0) return;

        // Pull payment tokens from launchpad (msg.sender has pre-approved)
        if (distributable > 0) {
            IERC20(paymentToken).safeTransferFrom(msg.sender, address(this), distributable);
        }

        // Mint all YES/NO tokens at once (gas optimization)
        IERC20(paymentToken).safeApprove(address(market), 0);
        IERC20(paymentToken).safeApprove(address(market), distributable);
        market.mint(distributable);

        // Pre-fetch pool data for both outcomes (gas optimization)
        OutcomePoolData memory yesData;
        OutcomePoolData memory noData;

        yesData.outcome = 1;
        yesData.token = market.yesToken();
        noData.outcome = 2;
        noData.token = market.noToken();
        (yesData.poolKey, noData.poolKey) = market.getPoolKeys();

        // Note: Pools are already initialized by TruthMarketV2Launcher with deposit-ratio-based prices

        // Pre-calculate LP position parameters for both pools.
        //
        // SAFETY: Caching slot0 (sqrtPriceX96, currentTick) once and reusing for all depositors is safe because:
        //   1. Uniswap V4 Pool.modifyLiquidity() never writes to slot0 — only swap() does.
        //      MINT_POSITION calls modifyLiquidity(), so sequential mints cannot change sqrtPriceX96 or tick.
        //   2. Single-sided positions are placed entirely out-of-range (above or below current tick),
        //      so minting does not affect active liquidity either.
        //   3. TruthMarketHook has beforeAddLiquidity=false and afterAddLiquidity=false,
        //      so no hook logic can inject swaps or state changes during mints.
        //   4. The entire distribution runs atomically in one tx with nonReentrant,
        //      preventing external state changes between depositor mints.
        //
        // INVARIANT: If liquidity hooks are ever enabled on TruthMarketHook, or if swap operations
        //            are introduced within this loop, slot0 must be re-fetched per depositor.
        yesData.params =
            UniswapV4LPHelper.calculateSingleSidedPositionParams(yesData.poolKey, yesData.token, poolManager);
        noData.params = UniswapV4LPHelper.calculateSingleSidedPositionParams(noData.poolKey, noData.token, poolManager);

        // Distribute to each depositor
        for (uint256 i = 0; i < depositors.length; i++) {
            address depositor = depositors[i];
            _processDepositorOutcome(
                viewer, proposalId, market, depositor, yesData, noData, distributable, totalDeposits
            );
            _processDepositorOutcome(
                viewer, proposalId, market, depositor, noData, yesData, distributable, totalDeposits
            );
        }
    }

    /// @notice Sweep stranded or accidentally sent tokens from this contract
    /// @param token The token to sweep
    /// @param to The recipient address
    function sweep(address token, address to) external onlyRole(Roles.DEFAULT_ADMIN_ROLE) {
        require(to != address(0), "Invalid recipient");
        uint256 balance = IERC20(token).balanceOf(address(this));
        if (balance > 0) {
            IERC20(token).safeTransfer(to, balance);
            emit TokensSwept(token, to, balance);
        }
    }

    // Internal functions ////////////////////////////////////////////////

    /// @notice Process distribution for a single depositor's outcome
    /// @param proposalId The proposal ID
    /// @param market The TruthMarketV2 instance
    /// @param depositor The depositor address
    /// @param chosen Pre-fetched chosen side pool data
    /// @param opposing Pre-fetched opposing side pool data
    /// @param totalDistributable The total distributable amount
    /// @param totalDeposits The total deposits
    function _processDepositorOutcome(
        ILaunchpadViewer viewer,
        uint256 proposalId,
        ITruthMarketV2 market,
        address depositor,
        OutcomePoolData memory chosen,
        OutcomePoolData memory opposing,
        uint256 totalDistributable,
        uint256 totalDeposits
    ) internal {
        if (chosen.outcome != 1 && chosen.outcome != 2) {
            revert InvalidOutcome(chosen.outcome);
        }

        uint256 depositAmount = viewer.proposalDeposits(proposalId, depositor, chosen.outcome);

        if (depositAmount == 0) return;

        uint256 distributableAmount = (depositAmount * totalDistributable) / totalDeposits;

        // Calculate token amount (handle decimal conversion)
        uint256 paymentTokenDecimals = IERC20Metadata(paymentToken).decimals();
        uint256 outcomeTokenDecimals = IERC20Metadata(chosen.token).decimals();
        uint256 tokenAmount = (distributableAmount * (10 ** outcomeTokenDecimals)) / (10 ** paymentTokenDecimals);

        // Early return if nothing to distribute
        if (tokenAmount == 0) return;

        // Transfer chosen side tokens to depositor
        IERC20(chosen.token).safeTransfer(depositor, tokenAmount);
        emit Erc20Distributed(proposalId, address(market), depositor, chosen.token, tokenAmount);

        // Create single-sided LP position with opposing tokens using pre-calculated params
        uint256 tokenId = UniswapV4LPHelper.createSingleSidedPositionWithParams(
            opposing.poolKey, tokenAmount, opposing.params, positionManager, permit2, depositor
        );

        emit Erc721Distributed(proposalId, address(market), depositor, address(positionManager), tokenId);
    }
}
