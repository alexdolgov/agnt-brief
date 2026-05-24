// SPDX-License-Identifier: MIT

pragma solidity 0.8.21;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
import "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "solady/src/utils/Clone.sol";
import "./RankToken.sol";
import "./RankFactory.sol";

/// @title RankStrategy Contract
/// @notice This contract manages the strategies for the Rank Trading Platform, allowing users to invest, unlock, and withdraw assets based on predefined strategies.
/// @dev Inherits from OwnableUpgradeable, ReentrancyGuardUpgradeable, and Clone.
contract RankStrategy is OwnableUpgradeable, ReentrancyGuardUpgradeable, Clone {
    using SafeERC20 for ERC20;

    /// @notice Thrown when an operation is attempted while the contract is disabled.
    error Disabled();

    /// @notice Thrown when an unauthorized address attempts an operation.
    error Unauthorized();

    /// @notice Thrown when the provided fees are invalid.
    error InvalidFees();

    /// @notice Thrown when the provided address is invalid.
    error InvalidAddress();

    /// @notice Thrown when the provided times are before the current time.
    error InvalidTimesBeforeCurrent();

    /// @notice Thrown when the provided times are out of range.
    error InvalidTimesOutOfRange();

    /// @notice Thrown when the provided duration is invalid.
    error InvalidTimesDuration();

    /// @notice Thrown when the provided asset amount is invalid.
    error InvalidAssetAmount();

    /// @notice Thrown when an operation is attempted on a strategy that is not active.
    error StrategyNotActive();

    /// @notice Thrown when the provided shares are invalid.
    error InvalidShares();

    /// @notice Thrown when unlocking is not allowed.
    error UnlockNotAllowed();

    /// @notice Thrown when withdrawal is not allowed.
    error WithdrawalNotAllowed();

    /// @notice Thrown when the contract is waiting for funds.
    error WaitingForFunds();

    /// @notice Thrown when the provided checksum is invalid.
    error InvalidChecksum();

    /// @notice Thrown when the strategy is not extendable.
    error StrategyNotExtendable();

    /// @notice Thrown when the value has not changed.
    error ValueNotChanged();

    /// @notice Thrown when the change log is not available.
    error ChangeLogNotAvailable();

    /// @notice Thrown when the provided asset is invalid.
    error InvalidAsset();

    /// @notice Thrown when the share price variation is invalid.
    /// @param currentSharePrice The current share price.
    /// @param newSharePrice The new share price.
    /// @param variationBP The variation in basis points.
    error InvalidSharePriceVariation(
        uint256 currentSharePrice,
        uint256 newSharePrice,
        int256 variationBP
    );

    /// @notice Thrown when the user is not premium.
    error UserNotPremium();

    /// @notice Emitted when a strategy is created.
    /// @param user The address of the user who created the strategy.
    event StrategyCreation(address indexed user);

    /// @notice Emitted when an investment request is made.
    /// @param user The address of the user making the investment.
    /// @param creator The address of the strategy creator.
    /// @param amount The amount of the investment.
    /// @param creatorFee The fee for the creator.
    /// @param platformFee The fee for the platform.
    /// @param _referral The address of the referral.
    event InvestRequest(
        address indexed user,
        address indexed creator,
        uint256 amount,
        uint256 creatorFee,
        uint256 platformFee,
        address indexed _referral
    );

    /// @notice Emitted when an investment is confirmed.
    /// @param user The address of the user making the investment.
    /// @param creator The address of the strategy creator.
    /// @param amount The amount of the investment.
    /// @param shares The number of shares allocated.
    event InvestConfirm(
        address indexed user,
        address indexed creator,
        uint256 amount,
        uint256 shares
    );

    /// @notice Emitted when an unlock request is made.
    /// @param user The address of the user making the request.
    /// @param shares The number of shares to unlock.
    event UnlockRequest(address indexed user, uint256 shares);

    /// @notice Emitted when an unlock is confirmed.
    /// @param user The address of the user making the request.
    /// @param shares The number of shares unlocked.
    /// @param assetAmount The amount of assets unlocked.
    /// @param assetProfit The profit from the assets.
    /// @param creatorPerformanceFee The performance fee for the creator.
    /// @param platformPerformanceFee The performance fee for the platform.
    /// @param assetLoss The loss from the assets.
    event UnlockConfirm(
        address indexed user,
        uint256 shares,
        uint256 assetAmount,
        uint256 assetProfit,
        uint256 creatorPerformanceFee,
        uint256 platformPerformanceFee,
        uint256 assetLoss
    );

    /// @notice Emitted when a withdrawal is made.
    /// @param user The address of the user making the withdrawal.
    /// @param assetAmount The amount of assets withdrawn.
    event Withdraw(address indexed user, uint256 assetAmount);

    /// @notice Emitted when the enabled status is changed.
    /// @param user The address of the user changing the status.
    /// @param enabled The new enabled status.
    event EnabledChange(address indexed user, bool enabled);

    /// @notice Emitted when the user fees are changed.
    /// @param user The address of the user changing the fees.
    /// @param userFees The new user fees.
    event UserFeesChange(address indexed user, Fees userFees);

    /// @notice Emitted when the expiration time is changed.
    /// @param user The address of the user changing the expiration.
    /// @param expiration The new expiration time.
    event ExpirationChange(address indexed user, uint256 expiration);

    /// @notice Emitted when the backend address is changed.
    /// @param oldBackendAddress The old backend address.
    /// @param newBackendAddress The new backend address.
    event BackendAddressChange(
        address indexed oldBackendAddress,
        address indexed newBackendAddress
    );

    /// @notice Emitted when the managed address is changed.
    /// @param oldManagedAddress The old managed address.
    /// @param newManagedAddress The new managed address.
    event ManagedAddressChange(
        address indexed oldManagedAddress,
        address indexed newManagedAddress
    );

    /// @notice Emitted when the strategy values are updated.
    /// @param user The address of the user updating the values.
    /// @param totalAssetAmount The total amount of assets.
    /// @param availUpdate Whether the update is available.
    /// @param lastAvailUpdate The last available update time.
    event StrategyValuesUpdate(
        address indexed user,
        uint256 totalAssetAmount,
        bool availUpdate,
        uint256 lastAvailUpdate
    );

    /// @notice Emitted when the extendable status is changed.
    /// @param user The address of the user changing the status.
    /// @param extendable The new extendable status.
    event ExtendableChange(address indexed user, bool extendable);

    /// @notice Emitted when the premium strategy status is changed.
    /// @param user The address of the user changing the status.
    /// @param premium The new premium strategy status.
    event PremiumChange(address indexed user, bool premium);

    /// @notice Emitted when tokens are extracted.
    /// @param user The address of the user extracting the tokens.
    /// @param asset The address of the asset being extracted.
    /// @param to The address to send the extracted tokens.
    /// @param amount The amount of tokens extracted.
    event ExtractToken(
        address indexed user,
        ERC20 indexed asset,
        address indexed to,
        uint256 amount
    );

    /// @notice Emitted when the strategy is changed.
    /// @param user The address of the user changing the strategy.
    /// @param blockNumber The block number when the strategy was changed.
    event StrategyChange(address indexed user, uint256 blockNumber);

    /// @notice Ensures the contract is enabled.
    modifier onlyWhenEnabled() {
        if (!enabled) {
            revert Disabled();
        }
        _;
    }

    /// @notice Ensures the strategy is active.
    modifier onlyWhenActive() {
        if (
            !(times.start <= block.timestamp &&
                times.expiration >= block.timestamp)
        ) {
            revert StrategyNotActive();
        }
        _;
    }

    /// @notice Ensures the caller is the backend address.
    modifier onlyBackend() {
        if (msg.sender != backendAddress) {
            revert Unauthorized();
        }
        _;
    }

    /// @notice Ensures the caller is the creator address.
    modifier onlyCreator() {
        if (msg.sender != creatorAddress) {
            revert Unauthorized();
        }
        _;
    }

    /// @notice Validates that the provided address is not the zero address.
    /// @param _address The address to validate.
    modifier onlyValidAddress(address _address) {
        if (_address == address(0)) {
            revert InvalidAddress();
        }
        _;
    }

    /// @notice Validates that the provided fees are within acceptable ranges.
    /// @notice The deposit fee must be between 1% (100 basis points) and 3% (300 basis points),
    /// the performance fee must be between 10% (1000 basis points) and 100% (10000 basis points),
    /// and the owner deposit fee must be less than 100% (10000 basis points).
    /// @param _fees The fees to validate.
    modifier onlyValidFees(Fees memory _fees) {
        if (
            _fees.depositFeeBP < 100 ||
            _fees.depositFeeBP > 300 ||
            _fees.performanceFeeBP < 1000 ||
            _fees.performanceFeeBP > 10000 ||
            _fees.ownerDepositFeeBP > 10000
        ) {
            revert InvalidFees();
        }
        _;
    }

    /// @notice Validates that the provided times are within acceptable ranges.
    /// @param _times The times to validate.
    /// @param _maxDuration The maximum duration allowed.
    /// @dev The `_maxDuration` parameter specifies the maximum allowed duration between the start and expiration times.
    modifier onlyValidTimes(Times memory _times, uint256 _maxDuration) {
        if (_times.expiration <= block.timestamp) {
            revert InvalidTimesBeforeCurrent();
        }
        if (
            _times.expiration <= _times.start ||
            _times.expiration > _times.start + _maxDuration
        ) {
            revert InvalidTimesOutOfRange();
        }
        // Check if the expiration time is less than 30 days from now
        bool isExpirationTooSoon = uint40(block.timestamp + 30 days) >
            _times.expiration;

        // Check if the duration between start and expiration is less than 30 days
        bool isDurationTooShort = _times.expiration - _times.start <
            uint40(30 days);

        if (isExpirationTooSoon || isDurationTooShort) {
            revert InvalidTimesDuration();
        }
        _;
    }

    struct Totals {
        uint256 shares;
        uint256 assetAmount;
        uint256 withdrawableAssetAmount;
        uint256 lastAvailUpdate;
    }

    struct Fees {
        uint16 depositFeeBP;
        uint16 performanceFeeBP;
        uint16 ownerDepositFeeBP;
    }

    struct ProfitInfo {
        uint256 assetInvestment;
        uint256 assetProfit;
        uint256 creatorPerformanceFee;
        uint256 platformPerformanceFee;
        uint256 assetLoss;
        uint256 assetPriceUSD;
        uint256 withdrawableAssetAmount;
    }

    struct Unlocked {
        uint256 shares;
        uint256 assetAmount;
        uint256 assetProfit;
        uint256 creatorPerformanceFee;
        uint256 platformPerformanceFee;
        uint256 assetLoss;
        uint256 nextWithdrawalAllowed;
        uint256 withdrawableAssetAmount;
    }

    struct UserInfo {
        uint256 assetAmount;
        uint256 shares;
        uint256 avgSharePrice;
        Unlocked unlocked;
        uint256 requestedInvestAmount;
        uint256 requestedUnlockShares;
    }

    struct Times {
        uint256 start;
        uint256 expiration;
        uint256 lastUpdateBlock;
    }

    struct ChangeLog {
        uint256 blockNumber;
        bytes strategyChange;
        uint256 costRAN;
        uint256 priceRAN;
    }

    // Immutable data
    ERC20 public asset;
    RankToken public rankToken;
    AggregatorV3Interface public assetPriceFeed;
    address public rankFactory;
    uint256 public constant MAX_DURATION = 31536000;

    // Platform data, modifier: backendAddress
    Fees public platformFees;
    address public managedAddress;
    address public backendAddress;
    uint256 public sharePrice;
    Times public times;
    bool public extendable = true;
    uint256 public strategyCost;
    bool public premium = false;

    // Strategy data, modifier: creatorAddress
    address public creatorAddress;
    Fees public userFees;
    bool public enabled;
    Totals public totals;
    uint256 initialDeposit;
    mapping(uint256 => ChangeLog) changeLogs;
    uint256 public changeLogsCount;
    mapping(uint256 => address) public requestedInvests;
    uint256 public requestedInvestsCount;
    mapping(uint256 => address) public requestedUnlocks;
    uint256 public requestedUnlocksCount;

    // Users data, modifier: peers
    mapping(address => UserInfo) public userInfo;

    /// @notice Constructor to initialize the RankStrategy contract.
    /// @dev This constructor sets the backend address for the contract.
    /// @param _backendAddress The address of the backend, which is used for managing platform-specific operations.
    constructor(address _backendAddress) onlyValidAddress(_backendAddress) {
        backendAddress = _backendAddress;
        _disableInitializers();
    }

    /// @notice Initializes the RankStrategy contract with the provided settings.
    /// @dev This function sets up the initial state of the contract, including fees, times, creator address, and rank factory address.
    /// @param _userFees The fees for the user, including deposit fee (in basis points), performance fee (in basis points), and owner deposit fee (in basis points).
    /// @param _times The times for the strategy, including start time (timestamp), expiration time (timestamp), and last update block (block number).
    /// @param _creatorAddress The address of the creator who will own and manage the strategy. This address will have special permissions within the contract.
    /// @param _rankFactory The address of the RankFactory contract, which is responsible for creating and managing RankStrategy contracts.
    function initialize(
        Fees memory _userFees,
        Times memory _times,
        address _creatorAddress,
        address _rankFactory
    )
        public
        initializer
        onlyValidFees(_userFees)
        onlyValidTimes(_times, MAX_DURATION)
        onlyValidAddress(_creatorAddress)
    {
        extendable = true;
        asset = ERC20(_getArgAddress(0));
        rankToken = RankToken(_getArgAddress(20));
        assetPriceFeed = AggregatorV3Interface(_getArgAddress(40));
        platformFees = Fees(
            _getArgUint16(60),
            _getArgUint16(62),
            _getArgUint16(64)
        );
        managedAddress = _getArgAddress(66);
        backendAddress = _getArgAddress(86);
        userFees = _userFees;
        times = _times;
        enabled = true;
        creatorAddress = _creatorAddress;
        rankFactory = _rankFactory;
        _transferOwnership(_creatorAddress);
        emit StrategyCreation(_creatorAddress);
    }

    // Manager

    /// @notice Sets the backend address.
    /// @dev This function allows the backend to update the backend address used for managing platform-specific operations.
    /// @param _backendAddress The new backend address. This address is used for managing platform-specific operations and has special permissions within the contract.
    function setBackendAddress(
        address _backendAddress
    ) external onlyBackend onlyValidAddress(_backendAddress) {
        address oldBackendAddress = backendAddress;
        backendAddress = _backendAddress;
        emit BackendAddressChange(oldBackendAddress, _backendAddress);
    }

    /// @notice Sets the managed address.
    /// @dev This function allows the backend to update the managed address used for managing assets.
    /// @param _managedAddress The new managed address. This is the address where trading operations happen and where the assets are stored.
    function setManagedAddress(
        address _managedAddress
    ) external onlyBackend onlyValidAddress(_managedAddress) {
        address oldManagedAddress = managedAddress;
        managedAddress = _managedAddress;
        emit ManagedAddressChange(oldManagedAddress, _managedAddress);
    }

    /// @notice Updates the strategy values based on the total asset amount and updates the availability of funds.
    /// @dev This function updates the total asset amount and share price, and handles requested investments and unlocks.
    /// @param _totalAssetAmount The total amount of assets currently held in the strategy.
    /// @param _availUpdate A boolean indicating whether the funds in the smart contract have been updated.
    /// @param _operationsLimit The maximum number of operations to process in a single call. 0 means no limit.
    function updateStrategyValues(
        uint256 _totalAssetAmount,
        bool _availUpdate,
        uint256 _operationsLimit
    ) external onlyBackend nonReentrant {
        totals.assetAmount = _totalAssetAmount;
        if (totals.shares != 0) {
            uint256 _sharePrice = (totals.assetAmount * 1e12) / totals.shares;
            int256 sharePriceVariationBP = int256(
                uint256((_sharePrice * 1e4) / sharePrice)
            ) - 1e4;
            if (sharePriceVariationBP > 3000 || sharePriceVariationBP < -3000) {
                revert InvalidSharePriceVariation({
                    currentSharePrice: sharePrice,
                    newSharePrice: _sharePrice,
                    variationBP: sharePriceVariationBP
                });
            }
            sharePrice = _sharePrice;
        }
        times.lastUpdateBlock = block.number;
        if (_availUpdate) {
            totals.lastAvailUpdate = block.number;
        }
        _handleRequestedInvests(_operationsLimit);
        _handleRequestedUnlocks(_operationsLimit);
        emit StrategyValuesUpdate(
            msg.sender,
            _totalAssetAmount,
            _availUpdate,
            totals.lastAvailUpdate
        );
    }

    /// @notice Sets whether the strategy is extendable.
    /// @dev This function allows the backend to update the extendable status of the strategy.
    /// @param _extendable The new extendable status.
    /// If set to true, the strategy can be extended beyond its previous expiration time.
    /// If set to false, the strategy cannot be extended and will end at the expiration time set.
    function setExtendable(bool _extendable) external onlyBackend {
        if (extendable == _extendable) {
            revert ValueNotChanged();
        }
        extendable = _extendable;
        emit ExtendableChange(msg.sender, _extendable);
    }

    /// @notice Sets the premium strategy status.
    /// @dev This function allows the backend to update the premium strategy status.
    /// @param _premium The new premium strategy status.
    function setPremium(bool _premium) external onlyBackend {
        premium = _premium;
        emit PremiumChange(msg.sender, _premium);
    }

    /// @notice Extracts tokens from the contract.
    /// @dev This function allows the backend to extract a specified amount of tokens from the contract and send them to a specified address.
    /// @param _asset The ERC20 token contract address of the asset to extract.
    /// @param _to The recipient address to send the extracted tokens.
    /// @param _amount The amount of tokens to extract and transfer.
    function extractToken(
        ERC20 _asset,
        address _to,
        uint256 _amount
    ) external onlyBackend nonReentrant {
        _asset.safeTransfer(_to, _amount);
        emit ExtractToken(msg.sender, _asset, _to, _amount);
    }

    // Creator

    /// @notice Sets the enabled status of the strategy.
    /// @dev This function allows the creator to enable or disable the strategy.
    /// @dev If the strategy is disabled, users will not be able to invest in the strategy, but existing investments will remain active and will be available for unlocking and withdrawal.
    /// @param _enabled A boolean value representing the new enabled status of the strategy.
    /// If set to true, the strategy will be enabled, allowing users to invest in it.
    /// If set to false, the strategy will be disabled, preventing new investments but allowing existing investments to be unlocked and withdrawn.
    function setEnabled(bool _enabled) external onlyCreator {
        enabled = _enabled;
        emit EnabledChange(msg.sender, _enabled);
    }

    /// @notice Sets the user fees for the strategy.
    /// @dev This function allows the creator to update the fees that users will be charged for investing in the strategy.
    /// @dev The `_userFees` parameter contains the deposit fee, performance fee, and owner deposit fee in basis points.
    /// @param _userFees The new user fees, including:
    /// - `depositFeeBP`: The deposit fee in basis points (1 basis point = 0.01%).
    /// - `performanceFeeBP`: The performance fee in basis points.
    /// - `ownerDepositFeeBP`: The owner deposit fee in basis points.
    function setUserFees(
        Fees memory _userFees
    ) external onlyValidFees(_userFees) onlyCreator {
        userFees = _userFees;
        emit UserFeesChange(msg.sender, _userFees);
    }

    /// @notice Sets the expiration times for the strategy.
    /// @dev This function updates the expiration times for the strategy, ensuring they are within the valid range.
    /// @param _times The new times for the strategy, including start time, expiration time, and last update block.
    function _setExpiration(
        Times memory _times
    ) internal onlyValidTimes(_times, MAX_DURATION) {
        times = _times;
    }

    /// @notice Sets the expiration time for the strategy.
    /// @dev This function updates the expiration time for the strategy, ensuring it is within the valid range.
    /// @param _expiration The new expiration time in seconds since the Unix epoch.
    /// This value represents the time at which the strategy will expire and no longer accept new investments.
    /// If the expiration time is extended beyond the current expiration and the strategy is not extendable, the transaction will revert.
    function setExpiration(
        uint256 _expiration
    ) external onlyCreator nonReentrant {
        if (_expiration > times.expiration && !extendable) {
            revert StrategyNotExtendable();
        }
        uint256 price = RankFactory(rankFactory).getRankTokenPrice();
        if (price != 0) {
            uint256 RANcost = (strategyCost * 1e18) / price;
            if (RANcost != 0) {
                ERC20(rankToken).safeTransferFrom(
                    msg.sender,
                    backendAddress,
                    RANcost
                );
            }
        }
        Times memory _times = times;
        _times.expiration = _expiration;
        _setExpiration(_times);
        emit ExpirationChange(msg.sender, _expiration);
    }

    /// @notice Sets the strategy details, and updates the strategy cost.
    /// @dev Records the strategy details in the change log by saving a compressed base64 encoded string sent by the backend.
    /// @param _user The address of the user setting the strategy. This is typically the creator of the strategy.
    /// @param _strategy The strategy details in a compressed base64 encoded string. This string contains the encoded details of the strategy configuration.
    /// @param _costRAN The cost of the strategy in RAN tokens. This represents the amount of RAN tokens required to set or update the strategy.
    /// @param _checksum The checksum of the strategy to ensure data integrity. This is a hash value used to verify that the strategy details have not been tampered with.
    function _setStrategy(
        address _user,
        string memory _strategy,
        uint256 _costRAN,
        bytes32 _checksum
    ) internal {
        bytes32 checksum = RankFactory(rankFactory).checksum(
            _strategy,
            _costRAN,
            _user
        );
        if (checksum != _checksum) {
            revert InvalidChecksum();
        }
        uint256 price = RankFactory(rankFactory).getRankTokenPrice();
        strategyCost += (_costRAN * price) / 1e18;
        changeLogs[changeLogsCount++] = ChangeLog(
            block.number,
            bytes(_strategy),
            _costRAN,
            price
        );
        emit StrategyChange(_user, block.number);
    }

    /// @notice Sets the strategy details and updates the strategy cost.
    /// @dev Records the strategy details in the change log by saving a compressed base64 encoded string sent by the backend.
    /// @param _strategy The strategy details in a compressed base64 encoded string. This string contains the encoded details of the strategy configuration.
    /// @param _costRAN The cost of the strategy in RAN tokens. This represents the amount of RAN tokens required to set or update the strategy.
    /// @param _checksum The checksum of the strategy to ensure data integrity. This is a hash value used to verify that the strategy details have not been tampered with.
    function setStrategy(
        string calldata _strategy,
        uint256 _costRAN,
        bytes32 _checksum
    ) external onlyCreator nonReentrant {
        _setStrategy(msg.sender, _strategy, _costRAN, _checksum);
    }

    /// @notice Initializes the strategy with the provided details.
    /// @dev This function sets the initial share price, processes the initial deposit, and records the strategy details.
    /// @param _strategy The strategy details in a compressed base64 encoded string. This string contains the encoded details of the strategy configuration.
    /// @param _costRAN The cost in RAN tokens for the strategy. This represents the amount of RAN tokens required to set or update the strategy.
    /// @param _checksum The checksum of the strategy to ensure data integrity. This is a hash value used to verify that the strategy details have not been tampered with.
    /// @param _initialDeposit The initial deposit amount in the asset. This represents the amount of the asset that the creator initially deposits into the strategy.
    function initStrategy(
        string calldata _strategy,
        uint256 _costRAN,
        bytes32 _checksum,
        uint256 _initialDeposit
    ) external reinitializer(2) {
        sharePrice = 1e18;
        initialDeposit = _initialDeposit;
        uint256 amount;
        (amount, , ) = _splitAmountFees(creatorAddress, _initialDeposit);
        userInfo[creatorAddress].requestedInvestAmount = amount;
        _handleRequestedInvest(creatorAddress);
        _setStrategy(creatorAddress, _strategy, _costRAN, _checksum);
    }

    /// @notice Gets the change log for the specified ID.
    /// @dev This function retrieves the change log details for a given ID.
    /// @param _id The ID of the change log to retrieve. This ID corresponds to the index of the change log entry in the `changeLogs` mapping.
    /// The ID must be less than the total number of change logs (`changeLogsCount`).
    /// @return changeLog The change log details, including block number, strategy change, cost in RAN, and price in RAN.
    function getChangeLog(
        uint256 _id
    ) external view returns (ChangeLog memory changeLog) {
        if (msg.sender != creatorAddress && msg.sender != backendAddress) {
            revert Unauthorized();
        }
        if (_id >= changeLogsCount) {
            revert ChangeLogNotAvailable();
        }
        changeLog = changeLogs[_id];
    }

    // User

    /// @notice Gets the current price of the asset from the Chainlink price feed.
    /// @dev This function retrieves the latest price of the asset from the Chainlink price feed and adjusts it to 18 decimals.
    /// @return assetPrice The current price of the asset in 18 decimals.
    /// The price is fetched from the Chainlink price feed and scaled according to the feed's decimals.
    function getAssetPrice() internal view returns (uint256 assetPrice) {
        // AggregatorV3Interface pf = AggregatorV3Interface(assetPriceFeed);
        (, int256 price, , , ) = assetPriceFeed.latestRoundData();
        uint8 decimals = 18 - assetPriceFeed.decimals();
        assetPrice = uint256(price) * 10 ** uint256(decimals);
    }

    /// @notice Splits the amount into the actual amount, creator fee, and platform fee.
    /// @dev This function calculates the fees based on the user type (creator or regular user) and the provided amount.
    /// @param _user The address of the user. If the user is the creator, the owner deposit fee is applied.
    /// @param _amount The total amount of the asset to be split into the actual investment amount, creator fee, and platform fee.
    /// @return amount The actual investment amount after deducting the applicable fees.
    /// @return creatorUserFee The fee allocated to the creator, calculated based on the deposit fee.
    /// @return platformFee The fee allocated to the platform, calculated based on the deposit fee and owner deposit fee.
    function _splitAmountFees(
        address _user,
        uint256 _amount
    )
        internal
        view
        returns (uint256 amount, uint256 creatorUserFee, uint256 platformFee)
    {
        if (_user == creatorAddress) {
            platformFee = (_amount * platformFees.ownerDepositFeeBP) / 1e4;
            amount = _amount - platformFee;
        } else {
            if (userFees.depositFeeBP != 0) {
                uint256 userFee = (_amount * userFees.depositFeeBP) / 1e4;
                platformFee = (userFee * platformFees.depositFeeBP) / 1e4;
                creatorUserFee = userFee - platformFee;
                amount = _amount - userFee;
            }
        }
    }

    /// @notice Handles all requested investments.
    /// @dev This function iterates through the list of requested investments and processes each one.
    /// The users are processed in reverse order to ensure that every user's investment request is handled correctly.
    /// After each cycle, the requestedInvestsCount is decremented by the number of operations processed.
    /// It updates the user's asset amount, shares, and average share price based on the requested investment amount.
    /// Specifically, for each requested investment:
    /// - The user's requested investment amount is added to their total asset amount.
    /// - The user's shares are calculated based on the current share price and added to their total shares.
    /// - The user's average share price is recalculated based on the new total asset amount and shares.
    /// - The total asset amount and shares in the strategy are updated accordingly.
    /// - An InvestConfirm event is emitted for each processed investment.
    /// @param _operationsLimit The maximum number of operations to process in a single call. 0 means no limit.
    function _handleRequestedInvests(uint256 _operationsLimit) internal {
        if (_operationsLimit == 0 || _operationsLimit > requestedInvestsCount) {
            _operationsLimit = requestedInvestsCount;
        }
        for (
            uint256 t = requestedInvestsCount;
            t > requestedInvestsCount - _operationsLimit;
            t--
        ) {
            _handleRequestedInvest(requestedInvests[t - 1]);
        }
        requestedInvestsCount -= _operationsLimit;
    }

    /// @notice Handles a requested investment for a user.
    /// @notice It buys shares for the user based on the requested investment amount and the previously calculated share price.
    /// @dev This function processes the requested investment amount for a user, updates the user's asset amount, shares, and average share price, and emits an InvestConfirm event.
    /// @param _user The address of the user making the investment request. This address is used to identify the user in the `userInfo` mapping and update their investment details.
    function _handleRequestedInvest(address _user) internal {
        UserInfo storage user = userInfo[_user];
        if (user.requestedInvestAmount != 0) {
            uint256 _amount = user.requestedInvestAmount;
            totals.assetAmount += _amount;
            uint256 newAmount = user.assetAmount + _amount;
            user.assetAmount = newAmount;
            uint256 buyShares = (_amount * 1e12) / sharePrice;
            uint256 newShares = user.shares + buyShares;
            user.shares = newShares;
            user.avgSharePrice = (newAmount * 1e12) / newShares;
            totals.shares += buyShares;
            user.requestedInvestAmount = 0;
            emit InvestConfirm(_user, owner(), _amount, buyShares);
        }
    }

    /// @notice Records an investment request for a user.
    /// @dev This function processes the requested investment amount for a user, updates the user's asset amount, shares, and average share price, and emits an InvestConfirm event.
    /// If the user has not a pending investment request, the user is added to the requestedInvests list.
    /// The invested amount is added to the user's requestedInvestAmount.
    /// @param _user The address of the user making the investment request. This address is used to identify the user in the `userInfo` mapping and update their investment details.
    /// @param _amount The amount to invest. This represents the total amount of the asset that the user wants to invest in the strategy.
    function _invest(address _user, uint256 _amount) internal {
        UserInfo storage user = userInfo[_user];
        if (user.requestedInvestAmount == 0) {
            requestedInvests[requestedInvestsCount++] = _user;
        }
        user.requestedInvestAmount += _amount;
    }

    /// @notice Allows a user to invest in the strategy.
    /// @dev This function enables users to invest a specified amount of the asset into the strategy.
    /// @param _amount The amount of the asset that the user wants to invest in the strategy. This value represents the total amount of the asset that the user will transfer to the strategy.
    /// @param _referral The address of the referral who referred the user to the strategy. This can be an address or zero address if no referral is involved. The referral address may be used for tracking and rewarding referrals.
    function invest(
        uint256 _amount,
        address _referral
    ) public nonReentrant onlyWhenEnabled onlyWhenActive {
        if (premium && !RankFactory(rankFactory).isPremiumUser(msg.sender)) {
            revert UserNotPremium();
        }
        if (_amount == 0) {
            revert InvalidAssetAmount();
        }
        uint256 amount;
        uint256 creatorUserFee;
        uint256 platformFee;
        (amount, creatorUserFee, platformFee) = _splitAmountFees(
            msg.sender,
            _amount
        );
        if (platformFee != 0) {
            asset.safeTransferFrom(msg.sender, backendAddress, platformFee);
        }
        if (creatorUserFee != 0) {
            asset.safeTransferFrom(msg.sender, owner(), creatorUserFee);
        }
        asset.safeTransferFrom(msg.sender, managedAddress, amount);
        _invest(msg.sender, amount);
        emit InvestRequest(
            msg.sender,
            owner(),
            _amount,
            creatorUserFee,
            platformFee,
            _referral
        );
    }

    /// @notice Handles all requested unlocks.
    /// @dev This function iterates through the list of requested unlocks and processes each one.
    /// The users are processed in reverse order to ensure that every user's unlock request is handled correctly.
    /// After each cycle, the requestedUnlocksCount is decremented by the number of operations processed.
    /// Specifically, for each requested unlock:
    /// - The user's requested unlock shares are used to calculate the percentage of their total shares to unlock.
    /// - The user's shares, asset amount, and other relevant data are updated based on the requested unlock shares.
    /// - The total shares and asset amount in the strategy are updated accordingly.
    /// - An UnlockConfirm event is emitted for each processed unlock.
    /// @param _operationsLimit The maximum number of operations to process in a single call. 0 means no limit.
    function _handleRequestedUnlocks(uint256 _operationsLimit) internal {
        if (_operationsLimit == 0 || _operationsLimit > requestedUnlocksCount) {
            _operationsLimit = requestedUnlocksCount;
        }
        for (
            uint256 t = requestedUnlocksCount;
            t > requestedUnlocksCount - _operationsLimit;
            t--
        ) {
            _handleRequestedUnlock(requestedUnlocks[t - 1]);
        }
        requestedUnlocksCount -= _operationsLimit;
    }

    /// @notice Handles a requested unlock for a user.
    /// @dev This function processes the requested unlock shares for a user, updates the user's shares, asset amount, and other relevant data, and emits an UnlockConfirm event.
    /// @param _user The address of the user requesting the unlock. This address is used to identify the user in the `userInfo` mapping and update their unlock details, including shares, asset amount, and other relevant data.
    function _handleRequestedUnlock(address _user) internal {
        UserInfo storage user = userInfo[_user];
        if (user.requestedUnlockShares != 0) {
            ProfitInfo memory profitInfo = getActualProfit(_user);
            uint256 _shares = user.requestedUnlockShares;
            uint256 sharesPerc = (_shares * 1e12) / user.shares;
            Unlocked memory _unlocked = Unlocked({
                shares: _shares,
                assetAmount: (profitInfo.assetInvestment * sharesPerc) / 1e12,
                assetProfit: (profitInfo.assetProfit * sharesPerc) / 1e12,
                creatorPerformanceFee: (profitInfo.creatorPerformanceFee *
                    sharesPerc) / 1e12,
                platformPerformanceFee: (profitInfo.platformPerformanceFee *
                    sharesPerc) / 1e12,
                assetLoss: (profitInfo.assetLoss * sharesPerc) / 1e12,
                nextWithdrawalAllowed: block.number,
                withdrawableAssetAmount: (profitInfo.withdrawableAssetAmount *
                    sharesPerc) / 1e12
            });
            user.shares -= _shares;
            user.assetAmount -= _unlocked.assetAmount;
            user.unlocked.shares += _shares;
            user.unlocked.assetAmount += _unlocked.assetAmount;
            user.unlocked.assetProfit += _unlocked.assetProfit;
            user.unlocked.creatorPerformanceFee += _unlocked
                .creatorPerformanceFee;
            user.unlocked.platformPerformanceFee += _unlocked
                .platformPerformanceFee;
            user.unlocked.assetLoss += _unlocked.assetLoss;
            user.unlocked.nextWithdrawalAllowed = _unlocked
                .nextWithdrawalAllowed;
            user.unlocked.withdrawableAssetAmount += _unlocked
                .withdrawableAssetAmount;
            totals.shares -= _shares;
            totals.assetAmount -=
                _unlocked.assetAmount +
                _unlocked.assetProfit -
                _unlocked.assetLoss;
            totals.withdrawableAssetAmount += _unlocked.withdrawableAssetAmount;
            user.requestedUnlockShares = 0;
            emit UnlockConfirm(
                _user,
                _shares,
                _unlocked.assetAmount,
                _unlocked.assetProfit,
                _unlocked.creatorPerformanceFee,
                _unlocked.platformPerformanceFee,
                _unlocked.assetLoss
            );
        }
    }

    /// @notice Allows a user to request an unlock of their shares.
    /// @param _shares The number of shares to unlock. This represents the amount of shares the user wants to unlock from their total shares.
    /// If the user is the creator, they can only unlock after the strategy's expiration time.
    /// If the user is not the creator, they can unlock at any time.
    /// The shares must be less than or equal to the user's total shares minus any requested unlock shares.
    /// @dev This function processes the user's unlock request by updating the requested unlock shares and adding the user to the requestedUnlocks list.
    /// If the user has no pending unlock request, the user is added to the requestedUnlocks list.
    function unlock(uint256 _shares) external nonReentrant {
        if (_shares == 0) {
            revert InvalidShares();
        }
        if (!canUnlock(msg.sender)) {
            revert UnlockNotAllowed();
        }
        UserInfo storage user = userInfo[msg.sender];
        uint256 currentRequestedUnlockShares = user.requestedUnlockShares;
        uint256 unlockableShares = user.shares - currentRequestedUnlockShares;
        if (_shares > unlockableShares) {
            revert InvalidShares();
        }
        if (block.timestamp >= times.expiration) {
            _shares = unlockableShares; // user.shares;
        }
        if (currentRequestedUnlockShares == 0) {
            requestedUnlocks[requestedUnlocksCount++] = msg.sender;
        }
        user.requestedUnlockShares += _shares;
        emit UnlockRequest(msg.sender, _shares);
    }

    /// @notice Allows a user to withdraw their unlocked assets.
    /// @dev This function transfers the withdrawable asset amount to the user and updates the totals.
    /// The function performs the following steps:
    /// 1. Checks if the user is allowed to withdraw their unlocked assets by calling `canWithdraw`.
    /// 2. Ensures that the funds are available for withdrawal by calling `fundsAvailable`.
    /// 3. Transfers the withdrawable asset amount from the contract to the user's address.
    /// 4. Updates the user's unlocked asset information and the total withdrawable asset amount.
    /// 5. Emits a `Withdraw` event with the user's address and the amount withdrawn.
    function withdraw() external nonReentrant {
        UserInfo storage user = userInfo[msg.sender];
        if (!canWithdraw(msg.sender)) {
            revert WithdrawalNotAllowed();
        }
        if (!fundsAvailable(msg.sender)) {
            revert WaitingForFunds();
        }
        uint256 _withdrawableAssetAmount = user
            .unlocked
            .withdrawableAssetAmount;
        user.unlocked = Unlocked({
            shares: 0,
            assetAmount: 0,
            assetProfit: 0,
            creatorPerformanceFee: 0,
            platformPerformanceFee: 0,
            assetLoss: 0,
            nextWithdrawalAllowed: 0,
            withdrawableAssetAmount: 0
        });
        totals.withdrawableAssetAmount -= _withdrawableAssetAmount;
        asset.safeTransfer(msg.sender, _withdrawableAssetAmount);
        emit Withdraw(msg.sender, _withdrawableAssetAmount);
    }

    /// @notice Calculates and returns the actual profit information for a user.
    /// @dev This function computes the profit, performance fees, and loss for a user's investment based on the current share price.
    /// @param _user The address of the user for whom the profit information is being calculated. This address is used to identify the user in the `userInfo` mapping and retrieve their investment details.
    /// @return profitInfo A struct containing the profit information, including:
    /// - `assetInvestment`: The total amount of assets invested by the user.
    /// - `assetProfit`: The profit earned by the user from their investment.
    /// - `creatorPerformanceFee`: The performance fee allocated to the creator.
    /// - `platformPerformanceFee`: The performance fee allocated to the platform.
    /// - `assetLoss`: The loss incurred by the user from their investment.
    /// - `assetPriceUSD`: The current price of the asset in USD.
    /// - `withdrawableAssetAmount`: The amount of assets that the user can withdraw.
    function getActualProfit(
        address _user
    ) public view returns (ProfitInfo memory profitInfo) {
        UserInfo storage user = userInfo[_user];
        profitInfo = ProfitInfo({
            assetInvestment: user.assetAmount,
            assetProfit: 0,
            creatorPerformanceFee: 0,
            platformPerformanceFee: 0,
            assetLoss: 0,
            assetPriceUSD: 0,
            withdrawableAssetAmount: 0
        });
        profitInfo.assetPriceUSD = getAssetPrice();
        if (block.timestamp > times.start) {
            if (sharePrice > user.avgSharePrice && user.avgSharePrice != 0) {
                profitInfo.assetProfit =
                    ((sharePrice - user.avgSharePrice) * user.shares) /
                    1e12;
                uint256 basePerformanceFee = (profitInfo.assetProfit *
                    userFees.performanceFeeBP);
                profitInfo.platformPerformanceFee =
                    (basePerformanceFee * platformFees.performanceFeeBP) /
                    1e8;
                profitInfo.creatorPerformanceFee =
                    (basePerformanceFee / 1e4) -
                    profitInfo.platformPerformanceFee;
            } else if (
                sharePrice < user.avgSharePrice && user.avgSharePrice != 0
            ) {
                profitInfo.assetLoss =
                    ((user.avgSharePrice - sharePrice) * user.shares) /
                    1e12;
            }
        }
        if (user.shares != 0) {
            profitInfo.withdrawableAssetAmount =
                user.assetAmount +
                profitInfo.assetProfit -
                profitInfo.creatorPerformanceFee -
                profitInfo.platformPerformanceFee -
                profitInfo.assetLoss;
        }
    }

    // Misc

    /// @notice Checks if the user can unlock their shares.
    /// @dev This function determines if the user is allowed to unlock their shares based on the current time and the user's address.
    /// @param _user The address of the user. If the user is the creator, they can only unlock after the strategy's expiration time.
    /// If the user is not the creator, they can unlock at any time.
    /// @return result A boolean value indicating whether the user can unlock their shares.
    /// True if the user can unlock their shares, false otherwise.
    function canUnlock(address _user) public view returns (bool result) {
        result = _user != creatorAddress || block.timestamp >= times.expiration;
    }

    /// @notice Checks if the user can withdraw their unlocked assets.
    /// @dev This function determines if the user is allowed to withdraw their unlocked assets based on the current block number and the user's unlocked asset amount.
    /// @param _user The address of the user requesting the withdrawal. This address is used to identify the user in the `userInfo` mapping and check their unlocked asset details.
    /// @return result A boolean value indicating whether the user can withdraw their unlocked assets. True if the user can withdraw their unlocked assets, false otherwise.
    function canWithdraw(address _user) public view returns (bool result) {
        UserInfo storage user = userInfo[_user];
        result =
            (user.unlocked.withdrawableAssetAmount != 0 &&
                user.unlocked.nextWithdrawalAllowed != 0 &&
                block.number >= user.unlocked.nextWithdrawalAllowed) ||
            block.timestamp >= times.expiration;
    }

    /// @notice Checks if the funds are available for the user to withdraw.
    /// @dev This function determines if the user's unlocked assets are available for withdrawal based on the last update block and the user's next withdrawal allowed block.
    /// @param _user The address of the user whose funds availability is being checked. This address is used to identify the user in the `userInfo` mapping and check their unlocked asset details.
    /// @return result A boolean value indicating whether the funds are available for the user to withdraw. True if the funds are available, false otherwise.
    /// @dev `totals.lastAvailUpdate` is the last block number when the strategy values were updated.
    ///      `user.unlocked.nextWithdrawalAllowed` is the block number after which the user can withdraw their unlocked assets.
    function fundsAvailable(address _user) public view returns (bool result) {
        UserInfo storage user = userInfo[_user];
        result =
            totals.lastAvailUpdate > user.unlocked.nextWithdrawalAllowed &&
            asset.balanceOf(address(this)) >=
            user.unlocked.withdrawableAssetAmount;
    }

    /// @notice Gets the USD value of the specified asset amount.
    /// @dev This function converts the given asset amount to its equivalent USD value based on the current asset price.
    /// @param _assetAmount The amount of the asset to convert to USD, specified in the smallest unit of the asset (e.g., wei for ETH).
    /// @return usdValue The USD value of the asset amount, calculated based on the current asset price from the Chainlink price feed.
    function getUsdValue(
        uint256 _assetAmount
    ) external view returns (uint256 usdValue) {
        usdValue = (getAssetPrice() * _assetAmount) / 1e18;
    }
}
