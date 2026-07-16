/**
 * SPDX-License-Identifier: BUSL-1.1
 *
 *       ▄▄█████████▄
 *    ╓██▀└ ,╓▄▄▄, '▀██▄
 *   ██▀ ▄██▀▀╙╙▀▀██▄ └██µ           ,,       ,,      ,     ,,,            ,,,
 *  ██ ,██¬ ▄████▄  ▀█▄ ╙█▄      ▄███▀▀███▄   ███▄    ██  ███▀▀▀███▄    ▄███▀▀███,
 * ██  ██ ╒█▀'   ╙█▌ ╙█▌ ██     ▐██      ███  █████,  ██  ██▌    └██▌  ██▌     └██▌
 * ██ ▐█▌ ██      ╟█  █▌ ╟█     ██▌      ▐██  ██ └███ ██  ██▌     ╟██ j██       ╟██
 * ╟█  ██ ╙██    ▄█▀ ▐█▌ ██     ╙██      ██▌  ██   ╙████  ██▌    ▄██▀  ██▌     ,██▀
 *  ██ "██, ╙▀▀███████████⌐      ╙████████▀   ██     ╙██  ███████▀▀     ╙███████▀`
 *   ██▄ ╙▀██▄▄▄▄▄,,,                ¬─                                    '─¬
 *    ╙▀██▄ '╙╙╙▀▀▀▀▀▀▀▀
 *       ╙▀▀██████R⌐
 *
 */

pragma solidity 0.8.33;

import {IGMTokenManager} from "contracts/globalMarkets/tokenManager/IGMTokenManager.sol";
import {
  IPortfolioOrchestrator
} from "contracts/globalMarkets/portfolioToken/portfolioOrchestrator/IPortfolioOrchestrator.sol";
import {
  ReentrancyGuardTransient
} from "contracts/external/openzeppelin/contracts/security/ReentrancyGuardTransient.sol";
import {
  Initializable
} from "contracts/external/openzeppelin/contracts-upgradeable/proxy/Initializable.sol";
import {
  AccessControlEnumerableUpgradeable
} from "contracts/external/openzeppelin/contracts-upgradeable/access/AccessControlEnumerableUpgradeable.sol";
import {IERC20} from "contracts/external/openzeppelin/contracts/token/IERC20.sol";
import {SafeERC20} from "contracts/external/openzeppelin/contracts/token/SafeERC20.sol";

/**
 * @title  PortfolioOrchestrator
 * @author Ondo Finance
 * @notice Stateless execution engine that the off-chain orchestrator calls to
 *         invest, divest, and rebalance underlying GM token positions for portfolio
 *         tokens. All long-term token custody resides in per-portfolio escrow
 *         contracts. The orchestrator only holds tokens transiently within a
 *         single transaction.
 *
 *         Fund flows:
 *          - Investing pulls USDon from the PSM, buys GM tokens, sends them to escrow
 *          - Divesting pulls GM tokens from escrow, sells them, and sends the
 *            resulting USDon directly to the PSM
 *          - Rebalancing sells then re-invests; USDon flows through the PSM
 *            between the legs
 */
contract PortfolioOrchestrator is
  IPortfolioOrchestrator,
  Initializable,
  ReentrancyGuardTransient,
  AccessControlEnumerableUpgradeable
{
  using SafeERC20 for IERC20;

  /// Role for the off-chain orchestrator
  bytes32 public constant ORCHESTRATOR_ROLE = keccak256("ORCHESTRATOR_ROLE");

  /// Role to configure the contract
  bytes32 public constant CONFIGURER_ROLE = keccak256("CONFIGURER_ROLE");

  /// Role to pause the orchestrator
  bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");

  /// Role to unpause the orchestrator
  bytes32 public constant UNPAUSER_ROLE = keccak256("UNPAUSER_ROLE");

  /// The decimals normalizer for price calculations
  uint256 public constant PRICE_NORMALIZER = 1e18;

  /// The USDon token address
  address public usdon;

  /// The GMTokenManager contract
  IGMTokenManager public gmTokenManager;

  /// Whether the orchestrator is globally paused
  bool public globalPaused;

  /// Whether a specific portfolio token is paused
  mapping(address => bool) public portfolioTokenPaused;

  /// Whether a portfolio token is accepted for rebalancing
  mapping(address => bool) public portfolioTokenAccepted;

  /// Escrow contract address per portfolio token
  mapping(address => address) public escrowAddress;

  /// The external custody vault (e.g. BitGo) per portfolio token that holds GM tokens
  mapping(address => address) public vaultAddress;

  /// The PSM address that holds USDon liquidity
  address public psmAddress;

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() {
    _disableInitializers();
  }

  /**
   * @param _defaultAdmin   The default admin role for the contract
   * @param _usdon          The address of the USDon token
   * @param _gmTokenManager The address of the GMTokenManager contract
   */
  function initialize(address _defaultAdmin, address _usdon, address _gmTokenManager)
    external
    initializer
  {
    __AccessControlEnumerable_init();
    if (_defaultAdmin == address(0)) revert DefaultAdminZeroAddress();
    if (_usdon == address(0)) revert USDonAddressCantBeZero();
    if (_gmTokenManager == address(0)) revert GMTokenManagerAddressCantBeZero();

    usdon = _usdon;
    gmTokenManager = IGMTokenManager(_gmTokenManager);
    _grantRole(DEFAULT_ADMIN_ROLE, _defaultAdmin);
  }

  /*//////////////////////////////////////////////////////////////
                      Invest / Divest / Rebalance
  //////////////////////////////////////////////////////////////*/

  /**
   * @notice Invest USDon into GM token positions
   * @param  portfolioToken The portfolio token the investment is for
   * @param  quotes      Array of GM token quotes to execute
   * @param  signatures  Array of signatures corresponding to each quote
   */
  function invest(
    address portfolioToken,
    IGMTokenManager.Quote[] calldata quotes,
    bytes[] calldata signatures
  ) external nonReentrant onlyRole(ORCHESTRATOR_ROLE) whenNotPaused(portfolioToken) {
    if (!portfolioTokenAccepted[portfolioToken]) revert PortfolioTokenNotAccepted();
    address escrow = escrowAddress[portfolioToken];
    if (escrow == address(0)) revert EscrowAddressNotSet();

    _invest(portfolioToken, escrow, quotes, signatures);
  }

  /**
   * @notice Divests GM token positions for USDon and send the proceeds to the PSM.
   * @param  portfolioToken The portfolio token the divestment is for
   * @param  quotes      Array of GM token quotes to execute
   * @param  signatures  Array of signatures corresponding to each quote
   */
  function divest(
    address portfolioToken,
    IGMTokenManager.Quote[] calldata quotes,
    bytes[] calldata signatures
  ) external nonReentrant onlyRole(ORCHESTRATOR_ROLE) whenNotPaused(portfolioToken) {
    if (!portfolioTokenAccepted[portfolioToken]) revert PortfolioTokenNotAccepted();
    address escrow = escrowAddress[portfolioToken];
    if (escrow == address(0)) revert EscrowAddressNotSet();

    _divest(portfolioToken, escrow, quotes, signatures);
  }

  /**
   * @notice Batch sell and invest in a single transaction for rebalancing.
   * @param  portfolioToken      The portfolio token to rebalance
   * @param  sellQuotes       Array of GM token sell quotes to execute
   * @param  sellSignatures   Array of signatures for sell quotes
   * @param  investQuotes     Array of GM token invest quotes to execute
   * @param  investSignatures Array of signatures for invest quotes
   */
  function rebalance(
    address portfolioToken,
    IGMTokenManager.Quote[] calldata sellQuotes,
    bytes[] calldata sellSignatures,
    IGMTokenManager.Quote[] calldata investQuotes,
    bytes[] calldata investSignatures
  ) external nonReentrant onlyRole(ORCHESTRATOR_ROLE) whenNotPaused(portfolioToken) {
    if (!portfolioTokenAccepted[portfolioToken]) revert PortfolioTokenNotAccepted();
    address escrow = escrowAddress[portfolioToken];
    if (escrow == address(0)) revert EscrowAddressNotSet();

    uint256 totalUsdonSold = _divest(portfolioToken, escrow, sellQuotes, sellSignatures);
    uint256 totalUsdonInvested = _invest(portfolioToken, escrow, investQuotes, investSignatures);

    emit PortfolioRebalanced(portfolioToken, totalUsdonSold, totalUsdonInvested);
  }

  /*//////////////////////////////////////////////////////////////
                        Internal Helpers
  //////////////////////////////////////////////////////////////*/

  /**
   * @notice Internal invest logic — pulls USDon from the PSM, mints GM tokens
   *         via GMTokenManager, and sends GM tokens to escrow.
   * @param  portfolioToken The portfolio token the investment is for
   * @param  escrow      The escrow address to receive GM tokens
   * @param  quotes      Array of GM token quotes to execute
   * @param  signatures  Array of signatures corresponding to each quote
   * @return totalUsdon  Total USDon spent
   */
  function _invest(
    address portfolioToken,
    address escrow,
    IGMTokenManager.Quote[] calldata quotes,
    bytes[] calldata signatures
  ) internal returns (uint256 totalUsdon) {
    if (psmAddress == address(0)) revert PSMAddressNotSet();
    if (quotes.length != signatures.length) {
      revert ArrayLengthMismatch();
    }

    // Sum total USDon needed and approve GMTM in one pass
    for (uint256 i = 0; i < quotes.length; ++i) {
      totalUsdon += (quotes[i].quantity * quotes[i].price) / PRICE_NORMALIZER;
    }

    // Pull USDon from PSM into this contract, then approve GMTM
    IERC20(usdon).safeTransferFrom(psmAddress, address(this), totalUsdon);
    IERC20(usdon).forceApprove(address(gmTokenManager), totalUsdon);

    // Execute each investment
    for (uint256 i = 0; i < quotes.length; ++i) {
      uint256 usdonAmount = (quotes[i].quantity * quotes[i].price) / PRICE_NORMALIZER;

      // Mint underlying GM tokens via GMTokenManager (tokens come to this contract)
      uint256 gmTokensReceived =
        gmTokenManager.mintWithAttestation(quotes[i], signatures[i], usdon, usdonAmount);

      // Transfer received GM tokens to escrow
      address gmToken = quotes[i].asset;
      IERC20(gmToken).safeTransfer(escrow, gmTokensReceived);

      emit PortfolioInvested(portfolioToken, gmToken, usdonAmount, gmTokensReceived);
    }
  }

  /**
   * @notice Internal divest logic — pulls GM tokens from escrow, redeems via
   *         GMTokenManager, and sends USDon directly to the PSM.
   * @param  portfolioToken The portfolio token the divestment is for
   * @param  escrow      The escrow address holding GM tokens
   * @param  quotes      Array of GM token quotes to execute
   * @param  signatures  Array of signatures corresponding to each quote
   * @return totalUsdon  Total USDon received
   */
  function _divest(
    address portfolioToken,
    address escrow,
    IGMTokenManager.Quote[] calldata quotes,
    bytes[] calldata signatures
  ) internal returns (uint256 totalUsdon) {
    if (psmAddress == address(0)) revert PSMAddressNotSet();
    if (quotes.length != signatures.length) {
      revert ArrayLengthMismatch();
    }

    // Pull GM tokens from escrow and pre-approve total quantity per GM token
    for (uint256 i = 0; i < quotes.length; ++i) {
      IERC20(quotes[i].asset).safeTransferFrom(escrow, address(this), quotes[i].quantity);
      IERC20(quotes[i].asset)
        .forceApprove(
          address(gmTokenManager),
          IERC20(quotes[i].asset).allowance(address(this), address(gmTokenManager))
            + quotes[i].quantity
        );
    }

    for (uint256 i = 0; i < quotes.length; ++i) {
      address gmToken = quotes[i].asset;
      uint256 gmTokenAmount = quotes[i].quantity;

      // Redeem GM tokens via GMTokenManager (USDon comes to this contract)
      uint256 usdonReceived =
        gmTokenManager.redeemWithAttestation(quotes[i], signatures[i], usdon, 0);

      totalUsdon += usdonReceived;

      emit PortfolioDivested(portfolioToken, gmToken, gmTokenAmount, usdonReceived);
    }

    // Send all received USDon to the PSM
    if (totalUsdon > 0) {
      IERC20(usdon).safeTransfer(psmAddress, totalUsdon);
    }
  }

  /*//////////////////////////////////////////////////////////////
                      Admin Configuration
  //////////////////////////////////////////////////////////////*/

  /**
   * @notice Sets the GMTokenManager contract
   * @param  _gmTokenManager The GMTokenManager address
   */
  function setGMTokenManager(address _gmTokenManager) external onlyRole(DEFAULT_ADMIN_ROLE) {
    if (_gmTokenManager == address(0)) revert GMTokenManagerAddressCantBeZero();
    emit GMTokenManagerSet(address(gmTokenManager), _gmTokenManager);
    gmTokenManager = IGMTokenManager(_gmTokenManager);
  }

  /**
   * @notice Sets the PSM address that holds USDon liquidity
   * @param  _psmAddress The PSM address
   */
  function setPsmAddress(address _psmAddress) external onlyRole(CONFIGURER_ROLE) {
    if (_psmAddress == address(0)) revert PsmAddressCantBeZero();
    emit PsmAddressSet(psmAddress, _psmAddress);
    psmAddress = _psmAddress;
  }

  /**
   * @notice Sets the external custody vault address for a specific portfolio token
   * @param  portfolioToken The portfolio token address
   * @param  _vault The vault address
   */
  function setVault(address portfolioToken, address _vault) external onlyRole(CONFIGURER_ROLE) {
    if (_vault == address(0)) revert VaultAddressCantBeZero();
    emit VaultSet(portfolioToken, vaultAddress[portfolioToken], _vault);
    vaultAddress[portfolioToken] = _vault;
  }

  /**
   * @notice Flush tokens from a portfolio's escrow to the vault.
   *         Called by the orchestrator after investing USDon into GM tokens.
   * @param  portfolioToken The portfolio token whose escrow to flush from
   * @param  token       The token to flush (typically a GM token)
   * @param  amount      The amount to flush
   */
  function flushToVault(address portfolioToken, address token, uint256 amount)
    external
    nonReentrant
    onlyRole(ORCHESTRATOR_ROLE)
  {
    address vault = vaultAddress[portfolioToken];
    if (vault == address(0)) revert VaultNotSet();
    address escrow = escrowAddress[portfolioToken];
    if (escrow == address(0)) revert EscrowAddressNotSet();

    IERC20(token).safeTransferFrom(escrow, vault, amount);

    emit FlushedToVault(portfolioToken, token, vault, amount);
  }

  /**
   * @notice Sets the escrow address for a specific portfolio token
   * @param  portfolioToken    The portfolio token address
   * @param  _escrowAddress The escrow contract address
   */
  function setEscrowAddress(address portfolioToken, address _escrowAddress)
    external
    onlyRole(CONFIGURER_ROLE)
  {
    if (_escrowAddress == address(0)) revert EscrowAddressCantBeZero();
    emit EscrowAddressSet(portfolioToken, escrowAddress[portfolioToken], _escrowAddress);
    escrowAddress[portfolioToken] = _escrowAddress;
  }

  /**
   * @notice Sets whether a portfolio token is accepted for rebalancing
   * @param  portfolioToken The portfolio token address
   * @param  accepted    Whether the token is accepted
   */
  function setPortfolioTokenAccepted(address portfolioToken, bool accepted)
    external
    onlyRole(CONFIGURER_ROLE)
  {
    if (portfolioToken == address(0)) revert TokenAddressCantBeZero();
    portfolioTokenAccepted[portfolioToken] = accepted;
    emit PortfolioTokenAcceptedSet(portfolioToken, accepted);
  }

  /**
   * @notice Rescue and transfer tokens locked in this contract
   * @param  token  The address of the token
   * @param  to     The address of the recipient
   * @param  amount The amount of token to transfer
   */
  function retrieveTokens(address token, address to, uint256 amount)
    external
    onlyRole(DEFAULT_ADMIN_ROLE)
  {
    IERC20(token).safeTransfer(to, amount);
    emit TokensRetrieved(token, to, amount);
  }

  /*//////////////////////////////////////////////////////////////
                          Pause/Unpause
  //////////////////////////////////////////////////////////////*/

  /**
   * @notice Globally pause all orchestrator operations
   */
  function pauseGlobal() external onlyRole(PAUSER_ROLE) {
    globalPaused = true;
    emit GlobalPaused();
  }

  /**
   * @notice Globally unpause all orchestrator operations
   */
  function unpauseGlobal() external onlyRole(UNPAUSER_ROLE) {
    globalPaused = false;
    emit GlobalUnpaused();
  }

  /**
   * @notice Pause operations for a specific portfolio token
   * @param  portfolioToken The address of the portfolio token
   */
  function pausePortfolioToken(address portfolioToken) external onlyRole(PAUSER_ROLE) {
    portfolioTokenPaused[portfolioToken] = true;
    emit PortfolioTokenPaused(portfolioToken);
  }

  /**
   * @notice Unpause operations for a specific portfolio token
   * @param  portfolioToken The address of the portfolio token
   */
  function unpausePortfolioToken(address portfolioToken) external onlyRole(UNPAUSER_ROLE) {
    portfolioTokenPaused[portfolioToken] = false;
    emit PortfolioTokenUnpaused(portfolioToken);
  }

  /*//////////////////////////////////////////////////////////////
                          Modifiers
  //////////////////////////////////////////////////////////////*/

  /**
   * @notice Ensure that the orchestrator is not paused
   * @param  portfolioToken The address of the portfolio token to check
   * @dev    Reverts if either globally paused or the specific portfolio token is paused
   */
  modifier whenNotPaused(address portfolioToken) {
    if (globalPaused) revert GloballyPaused();
    if (portfolioTokenPaused[portfolioToken]) revert PortfolioTokenIsPaused();
    _;
  }

  /**
   * @dev Reserved storage gap for future upgrades.
   */
  uint256[50] private __gap;
}
