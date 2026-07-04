// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/IERC20MetadataUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/structs/EnumerableSetUpgradeable.sol";

import "./IgniteStorage.sol";
import "./IPriceFeed.sol";
import "./IStakedAvax.sol";


contract Ignite is
    AccessControlUpgradeable,
    ReentrancyGuardUpgradeable,
    PausableUpgradeable,
    IgniteStorage
{
    using SafeERC20Upgradeable for IERC20Upgradeable;
    using SafeERC20Upgradeable for IERC20MetadataUpgradeable;
    using EnumerableSetUpgradeable for EnumerableSetUpgradeable.AddressSet;

    bytes32 public constant ROLE_REGISTER_WITHOUT_COLLATERAL = keccak256("ROLE_REGISTER_WITHOUT_COLLATERAL");
    bytes32 public constant ROLE_RELEASE_LOCKED_TOKENS = keccak256("ROLE_RELEASE_LOCKED_TOKENS");
    bytes32 public constant ROLE_PAUSE = keccak256("ROLE_PAUSE");
    bytes32 public constant ROLE_UNPAUSE = keccak256("ROLE_UNPAUSE");

    uint public constant VALIDATION_DURATION_TWO_WEEKS = 86400 * 7 * 2;
    uint public constant VALIDATION_DURATION_FOUR_WEEKS = 86400 * 7 * 4;
    uint public constant VALIDATION_DURATION_EIGHT_WEEKS = 86400 * 7 * 8;
    uint public constant VALIDATION_DURATION_TWELVE_WEEKS = 86400 * 7 * 12;
    uint public constant VALIDATION_DURATION_ONE_YEAR = 86400 * 365;

    address public constant AVAX = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

    address public constant FEE_RECIPIENT = 0x3d80E0A69cf26CdBcCF90131912f3F85106613CF;

    /// @dev Emitted when a user request validation to be started for a node
    event NewRegistration(
        address registerer,
        string nodeId,
        bytes blsProofOfPossession,
        uint validationDuration,
        uint avaxAmount,
        address token,
        uint tokenAmount
    );

    /// @dev Emitted when a registration is removed from the array of registrations
    event RegistrationDeleted(string nodeId);

    /// @dev Emitted when the validation period for a node expires and the tokens are redeemable
    event RegistrationExpired(string nodeId);

    /// @dev Emitted when a user redeems their tokens after validation expiry or failed validation start attempt
    event Redeem(string nodeId, uint avaxAmount, address token, uint tokenAmount);

    /// @dev Emitted when a new fee payment option is added
    event PaymentTokenAdded(address token);

    /// @dev Emitted when an existing fee payment option is removed
    event PaymentTokenRemoved(address token);

    /// @dev Emitted when a price feed address is updated
    event PriceFeedChanged(
        address token,
        address oldFeed,
        address newFeed,
        uint oldMaxPriceAge,
        uint newMaxPriceAge
    );

    /// @dev Emitted when the QI price multiplier for fee payments is updated
    event QiPriceMultiplierUpdated(uint oldQiPriceMultiplier, uint newQiPriceMultiplier);


    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _sAVAX,
        address _qi,
        address _avaxPriceFeed,
        uint _maxAvaxPriceAge,
        address _qiPriceFeed,
        uint _maxQiPriceAge
    ) initializer public {
        __AccessControl_init();
        __ReentrancyGuard_init();
        __Pausable_init();

        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);

        sAVAX = IStakedAvax(_sAVAX);
        qi = IERC20Upgradeable(_qi);

        _initialisePriceFeeds(_avaxPriceFeed, _maxAvaxPriceAge, _qi, _qiPriceFeed, _maxQiPriceAge);

        maximumSubsidisationAmount = 50_000e18;
        qiPriceMultiplier = 10_000;

        registrations.push(
            Registration(
                address(0),
                "",
                0,
                false,
                TokenDepositDetails(
                    0,
                    address(0),
                    0
                ),
                0,
                0,
                0,
                false,
                false
            )
        );
    }

    function _initialisePriceFeeds(
        address _avaxPriceFeed,
        uint _maxAvaxPriceAge,
        address _qi,
        address _qiPriceFeed,
        uint _maxQiPriceAge
    ) internal onlyInitializing {
        IPriceFeed avaxPriceFeed = IPriceFeed(_avaxPriceFeed);
        IPriceFeed qiPriceFeed = IPriceFeed(_qiPriceFeed);

        priceFeeds[AVAX] = avaxPriceFeed;
        priceFeeds[_qi] = qiPriceFeed;

        maxPriceAges[AVAX] = _maxAvaxPriceAge;
        maxPriceAges[_qi] = _maxQiPriceAge;

        (, int256 avaxPrice, , uint avaxPriceUpdatedAt, ) = avaxPriceFeed.latestRoundData();
        require(avaxPrice > 0, "Invalid AVAX price");
        require(block.timestamp - avaxPriceUpdatedAt <= _maxAvaxPriceAge, "Stale AVAX price");

        (, int256 qiPrice, , uint qiPriceUpdatedAt, ) = qiPriceFeed.latestRoundData();
        require(qiPrice > 0, "Invalid QI price");
        require(block.timestamp - qiPriceUpdatedAt <= _maxQiPriceAge, "Stale QI price");
    }

    /**
     * @notice Register a node by paying a non-refundable fee in AVAX
     * @param  nodeId Node ID of the validator
     * @param  blsProofOfPossession BLS proof of possession (public key + signature)
     * @param  validationDuration Duration of the validation in seconds
     */
    function registerWithAvaxFee(
        string calldata nodeId,
        bytes calldata blsProofOfPossession,
        uint validationDuration
    ) external payable nonReentrant whenNotPaused {
        uint registrationFee = _getRegistrationFee(validationDuration);
        require(msg.value == registrationFee, "Invalid AVAX deposit");

        _registerWithChecks(
            nodeId,
            blsProofOfPossession,
            validationDuration,
            address(0),
            0
        );
    }

    /**
     * @notice Register a node by paying a non-refundable fee in a supported ERC-20 token
     * @param  tokenAddress ERC-20 payment token address
     * @param  nodeId Node ID of the validator
     * @param  blsProofOfPossession BLS proof of possession (public key + signature)
     * @param  validationDuration Duration of the validation in seconds
     */
    function registerWithErc20Fee(
        address tokenAddress,
        string calldata nodeId,
        bytes calldata blsProofOfPossession,
        uint validationDuration
    ) external nonReentrant whenNotPaused {
        require(paymentTokens.contains(tokenAddress), "Unsupported payment method");

        IERC20MetadataUpgradeable token = IERC20MetadataUpgradeable(tokenAddress);

        IPriceFeed avaxPriceFeed = priceFeeds[AVAX];
        IPriceFeed tokenPriceFeed = priceFeeds[tokenAddress];

        (, int256 avaxPrice, , uint avaxPriceUpdatedAt, ) = avaxPriceFeed.latestRoundData();
        (, int256 tokenPrice, , uint tokenPriceUpdatedAt, ) = tokenPriceFeed.latestRoundData();

        require(avaxPrice > 0 && tokenPrice > 0, "Invalid token price");
        require(block.timestamp - avaxPriceUpdatedAt <= maxPriceAges[AVAX], "Stale AVAX price");
        require(block.timestamp - tokenPriceUpdatedAt <= maxPriceAges[tokenAddress], "Stale token price");

        uint8 avaxDecimals = avaxPriceFeed.decimals();
        uint8 tokenDecimals = tokenPriceFeed.decimals();

        uint normalizedTokenPrice;
        if (tokenDecimals > avaxDecimals) {
            normalizedTokenPrice = uint(tokenPrice) / 10 ** (tokenDecimals - avaxDecimals);
        } else if (tokenDecimals < avaxDecimals) {
            normalizedTokenPrice = uint(tokenPrice) * 10 ** (avaxDecimals - tokenDecimals);
        } else {
            normalizedTokenPrice = uint(tokenPrice);
        }

        uint registrationFee = _getRegistrationFee(validationDuration);
        uint tokenAmount = uint(avaxPrice) * registrationFee / normalizedTokenPrice / 10 ** (18 - token.decimals());

        if (tokenAddress == address(qi)) {
            tokenAmount = tokenAmount * qiPriceMultiplier / 10_000;
        }

        require(tokenAmount > 0, "Token deposit must be non-zero");

        token.safeTransferFrom(msg.sender, address(this), tokenAmount);

        _registerWithChecks(
            nodeId,
            blsProofOfPossession,
            validationDuration,
            tokenAddress,
            tokenAmount
        );
    }

    /**
     * @notice Register a new node for validation without locking up tokens
     * @param  nodeId Node ID of the validator
     * @param  blsProofOfPossession BLS proof of possession (public key + signature)
     * @param  validationDuration Duration of the validation in seconds
     */
    function registerWithoutCollateral(
        string calldata nodeId,
        bytes calldata blsProofOfPossession,
        uint validationDuration
    ) external {
        require(hasRole(ROLE_REGISTER_WITHOUT_COLLATERAL, msg.sender), "ROLE_REGISTER_WITHOUT_COLLATERAL");
        require(
            validationDuration >= VALIDATION_DURATION_TWO_WEEKS &&
            validationDuration <= VALIDATION_DURATION_ONE_YEAR,
            "Invalid validation duration"
        );

        // Note that registering without collateral does not enforce the subsidisation cap
        // or the validation duration limits.
        _register(
            nodeId,
            blsProofOfPossession,
            validationDuration,
            address(0),
            0
        );
    }

    /**
     * @notice To be called if the validation fails and the registerer wants to reclaim their payment.
     * @param  nodeId Node ID of the validator
     */
    function redeemAfterExpiry(string calldata nodeId) external nonReentrant whenNotPaused {
        uint registrationIndex = registrationIndicesByNodeId[nodeId];
        require(registrationIndex != 0, "Registration not found");

        Registration storage registration = registrations[registrationIndex];

        require(registration.registerer == msg.sender, "Only original registerer can redeem");
        require(registration.withdrawable, "Not withdrawable");

        if (registration.tokenDeposits.avaxAmount > 0) {
            uint avaxDepositAmount = registration.tokenDeposits.avaxAmount;

            _deleteRegistration(nodeId);

            (bool success, ) = payable(msg.sender).call{ value: avaxDepositAmount }("");
            require(success);

            emit Redeem(nodeId, avaxDepositAmount, address(0), 0);
        } else {
            IERC20Upgradeable token = IERC20Upgradeable(registration.tokenDeposits.token);
            uint tokenDepositAmount = registration.tokenDeposits.tokenAmount;

            _deleteRegistration(nodeId);

            token.safeTransfer(msg.sender, tokenDepositAmount);

            emit Redeem(nodeId, 0, address(token), tokenDepositAmount);
        }
    }

    /**
     * @notice Returns the number of registrations
     * @return Number of registrations
     */
    function getTotalRegistrations() external view returns (uint) {
        // Subtract 1 because the first registration is a dummy registration
        return registrations.length - 1;
    }

    /**
     * @notice Returns the number of available ERC-20 payment tokens for the fee model
     * @return Number of payment methods
     */
    function getTotalErc20PaymentMethods() external view returns (uint) {
        return paymentTokens.length();
    }

    /**
     * @notice Get a list of all supported ERC-20 payment token for the fee model
     * @return A list of supported payment token addresses
     */
    function getErc20PaymentMethods() external view returns (address[] memory) {
        return paymentTokens.values();
    }

    /**
     * @notice Returns an array of registrations made by the given account
     * @param  account Account to query
     * @param  from Index of the first registration to return (inclusive)
     * @param  to Index of the last registration to return (exclusive)
     * @return Array of registrations
     */
    function getRegistrationsByAccount(
        address account,
        uint from,
        uint to
    ) external view returns (Registration[] memory) {
        uint numRegistrations = registeredNodeIdsByAccount[account].length;

        require(from < to, "From value must be lower than to value");
        require(to <= numRegistrations, "To value must be at most equal to the number of registrations");

        Registration[] memory accountRegistrations = new Registration[](to - from);

        for (uint i = from; i < to; ++i) {
            accountRegistrations[i - from] = registrations[registrationIndicesByNodeId[registeredNodeIdsByAccount[account][i]]];
        }

        return accountRegistrations;
    }

    /**
     * @notice Returns the number of registrations made by the given account
     * @param  account Account to query
     * @return Number of registrations
     */
    function getAccountRegistrationCount(address account) external view returns (uint) {
        return registeredNodeIdsByAccount[account].length;
    }

    /**
     * @notice Get the registration fee in AVAX for a given validation duration
     * @param  validationDuration Validation duration in seconds
     * @return Registration fee in AVAX
     */
    function getRegistrationFee(uint validationDuration) external view returns (uint) {
        return _getRegistrationFee(validationDuration);
    }

    /**
     * @notice Delete the registration after validation expiry or make the fee reclaimable
     *         if the validation failed.
     * @param  nodeId Node ID of the expired validator
     * @param  failed True if the validator could not be started, false otherwise
     */
    function releaseLockedTokens(
        string calldata nodeId,
        bool failed
    ) external whenNotPaused nonReentrant {
        require(hasRole(ROLE_RELEASE_LOCKED_TOKENS, msg.sender), "ROLE_RELEASE_LOCKED_TOKENS");

        uint registrationIndex = registrationIndicesByNodeId[nodeId];
        require(registrationIndex != 0, "Registration not found");

        Registration storage registration = registrations[registrationIndex];

        require(!registration.withdrawable, "Registration already withdrawable");

        emit RegistrationExpired(nodeId);

        // If a token deposit was not made, this is a registration by a privileged
        // account. Non-tokenised registrations do not count towards the subsidisation cap.
        if (registration.tokenDeposits.avaxAmount == 0 && registration.tokenDeposits.tokenAmount == 0) {
            _deleteRegistration(nodeId);

            return;
        }

        // If the failed flag is set, this means that a validator could not be started for the
        // given node ID and the principal fee should be returned to the user in whole.
        if (failed) {
            totalSubsidisedAmount -= 2000e18;
            registration.withdrawable = true;

            return;
        }

        totalSubsidisedAmount -= 2000e18;

        if (registration.tokenDeposits.avaxAmount > 0) {
            uint avaxDepositAmount = registration.tokenDeposits.avaxAmount;

            _deleteRegistration(nodeId);

            (bool success, ) = FEE_RECIPIENT.call{ value: avaxDepositAmount }("");
            require(success);
        } else {
            IERC20Upgradeable token = IERC20Upgradeable(registration.tokenDeposits.token);
            uint tokenDepositAmount = registration.tokenDeposits.tokenAmount;

            _deleteRegistration(nodeId);

            token.safeTransfer(FEE_RECIPIENT, tokenDepositAmount);
        }
    }

    /**
     * @notice Pause new registrations, releases, and redemptions.
     */
    function pause() external {
        require(hasRole(ROLE_PAUSE, msg.sender), "ROLE_PAUSE");

        _pause();
    }

    /**
     * @notice Resume new registrations, releases, and redemptions.
     */
    function unpause() external {
        require(hasRole(ROLE_UNPAUSE, msg.sender), "ROLE_UNPAUSE");

        _unpause();
    }

    /**
     * @notice Update the QI price multiplier used for fee payments in QI
     * @param newQiPriceMultiplier New price multiplier in bps
     */
    function setQiPriceMultiplier(uint newQiPriceMultiplier) external {
        require(hasRole(DEFAULT_ADMIN_ROLE, msg.sender), "DEFAULT_ADMIN_ROLE");
        require(newQiPriceMultiplier <= 10_000, "Invalid QI price multiplier");

        uint oldQiPriceMultiplier = qiPriceMultiplier;
        qiPriceMultiplier = newQiPriceMultiplier;

        emit QiPriceMultiplierUpdated(oldQiPriceMultiplier, newQiPriceMultiplier);
    }

    /**
     * @notice Add a new fee payment token option
     * @param  token ERC-20 token address
     * @param  priceFeedAddress Chainlink price feed address for the token
     * @param  maxPriceAge Maximum price feed response age
     */
    function addPaymentToken(
        address token,
        address priceFeedAddress,
        uint maxPriceAge
    ) external {
        require(hasRole(DEFAULT_ADMIN_ROLE, msg.sender), "DEFAULT_ADMIN_ROLE");
        require(token != address(0), "Cannot use the zero address for token");
        require(!paymentTokens.contains(token), "Token already exists");

        IPriceFeed priceFeed = IPriceFeed(priceFeedAddress);

        paymentTokens.add(token);
        priceFeeds[token] = priceFeed;
        maxPriceAges[token] = maxPriceAge;

        (, int256 price, , uint updatedAt, ) = priceFeed.latestRoundData();
        require(price > 0, "Invalid price");
        require(block.timestamp - updatedAt <= maxPriceAge, "Stale price");

        emit PaymentTokenAdded(token);
    }

    /**
     * @notice Remove an existing fee payment token option
     * @param  token Token to remove
     */
    function removePaymentToken(address token) external {
        require(hasRole(DEFAULT_ADMIN_ROLE, msg.sender), "DEFAULT_ADMIN_ROLE");
        require(paymentTokens.contains(token), "Invalid token");

        // AVAX and QI price feed configuration must not be deleted
        if (token != AVAX && token != address(qi)) {
            delete priceFeeds[token];
            delete maxPriceAges[token];
        }

        paymentTokens.remove(token);

        emit PaymentTokenRemoved(token);
    }

    /**
     * @notice Update the price feed configuration for a pre-existing payment token
     * @param  token ERC-20 token address
     * @param  priceFeedAddress Chainlink price feed address for the token
     * @param  maxPriceAge Maximum price feed response age
     */
    function configurePriceFeed(
        address token,
        address priceFeedAddress,
        uint maxPriceAge
    ) external {
        require(hasRole(DEFAULT_ADMIN_ROLE, msg.sender), "DEFAULT_ADMIN_ROLE");
        require(priceFeedAddress != address(0), "Zero address price feed");

        address oldPriceFeed = address(priceFeeds[token]);
        uint oldPriceMaxAge = maxPriceAges[token];

        require(oldPriceFeed != address(0), "Invalid token");

        IPriceFeed priceFeed = IPriceFeed(priceFeedAddress);

        priceFeeds[token] = priceFeed;
        maxPriceAges[token] = maxPriceAge;

        (, int256 price, , uint updatedAt, ) = priceFeed.latestRoundData();
        require(price > 0, "Invalid price");
        require(block.timestamp - updatedAt <= maxPriceAge, "Stale price");

        emit PriceFeedChanged(token, oldPriceFeed, priceFeedAddress, oldPriceMaxAge, maxPriceAge);
    }

    /**
     * @notice Store the registration using _register after validating the subsidisation
     *         cap and validation duration.
     * @param  nodeId ID of the node to register
     * @param  blsProofOfPossession BLS proof of possession (public key + signature)
     * @param  validationDuration Duration of the validation period
     * @param  token ERC-20 payment token address
     * @param  tokenAmount Amount of ERC-20 tokens deposited
     */
    function _registerWithChecks(
        string calldata nodeId,
        bytes calldata blsProofOfPossession,
        uint validationDuration,
        address token,
        uint tokenAmount
    ) internal {
        uint subsidisationAmount = 2000e18;

        require(
            totalSubsidisedAmount + subsidisationAmount <= maximumSubsidisationAmount,
            "Subsidisation cap exceeded"
        );

        require(
            validationDuration == VALIDATION_DURATION_TWO_WEEKS ||
            validationDuration == VALIDATION_DURATION_FOUR_WEEKS ||
            validationDuration == VALIDATION_DURATION_EIGHT_WEEKS ||
            validationDuration == VALIDATION_DURATION_TWELVE_WEEKS,
            "Invalid staking duration"
        );

        totalSubsidisedAmount += subsidisationAmount;

        _register(
            nodeId,
            blsProofOfPossession,
            validationDuration,
            token,
            tokenAmount
        );
    }

    /**
     * @notice Store the registration
     * @param  nodeId ID of the node to register
     * @param  blsProofOfPossession BLS proof of possession (public key + signature)
     * @param  validationDuration Duration of the validation period
     * @param  token Payment token address
     * @param  tokenAmount Amount of ERC-20 tokens deposited
     */
    function _register(
        string calldata nodeId,
        bytes calldata blsProofOfPossession,
        uint validationDuration,
        address token,
        uint tokenAmount
    ) internal whenNotPaused {
        uint registrationIndex = registrationIndicesByNodeId[nodeId];
        require(
            registrationIndex == 0 && bytes(nodeId).length != 0,
            "Node already registered"
        );

        require(blsProofOfPossession.length == 144, "Invalid BLS proof of possession");

        registrationIndicesByNodeId[nodeId] = registrations.length;
        registrations.push(
            Registration(
                msg.sender,
                nodeId,
                validationDuration,
                true,
                TokenDepositDetails(
                    msg.value,
                    token,
                    tokenAmount
                ),
                0,
                0,
                0,
                false,
                false
            )
        );

        blsProofOfPossessionByNodeId[nodeId] = blsProofOfPossession;

        accountRegistrationIndicesByNodeId[nodeId] = registeredNodeIdsByAccount[msg.sender].length;
        registeredNodeIdsByAccount[msg.sender].push(nodeId);

        emit NewRegistration(
            msg.sender,
            nodeId,
            blsProofOfPossession,
            validationDuration,
            msg.value,
            token,
            tokenAmount
        );
    }

    /**
     * @dev   Remove a node registration. Note that all tokens must have been
     *        sent back to the original registerer before deleting the registration
     *        entry in order not to lose the tokens.
     * @param nodeId Node ID to delete
     */
    function _deleteRegistration(string calldata nodeId) internal {
        uint registrationIndex = registrationIndicesByNodeId[nodeId];
        require(registrationIndex != 0);

        address registerer = registrations[registrationIndex].registerer;

        uint accountRegistrationIndex = accountRegistrationIndicesByNodeId[nodeId];
        uint accountRegistrationLastIndex = registeredNodeIdsByAccount[registerer].length - 1;

        if (accountRegistrationIndex != accountRegistrationLastIndex) {
            string memory lastNodeId = registeredNodeIdsByAccount[registerer][accountRegistrationLastIndex];
            registeredNodeIdsByAccount[registerer][accountRegistrationIndex] = lastNodeId;
            accountRegistrationIndicesByNodeId[lastNodeId] = accountRegistrationIndex;
        }

        registeredNodeIdsByAccount[registerer].pop();

        delete accountRegistrationIndicesByNodeId[nodeId];
        delete blsProofOfPossessionByNodeId[nodeId];

        uint totalRegistrations = registrations.length - 1;
        if (registrationIndex != totalRegistrations) {
            string memory lastNodeId = registrations[totalRegistrations].nodeId;
            registrations[registrationIndex] = registrations[totalRegistrations];
            registrationIndicesByNodeId[lastNodeId] = registrationIndex;
        }

        registrations.pop();

        delete registrationIndicesByNodeId[nodeId];

        emit RegistrationDeleted(nodeId);
    }

    /**
     * @notice Get the registration fee in AVAX for a given validation duration
     * @param  validationDuration Validation duration in seconds
     * @return Registration fee in AVAX
     */
    function _getRegistrationFee(uint validationDuration) internal view returns (uint) {
        if (validationDuration == VALIDATION_DURATION_TWO_WEEKS) {
            return 16e18;
        }

        if (validationDuration == VALIDATION_DURATION_FOUR_WEEKS) {
            return 30e18;
        }

        if (validationDuration == VALIDATION_DURATION_EIGHT_WEEKS) {
            return 56e18;
        }

        if (validationDuration == VALIDATION_DURATION_TWELVE_WEEKS) {
            return 80e18;
        }

        revert("Invalid validation duration");
    }
}
