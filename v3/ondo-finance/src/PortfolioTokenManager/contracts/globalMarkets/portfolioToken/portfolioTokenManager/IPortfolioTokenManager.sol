// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.4;

/**
 * @title  IPortfolioTokenManager
 * @author Ondo Finance
 * @notice Interface for the PortfolioTokenManager contract which manages mint and redemption
 *         of portfolio tokens. Portfolio tokens represent weighted portfolios of underlying GM tokens.
 */
interface IPortfolioTokenManager {
  // ─────────────────────────────────────────────────────────────────────────────
  // Enums
  // ─────────────────────────────────────────────────────────────────────────────

  enum QuoteSide {
    /// Indicates that the user is buying portfolio tokens
    BUY,
    /// Indicates that the user is selling portfolio tokens
    SELL
  }

  // ─────────────────────────────────────────────────────────────────────────────
  // Structs
  // ─────────────────────────────────────────────────────────────────────────────

  /**
   * @notice Quote struct that is signed by the attestation signer
   * @param  chainId        The chain ID the quote is intended for
   * @param  attestationId  The ID of the quote
   * @param  userId         The user ID the quote is intended for
   * @param  asset          The address of the portfolio token being bought or sold
   * @param  price          The price of the portfolio token in USD with 18 decimals
   * @param  quantity       The quantity of portfolio tokens being bought or sold
   * @param  expiration     The expiration of the quote in seconds since the epoch
   * @param  side           The direction of the quote (BUY or SELL)
   * @param  additionalData Any additional data that is needed for the quote
   */
  struct Quote {
    uint256 chainId;
    uint256 attestationId;
    bytes32 userId;
    address asset;
    uint256 price;
    uint256 quantity;
    uint256 expiration;
    QuoteSide side;
    bytes32 additionalData;
  }

  // ─────────────────────────────────────────────────────────────────────────────
  // Events
  // ─────────────────────────────────────────────────────────────────────────────

  event TradeExecuted(
    uint256 executionId,
    uint256 attestationId,
    uint256 chainId,
    bytes32 userId,
    QuoteSide side,
    address asset,
    uint256 price,
    uint256 quantity,
    uint256 expiration,
    bytes32 additionalData
  );

  event PortfolioBought(
    uint256 indexed executionId,
    address indexed portfolioToken,
    address indexed user,
    uint256 attestationId,
    uint256 portfolioTokenAmount,
    uint256 usdAmount
  );

  event PortfolioSold(
    uint256 indexed executionId,
    address indexed portfolioToken,
    address indexed user,
    uint256 attestationId,
    uint256 portfolioTokenAmount,
    uint256 usdAmount
  );

  event AdminMint(
    address indexed recipient,
    bytes32 indexed recipientId,
    address indexed portfolioToken,
    uint256 portfolioTokenAmount,
    bytes32 metadata
  );

  event OndoIDRegistrySet(address indexed oldRegistry, address indexed newRegistry);
  event OndoSanityCheckOracleSet(address indexed oldOracle, address indexed newOracle);
  event IssuanceHoursSet(address indexed oldHours, address indexed newHours);
  event PortfolioTokenRegistered(address indexed portfolioToken, bool indexed registered);
  event MinimumDepositAmountSet(uint256 indexed oldAmount, uint256 indexed newAmount);
  event MinimumRedemptionAmountSet(uint256 indexed oldAmount, uint256 indexed newAmount);
  event GlobalMintingPaused();
  event GlobalMintingUnpaused();
  event GlobalRedeemingPaused();
  event GlobalRedeemingUnpaused();
  event PortfolioTokenMintingPaused(address indexed portfolioToken);
  event PortfolioTokenMintingUnpaused(address indexed portfolioToken);
  event PortfolioTokenRedeemingPaused(address indexed portfolioToken);
  event PortfolioTokenRedeemingUnpaused(address indexed portfolioToken);
  event OndoRateLimiterSet(address indexed oldRateLimiter, address indexed newRateLimiter);
  event PsmAddressSet(address indexed oldPsmAddress, address indexed newPsmAddress);
  event OndoTokenRouterSet(address indexed oldRouter, address indexed newRouter);
  event TokensRetrieved(address indexed token, address indexed recipient, uint256 amount);

  // ─────────────────────────────────────────────────────────────────────────────
  // Errors
  // ─────────────────────────────────────────────────────────────────────────────

  error TokenAddressCantBeZero();
  error DepositAmountTooSmall();
  error UserNotRegistered();
  error RedemptionAmountTooSmall();
  error IDRegistryAddressCantBeZero();
  error GlobalMintsPaused();
  error GlobalRedemptionsPaused();
  error PortfolioTokenMintsPaused();
  error PortfolioTokenRedemptionsPaused();
  error SanityCheckOracleAddressCantBeZero();
  error AttestationExpired();
  error InvalidAttestationSigner();
  error InvalidChainId();
  error InvalidQuoteSide();
  error UserIdMismatch(bytes32 expected, bytes32 actual);
  error AttestationAlreadyExecuted();
  error IssuanceHoursAddressCantBeZero();
  error PortfolioTokenNotRegistered();
  error RateLimiterAddressCantBeZero();
  error DefaultAdminZeroAddress();
  error USDCAddressCantBeZero();
  error PsmAddressCantBeZero();
  error OndoTokenRouterAddressCantBeZero();

  // ─────────────────────────────────────────────────────────────────────────────
  // Core Functions
  // ─────────────────────────────────────────────────────────────────────────────

  function mintWithAttestation(Quote calldata quote, bytes memory signature)
    external
    returns (uint256 portfolioTokenAmount);

  function redeemWithAttestation(Quote calldata quote, bytes memory signature)
    external
    returns (uint256 redemptionUSDonValue);

  function adminProcessMint(
    address portfolioToken,
    address recipient,
    uint256 portfolioTokenAmount,
    bytes32 metadata
  ) external;

  // ─────────────────────────────────────────────────────────────────────────────
  // View Functions
  // ─────────────────────────────────────────────────────────────────────────────

  function portfolioTokenAccepted(address token) external view returns (bool);
  function getDomainSeparator() external view returns (bytes32);

  // ─────────────────────────────────────────────────────────────────────────────
  // Admin Functions
  // ─────────────────────────────────────────────────────────────────────────────

  function setIssuanceHours(address _issuanceHours) external;
  function setSanityCheckOracle(address _sanityCheckOracle) external;
  function setOndoIDRegistry(address _ondoIDRegistry) external;
  function setPortfolioTokenRegistrationStatus(address token, bool accepted) external;
  function setMinimumDepositAmount(uint256 _minimumDepositUSD) external;
  function setMinimumRedemptionAmount(uint256 _minimumRedemptionUSD) external;
  function setOndoRateLimiter(address _ondoRateLimiter) external;
  function setPsmAddress(address _psmAddress) external;
  function setOndoTokenRouter(address _ondoTokenRouter) external;

  function pauseGlobalMints() external;
  function unpauseGlobalMints() external;
  function pauseGlobalRedeems() external;
  function unpauseGlobalRedeems() external;
  function pausePortfolioTokenMints(address portfolioToken) external;
  function unpausePortfolioTokenMints(address portfolioToken) external;
  function pausePortfolioTokenRedemptions(address portfolioToken) external;
  function unpausePortfolioTokenRedemptions(address portfolioToken) external;

  function retrieveTokens(address token, address to, uint256 amount) external;
}
