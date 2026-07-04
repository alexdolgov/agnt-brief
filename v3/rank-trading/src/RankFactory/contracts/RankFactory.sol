// SPDX-License-Identifier: MIT

pragma solidity 0.8.21;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
import "@pancakeswap/v3-core/contracts/interfaces/IPancakeV3Pool.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "solady/src/utils/LibClone.sol";
import "./RankToken.sol";
import "./RankStrategy.sol";
import "./IStakingPool.sol";

/// @title RankFactory Contract
/// @notice This contract facilitates the creation and management of RankStrategy instances.
/// @dev Inherits from Ownable and ReentrancyGuard for ownership and security features.
contract RankFactory is Ownable, ReentrancyGuard {
    using SafeERC20 for ERC20;
    using LibClone for *;

    /// @notice Thrown when the provided fees are invalid.
    error InvalidFees();

    /// @notice Thrown when the provided address is invalid.
    error InvalidAddress();

    /// @notice Thrown when cloning a contract fails.
    error CloningFailed();

    /// @notice Thrown when the provided times are before the current time.
    error InvalidTimesBeforeCurrent();

    /// @notice Thrown when the provided times are out of range.
    error InvalidTimesOutOfRange();

    /// @notice Thrown when the provided duration is invalid.
    error InvalidTimesDuration();

    /// @notice Thrown when the provided asset amount is invalid.
    error InvalidAssetAmount();

    /// @notice Thrown when the user is not premium.
    error UserNotPremium();

    /// @notice Emitted when a new RankStrategy is created.
    /// @param creator The address of the creator.
    /// @param rankStrategy The address of the created RankStrategy contract.
    /// @param RANcost The cost in RAN tokens.
    /// @param initialDeposit The initial deposit amount.
    /// @param platformFee The platform fee amount.
    /// @param RANprice The price of RAN tokens.
    event RankStrategyCreated(
        address indexed creator,
        address rankStrategy,
        uint256 RANcost,
        uint256 initialDeposit,
        uint256 platformFee,
        uint256 RANprice
    );

    /// @notice Emitted when the RankToken address is set.
    /// @param rankToken The address of the RankToken contract.
    event RankTokenAddressSet(address rankToken);

    /// @notice Emitted when the backend address is set.
    /// @param backendAddress The address of the backend.
    event BackendAddressSet(address backendAddress);

    /// @notice Emitted when the managed address is set.
    /// @param managedAddress The address of the managed contract.
    event ManagedAddressSet(address managedAddress);

    /// @notice Emitted when the RankToken price pair address is set.
    /// @param rankTokenPricePair The address of the RankToken price pair contract.
    event RankTokenPricePairSet(address rankTokenPricePair);

    /// @notice Emitted when the platform fees are set.
    /// @param platformFees The new platform fees.
    event PlatformFeesSet(Fees platformFees);

    /// @notice Emitted when the enabled status is changed.
    /// @param enabled The new enabled status.
    event EnabledChange(bool enabled);

    /// @notice Emitted when the maximum duration is set.
    /// @param maxDuration The new maximum duration.
    event MaxDurationSet(uint256 maxDuration);

    /// @notice Emitted when the Rank Staking Pool is set.
    /// @param stakingPool The address of the Rank Staking Pool.
    /// @param stakingPoolId The ID of the Rank Staking Pool.
    event RankStakingPoolSet(address stakingPool, uint256 stakingPoolId);

    /// @notice Emitted when the premium minimum staking value is set.
    /// @param premiumStakingValue The new premium staking value.
    event PremiumStakingValueSet(uint256 premiumStakingValue);

    /// @notice Emitted when tokens are extracted.
    /// @param requestedBy The address that requested the extraction.
    /// @param asset The address of the asset being extracted.
    /// @param destination The address where the extracted tokens are sent.
    /// @param amount The amount of tokens extracted.
    event ExtractToken(
        address requestedBy,
        address asset,
        address destination,
        uint256 amount
    );

    /// @notice Emitted when a payment is made.
    /// @param payer The address of the payer.
    /// @param asset The address of the asset being paid.
    /// @param amount The amount of the payment.
    /// @param destination The address where the payment is sent.
    /// @param paymentID The ID of the payment.
    event Pay(
        address indexed payer,
        address asset,
        uint256 amount,
        address destination,
        bytes32 paymentID
    );

    /// @notice Validates that the provided address is not the zero address.
    /// @param _address The address to validate.
    modifier onlyValidAddress(address _address) {
        if (_address == address(0)) {
            revert InvalidAddress();
        }
        _;
    }

    /// @notice Validates that the provided fees are within acceptable ranges.
    /// @param _fees The fees to validate.
    modifier onlyValidFees(Fees memory _fees) {
        if (
            _fees.depositFeeBP > 10000 ||
            _fees.performanceFeeBP > 10000 ||
            _fees.ownerDepositFeeBP > 10000
        ) {
            revert InvalidFees();
        }
        _;
    }

    struct Times {
        uint256 start;
        uint256 expiration;
        uint256 lastUpdateBlock;
    }

    struct Fees {
        uint16 depositFeeBP;
        uint16 performanceFeeBP;
        uint16 ownerDepositFeeBP;
    }

    struct FactorySettings {
        address asset;
        address assetPriceFeed;
        address rankToken;
        address rankTokenPricePair;
        address backendAddress;
        address managedAddress;
        IStakingPool rankStakingPool;
        uint256 rankStakingPoolId;
        uint256 premiumStakingValue;
        Fees platformFees;
        uint256 MAX_DURATION;
        bool enabled;
    }

    struct RankStrategySettings {
        Fees userFees;
        Times times;
        address creator;
        bool enabled;
    }

    struct ConstructorParams {
        address implementation;
        address asset;
        address assetPriceFeed;
        address rankToken;
        address rankTokenPricePair;
        address backendAddress;
        address managedAddress;
        IStakingPool rankStakingPool;
        uint256 rankStakingPoolId;
        uint256 premiumStakingValue;
        Fees platformFees;
        bool enabled;
        uint256 MAX_DURATION;
    }

    /// @notice The address of the implementation contract used for cloning.
    address internal immutable implementation;
    FactorySettings public factorySettings;
    mapping(uint256 => address) public rankStrategies;
    uint256 public rankStrategiesCount;

    constructor(
        ConstructorParams memory params
    ) onlyValidFees(params.platformFees) Ownable(msg.sender) {
        if (
            params.implementation == address(0) ||
            params.asset == address(0) ||
            params.assetPriceFeed == address(0) ||
            params.rankToken == address(0) ||
            params.rankTokenPricePair == address(0) ||
            params.backendAddress == address(0) ||
            params.managedAddress == address(0)
        ) {
            revert InvalidAddress();
        }
        implementation = params.implementation;
        factorySettings = FactorySettings(
            params.asset,
            params.assetPriceFeed,
            params.rankToken,
            params.rankTokenPricePair,
            params.backendAddress,
            params.managedAddress,
            IStakingPool(params.rankStakingPool),
            params.rankStakingPoolId,
            params.premiumStakingValue,
            params.platformFees,
            params.MAX_DURATION,
            params.enabled
        );
        emit RankTokenAddressSet(params.rankToken);
        emit BackendAddressSet(params.backendAddress);
        emit ManagedAddressSet(params.managedAddress);
        emit RankTokenPricePairSet(params.rankTokenPricePair);
        emit PlatformFeesSet(params.platformFees);
        emit EnabledChange(params.enabled);
        emit MaxDurationSet(params.MAX_DURATION);
    }

    // Manager

    /// @notice Enables or disables the factory.
    /// @param _enabled The new enabled status.
    function setEnabled(bool _enabled) external onlyOwner {
        factorySettings.enabled = _enabled;
        emit EnabledChange(_enabled);
    }

    /// @notice Sets the backend address.
    /// @param _backendAddress The address of the backend.
    function setBackendAddress(
        address _backendAddress
    ) external onlyOwner onlyValidAddress(_backendAddress) {
        factorySettings.backendAddress = _backendAddress;
        emit BackendAddressSet(_backendAddress);
    }

    /// @notice Sets the managed address.
    /// @param _managedAddress The address of the managed contract.
    function setManagedAddress(
        address _managedAddress
    ) external onlyOwner onlyValidAddress(_managedAddress) {
        factorySettings.managedAddress = _managedAddress;
        emit ManagedAddressSet(_managedAddress);
    }

    /// @notice Sets the RankToken price pair address.
    /// @param _rankTokenPricePair The address of the RankToken price pair contract.
    function setRankTokenPricePair(
        address _rankTokenPricePair
    ) external onlyOwner onlyValidAddress(_rankTokenPricePair) {
        factorySettings.rankTokenPricePair = _rankTokenPricePair;
        emit RankTokenPricePairSet(_rankTokenPricePair);
    }

    /// @notice Sets the Rank Staking Pool.
    /// @param _stakingPool The address of the Rank Staking Pool.
    /// @param _stakingPoolId The ID of the Rank Staking Pool.
    function setStakingPool(
        address _stakingPool,
        uint256 _stakingPoolId
    ) external onlyOwner onlyValidAddress(_stakingPool) {
        factorySettings.rankStakingPool = IStakingPool(_stakingPool);
        factorySettings.rankStakingPoolId = _stakingPoolId;
        emit RankStakingPoolSet(_stakingPool, _stakingPoolId);
    }

    /// @notice Sets the premium staking value.
    /// This value is used to determine if a user is a premium user.
    /// If the user's staking value is greater than or equal to this value, they are considered a premium user.
    /// @param _premiumStakingValue The new premium staking value.
    function setPremiumStakingValue(
        uint256 _premiumStakingValue
    ) external onlyOwner {
        factorySettings.premiumStakingValue = _premiumStakingValue;
        emit PremiumStakingValueSet(_premiumStakingValue);
    }

    /// @notice Gets the current price of RankToken.
    /// @return rankTokenPrice The current price of RankToken.
    function getRankTokenPrice() public view returns (uint256 rankTokenPrice) {
        // changed standard function to avoid overflow issues
        // (uint160 sqrtPriceX96, , , , , , ) = IPancakeV3Pool(
        //     factorySettings.rankTokenPricePair
        // ).slot0();
        // uint256 sqrtPriceX96Squared = uint256(sqrtPriceX96) ** 2;
        // rankTokenPrice = (sqrtPriceX96Squared * 1e18) / (2 ** 192);
        IPancakeV3Pool pool = IPancakeV3Pool(
            factorySettings.rankTokenPricePair
        );
        address token0 = pool.token0();
        address token1 = pool.token1();
        address rankToken = factorySettings.rankToken;
        (uint160 sqrtPriceX96, , , , , , ) = pool.slot0();
        uint256 sqrtPrice = uint256(sqrtPriceX96);
        uint256 temp = (sqrtPrice * 1e18) / (2 ** 96);
        uint256 price = (temp * temp) / 1e18;
        if (token0 == rankToken) {
            rankTokenPrice = price;
        } else if (token1 == rankToken && price != 0) {
            rankTokenPrice = 1e36 / price;
        } else {
            rankTokenPrice = 0;
        }
    }

    /// @notice Extracts tokens from the contract.
    /// @param _asset The address of the asset to extract.
    /// @param _to The address to send the extracted tokens.
    /// @param _amount The amount of tokens to extract.
    function extractToken(
        address _asset,
        address _to,
        uint256 _amount
    ) external onlyOwner nonReentrant {
        ERC20(_asset).safeTransfer(_to, _amount);
        emit ExtractToken(msg.sender, _asset, _to, _amount);
    }

    // Creator

    /// @notice Creates a new RankStrategy contract by cloning the implementation contract.
    /// Only premium users can create RankStrategy contracts.
    /// @param args The settings for the RankStrategy.
    /// @param salt The salt used for deterministic address generation.
    /// @param _strategy The strategy name.
    /// @param _costRAN The cost in RAN tokens.
    /// @param _checksum The checksum of the strategy.
    /// @param _initialDeposit The initial deposit amount.
    /// @return rankStrategy The address of the created RankStrategy contract.
    function createRankStrategy(
        RankStrategySettings calldata args,
        bytes32 salt,
        string calldata _strategy,
        uint256 _costRAN,
        bytes32 _checksum,
        uint256 _initialDeposit
    )
        external
        nonReentrant
        onlyValidFees(args.userFees)
        onlyValidAddress(args.creator)
        returns (address rankStrategy)
    {
        if (!isPremiumUser(args.creator)) {
            revert UserNotPremium();
        }
        rankStrategy = implementation.cloneDeterministic(
            _encodeImmutableArgs(),
            salt
        );
        uint16 _ownerDepositFeeBP = factorySettings
            .platformFees
            .ownerDepositFeeBP;
        address _backendAddress = factorySettings.backendAddress;
        RankStrategy r = RankStrategy(rankStrategy);
        r.initialize(
            RankStrategy.Fees(
                args.userFees.depositFeeBP,
                args.userFees.performanceFeeBP,
                _ownerDepositFeeBP
            ),
            RankStrategy.Times(
                args.times.start,
                args.times.expiration,
                args.times.lastUpdateBlock
            ),
            args.creator,
            address(this)
        );
        if (r.owner() != msg.sender) {
            revert CloningFailed();
        }
        r.initStrategy(_strategy, _costRAN, _checksum, _initialDeposit);
        uint256 platformFee = (_initialDeposit * _ownerDepositFeeBP) / 1e4;
        ERC20(factorySettings.rankToken).safeTransferFrom(
            msg.sender,
            _backendAddress,
            _costRAN
        );
        ERC20(factorySettings.asset).safeTransferFrom(
            msg.sender,
            _backendAddress,
            platformFee
        );
        ERC20(factorySettings.asset).safeTransferFrom(
            msg.sender,
            factorySettings.managedAddress,
            _initialDeposit - platformFee
        );
        rankStrategies[rankStrategiesCount++] = rankStrategy;
        emit RankStrategyCreated(
            args.creator,
            rankStrategy,
            _costRAN,
            _initialDeposit,
            platformFee,
            getRankTokenPrice()
        );
    }

    /// @notice Predicts the deterministic address of a RankStrategy contract.
    /// @param salt The salt used for deterministic address generation.
    /// @return predictedAddress The predicted address of the RankStrategy contract.
    function predictDeterministicAddress(
        bytes32 salt
    ) external view returns (address predictedAddress) {
        predictedAddress = implementation.predictDeterministicAddress(
            _encodeImmutableArgs(),
            salt,
            address(this)
        );
    }

    /// @notice Encodes the immutable arguments for the RankStrategy contract.
    /// @return The encoded immutable arguments.
    function _encodeImmutableArgs() internal view returns (bytes memory) {
        return
            abi.encodePacked(
                factorySettings.asset,
                factorySettings.rankToken,
                factorySettings.assetPriceFeed,
                factorySettings.platformFees.depositFeeBP,
                factorySettings.platformFees.performanceFeeBP,
                factorySettings.platformFees.ownerDepositFeeBP,
                factorySettings.managedAddress,
                factorySettings.backendAddress
            );
    }

    // Misc

    /// @notice Generates a checksum based on the provided text, number, and address.
    /// @dev Used to avoid hacking attempts on strategy creation.
    /// @dev A user could modify the strategy from the frontend, but the checksum would not match with the one calculated from the backend during previous strategy validation.
    /// @param _text The text to include in the checksum.
    /// @param _num The number to include in the checksum.
    /// @param _address The address to include in the checksum.
    /// @return result The generated checksum.
    function checksum(
        string memory _text,
        uint256 _num,
        address _address
    ) public pure returns (bytes32 result) {
        result = keccak256(abi.encodePacked(_text, _num, _address));
    }

    /// @notice Processes a payment in the specified asset.
    /// @dev Used to pay for the execution of a forward test.
    /// @param _asset The address of the asset to pay with.
    /// @param _amount The amount of the asset to pay.
    function pay(address _asset, uint256 _amount) external nonReentrant {
        if (_amount == 0) {
            revert InvalidAssetAmount();
        }
        bytes32 paymentID = checksum(
            ERC20(_asset).symbol(),
            _amount,
            msg.sender
        );
        ERC20(_asset).safeTransferFrom(
            msg.sender,
            factorySettings.backendAddress,
            _amount
        );
        emit Pay(
            msg.sender,
            _asset,
            _amount,
            factorySettings.backendAddress,
            paymentID
        );
    }

    /// @notice Checks if a user is a premium user based on their staking value.
    /// @param _user The address of the user to check.
    /// @return bool True if the user's staking value is greater than or equal to the premium staking value, false otherwise.
    function isPremiumUser(address _user) public view returns (bool) {
        IStakingPool.UserInfo memory userStakingInfo = factorySettings
            .rankStakingPool
            .getUserInfo(_user, factorySettings.rankStakingPoolId);
        uint256 rankPrice = getRankTokenPrice();
        uint256 stakingValue = (userStakingInfo.amount * rankPrice) / 1e18;
        return stakingValue >= factorySettings.premiumStakingValue;
    }
}
