// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.13;

import {AccessControlEnumerable} from "@openzeppelin/contracts/access/AccessControlEnumerable.sol";
import {ERC20, IERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "../libraries/Math.sol";
import {IVotingEscrowV2} from "../VoterV5/VotingEscrow/interfaces/IVotingEscrowV2.sol";
import {IVoter} from "../interfaces/IVoter.sol";
import {IPair} from "../interfaces/IPair.sol";
import {IGauge} from "../interfaces/IGauge.sol";
import {IRouter} from "../interfaces/IRouter.sol";
import {IDynamicTwapOracle} from "./DynamicTwapOracle/IDynamicTwapOracle.sol";
import {IOptionTokenV3} from "./IOptionTokenV3.sol";
import {IOptionFeeDistributor} from "./IOptionFeeDistributor.sol";
import {IOption} from "./IOption.sol";

/// @title Option Token
/// @notice Option token representing the right to purchase the underlying token
/// at TWAP reduced rate. Similar to call options but with a variable strike
/// price that's always at a certain discount to the market price.
/// Credit to Velocimeter for the original implementation
contract OptionTokenV3 is IOptionTokenV3, ERC20, AccessControlEnumerable {
    using SafeERC20 for IERC20;

    /// -----------------------------------------------------------------------
    /// Constants
    /// -----------------------------------------------------------------------
    uint256 public constant MAX_DISCOUNT = 100; // 100%
    uint256 public constant MIN_DISCOUNT = 0; // 0%
    uint256 public constant MAX_TWAP_SECONDS = 86400; // 2 days

    /// @dev Lock set to 2 years
    uint256 public constant FULL_LOCK = 2 * 365 * 86400; // 2 years

    /// -----------------------------------------------------------------------
    /// Roles
    /// -----------------------------------------------------------------------
    /// @dev The identifier of the role which maintains other roles and settings
    bytes32 public constant override ADMIN_ROLE = keccak256("ADMIN");

    /// @dev The identifier of the role which is allowed to mint options token
    bytes32 public constant override MINTER_ROLE = keccak256("MINTER");

    /// @dev The identifier of the role which allows accounts to pause exercising options
    /// in case of emergency
    bytes32 public constant override PAUSER_ROLE = keccak256("PAUSER");

    /// -----------------------------------------------------------------------
    /// Immutable parameters
    /// -----------------------------------------------------------------------

    /// @notice The token paid by the options token holder during redemption
    IERC20 public override paymentToken;

    /// @notice The underlying token purchased during redemption
    IERC20 public immutable UNDERLYING_TOKEN;

    /// @notice The voter contract
    address public voter;

    /// -----------------------------------------------------------------------
    /// Storage variables
    /// -----------------------------------------------------------------------

    /// @notice The router for adding liquidity
    address public router; // this should not be immutable

    /// @notice The pair contract used to deposit LP option
    IPair public pair;

    /// @notice The guage contract for the pair
    address public gauge;

    /// @notice The oracle contract that provides the current TWAP price to purchase
    /// the underlying token while exercising options (the strike price)
    IDynamicTwapOracle public twapOracle;

    /// @notice The contract that receives the payment tokens when options are exercised
    IOptionFeeDistributor public feeDistributor;

    /// @notice the discount given during exercising with locking to the LP
    uint256 public maxLPDiscount = 20; //  User pays 20%
    uint256 public minLPDiscount = 80; //  User pays 80%

    /// @notice the lock duration for max discount to create locked LP
    uint256 public lockDurationForMaxLpDiscount = FULL_LOCK; // 52 weeks

    // @notice the lock duration for max discount to create locked LP
    uint256 public lockDurationForMinLpDiscount = 7 * 86400; // 1 week

    // @notice the lock duration for min discount to create locked veToken
    uint256 public lockDurationForMinVeDiscount = 2 weeks; // 2 weeks

    /// @notice the discount given during exercising. 30 = user pays 30%
    uint256 public discount = 40;

    /// @notice the max discount for locking to vote escrow
    uint256 public veMaxDiscount = 0; // User pays 0%

    /// @notice controls the duration of the twap used to calculate the strike price
    uint32 public twapSeconds = 60 * 30 * 4;

    /// @notice Is exercising options currently paused
    bool public isPaused;

    /// @notice Is minting new options currently permissioned
    bool public permissionedMint = false;

    /// @notice allows to expand options with new contracts
    mapping(address => bool) optionTokens;

    /// -----------------------------------------------------------------------
    /// Events
    /// -----------------------------------------------------------------------

    event Exercise(address indexed sender, address indexed recipient, uint256 amount, uint256 paymentAmount);
    event ExerciseVe(
        address indexed sender,
        address indexed recipient,
        uint256 amount,
        uint256 paymentAmount,
        uint256 nftId
    );
    event ExerciseLp(
        address indexed sender,
        address indexed recipient,
        uint256 amount,
        uint256 paymentAmount,
        uint256 lpAmount
    );
    event SetPairAndPaymentToken(IPair indexed newPair, address indexed newPaymentToken);
    event SetGauge(address indexed newGauge);
    event SetRouter(address indexed router);
    event SetTwapOracleAndPaymentToken(IDynamicTwapOracle indexed _twapOracle, address indexed _paymentToken);
    event SetFeeDistributor(IOptionFeeDistributor indexed newFeeDistributor);
    event SetDiscount(uint256 discount);
    event SetVeDiscount(uint256 veDiscount);
    event SetMinLPDiscount(uint256 lpMinDiscount);
    event SetMaxLPDiscount(uint256 lpMaxDiscount);
    event SetLockDurationForMaxLpDiscount(uint256 lockDurationForMaxLpDiscount);
    event SetLockDurationForMinLpDiscount(uint256 lockDurationForMinLpDiscount);
    event SetLockDurationForMinVeDiscount(uint256 lockDurationForMinVeDiscount);
    event PauseStateChanged(bool isPaused);
    event SetTwapSeconds(uint32 twapSeconds);
    event ToggleOption(address option, bool enabled);

    /// -----------------------------------------------------------------------
    /// Errors
    /// -----------------------------------------------------------------------
    error OptionToken_PastDeadline();
    error OptionToken_NoAdminRole();
    error OptionToken_NoMinterRole();
    error OptionToken_NoPauserRole();
    error OptionToken_SlippageTooHigh();
    error OptionToken_InvalidDiscount();
    error OptionToken_Paused();
    error OptionToken_InvalidTwapSeconds();
    error OptionToken_IncorrectPairToken();
    error OptionToken_InvalidLockDuration();
    error OptionToken_InvalidOption();

    /// -----------------------------------------------------------------------
    /// Modifiers
    /// -----------------------------------------------------------------------
    /// @dev A modifier which checks that the caller has the admin role.
    modifier onlyAdmin() {
        if (!hasRole(ADMIN_ROLE, msg.sender)) revert OptionToken_NoAdminRole();
        _;
    }

    /// @dev A modifier which checks that the caller has the admin or minter role.
    modifier onlyMinter() {
        if (permissionedMint && !hasRole(ADMIN_ROLE, msg.sender) && !hasRole(MINTER_ROLE, msg.sender))
            revert OptionToken_NoMinterRole();
        _;
    }

    /// @dev A modifier which checks that the caller has the pause role.
    modifier onlyPauser() {
        if (!hasRole(PAUSER_ROLE, msg.sender)) revert OptionToken_NoPauserRole();
        _;
    }

    /// -----------------------------------------------------------------------
    /// Constructor
    /// -----------------------------------------------------------------------

    constructor(
        string memory _name,
        string memory _symbol,
        address _admin,
        ERC20 _paymentToken,
        ERC20 _underlyingToken,
        IDynamicTwapOracle _twapOracle,
        IOptionFeeDistributor _feeDistributor,
        address _voter,
        IPair _pair,
        address _router
    ) ERC20(_name, _symbol) {
        _grantRole(DEFAULT_ADMIN_ROLE, _admin);
        _grantRole(ADMIN_ROLE, _admin);
        _grantRole(PAUSER_ROLE, _admin);
        _setRoleAdmin(ADMIN_ROLE, ADMIN_ROLE);
        _setRoleAdmin(MINTER_ROLE, ADMIN_ROLE);
        _setRoleAdmin(PAUSER_ROLE, ADMIN_ROLE);

        paymentToken = _paymentToken;
        UNDERLYING_TOKEN = _underlyingToken;
        twapOracle = _twapOracle;
        feeDistributor = _feeDistributor;
        pair = _pair;
        router = _router;
        voter = _voter;

        paymentToken.approve(address(_feeDistributor), type(uint256).max);

        emit SetTwapOracleAndPaymentToken(_twapOracle, address(_paymentToken));
        emit SetPairAndPaymentToken(_pair, address(paymentToken));
        emit SetRouter(router);
        emit SetFeeDistributor(_feeDistributor);
        emit SetDiscount(discount);
        emit SetVeDiscount(veMaxDiscount);
        emit SetMinLPDiscount(minLPDiscount);
        emit SetMaxLPDiscount(maxLPDiscount);
    }

    /// -----------------------------------------------------------------------
    /// External functions
    /// -----------------------------------------------------------------------

    /// @notice Exercises options tokens to purchase the underlying tokens.
    /// @dev The oracle may revert if it cannot give a secure result.
    /// @param _amount The amount of options tokens to exercise
    /// @param _maxPaymentAmount The maximum acceptable amount to pay. Used for slippage protection.
    /// @param _recipient The recipient of the purchased underlying tokens
    /// @return The amount paid to the fee distributor to purchase the underlying tokens
    function exercise(uint256 _amount, uint256 _maxPaymentAmount, address _recipient) external returns (uint256) {
        return _exercise(_amount, _maxPaymentAmount, _recipient);
    }

    /// @notice Exercises options tokens to purchase the underlying tokens.
    /// @dev The oracle may revert if it cannot give a secure result.
    /// @param _amount The amount of options tokens to exercise
    /// @param _maxPaymentAmount The maximum acceptable amount to pay. Used for slippage protection.
    /// @param _recipient The recipient of the purchased underlying tokens
    /// @param _deadline The Unix timestamp (in seconds) after which the call will revert
    /// @return The amount paid to the fee distributor to purchase the underlying tokens
    function exercise(
        uint256 _amount,
        uint256 _maxPaymentAmount,
        address _recipient,
        uint256 _deadline
    ) external returns (uint256) {
        if (block.timestamp > _deadline) revert OptionToken_PastDeadline();
        return _exercise(_amount, _maxPaymentAmount, _recipient);
    }

    /// @notice Exercises options tokens to purchase the underlying tokens.
    /// @dev The oracle may revert if it cannot give a secure result.
    /// @param _amount The amount of options tokens to exercise
    /// @param _maxPaymentAmount The maximum acceptable amount to pay. Used for slippage protection.
    /// @param _recipient The recipient of the purchased underlying tokens
    /// @param _deadline The Unix timestamp (in seconds) after which the call will revert
    /// @return The amount paid to the fee distributor to purchase the underlying tokens
    function exerciseVe(
        uint256 _amount,
        uint256 _maxPaymentAmount,
        address _recipient,
        uint256 _discount,
        uint256 _deadline
    ) external returns (uint256, uint256) {
        if (block.timestamp > _deadline) revert OptionToken_PastDeadline();
        return _exerciseVe(_amount, _maxPaymentAmount, _discount, _recipient);
    }

    /// @notice Exercises options tokens to create LP and stake in gauges with lock.
    /// @dev The oracle may revert if it cannot give a secure result.
    /// @param _amount The amount of options tokens to exercise
    /// @param _maxPaymentAmount The maximum acceptable amount to pay. Used for slippage protection.
    /// @param _discount The desired discount
    /// @param _deadline The Unix timestamp (in seconds) after which the call will revert
    /// @return The amount paid to the treasury to purchase the underlying tokens

    function exerciseLp(
        uint256 _amount,
        uint256 _maxPaymentAmount,
        uint256 _maxLPAmount,
        address _recipient,
        uint256 _discount,
        uint256 _deadline
    ) external returns (uint256, uint256) {
        if (block.timestamp > _deadline) revert OptionToken_PastDeadline();
        return _exerciseLp(_amount, _maxPaymentAmount, _maxLPAmount, _recipient, _discount);
    }

    function exerciseExternal(
        IOption _option,
        uint256 _amount,
        uint256 _deadline,
        bytes calldata _data
    ) external returns (uint256) {
        if (!optionTokens[address(_option)]) revert OptionToken_InvalidOption();
        if (block.timestamp > _deadline) revert OptionToken_PastDeadline();
        uint256 paymentAmount = _option.getPaymentAmount(_amount, _data);
        _burn(msg.sender, _amount);
        _option.paymentToken().safeTransferFrom(msg.sender, address(_option), paymentAmount);
        UNDERLYING_TOKEN.safeTransfer(address(_option), _amount);
        return _option.exercise(_amount, msg.sender, _data);
    }

    /// -----------------------------------------------------------------------
    /// Public functions
    /// -----------------------------------------------------------------------

    function getVotingEscrow() external view returns (address votingEscrow) {
        votingEscrow = IVoter(voter).ve();
    }

    /// @notice Returns the discounted price in paymentTokens for a given amount of options tokens
    /// @param _amount The amount of options tokens to exercise
    /// @return The amount of payment tokens to pay to purchase the underlying tokens
    function getDiscountedPrice(uint256 _amount) public view returns (uint256) {
        return getDiscountedPrice(_amount, discount);
    }

    /// @notice Returns the discounted price in paymentTokens for a given amount of options tokens redeemed to veToken
    /// @param _amount The amount of options tokens to exercise
    /// @param _discount The discount amount
    /// @return The amount of payment tokens to pay to purchase the underlying tokens
    function getDiscountedPrice(uint256 _amount, uint256 _discount) public view returns (uint256) {
        return (getTimeWeightedAveragePrice(_amount) * _discount) / 100;
    }

    /// @notice Returns the average price in payment tokens over period defined in twapSeconds for an amount of tokens
    /// @param _amount The amount of underlying tokens to purchase
    /// @return The amount of payment tokens
    function getTimeWeightedAveragePrice(uint256 _amount) public view returns (uint256) {
        return twapOracle.estimateAmountOut(address(UNDERLYING_TOKEN), uint128(_amount), twapSeconds);
    }

    /// @notice Returns the lock duration for a desired discount to create locked LP
    function getLockDurationForLpDiscount(uint256 _discount) public view returns (uint256 duration) {
        (int256 slope, int256 intercept) = getSlopeInterceptForLpDiscount();
        duration = Math.abs(slope * int256(_discount) + intercept);
    }

    /// @notice Returns the lock duration for a desired discount to create locked VE
    function getLockDurationForVeDiscount(uint256 _discount) public view returns (uint256 duration) {
        (int256 slope, int256 intercept) = getSlopeInterceptForVeDiscount();
        duration = Math.abs(slope * int256(_discount) + intercept);
    }

    /// @notice Returns the amount in paymentTokens for a given amount of options tokens required for the LP exercise lp
    /// @param _amount The amount of options tokens to exercise
    /// @param _discount The discount amount
    function getPaymentTokenAmountForExerciseLp(
        uint256 _amount,
        uint256 _discount
    ) public view returns (uint256 paymentAmount, uint256 paymentAmountToAddLiquidity) {
        paymentAmount = getDiscountedPrice(_amount, _discount);
        (uint256 underlyingReserve, uint256 paymentReserve) = IRouter(router).getReserves(
            address(UNDERLYING_TOKEN),
            address(paymentToken),
            false
        );
        paymentAmountToAddLiquidity = (_amount * paymentReserve) / underlyingReserve;
    }

    function getSlopeInterceptForLpDiscount() public view returns (int256 slope, int256 intercept) {
        slope =
            int256(lockDurationForMaxLpDiscount - lockDurationForMinLpDiscount) /
            (int256(maxLPDiscount) - int256(minLPDiscount));
        intercept = int256(lockDurationForMinLpDiscount) - (slope * int256(minLPDiscount));
    }

    function getSlopeInterceptForVeDiscount() public view returns (int256 slope, int256 intercept) {
        slope = int256(FULL_LOCK - lockDurationForMinVeDiscount) / (int256(veMaxDiscount) - int256(discount));
        intercept = int256(lockDurationForMinVeDiscount) - (slope * int256(discount));
    }

    /// -----------------------------------------------------------------------
    /// Admin functions
    /// -----------------------------------------------------------------------

    /// @notice Sets the twap oracle contract address.
    /// @param _twapOracle The new twap oracle contract address
    function setTwapOracleAndPaymentToken(IDynamicTwapOracle _twapOracle, address _paymentToken) external onlyAdmin {
        if (
            !((_twapOracle.token0() == _paymentToken && _twapOracle.token1() == address(UNDERLYING_TOKEN)) ||
                (_twapOracle.token0() == address(UNDERLYING_TOKEN) && _twapOracle.token1() == _paymentToken))
        ) revert OptionToken_IncorrectPairToken();
        twapOracle = _twapOracle;
        paymentToken = ERC20(_paymentToken);
        paymentToken.approve(address(feeDistributor), type(uint256).max);
        emit SetTwapOracleAndPaymentToken(_twapOracle, _paymentToken);
    }

    /// @notice Sets the fee distributor. Only callable by the admin.
    /// @param _feeDistributor The new fee distributor.
    function setFeeDistributor(IOptionFeeDistributor _feeDistributor) external onlyAdmin {
        paymentToken.approve(address(feeDistributor), 0);
        feeDistributor = _feeDistributor;
        paymentToken.approve(address(_feeDistributor), type(uint256).max);
        emit SetFeeDistributor(_feeDistributor);
    }

    /// @notice Sets the discount amount. Only callable by the admin.
    /// @param _discount The new discount amount.
    function setDiscount(uint256 _discount) external onlyAdmin {
        if (_discount > MAX_DISCOUNT || _discount == MIN_DISCOUNT) revert OptionToken_InvalidDiscount();
        discount = _discount;
        emit SetDiscount(_discount);
    }

    /// @notice Sets the further discount amount for locking. Only callable by the admin.
    /// @param _veDiscount The new discount amount.
    function setVeDiscount(uint256 _veDiscount) external onlyAdmin {
        if (_veDiscount > MAX_DISCOUNT || _veDiscount == MIN_DISCOUNT) revert OptionToken_InvalidDiscount();
        veMaxDiscount = _veDiscount;
        emit SetVeDiscount(_veDiscount);
    }

    /// @notice Sets the twap seconds to control the length of our twap
    /// @param _twapSeconds The new twap points.
    function setTwapSeconds(uint32 _twapSeconds) external onlyAdmin {
        if (_twapSeconds > MAX_TWAP_SECONDS || _twapSeconds == 0) revert OptionToken_InvalidTwapSeconds();
        twapSeconds = _twapSeconds;
        emit SetTwapSeconds(_twapSeconds);
    }

    /// @notice Sets the pair contract. Only callable by the admin.
    /// @param _pair The new pair contract
    function setPairAndPaymentToken(IPair _pair, address _paymentToken) external onlyAdmin {
        (address token0, address token1) = _pair.tokens();
        if (
            !((token0 == _paymentToken && token1 == address(UNDERLYING_TOKEN)) ||
                (token0 == address(UNDERLYING_TOKEN) && token1 == _paymentToken))
        ) revert OptionToken_IncorrectPairToken();
        pair = _pair;
        gauge = IVoter(voter).gauges(address(_pair));
        paymentToken = IERC20(_paymentToken);
        emit SetPairAndPaymentToken(_pair, _paymentToken);
    }

    /// @notice Update gauge address to match with Voter contract
    function updateGauge() external {
        address newGauge = IVoter(voter).gauges(address(pair));
        gauge = newGauge;
        emit SetGauge(newGauge);
    }

    /// @notice Sets the gauge address when the gauge is not listed in Voter. Only callable by the admin.
    /// @param _gauge The new treasury address
    function setGauge(address _gauge) external onlyAdmin {
        gauge = _gauge;
        emit SetGauge(_gauge);
    }

    /// @notice Sets the router address. Only callable by the admin.
    /// @param _router The new router address
    function setRouter(address _router) external onlyAdmin {
        router = _router;
        emit SetRouter(_router);
    }

    /// @notice Sets the discount amount for lp. Only callable by the admin.
    /// @param _lpMinDiscount The new discount amount.
    function setMinLPDiscount(uint256 _lpMinDiscount) external onlyAdmin {
        /// @dev Cannot be lower than MIN_DISCOUNT or gte maxLPDiscount
        if (_lpMinDiscount > MAX_DISCOUNT || _lpMinDiscount == MIN_DISCOUNT || maxLPDiscount > _lpMinDiscount)
            revert OptionToken_InvalidDiscount();
        minLPDiscount = _lpMinDiscount;
        emit SetMinLPDiscount(_lpMinDiscount);
    }

    /// @notice Sets the discount amount for lp. Only callable by the admin.
    /// @param _lpMaxDiscount The new discount amount.
    function setMaxLPDiscount(uint256 _lpMaxDiscount) external onlyAdmin {
        /// @dev Cannot be higher than MAX_DISCOUNT or lte minLPDiscount
        if (_lpMaxDiscount > MAX_DISCOUNT || _lpMaxDiscount == MIN_DISCOUNT || _lpMaxDiscount > minLPDiscount)
            revert OptionToken_InvalidDiscount();
        maxLPDiscount = _lpMaxDiscount;
        emit SetMaxLPDiscount(_lpMaxDiscount);
    }

    /// @notice Sets the lock duration for max discount amount to create LP and stake in gauge.
    /// @param _duration The new lock duration.
    function setLockDurationForMaxLpDiscount(uint256 _duration) external onlyAdmin {
        if (_duration <= lockDurationForMinLpDiscount) revert OptionToken_InvalidLockDuration();
        lockDurationForMaxLpDiscount = _duration;
        emit SetLockDurationForMaxLpDiscount(_duration);
    }

    /// @notice Sets the lock duration for min discount amount for locked veToken.
    /// @param _duration The new lock duration.
    function setLockDurationForMinVeDiscount(uint256 _duration) external onlyAdmin {
        if (_duration > lockDurationForMinVeDiscount) revert OptionToken_InvalidLockDuration();
        lockDurationForMinVeDiscount = _duration;
        emit SetLockDurationForMaxLpDiscount(_duration);
    }

    // @notice Sets the lock duration for min discount amount to create LP and stake in gauge.
    /// @param _duration The new lock duration.
    function setLockDurationForMinLpDiscount(uint256 _duration) external onlyAdmin {
        if (_duration > lockDurationForMaxLpDiscount) revert OptionToken_InvalidLockDuration();
        lockDurationForMinLpDiscount = _duration;
        emit SetLockDurationForMinLpDiscount(_duration);
    }

    /// @notice Called by the admin to burn options tokens and transfer underlying tokens to the caller.
    /// @param _amount The amount of options tokens that will be burned and underlying tokens transferred to the caller
    function burn(uint256 _amount) external onlyAdmin {
        // transfer underlying tokens to the caller
        UNDERLYING_TOKEN.safeTransfer(msg.sender, _amount);
        // burn option tokens
        _burn(msg.sender, _amount);
    }

    /// @notice called by the admin to re-enable option exercising from a paused state.
    function unPause() external onlyAdmin {
        if (!isPaused) return;
        isPaused = false;
        emit PauseStateChanged(false);
    }

    /// @notice called by the admin to re-enable option exercising from a paused state.
    function togglePermissionedMint() external onlyAdmin {
        permissionedMint = !permissionedMint;
    }

    function toggleOption(address option, bool enabled) external onlyAdmin {
        optionTokens[option] = enabled;
        emit ToggleOption(option, enabled);
    }

    /// -----------------------------------------------------------------------
    /// Minter functions
    /// -----------------------------------------------------------------------

    /// @notice Called by the minter to mint options tokens. Admin must grant token approval.
    /// @param _to The address that will receive the minted options tokens
    /// @param _amount The amount of options tokens that will be minted
    function mint(address _to, uint256 _amount) external onlyMinter {
        // transfer underlying tokens from the caller
        UNDERLYING_TOKEN.safeTransferFrom(msg.sender, address(this), _amount);
        // mint options tokens
        _mint(_to, _amount);
    }

    /// -----------------------------------------------------------------------
    /// Pauser functions
    /// -----------------------------------------------------------------------
    function pause() external onlyPauser {
        if (isPaused) return;
        isPaused = true;
        emit PauseStateChanged(true);
    }

    /// -----------------------------------------------------------------------
    /// Internal functions
    /// -----------------------------------------------------------------------

    function _exercise(
        uint256 _amount,
        uint256 _maxPaymentAmount,
        address _recipient
    ) internal returns (uint256 paymentAmount) {
        if (isPaused) revert OptionToken_Paused();

        // burn callers tokens
        _burn(msg.sender, _amount);
        paymentAmount = getDiscountedPrice(_amount);
        if (paymentAmount > _maxPaymentAmount) revert OptionToken_SlippageTooHigh();

        // transfer payment tokens from msg.sender to the fee distributor
        paymentToken.safeTransferFrom(msg.sender, address(this), paymentAmount);
        feeDistributor.distribute(address(paymentToken), paymentAmount);

        // send underlying tokens to recipient
        UNDERLYING_TOKEN.safeTransfer(_recipient, _amount); // will revert on failure

        emit Exercise(msg.sender, _recipient, _amount, paymentAmount);
    }

    function _exerciseVe(
        uint256 _amount,
        uint256 _maxPaymentAmount,
        uint256 _discount,
        address _recipient
    ) internal returns (uint256 paymentAmount, uint256 nftId) {
        if (isPaused) revert OptionToken_Paused();
        if (_discount > discount || _discount < veMaxDiscount) revert OptionToken_InvalidDiscount();


        // burn callers tokens
        _burn(msg.sender, _amount);
        paymentAmount = getDiscountedPrice(_amount, _discount);
        if (paymentAmount > _maxPaymentAmount) revert OptionToken_SlippageTooHigh();

        // transfer payment tokens from msg.sender to the fee distributor
        paymentToken.safeTransferFrom(msg.sender, address(this), paymentAmount);
        feeDistributor.distribute(address(paymentToken), paymentAmount);

        address votingEscrow = IVoter(voter).ve();

        // lock underlying tokens to vote escrow
        UNDERLYING_TOKEN.approve(votingEscrow, _amount);
        nftId = IVotingEscrowV2(votingEscrow).createLockFor(
            _amount,
            getLockDurationForVeDiscount(_discount),
            _recipient,
            false
        );

        emit ExerciseVe(msg.sender, _recipient, _amount, paymentAmount, nftId);
    }

    function _exerciseLp(
        uint256 _amount, // the oTOKEN amount the user wants to redeem with
        uint256 _maxPaymentAmount, // the
        uint256 _maxLPAmount, // the
        address _recipient,
        uint256 _discount
    ) internal returns (uint256 paymentAmount, uint256 lpAmount) {
        if (isPaused) revert OptionToken_Paused();
        if (_discount > minLPDiscount || _discount < maxLPDiscount) revert OptionToken_InvalidDiscount();

        // burn callers tokens
        _burn(msg.sender, _amount);
        (uint256 paymentAmounts, uint256 paymentAmountToAddLiquidity) = getPaymentTokenAmountForExerciseLp(
            _amount,
            _discount
        );
        paymentAmount = paymentAmounts;

        if (paymentAmount > _maxPaymentAmount || paymentAmountToAddLiquidity > _maxLPAmount) revert OptionToken_SlippageTooHigh();

        /// @notice user pays redeem amount + required payment for LP deposit
        paymentToken.safeTransferFrom(msg.sender, address(this), paymentAmount + paymentAmountToAddLiquidity);

        // transfer payment tokens to the fee distributor
        feeDistributor.distribute(address(paymentToken), paymentAmount);

        // Create Lp for users
        UNDERLYING_TOKEN.approve(router, _amount);
        paymentToken.approve(router, paymentAmountToAddLiquidity);
        (, , lpAmount) = IRouter(router).addLiquidity(
            address(UNDERLYING_TOKEN),
            address(paymentToken),
            false,
            _amount,
            paymentAmountToAddLiquidity,
            1,
            1,
            address(this),
            block.timestamp
        );

        IERC20(address(pair)).approve(gauge, lpAmount);

        IGauge(gauge).depositWithLock(_recipient, lpAmount, getLockDurationForLpDiscount(_discount));

        emit ExerciseLp(msg.sender, _recipient, _amount, paymentAmount, lpAmount);
    }
}
