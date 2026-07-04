/**SPDX-License-Identifier: BUSL-1.1

      ▄▄█████████▄
   ╓██▀└ ,╓▄▄▄, '▀██▄
  ██▀ ▄██▀▀╙╙▀▀██▄ └██µ           ,,       ,,      ,     ,,,            ,,,
 ██ ,██¬ ▄████▄  ▀█▄ ╙█▄      ▄███▀▀███▄   ███▄    ██  ███▀▀▀███▄    ▄███▀▀███,
██  ██ ╒█▀'   ╙█▌ ╙█▌ ██     ▐██      ███  █████,  ██  ██▌    └██▌  ██▌     └██▌
██ ▐█▌ ██      ╟█  █▌ ╟█     ██▌      ▐██  ██ └███ ██  ██▌     ╟██ j██       ╟██
╟█  ██ ╙██    ▄█▀ ▐█▌ ██     ╙██      ██▌  ██   ╙████  ██▌    ▄██▀  ██▌     ,██▀
 ██ "██, ╙▀▀███████████⌐      ╙████████▀   ██     ╙██  ███████▀▀     ╙███████▀`
  ██▄ ╙▀██▄▄▄▄▄,,,                ¬─                                    '─¬
   ╙▀██▄ '╙╙╙▀▀▀▀▀▀▀▀
      ╙▀▀██████R⌐

 */
pragma solidity 0.8.16;
import "contracts/interfaces/IInvestorBasedRateLimiter.sol";
import "contracts/external/openzeppelin/contracts/access/AccessControlEnumerable.sol";

/**
 * @title InvestorBasedRateLimiter
 *
 * @notice This contract allows for mint and redemption limits to be set
 *         for a given interval on a per-investor basis. Investors can be assigned
 *         multiple addresses through admin functions and the limits are independent
 *         of each other (i.e. minting does not affect redemptions). Investors are
 *         assigned IDs automatically based on a monotonically increasing counter
 *         starting from 1. Limits and durations are set to default values for new
 *         investors, but can also be overridden by the admin.
 *
 * @dev The limits are reset after a given duration has elapsed and an onchain action
 *      (mint or redeem) has occured. When the limits are reset, the associated `currentAmount`
 *      is set to 0 and the `lastResetTime` is updated to the current block timestamp.
 *
 * @dev Admins have the capability to "reset" an investors current rate limit state.
 * @dev If a duration is zero, the limit resets before each mint/redemption.
 * @dev If a limit is zero, the relevant check always fails.
 *
 */
contract InvestorBasedRateLimiter is
  IInvestorBasedRateLimiter,
  AccessControlEnumerable
{
  // Role for the client contract using this rate limiter
  bytes32 public constant CLIENT_ROLE = keccak256("CLIENT_ROLE");

  // Role for the admin who can configure the rate limit state for investors
  bytes32 public constant CONFIGURER_ROLE = keccak256("CONFIGURER_ROLE");

  // Rate limit state for each action (i.e. minting and redeeming)
  struct RateLimit {
    // Amount used for an action in the current interval
    uint256 currentAmount;
    // Maximum amount that can be used for an action in the current interval
    uint256 limit;
    // unix timestamp (seconds) of the last time the limit was reset
    uint256 lastResetTime;
    // Duration of the limit interval in seconds
    uint256 limitDuration;
  }

  // Mapping of investor ID to mint rate limit state
  mapping(uint256 => RateLimit) public investorIdToMintState;

  // Mapping of investor ID to redeem rate limit state
  mapping(uint256 => RateLimit) public investorIdToRedemptionState;

  // Mapping of investor address to investor ID
  mapping(address => uint256) public addressToInvestorId;

  // Mapping of investor ID to the number of addresses associated with the investor
  mapping(uint256 => uint256) public investorAddressCount;

  // Default mint limit value in the decimals of the amount provided to client functions
  uint256 public defaultMintLimit = 5_000_000 * 1e6;

  // Default redeem limit value in the decimals of the amount provided to client functions
  uint256 public defaultRedemptionLimit = 5_000_000 * 1e6;

  // Default duration for mint limit in seconds
  uint256 public defaultMintLimitDuration = 1 days;

  // Default duration for redeem limit in seconds
  uint256 public defaultRedemptionLimitDuration = 1 days;

  // Counter used for automatically assigning the investor IDs
  uint256 public investorIdCounter;

  /**
   * @notice In the constructor, we grant the administrative and client roles to the
   *         respective addresses provided.
   *
   * @param admin `CONFIGURER_ROLE` and `DEFAULT_ADMIN_ROLE` roles are assigned to this
   * @param client `CLIENT_ROLE` role is assigned to this
   *

   */
  constructor(address admin, address client) {
    _setupRole(DEFAULT_ADMIN_ROLE, admin);
    _setupRole(CONFIGURER_ROLE, admin);
    _setupRole(CLIENT_ROLE, client);
  }

  /*//////////////////////////////////////////////////////////////
                        Client calls
  //////////////////////////////////////////////////////////////*/

  /**
   * @notice Checks the investor's requested mint amount against
   *         the limit and updates the current mint amount
   *         if the check passes
   *
   * @param investorAddress The address of the investor
   * @param mintAmount      The requested mint amount
   *
   * @dev Reverts if the requested mint amount exceeds the current limit
   * @dev The client must ensure the decimals being used for the limits match
   *      the decimals of the mint amount
   */
  function checkAndUpdateMintLimit(
    address investorAddress,
    uint256 mintAmount
  ) external override onlyRole(CLIENT_ROLE) {
    if (mintAmount == 0) {
      revert InvalidAmount();
    }

    uint256 investorId = addressToInvestorId[investorAddress];
    if (investorId == 0) {
      // If this is a new investor, initialize their state with the default values
      address[] memory addresses = new address[](1);
      addresses[0] = investorAddress;
      investorId = _initializeInvestorState(
        addresses,
        defaultMintLimit,
        defaultRedemptionLimit,
        defaultMintLimitDuration,
        defaultRedemptionLimitDuration
      );
    }

    RateLimit storage mintState = investorIdToMintState[investorId];
    uint256 prevAmount = mintState.currentAmount;
    _checkAndUpdateRateLimitState(mintState, mintAmount);
    emit MintStateUpdated(
      investorAddress,
      investorId,
      prevAmount,
      mintState.currentAmount,
      mintState.limit - mintState.currentAmount
    );
  }

  /**
   * @notice Checks the investor's requested redemption amount against
   *         the limit and updates the current redemption amount
   *         if the check passes
   *
   * @param investorAddress  The address of the investor
   * @param redemptionAmount The requested redemption amount
   *
   * @dev Reverts if the requested redemption amount exceeds the current limit
   * @dev The client must ensure the decimals being used for the limits match
   *      the decimals of the redemption amount
   */
  function checkAndUpdateRedemptionLimit(
    address investorAddress,
    uint256 redemptionAmount
  ) external override onlyRole(CLIENT_ROLE) {
    if (redemptionAmount == 0) {
      revert InvalidAmount();
    }

    uint256 investorId = addressToInvestorId[investorAddress];
    if (investorId == 0) {
      // If this is a new investor, initialize their state with the default values
      address[] memory addresses = new address[](1);
      addresses[0] = investorAddress;
      investorId = _initializeInvestorState(
        addresses,
        defaultMintLimit,
        defaultRedemptionLimit,
        defaultMintLimitDuration,
        defaultRedemptionLimitDuration
      );
    }
    RateLimit storage redemptionState = investorIdToRedemptionState[investorId];

    uint256 prevAmount = redemptionState.currentAmount;
    _checkAndUpdateRateLimitState(redemptionState, redemptionAmount);
    emit RedemptionStateUpdated(
      investorAddress,
      investorId,
      prevAmount,
      redemptionState.currentAmount,
      redemptionState.limit - redemptionState.currentAmount
    );
  }

  function _checkAndUpdateRateLimitState(
    RateLimit storage rateLimit,
    uint256 amount
  ) internal {
    if (block.timestamp >= rateLimit.lastResetTime + rateLimit.limitDuration) {
      rateLimit.currentAmount = 0;
      rateLimit.lastResetTime = block.timestamp;
    }

    if (rateLimit.currentAmount + amount > rateLimit.limit) {
      revert RateLimitExceeded();
    }

    rateLimit.currentAmount += amount;
  }

  /*//////////////////////////////////////////////////////////////
                   Investor/Address Configuration
  //////////////////////////////////////////////////////////////*/

  /**
   * @notice Administrative call to initialize the rate limit state for
   *         a new investor with the default values for both minting and
   *         redeeming
   *
   * @param addresses The list of addresses that should be associated with the investor
   *
   * @dev Reverts if any of the provided addresses are already associated with an investor
   *      (`setAddressToInvestorId` must be used to "switch" addresses between investors).
   *
   */
  function initializeInvestorStateDefault(
    address[] memory addresses
  ) external onlyRole(CONFIGURER_ROLE) {
    _initializeInvestorState(
      addresses,
      defaultMintLimit,
      defaultRedemptionLimit,
      defaultMintLimitDuration,
      defaultRedemptionLimitDuration
    );
  }

  function _initializeInvestorState(
    address[] memory addresses,
    uint256 mintLimit,
    uint256 redemptionLimit,
    uint256 mintLimitDuration,
    uint256 redemptionLimitDuration
  ) internal returns (uint256 investorId) {
    if (addresses.length == 0) revert AddressesNotProvided();

    investorId = ++investorIdCounter;
    for (uint256 i; i < addresses.length; ++i) {
      // Safety check to ensure the address is not already associated with an investor
      // before associating it with a new investor
      if (addressToInvestorId[addresses[i]] != 0) {
        revert AddressAlreadyAssociated();
      }
      _setAddressToInvestorId(addresses[i], investorId);
    }
    investorIdToMintState[investorId] = RateLimit({
      currentAmount: 0,
      limit: mintLimit,
      lastResetTime: block.timestamp,
      limitDuration: mintLimitDuration
    });
    investorIdToRedemptionState[investorId] = RateLimit({
      currentAmount: 0,
      limit: redemptionLimit,
      lastResetTime: block.timestamp,
      limitDuration: redemptionLimitDuration
    });
  }

  /**
   * @notice Administrative call to associate an address with an investor
   *
   * @param investorAddress the address being associated with `newInvestorId`
   * @param newInvestorId   the ID of the investor `investorAddress` is being associated with
   *
   * @dev This reverts if the `newInvestorId` is 0 or if the investor ID is not already
   *      initialized.
   */
  function setAddressToInvestorId(
    address investorAddress,
    uint256 newInvestorId
  ) external onlyRole(CONFIGURER_ROLE) {
    if (newInvestorId == 0) {
      revert InvalidInvestorId();
    }

    if (investorIdToMintState[newInvestorId].lastResetTime == 0) {
      revert InvestorNotFound();
    }

    _setAddressToInvestorId(investorAddress, newInvestorId);
  }

  /**
   * @notice Administrative call to disassociate an address from an investor
   *
   * @param investorAddress the address being disassociated
   *
   * @dev This reverts if the `investorAddress` is already disassociated
   */
  function removeAddress(
    address investorAddress
  ) external onlyRole(CONFIGURER_ROLE) {
    _setAddressToInvestorId(investorAddress, 0);
  }

  function _setAddressToInvestorId(
    address investorAddress,
    uint256 newInvestorId
  ) internal {
    if (investorAddress == address(0)) revert AddressCannotBeZero();
    if (addressToInvestorId[investorAddress] == newInvestorId) {
      revert AddressAlreadyAssociated();
    }

    uint256 previousInvestorId = addressToInvestorId[investorAddress];
    // If the address was previously associated with an investor, decrement the count
    // for that investor.
    if (previousInvestorId != 0) {
      --investorAddressCount[previousInvestorId];
      emit AddressRemovedFromInvestorId(
        investorAddress,
        previousInvestorId,
        investorAddressCount[previousInvestorId]
      );
    }

    // If the address is not being disassociated from all investors, increment the count
    // for the investor the address is being associated with.
    if (newInvestorId != 0) {
      ++investorAddressCount[newInvestorId];
      emit AddressToInvestorIdSet(
        investorAddress,
        newInvestorId,
        investorAddressCount[newInvestorId]
      );
    }
    addressToInvestorId[investorAddress] = newInvestorId;
  }

  /*//////////////////////////////////////////////////////////////
              Admin Overrides for specific investors
  //////////////////////////////////////////////////////////////*/

  /**
   * @notice Admin call to set the mint limit for a specific investor
   *
   * @param investorId The ID of the investor
   * @param mintLimit  The maximum amount that can be minted by the investor
   *                   in a given interval
   *
   * @dev Reverts if the investor ID is not initialized
   */
  function setInvestorMintLimit(
    uint256 investorId,
    uint256 mintLimit
  ) external onlyRole(CONFIGURER_ROLE) {
    RateLimit storage mintState = investorIdToMintState[investorId];
    if (mintState.lastResetTime == 0) {
      revert InvestorNotFound();
    }

    emit MintLimitSet(investorId, mintState.limit, mintLimit);
    mintState.limit = mintLimit;
  }

  /**
   * @notice Admin call to set the redemption limit for a specific investor
   *
   * @param investorId      The ID of the investor
   * @param redemptionLimit The maximum amount that can be redeemed by the investor
   *                        in a given interval
   *
   * @dev Reverts if the investor ID is not initialized
   */
  function setInvestorRedemptionLimit(
    uint256 investorId,
    uint256 redemptionLimit
  ) external onlyRole(CONFIGURER_ROLE) {
    RateLimit storage redemptionState = investorIdToRedemptionState[investorId];
    if (redemptionState.lastResetTime == 0) {
      revert InvestorNotFound();
    }

    emit RedemptionLimitSet(investorId, redemptionState.limit, redemptionLimit);
    redemptionState.limit = redemptionLimit;
  }

  /**
   * @notice Admin call to update the duration for the mint rate limiter
   *
   * @param investorId        The ID of the investor
   * @param mintLimitDuration The duration in seconds for the mint rate limiter
   *
   * @dev Reverts if the investor ID is not initialized
   */
  function setInvestorMintLimitDuration(
    uint256 investorId,
    uint256 mintLimitDuration
  ) external onlyRole(CONFIGURER_ROLE) {
    RateLimit storage mintState = investorIdToMintState[investorId];
    if (mintState.lastResetTime == 0) {
      revert InvestorNotFound();
    }

    emit MintLimitDurationSet(
      investorId,
      mintState.limitDuration,
      mintLimitDuration
    );
    mintState.limitDuration = mintLimitDuration;
  }

  /**
   * @notice Admin call to update the duration for the redemption rate limiter
   *
   * @param investorId              The ID of the investor
   * @param redemptionLimitDuration The duration in seconds for the mint rate limiter
   *
   * @dev Reverts if the investor ID is not initialized
   */
  function setInvestorRedemptionLimitDuration(
    uint256 investorId,
    uint256 redemptionLimitDuration
  ) external onlyRole(CONFIGURER_ROLE) {
    RateLimit storage redemptionState = investorIdToRedemptionState[investorId];
    if (redemptionState.lastResetTime == 0) {
      revert InvestorNotFound();
    }

    emit RedemptionLimitDurationSet(
      investorId,
      redemptionState.limitDuration,
      redemptionLimitDuration
    );
    redemptionState.limitDuration = redemptionLimitDuration;
  }

  /**
   * @notice Admin call to reset the mint rate limter for a specific investor
   *
   * @param investorId              The ID of the investor
   * @param prevLastMintResetTime   The existing last reset time for the mint rate limiter
   * @param prevMintAmount          The existing mint amount for the investor
   *
   * @dev Reverts if the investor ID is not initialized
   * @dev Reverts if the existing mint amount does not match the provided `prevMintAmount`
   *      (Front-running protection)
   * @dev Reverts if the existing last reset time does not match the provided `prevLastMintResetTime`
   *      (Front-running protection)
   */
  function resetInvestorMintState(
    uint256 investorId,
    uint256 prevLastMintResetTime,
    uint256 prevMintAmount
  ) external onlyRole(CONFIGURER_ROLE) {
    RateLimit storage mintState = investorIdToMintState[investorId];
    if (mintState.lastResetTime == 0) {
      revert InvestorNotFound();
    }

    if (mintState.currentAmount != prevMintAmount) {
      revert CurrentAmountMismatch();
    }

    if (mintState.lastResetTime != prevLastMintResetTime) {
      revert InvalidResetTime();
    }

    mintState.lastResetTime = block.timestamp;
    mintState.currentAmount = 0;
    emit MintStateReset(investorId, prevLastMintResetTime, block.timestamp);
  }

  /**
   * @notice Admin call to reset the redemption rate limiter for a specific investor
   *
   * @param investorId                  The ID of the investor
   * @param prevLastRedemptionResetTime The existing last reset time for the redemption rate limiter
   * @param prevRedemptionAmount        The existing redemption amount for the investor
   *
   * @dev Reverts if the investor ID is not initialized
   * @dev Reverts if the existing redemption amount does not match the provided `prevRedemptionAmount`
   *      (Front-running protection)
   * @dev Reverts if the existing last reset time does not match the provided `prevLastRedemptionResetTime`
   *      (Front-running protection)
   */
  function resetInvestorRedemptionState(
    uint256 investorId,
    uint256 prevLastRedemptionResetTime,
    uint256 prevRedemptionAmount
  ) external onlyRole(CONFIGURER_ROLE) {
    RateLimit storage redemptionState = investorIdToRedemptionState[investorId];
    if (redemptionState.lastResetTime == 0) {
      revert InvestorNotFound();
    }

    if (redemptionState.currentAmount != prevRedemptionAmount) {
      revert CurrentAmountMismatch();
    }

    if (redemptionState.lastResetTime != prevLastRedemptionResetTime) {
      revert InvalidResetTime();
    }

    redemptionState.lastResetTime = block.timestamp;
    redemptionState.currentAmount = 0;
    emit RedemptionStateReset(
      investorId,
      prevLastRedemptionResetTime,
      block.timestamp
    );
  }

  /*//////////////////////////////////////////////////////////////
                 Default State Values
  //////////////////////////////////////////////////////////////*/
  /**
   * @notice Admin call to update the default amount that can be minted during
   *         one duration
   *
   * @param _defaultMintLimit The new default mint limit for new investors
   */
  function setDefaultMintLimit(
    uint256 _defaultMintLimit
  ) external onlyRole(DEFAULT_ADMIN_ROLE) {
    emit DefaultMintLimitSet(defaultMintLimit, _defaultMintLimit);
    defaultMintLimit = _defaultMintLimit;
  }

  /**
   * @notice Admin call to update the default amount that can be redeemed during
   *         one duration
   *
   * @param _defaultRedemptionLimit The new default redemption limit for new investors
   */
  function setDefaultRedemptionLimit(
    uint256 _defaultRedemptionLimit
  ) external onlyRole(DEFAULT_ADMIN_ROLE) {
    emit DefaultRedemptionLimitSet(
      defaultRedemptionLimit,
      _defaultRedemptionLimit
    );
    defaultRedemptionLimit = _defaultRedemptionLimit;
  }

  /**
   * @notice Admin call to update the default duration for the mint rate limiter
   *
   * @param _defaultMintLimitDuration The new default mint limit duration for new investors
   */
  function setDefaultMintLimitDuration(
    uint256 _defaultMintLimitDuration
  ) external onlyRole(DEFAULT_ADMIN_ROLE) {
    emit DefaultMintLimitDurationSet(
      defaultMintLimitDuration,
      _defaultMintLimitDuration
    );
    defaultMintLimitDuration = _defaultMintLimitDuration;
  }

  /**
   * @notice Admin call to update the default duration for the redemption rate limiter
   *
   * @param _defaultRedemptionLimitDuration The new default redemption limit duration for new investors
   */
  function setDefaultRedemptionLimitDuration(
    uint256 _defaultRedemptionLimitDuration
  ) external onlyRole(DEFAULT_ADMIN_ROLE) {
    emit DefaultRedemptionLimitDurationSet(
      defaultRedemptionLimitDuration,
      _defaultRedemptionLimitDuration
    );
    defaultRedemptionLimitDuration = _defaultRedemptionLimitDuration;
  }

  /*//////////////////////////////////////////////////////////////
                          Events
  //////////////////////////////////////////////////////////////*/

  event MintStateUpdated(
    address indexed investorAddress,
    uint256 indexed investorId,
    uint256 prevAmount,
    uint256 currentAmount,
    uint256 remainingAmount
  );

  event RedemptionStateUpdated(
    address indexed investorAddress,
    uint256 indexed investorId,
    uint256 prevAmount,
    uint256 currentAmount,
    uint256 remainingAmount
  );

  event AddressToInvestorIdSet(
    address indexed investorAddress,
    uint256 indexed investorId,
    uint256 indexed investorWallets
  );

  event AddressRemovedFromInvestorId(
    address indexed investorAddress,
    uint256 indexed investorId,
    uint256 indexed investorWallets
  );

  event MintLimitSet(
    uint256 indexed investorId,
    uint256 oldLimit,
    uint256 newLimit
  );

  event RedemptionLimitSet(
    uint256 indexed investorId,
    uint256 oldLimit,
    uint256 newLimit
  );

  event MintLimitDurationSet(
    uint256 indexed investorId,
    uint256 oldDuration,
    uint256 newDuration
  );

  event RedemptionLimitDurationSet(
    uint256 indexed investorId,
    uint256 oldDuration,
    uint256 newDuration
  );

  event MintStateReset(
    uint256 indexed investorId,
    uint256 oldTime,
    uint256 newTime
  );

  event RedemptionStateReset(
    uint256 indexed investorId,
    uint256 oldTime,
    uint256 newTime
  );

  event DefaultMintLimitSet(uint256 oldLimit, uint256 newLimit);

  event DefaultRedemptionLimitSet(uint256 oldLimit, uint256 newLimit);

  event DefaultMintLimitDurationSet(uint256 oldDuration, uint256 newDuration);

  event DefaultRedemptionLimitDurationSet(
    uint256 oldDuration,
    uint256 newDuration
  );

  /*//////////////////////////////////////////////////////////////
                          Errors
  //////////////////////////////////////////////////////////////*/
  error AddressAlreadyAssociated();
  error AddressCannotBeZero();
  error AddressesNotProvided();
  error InvestorNotIntialized();
  error InvestorAlreadyInitialized();
  error InvestorNotFound();
  error InvalidInvestorId();
  error InvalidResetTime();
  error CurrentAmountMismatch();
  error InvalidAmount();
  error RateLimitExceeded();
}
