// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.4;

import {IGMTokenManager} from "contracts/globalMarkets/tokenManager/IGMTokenManager.sol";

/**
 * @title  IPortfolioOrchestrator
 * @author Ondo Finance
 * @notice Interface for the PortfolioOrchestrator contract which invests, divests,
 *         and rebalances underlying GM token positions for portfolio tokens.
 *         Acts as a stateless execution engine — all long-term token custody
 *         resides in per-portfolio escrow contracts.
 */
interface IPortfolioOrchestrator {
  // ─────────────────────────────────────────────────────────────────────────────
  // Events
  // ─────────────────────────────────────────────────────────────────────────────

  event PortfolioInvested(
    address indexed portfolioToken,
    address indexed gmToken,
    uint256 usdonAmount,
    uint256 gmTokenAmount
  );

  event PortfolioDivested(
    address indexed portfolioToken,
    address indexed gmToken,
    uint256 gmTokenAmount,
    uint256 usdonAmount
  );

  event EscrowAddressSet(
    address indexed portfolioToken, address indexed oldEscrow, address indexed newEscrow
  );
  event PsmAddressSet(address indexed oldPsm, address indexed newPsm);
  event GMTokenManagerSet(address indexed oldManager, address indexed newManager);
  event PortfolioTokenAcceptedSet(address indexed portfolioToken, bool accepted);
  event TokensRetrieved(address indexed token, address indexed recipient, uint256 amount);
  event GlobalPaused();
  event GlobalUnpaused();
  event PortfolioRebalanced(
    address indexed portfolioToken, uint256 totalUsdonSold, uint256 totalUsdonInvested
  );
  event PortfolioTokenPaused(address indexed portfolioToken);
  event PortfolioTokenUnpaused(address indexed portfolioToken);
  event VaultSet(
    address indexed portfolioToken, address indexed oldVault, address indexed newVault
  );
  event FlushedToVault(
    address indexed portfolioToken, address indexed token, address indexed vault, uint256 amount
  );
  // ─────────────────────────────────────────────────────────────────────────────
  // Errors
  // ─────────────────────────────────────────────────────────────────────────────

  error PortfolioTokenNotAccepted();
  error GMTokenManagerAddressCantBeZero();
  error ArrayLengthMismatch();
  error GloballyPaused();
  error PortfolioTokenIsPaused();
  error TokenAddressCantBeZero();
  error USDonAddressCantBeZero();
  error DefaultAdminZeroAddress();
  error EscrowAddressCantBeZero();
  error EscrowAddressNotSet();
  error VaultAddressCantBeZero();
  error VaultNotSet();
  error PSMAddressNotSet();
  error PsmAddressCantBeZero();
  // ─────────────────────────────────────────────────────────────────────────────
  // Core Functions
  // ─────────────────────────────────────────────────────────────────────────────

  function invest(
    address portfolioToken,
    IGMTokenManager.Quote[] calldata quotes,
    bytes[] calldata signatures
  ) external;

  function divest(
    address portfolioToken,
    IGMTokenManager.Quote[] calldata quotes,
    bytes[] calldata signatures
  ) external;

  function rebalance(
    address portfolioToken,
    IGMTokenManager.Quote[] calldata sellQuotes,
    bytes[] calldata sellSignatures,
    IGMTokenManager.Quote[] calldata investQuotes,
    bytes[] calldata investSignatures
  ) external;

  // ─────────────────────────────────────────────────────────────────────────────
  // View Functions
  // ─────────────────────────────────────────────────────────────────────────────

  function portfolioTokenAccepted(address portfolioToken) external view returns (bool);
  function escrowAddress(address portfolioToken) external view returns (address);
  function psmAddress() external view returns (address);
  function vaultAddress(address portfolioToken) external view returns (address);

  // ─────────────────────────────────────────────────────────────────────────────
  // Admin Functions
  // ─────────────────────────────────────────────────────────────────────────────

  function setGMTokenManager(address _gmTokenManager) external;
  function setPsmAddress(address _psmAddress) external;
  function setVault(address portfolioToken, address _vault) external;
  function flushToVault(address portfolioToken, address token, uint256 amount) external;
  function setEscrowAddress(address portfolioToken, address _escrowAddress) external;
  function setPortfolioTokenAccepted(address portfolioToken, bool accepted) external;
  function retrieveTokens(address token, address to, uint256 amount) external;

  function pauseGlobal() external;
  function unpauseGlobal() external;
  function pausePortfolioToken(address portfolioToken) external;
  function unpausePortfolioToken(address portfolioToken) external;
}
