// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";
import "./interfaces/IDistributor.sol";
import "./interfaces/ILaunchpadViewer.sol";
import "./interfaces/ITruthMarketV2.sol";
import "./libraries/Roles.sol";

/// @title TruthMarketV2ProportionalDistributor
/// @notice Distributor for Whales markets that distributes outcome tokens proportionally
/// @dev Deducts protocol fee, mints outcome tokens, and distributes them directly to depositors without creating LP positions
contract TruthMarketV2ProportionalDistributor is IDistributor, ReentrancyGuard, AccessControl {
    using SafeERC20 for IERC20;

    // Immutable state ///////////////////////////////////////////////////

    address public immutable paymentToken;

    // Errors ////////////////////////////////////////////////////////////

    error InvalidOutcome(uint256 outcome);
    error InvalidPaymentToken();

    // Constructor ///////////////////////////////////////////////////////

    constructor(address _paymentToken) {
        require(_paymentToken != address(0), "Invalid payment token");

        paymentToken = _paymentToken;

        _grantRole(Roles.DEFAULT_ADMIN_ROLE, msg.sender);
    }

    // External functions ////////////////////////////////////////////////

    /// @notice Distributes outcome tokens proportionally to depositors
    /// @dev Called by Launchpad after market launch. Protocol fee already deducted.
    ///      Distribution is proportional to depositor's share of their outcome pool.
    ///      Example: If YES pool = 400, NO pool = 200, total = 600
    ///               Depositor with 100 YES gets: (100/400) * 600 = 150 YES tokens
    ///      Restricted to OPERATOR_ROLE (typically the Launchpad contract)
    /// @param viewer The launchpad viewer to query depositor data and market address
    /// @param proposalId The proposal ID
    function distribute(ILaunchpadViewer viewer, uint256 proposalId, uint256 distributable)
        external
        override
        nonReentrant
        onlyRole(Roles.OPERATOR_ROLE)
    {
        if (viewer.proposalPhase(proposalId) != ProposalPhase.Launched) revert ProposalNotLaunched();

        // Get all depositors
        address[] memory depositors = viewer.proposalDepositors(proposalId);

        // Early return if no depositors
        if (depositors.length == 0) return;

        address market = viewer.proposalMarket(proposalId);
        ITruthMarketV2 truthMarket = ITruthMarketV2(market);

        if (truthMarket.paymentToken() != paymentToken) revert InvalidPaymentToken();

        // Calculate total payment token amount needed
        uint256 totalDeposits = viewer.proposalTotalDeposits(proposalId);

        // Early return if nothing to distribute
        if (totalDeposits == 0) return;

        // Pull payment tokens from launchpad (msg.sender has pre-approved)
        if (distributable > 0) {
            IERC20(paymentToken).safeTransferFrom(msg.sender, address(this), distributable);
        }

        // Mint all YES/NO tokens at once (gas optimization)
        IERC20(paymentToken).safeApprove(address(truthMarket), 0);
        IERC20(paymentToken).safeApprove(address(truthMarket), distributable);
        truthMarket.mint(distributable);

        // Get token addresses and total deposits per outcome
        address yesToken = truthMarket.yesToken();
        address noToken = truthMarket.noToken();
        uint256 totalYesDeposits = viewer.proposalOutcomeDeposits(proposalId, 1);
        uint256 totalNoDeposits = viewer.proposalOutcomeDeposits(proposalId, 2);

        // Calculate total tokens minted (convert from payment token decimals to outcome token decimals)
        uint256 paymentTokenDecimals = IERC20Metadata(paymentToken).decimals();
        uint256 outcomeTokenDecimals = IERC20Metadata(yesToken).decimals();
        uint256 totalTokensMinted = (distributable * (10 ** outcomeTokenDecimals)) / (10 ** paymentTokenDecimals);

        // Distribute to each depositor
        for (uint256 i = 0; i < depositors.length; i++) {
            address depositor = depositors[i];

            _processDepositorOutcome(
                viewer, proposalId, truthMarket, depositor, 1, totalYesDeposits, totalTokensMinted, yesToken
            );

            _processDepositorOutcome(
                viewer, proposalId, truthMarket, depositor, 2, totalNoDeposits, totalTokensMinted, noToken
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
    /// @dev Calculates tokens based on depositor's share of their outcome pool:
    ///      tokenAmount = (depositAmount / totalOutcomeDeposits) * totalTokensMinted
    /// @param proposalId The proposal ID
    /// @param market The TruthMarketV2 instance
    /// @param depositor The depositor address
    /// @param outcome The outcome they deposited to (1=YES, 2=NO)
    /// @param totalOutcomeDeposits Total deposits for this outcome (YES or NO)
    /// @param totalTokensMinted Total tokens minted (both YES and NO)
    /// @param chosenToken The token address for their chosen side
    function _processDepositorOutcome(
        ILaunchpadViewer viewer,
        uint256 proposalId,
        ITruthMarketV2 market,
        address depositor,
        uint256 outcome,
        uint256 totalOutcomeDeposits,
        uint256 totalTokensMinted,
        address chosenToken
    ) internal {
        if (outcome != 1 && outcome != 2) revert InvalidOutcome(outcome);

        uint256 depositAmount = viewer.proposalDeposits(proposalId, depositor, outcome);

        if (depositAmount == 0) return;

        uint256 tokenAmount = (totalTokensMinted * depositAmount) / totalOutcomeDeposits;

        // Early return if nothing to distribute
        if (tokenAmount == 0) return;

        // Transfer chosen side tokens to depositor (pure proportional payout, no LP position)
        IERC20(chosenToken).safeTransfer(depositor, tokenAmount);
        emit Erc20Distributed(proposalId, address(market), depositor, chosenToken, tokenAmount);
    }
}
