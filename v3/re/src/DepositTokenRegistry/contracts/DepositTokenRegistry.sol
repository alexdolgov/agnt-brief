pragma solidity 0.8.20;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/Address.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "./interfaces/IDepositTokenRegistry.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "./errors/DepositTokenRegistryErrors.sol";

/// @title DepositTokenRegistry
/// @notice Registry for managing deposit tokens and their associated parameters
/// @dev Handles token registration, fee management, and collateral eligibility
contract DepositTokenRegistry is
  IDepositTokenRegistry,
  AccessControl,
  ReentrancyGuard
{
  using Math for uint256;
  using Address for address;
  using EnumerableSet for EnumerableSet.AddressSet;

  address public constant NATIVE_TOKEN =
    0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;
  address public wrappedNativeToken;
  uint8 public constant NATIVE_TOKEN_DECIMALS = 18;
  uint256 public constant MAX_SLIPPAGE_TOLERANCE = 3500; // 35% in basis points

  bytes32 public immutable ADMIN_ROLE = keccak256("ADMIN_ROLE");
  bytes32 public immutable PAUSER_ROLE = keccak256("PAUSER_ROLE");
  bytes32 public immutable FEE_MANAGER_ROLE = keccak256("FEE_MANAGER_ROLE");
  bytes32 public immutable ORACLE_MANAGER_ROLE =
    keccak256("ORACLE_MANAGER_ROLE");

  // Add constant for max fee
  uint256 public constant MAX_PERCENTAGE_FEE = 2500; // 25% in basis points

  string private _nativeName;
  string private _nativeSymbol;

  constructor(
    address initialAdmin_,
    address admin_,
    address pauser_,
    address feeManager_,
    address oracleManager_,
    string memory nativeName_,
    string memory nativeSymbol_
  ) {
    _grantRole(DEFAULT_ADMIN_ROLE, initialAdmin_);
    _grantRole(ADMIN_ROLE, admin_);
    _grantRole(PAUSER_ROLE, pauser_);
    _grantRole(FEE_MANAGER_ROLE, feeManager_);
    _grantRole(ORACLE_MANAGER_ROLE, oracleManager_);
    _nativeName = nativeName_;
    _nativeSymbol = nativeSymbol_;
  }

  // Mapping to store accepted tokens and their fee information
  mapping(address => TokenInfo) private tokenInfo;
  // Array to store all token addresses
  EnumerableSet.AddressSet private _tokenAddresses;
  // Array to store accepted and not paused token addresses
  EnumerableSet.AddressSet private _acceptedTokens;

  // Events
  /// @notice Emitted when a new token is added to the registry
  /// @param token Address of the token that was added
  /// @param fixedDepositFee Fixed fee amount set for deposits
  /// @param percentageDepositFee Percentage fee set for deposits (in basis points)
  /// @param priceOracle Address of the price oracle assigned to the token
  event TokenAdded(
    address indexed token,
    uint256 fixedDepositFee,
    uint256 percentageDepositFee,
    address priceOracle
  );

  /// @notice Emitted when a token is removed from the registry
  /// @param token Address of the token that was removed
  event TokenRemoved(address indexed token);

  /// @notice Emitted when a token's fee structure is updated
  /// @param token Address of the token whose fees were updated
  /// @param fixedDepositFee New fixed fee amount
  /// @param percentageDepositFee New percentage fee (in basis points)
  event TokenFeeUpdated(
    address indexed token,
    uint256 fixedDepositFee,
    uint256 percentageDepositFee
  );

  /// @notice Emitted when a token's price oracle is updated
  /// @param token Address of the token whose oracle was updated
  /// @param priceOracle Address of the new price oracle
  event TokenOracleUpdated(address indexed token, address priceOracle);

  /// @notice Emitted when deposits for a token are paused
  /// @param token Address of the token that was paused
  event TokenPaused(address indexed token);

  /// @notice Emitted when deposits for a token are unpaused
  /// @param token Address of the token that was unpaused
  event TokenUnpaused(address indexed token);

  /// @notice Emitted when a token's default slippage tolerance is updated
  /// @param token Address of the token whose slippage was updated
  /// @param defaultSlippageTolerance New slippage tolerance in basis points
  event DefaultSlippageToleranceUpdated(
    address indexed token,
    uint256 defaultSlippageTolerance
  );

  /// @notice Emitted when a token's minimum deposit requirement is updated
  /// @param token Address of the token whose minimum deposit was updated
  /// @param oldMinDeposit Previous minimum deposit amount
  /// @param newMinDeposit New minimum deposit amount
  event MinDepositUpdated(
    address indexed token,
    uint256 oldMinDeposit,
    uint256 newMinDeposit
  );

  /// @notice Emitted when a token's collateral eligibility status changes
  /// @param token Address of the token whose eligibility was updated
  /// @param oldEligibility Previous eligibility status
  /// @param newEligibility New eligibility status
  event CollateralEligibilityUpdated(
    address indexed token,
    bool oldEligibility,
    bool newEligibility
  );

  /// @notice Adds a new token to the registry
  /// @param token Address of the token to add
  /// @param fixedDepositFee_ Fixed fee amount charged for deposits
  /// @param percentageDepositFee_ Percentage fee charged for deposits (in basis points, e.g. 100 = 1%)
  /// @param priceOracle_ Address of the price oracle for this token
  /// @param eligibleAsCollateral_ Whether this token can be used as collateral
  /// @param defaultSlippageTolerance_ Default slippage tolerance in basis points (e.g. 100 = 1%)
  /// @param minDeposit_ Minimum deposit amount required
  /// @dev Only callable by accounts with ADMIN_ROLE
  /// @dev Emits TokenAdded, MinDepositUpdated, and CollateralEligibilityUpdated events
  function addToken(
    address token,
    uint256 fixedDepositFee_,
    uint256 percentageDepositFee_,
    address priceOracle_,
    bool eligibleAsCollateral_,
    uint256 defaultSlippageTolerance_,
    uint256 minDeposit_
  ) external nonReentrant onlyRole(ADMIN_ROLE) {
    if (token == address(0)) {
      revert ZeroAddressError();
    }
    if (priceOracle_ == address(0)) {
      revert ZeroAddressError();
    }
    if (tokenInfo[token].isAccepted) {
      revert TokenAlreadyAcceptedError();
    }
    if (percentageDepositFee_ > MAX_PERCENTAGE_FEE) {
      revert PercentageFeeTooHighError();
    }
    if (defaultSlippageTolerance_ > MAX_SLIPPAGE_TOLERANCE) {
      revert SlippageTooHighError();
    }
    if (minDeposit_ == 0) {
      revert MinDepositZeroError();
    }

    IERC20Metadata metadataToken = IERC20Metadata(token);
    tokenInfo[token] = TokenInfo({
      isAccepted: true,
      fixedDepositFee: fixedDepositFee_,
      percentageDepositFee: percentageDepositFee_,
      priceOracle: priceOracle_,
      paused: false,
      eligibleAsCollateral: eligibleAsCollateral_,
      decimals: metadataToken.decimals(),
      name: metadataToken.name(),
      symbol: metadataToken.symbol(),
      defaultSlippageTolerance: defaultSlippageTolerance_,
      minDeposit: minDeposit_
    });

    _tokenAddresses.add(token);
    _acceptedTokens.add(token);

    emit TokenAdded(
      token,
      fixedDepositFee_,
      percentageDepositFee_,
      priceOracle_
    );
    emit MinDepositUpdated(token, 0, minDeposit_);
    emit CollateralEligibilityUpdated(token, false, eligibleAsCollateral_);
  }

  /// @notice Removes a token from the registry
  /// @param token Address of the token to remove
  /// @dev Only callable by accounts with ADMIN_ROLE
  /// @dev Emits TokenRemoved event
  function removeToken(address token) external onlyRole(ADMIN_ROLE) {
    if (!tokenInfo[token].isAccepted) {
      revert TokenNotAcceptedError();
    }

    delete tokenInfo[token];
    _tokenAddresses.remove(token);
    _acceptedTokens.remove(token);

    emit TokenRemoved(token);
  }

  /// @notice Updates deposit fees for a specific token
  /// @param token Address of the token to update
  /// @param fixedDepositFee_ New fixed fee amount in token units
  /// @param percentageDepositFee_ New percentage fee in basis points (1 BPS = 0.01%)
  /// @dev Fee Structure:
  /// @dev 1. Fixed Fee: Flat amount charged per transaction
  /// @dev 2. Percentage Fee: Variable amount based on deposit size
  /// @dev - Maximum percentage fee is 2500 BPS (25%)
  /// @dev - Example: 300 BPS = 3%
  /// @dev Emits TokenFeeUpdated event
  function updateTokenFees(
    address token,
    uint256 fixedDepositFee_,
    uint256 percentageDepositFee_
  ) external onlyRole(FEE_MANAGER_ROLE) {
    if (!tokenInfo[token].isAccepted) {
      revert TokenNotAcceptedError();
    }
    if (percentageDepositFee_ > MAX_PERCENTAGE_FEE) {
      revert PercentageFeeTooHighError();
    }

    tokenInfo[token].fixedDepositFee = fixedDepositFee_;
    tokenInfo[token].percentageDepositFee = percentageDepositFee_;

    emit TokenFeeUpdated(token, fixedDepositFee_, percentageDepositFee_);
  }

  /// @notice Updates the price oracle for a specific token
  /// @param token Address of the token to update
  /// @param priceOracle_ New price oracle address
  /// @dev Only callable by accounts with ORACLE_MANAGER_ROLE
  /// @dev Emits TokenOracleUpdated event
  function updateTokenOracle(
    address token,
    address priceOracle_
  ) external onlyRole(ORACLE_MANAGER_ROLE) {
    if (!tokenInfo[token].isAccepted) {
      revert TokenNotAcceptedError();
    }
    if (priceOracle_ == address(0)) {
      revert ZeroAddressError();
    }

    tokenInfo[token].priceOracle = priceOracle_;

    emit TokenOracleUpdated(token, priceOracle_);
  }

  /// @notice Pauses deposits for a specific token
  /// @param token Address of the token to pause
  /// @dev Only callable by accounts with PAUSER_ROLE
  /// @dev Emits TokenPaused event
  function pauseToken(address token) external onlyRole(PAUSER_ROLE) {
    if (!tokenInfo[token].isAccepted) {
      revert TokenNotAcceptedError();
    }
    if (tokenInfo[token].paused) {
      revert TokenAlreadyPausedError();
    }

    tokenInfo[token].paused = true;
    _acceptedTokens.remove(token);

    emit TokenPaused(token);
  }

  /// @notice Unpauses deposits for a specific token
  /// @param token Address of the token to unpause
  /// @dev Only callable by accounts with PAUSER_ROLE
  /// @dev Emits TokenUnpaused event
  function unpauseToken(address token) external onlyRole(PAUSER_ROLE) {
    if (!tokenInfo[token].isAccepted) {
      revert TokenNotAcceptedError();
    }
    if (!tokenInfo[token].paused) {
      revert TokenNotPausedError();
    }

    tokenInfo[token].paused = false;
    _acceptedTokens.add(token);

    emit TokenUnpaused(token);
  }

  /// @notice Retrieves information about a specific token
  /// @param token Address of the token to query
  /// @return isAccepted Whether the token is accepted
  /// @return fixedDepositFee Fixed fee amount for deposits
  /// @return percentageDepositFee Percentage fee for deposits (in basis points)
  /// @return priceOracle Address of the price oracle contract
  /// @return paused Bool indicating whether the token is paused
  /// @return name Token name
  /// @return symbol Token symbol
  /// @return slippage Default slippage tolerance in basis points
  /// @return minDeposit Minimum deposit amount
  /// @return decimals Token decimals
  /// @return nativeToken Whether this is the native blockchain token
  function getTokenInfo(
    address token
  )
    external
    view
    returns (
      bool isAccepted,
      uint256 fixedDepositFee,
      uint256 percentageDepositFee,
      address priceOracle,
      bool paused,
      string memory name,
      string memory symbol,
      uint256 slippage,
      uint256 minDeposit,
      uint256 decimals,
      bool nativeToken
    )
  {
    TokenInfo memory info = tokenInfo[token];
    bool nativeToken_ = false;
    if (token == NATIVE_TOKEN) {
      nativeToken_ = true;
    }
    return (
      info.isAccepted,
      info.fixedDepositFee,
      info.percentageDepositFee,
      info.priceOracle,
      info.paused,
      info.name,
      info.symbol,
      info.defaultSlippageTolerance,
      info.minDeposit,
      info.decimals,
      nativeToken_
    );
  }

  /// @notice Returns only the essential token information needed for share price calculations
  /// @param token The address of the token to query
  /// @return isAccepted Whether the token is accepted
  /// @return paused Whether the token is paused
  /// @return priceOracle The address of the price oracle for this token
  /// @return decimals The number of decimals for the token
  function getTokenPriceInfo(
    address token
  )
    external
    view
    returns (bool isAccepted, bool paused, address priceOracle, uint8 decimals)
  {
    TokenInfo memory info = tokenInfo[token];

    return (info.isAccepted, info.paused, info.priceOracle, info.decimals);
  }

  /// @notice Gets a list of tokens that are accepted and not paused
  /// @return List of token addresses
  function getAcceptedTokens() external view returns (address[] memory) {
    uint256 length = _acceptedTokens.length();
    address[] memory tokens = new address[](length);

    for (uint256 i = 0; i < length; i++) {
      tokens[i] = _acceptedTokens.at(i);
    }

    return tokens;
  }

  /// @notice Checks if a token is allowed for deposits
  /// @param token Address of the token to check
  /// @return bool indicating whether the token is allowed for deposits
  function isDepositEnabled(address token) external view returns (bool) {
    TokenInfo memory info = tokenInfo[token];
    return info.isAccepted && !info.paused;
  }

  /// @notice Calculates the total fees required for minting shares
  /// @param token Address of the token being used for minting
  /// @param amount Amount of tokens being used for minting
  /// @return Total fee amount, rounded up to ensure protocol solvency
  /// @dev The percentage fee is calculated by determining how many tokens would be needed
  /// @dev to mint the desired shares after fees, then subtracting the original amount.
  /// @dev For example, if depositing 100 tokens with a 3% fee:
  /// @dev 1. Calculate post-fee amount: ceil(100 * 10000 / 9700) = 104
  /// @dev 2. Subtract original amount: 104 - 100 = 4 token fee
  function previewMintFees(
    address token,
    uint256 amount
  ) external view returns (uint256) {
    TokenInfo memory info = tokenInfo[token];

    if (!info.isAccepted) {
      revert TokenNotAcceptedError();
    }
    if (amount == 0) {
      revert ZeroAmountError();
    }

    // Calculate percentage fee using reverse calculation to ensure exact share minting
    // Formula explanation:
    // 1. If we want X shares after fee, and fee is P%, then:
    //    X * (1 - P/100) = amount
    // 2. Solving for X:
    //    X = amount / (1 - P/100)
    // 3. In basis points (P * 100):
    //    X = amount * 10000 / (10000 - percentageFeeBPS)
    uint256 percentageFee = Math.mulDiv(
      amount,
      10000,
      10000 - info.percentageDepositFee,
      Math.Rounding.Ceil
    ) - amount;

    // Add fixed fee to percentage-based fee
    // Example: if fixed fee is 1 token and percentage fee is 3 tokens
    // totalFee = 1 + 3 = 4 tokens
    uint256 totalFee = info.fixedDepositFee + percentageFee;

    return totalFee;
  }

  /// @notice Calculates the fees required for a direct deposit
  /// @param token Address of the token being used for minting
  /// @param amount Amount of tokens being used for minting
  /// @return Total fee amount, rounded up to ensure protocol solvency
  /// @dev The percentage fee is calculated by determining how many tokens would be needed
  /// @dev to mint the desired shares after fees, then subtracting the original amount.
  /// @dev For example, if depositing 100 tokens with a 3% fee:
  /// @dev 1. Calculate post-fee amount: ceil(100 * 10000 / 9700) = 104
  /// @dev 2. Subtract original amount: 104 - 100 = 4 token fee
  function previewDepositFees(
    address token,
    uint256 amount
  ) external view returns (uint256) {
    TokenInfo memory info = tokenInfo[token];

    if (!info.isAccepted) {
      revert TokenNotAcceptedError();
    }
    if (amount == 0) {
      revert ZeroAmountError();
    }

    // Calculate percentage fee directly
    // Example: For 100 tokens with 3% fee (300 basis points)
    // percentageFee = 100 * 300 / 10000 = 3 tokens
    uint256 percentageFee = Math.mulDiv(
      amount,
      info.percentageDepositFee,
      10000
    );

    // Add fixed fee component
    // Example: If fixed fee is 1 token:
    // totalFee = 1 + 3 = 4 tokens
    uint256 totalFee = info.fixedDepositFee + percentageFee;

    // Cap the total fee at the deposit amount to prevent taking more than 100%
    return totalFee > amount ? amount : totalFee;
  }

  function updateSlippage(
    address token,
    uint256 newSlippage
  ) external onlyRole(ADMIN_ROLE) {
    if (!tokenInfo[token].isAccepted) {
      revert TokenNotAcceptedError();
    }
    if (newSlippage > MAX_SLIPPAGE_TOLERANCE) {
      revert SlippageTooHighError();
    }

    tokenInfo[token].defaultSlippageTolerance = newSlippage;

    emit DefaultSlippageToleranceUpdated(token, newSlippage);
  }

  /// @notice Gets a list of tokens that are eligible as collateral
  /// @return An array of addresses representing the eligible collateral tokens
  function getCollateralTokens() external view returns (address[] memory) {
    uint256 length = _tokenAddresses.length();
    address[] memory collateralTokens = new address[](length);
    uint256 count = 0;

    for (uint256 i = 0; i < length; i++) {
      address token = _tokenAddresses.at(i);
      if (tokenInfo[token].eligibleAsCollateral) {
        collateralTokens[count] = token;
        count++;
      }
    }

    // Use assembly to resize array to actual number of collateral tokens
    // This is more gas efficient than creating a new array and copying values
    assembly {
      mstore(collateralTokens, count)
    }

    return collateralTokens;
  }

  /// @notice Checks if a token is eligible as collateral
  /// @param token Address of the token to check
  /// @return A boolean indicating whether the token is eligible as collateral
  function isEligibleAsCollateral(address token) external view returns (bool) {
    if (!tokenInfo[token].isAccepted) {
      revert TokenNotAcceptedError();
    }
    return tokenInfo[token].eligibleAsCollateral;
  }

  /**
   * @notice Adds the native token (e.g., ETH) to the registry with specified parameters
   * @dev Only callable by accounts with ADMIN_ROLE. This function can only be called once
   *      for the native token. The native token is represented by a constant address
   *      (0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE)
   *
   * @param fixedDepositFee_ Fixed fee amount charged for deposits in native token units
   * @param percentageDepositFee_ Percentage fee charged for deposits (in basis points, e.g., 100 = 1%)
   * @param priceOracle_ Address of the price oracle for the native token
   * @param eligibleAsCollateral_ Whether the native token can be used as collateral
   * @param wrappedNativeToken_ Address of the wrapped version of the native token (e.g., WETH)
   * @param slippage_ Default slippage tolerance in basis points (e.g., 100 = 1%)
   * @param minDeposit_ Minimum deposit amount required in native token units
   *
   * @dev Emits TokenAdded, MinDepositUpdated, and CollateralEligibilityUpdated events
   *
   * Requirements:
   * - Native token must not already be accepted
   * - Wrapped token address must not be zero
   * - Price oracle address must not be zero
   * - Percentage fee must not exceed MAX_PERCENTAGE_FEE (25%)
   * - Slippage must not exceed MAX_SLIPPAGE_TOLERANCE (35%)
   * - Minimum deposit must be greater than 0
   */
  function addNativeToken(
    uint256 fixedDepositFee_,
    uint256 percentageDepositFee_,
    address priceOracle_,
    bool eligibleAsCollateral_,
    address wrappedNativeToken_,
    uint256 slippage_,
    uint256 minDeposit_
  ) external nonReentrant onlyRole(ADMIN_ROLE) {
    if (tokenInfo[NATIVE_TOKEN].isAccepted) {
      revert TokenAlreadyAcceptedError();
    }
    if (wrappedNativeToken_ == address(0)) {
      revert WrappedNativeZeroError();
    }
    if (priceOracle_ == address(0)) {
      revert ZeroAddressError();
    }
    if (percentageDepositFee_ > MAX_PERCENTAGE_FEE) {
      revert PercentageFeeTooHighError();
    }
    if (slippage_ > MAX_SLIPPAGE_TOLERANCE) {
      revert SlippageTooHighError();
    }
    if (minDeposit_ == 0) {
      revert MinDepositZeroError();
    }

    wrappedNativeToken = wrappedNativeToken_;

    tokenInfo[NATIVE_TOKEN] = TokenInfo({
      isAccepted: true,
      fixedDepositFee: fixedDepositFee_,
      percentageDepositFee: percentageDepositFee_,
      priceOracle: priceOracle_,
      paused: false,
      eligibleAsCollateral: eligibleAsCollateral_,
      decimals: NATIVE_TOKEN_DECIMALS,
      name: _nativeName,
      symbol: _nativeSymbol,
      defaultSlippageTolerance: slippage_,
      minDeposit: minDeposit_
    });

    // Add to token sets
    _tokenAddresses.add(NATIVE_TOKEN);
    _acceptedTokens.add(NATIVE_TOKEN);

    emit TokenAdded(
      NATIVE_TOKEN,
      fixedDepositFee_,
      percentageDepositFee_,
      priceOracle_
    );
    emit MinDepositUpdated(NATIVE_TOKEN, 0, minDeposit_);
    emit CollateralEligibilityUpdated(
      NATIVE_TOKEN,
      false,
      eligibleAsCollateral_
    );
  }

  /**
   * @notice Returns the address of the wrapped native token (e.g., WETH)
   * @dev This address is set during native token registration via addNativeToken
   * @return The address of the wrapped native token contract
   */
  function getWrappedNative() external view returns (address) {
    return address(wrappedNativeToken);
  }

  /// @notice Updates the minimum deposit requirement for a token
  /// @param token Address of the token to update
  /// @param newMinDeposit New minimum deposit amount
  /// @dev Only callable by accounts with ADMIN_ROLE
  /// @dev Emits MinDepositUpdated event
  function updateMinDeposit(
    address token,
    uint256 newMinDeposit
  ) external onlyRole(ADMIN_ROLE) {
    if (!tokenInfo[token].isAccepted) {
      revert TokenNotAcceptedError();
    }
    if (newMinDeposit == 0) {
      revert MinDepositZeroError();
    }

    uint256 oldMinDeposit = tokenInfo[token].minDeposit;
    tokenInfo[token].minDeposit = newMinDeposit;

    emit MinDepositUpdated(token, oldMinDeposit, newMinDeposit);
  }

  /// @notice Updates whether a token can be used as collateral
  /// @param token Address of the token to update
  /// @param newEligibility New collateral eligibility status
  /// @dev Only callable by accounts with ADMIN_ROLE
  /// @dev Emits CollateralEligibilityUpdated event
  function updateCollateralEligibility(
    address token,
    bool newEligibility
  ) external onlyRole(ADMIN_ROLE) {
    if (!tokenInfo[token].isAccepted) {
      revert TokenNotAcceptedError();
    }

    bool oldEligibility = tokenInfo[token].eligibleAsCollateral;
    if (oldEligibility == newEligibility) {
      revert EligibilityUnchangedError();
    }

    tokenInfo[token].eligibleAsCollateral = newEligibility;

    emit CollateralEligibilityUpdated(token, oldEligibility, newEligibility);
  }
}
