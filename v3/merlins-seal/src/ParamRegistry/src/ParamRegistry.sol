// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.26;

import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";

import {IParamRegistry} from "./interfaces/IParamRegistry.sol";

import {Errors} from "./libraries/Errors.sol";
import {Constants} from "./common/Constants.sol";

/// @title ParamRegistry
/// @author luoyhang003
/// @notice Centralized registry for protocol parameters, including fee rates,
///         deposit caps, tolerances, and operational flags.
/// @dev Controlled via role-based access and timelocks (D0, D1, D3).
///      Provides getter and setter functions for configuration parameters
///      used across deposit, redemption, and pricing logic.
contract ParamRegistry is IParamRegistry, AccessControl, Constants {
    /*//////////////////////////////////////////////////////////////////////////
                                    STATE VARIABLES
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Role controlling same-day (D0) parameter changes.
    bytes32 public constant D0_TIMELOCK_ROLE = keccak256("D0_TIMELOCK_ROLE");

    /// @notice Role controlling 1-day delay (D1) parameter changes.
    bytes32 public constant D1_TIMELOCK_ROLE = keccak256("D1_TIMELOCK_ROLE");

    /// @notice Role controlling 3-day delay (D3) parameter changes.
    bytes32 public constant D3_TIMELOCK_ROLE = keccak256("D3_TIMELOCK_ROLE");

    /// @notice Maximum allowed upper deviation in exchange rate (bps).
    uint256 public constant EXCHANGE_RATE_MAX_UPPER_DEVIATION_BPS = 200;

    /// @notice Maximum allowed lower deviation in exchange rate (bps).
    uint256 public constant EXCHANGE_RATE_MAX_LOWER_DEVIATION_BPS = 200;

    /// @notice Maximum allowed deviation in stablecoin prices (bps).
    uint256 public constant STABLECOIN_PRICE_MAX_DEVIATION_BPS = 500;

    /// @notice Maximum allowed deviation in volatile asset prices (bps).
    uint256 public constant VOLATILE_ASSET_PRICE_MAX_DEVIATION_BPS = 5000;

    /// @notice Minimum interval allowed for price updates.
    uint256 public constant PRICE_UPDATE_MIN_INTERVAL = 1 hours;

    /// @notice Maximum interval allowed for price updates.
    uint256 public constant PRICE_UPDATE_MAX_INTERVAL = 3 days;

    /// @notice Maximum validity period for price feeds.
    uint256 public constant PRICE_MAX_VALIDITY_DURATION = 7 days;

    /// @notice Maximum allowed mint fee rate (bps).
    uint256 public constant MAX_MINT_FEE_RATE = 200;

    /// @notice Maximum allowed redeem fee rate (bps).
    uint256 public constant MAX_REDEEM_FEE_RATE = 200;

    /// @notice Current configured upper tolerance for exchange rate deviation.
    uint256 private _exchangeRateMaxUpperToleranceBps = 100;

    /// @notice Current configured lower tolerance for exchange rate deviation.
    uint256 private _exchangeRateMaxLowerToleranceBps = 50;

    /// @notice Current configured stablecoin price tolerance.
    uint256 private _stablecoinPriceToleranceBps = 30;

    /// @notice Current configured volatile asset price tolerance.
    uint256 private _volatileAssetPriceToleranceBps = 500;

    /// @notice Minimum interval between price updates.
    uint256 private _priceUpdateInterval = 6 hours;

    /// @notice Maximum validity period for cached price feeds.
    uint256 private _price_validity_duration = 3 days;

    /// @notice Global cap on total deposits across all assets.
    uint256 private _total_deposit_cap = type(uint256).max;

    /// @notice Global array length limits.
    uint256 private _array_length_limit = 20;

    /// @notice Address receiving collected fees.
    address private _fee_recipient;

    /// @notice Address receiving forfeited assets (treasury).
    address private _forfeit_treasury;

    /// @notice Mapping of mint fee rates by asset.
    mapping(address => uint256) private _mintFeeRate;

    /// @notice Mapping of redeem fee rates by asset.
    mapping(address => uint256) private _redeemFeeRate;

    /// @notice Deposit enablement flags by asset.
    mapping(address => bool) private _depositEnabled;

    /// @notice Redeem enablement flags by asset.
    mapping(address => bool) private _redeemEnabled;

    /// @notice Deposit caps for individual assets.
    mapping(address => uint256) private _tokenDepositCap;

    /*//////////////////////////////////////////////////////////////////////////
                                    CONSTRUCTOR
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Deploys the ParamRegistry contract with initial roles and recipients.
    /// @param _admin Address to be assigned DEFAULT_ADMIN_ROLE.
    /// @param _d0Timelock Address for D0 timelock role (immediate changes).
    /// @param _d1Timelock Address for D1 timelock role (delayed changes).
    /// @param _d3Timelock Address for D3 timelock role (longer delays).
    /// @param _feeRecipient Address to receive protocol fees.
    /// @param _forfeitTreasury Address to receive forfeited assets.
    /// @dev Ensures none of the provided addresses are zero.
    constructor(
        address _admin,
        address _d0Timelock,
        address _d1Timelock,
        address _d3Timelock,
        address _feeRecipient,
        address _forfeitTreasury
    ) {
        if (
            _admin == address(0) ||
            _d0Timelock == address(0) ||
            _d1Timelock == address(0) ||
            _d3Timelock == address(0) ||
            _feeRecipient == address(0) ||
            _forfeitTreasury == address(0)
        ) revert Errors.ZeroAddress();

        _grantRole(DEFAULT_ADMIN_ROLE, _admin);

        _grantRole(D0_TIMELOCK_ROLE, _d0Timelock);
        _grantRole(D1_TIMELOCK_ROLE, _d1Timelock);
        _grantRole(D3_TIMELOCK_ROLE, _d3Timelock);

        _fee_recipient = _feeRecipient;
        _forfeit_treasury = _forfeitTreasury;
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    GETTER FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Returns the current upper tolerance for exchange rate deviation.
    function getExchangeRateMaxUpperToleranceBps()
        external
        view
        returns (uint256)
    {
        return _exchangeRateMaxUpperToleranceBps;
    }

    /// @notice Returns the current lower tolerance for exchange rate deviation.
    function getExchangeRateMaxLowerToleranceBps()
        external
        view
        returns (uint256)
    {
        return _exchangeRateMaxLowerToleranceBps;
    }

    /// @notice Returns the current stablecoin price tolerance in bps.
    function getStablecoinPriceToleranceBps() external view returns (uint256) {
        return _stablecoinPriceToleranceBps;
    }

    /// @notice Returns the current volatile asset price tolerance in bps.
    function getVolatileAssetPriceToleranceBps()
        external
        view
        returns (uint256)
    {
        return _volatileAssetPriceToleranceBps;
    }

    /// @notice Returns the minimum interval between price updates.
    function getPriceUpdateInterval() external view returns (uint256) {
        return _priceUpdateInterval;
    }

    /// @notice Returns the maximum validity duration of cached prices.
    function getPriceValidityDuration() external view returns (uint256) {
        return _price_validity_duration;
    }

    /// @notice Returns the configured mint fee rate for a given asset.
    /// @param _asset The address of the asset.
    /// @return The mint fee rate in basis points.
    function getMintFeeRate(address _asset) external view returns (uint256) {
        return _mintFeeRate[_asset];
    }

    /// @notice Returns the configured redeem fee rate for a given asset.
    /// @param _asset The address of the asset.
    /// @return The redeem fee rate in basis points.
    function getRedeemFeeRate(address _asset) external view returns (uint256) {
        return _redeemFeeRate[_asset];
    }

    /// @notice Returns whether deposits are enabled for a given asset.
    /// @param _asset The address of the asset.
    /// @return True if deposits are enabled, false otherwise.
    function getDepositEnabled(address _asset) external view returns (bool) {
        return _depositEnabled[_asset];
    }

    /// @notice Returns whether redemptions are enabled for a given asset.
    /// @param _asset The address of the asset.
    /// @return True if redemptions are enabled, false otherwise.
    function getRedeemEnabled(address _asset) external view returns (bool) {
        return _redeemEnabled[_asset];
    }

    /// @notice Returns the global deposit cap.
    function getTotalDepositCap() external view returns (uint256) {
        return _total_deposit_cap;
    }

    /// @notice Returns the deposit cap for a specific asset.
    /// @param _asset The address of the asset.
    function getTokenDepositCap(
        address _asset
    ) external view returns (uint256) {
        return _tokenDepositCap[_asset];
    }

    /// @notice Returns the global array length limit.
    function getArrayLengthLimit() external view returns (uint256) {
        return _array_length_limit;
    }

    /// @notice Returns the address of the fee recipient.
    function getFeeRecipient() external view returns (address) {
        return _fee_recipient;
    }

    /// @notice Returns the address of the forfeited assets treasury.
    function getForfeitTreasury() external view returns (address) {
        return _forfeit_treasury;
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    SETTER FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Updates the maximum upper tolerance for exchange rate deviation.
    /// @param _bps New tolerance value in basis points.
    /// @dev Only callable by {D0_TIMELOCK_ROLE}.
    function setExchangeRateMaxUpperToleranceBps(
        uint256 _bps
    ) external onlyRole(D0_TIMELOCK_ROLE) {
        if (_bps > EXCHANGE_RATE_MAX_UPPER_DEVIATION_BPS)
            revert Errors.ExceedMaxDeviationBps();

        emit SetExchangeRateMaxUpperToleranceBps(
            _exchangeRateMaxUpperToleranceBps,
            _bps
        );

        _exchangeRateMaxUpperToleranceBps = _bps;
    }

    /// @notice Updates the maximum lower tolerance for exchange rate deviation.
    /// @param _bps New tolerance value in basis points.
    /// @dev Only callable by {D0_TIMELOCK_ROLE}.
    function setExchangeRateMaxLowerToleranceBps(
        uint256 _bps
    ) external onlyRole(D0_TIMELOCK_ROLE) {
        if (_bps > EXCHANGE_RATE_MAX_LOWER_DEVIATION_BPS)
            revert Errors.ExceedMaxDeviationBps();

        emit SetExchangeRateMaxLowerToleranceBps(
            _exchangeRateMaxLowerToleranceBps,
            _bps
        );

        _exchangeRateMaxLowerToleranceBps = _bps;
    }

    /// @notice Updates the stablecoin price tolerance.
    /// @param _bps New tolerance value in basis points.
    /// @dev Only callable by {D0_TIMELOCK_ROLE}.
    function setStablecoinPriceToleranceBps(
        uint256 _bps
    ) external onlyRole(D0_TIMELOCK_ROLE) {
        if (_bps > STABLECOIN_PRICE_MAX_DEVIATION_BPS)
            revert Errors.ExceedMaxDeviationBps();

        emit SetStablecoinPriceToleranceBps(_stablecoinPriceToleranceBps, _bps);

        _stablecoinPriceToleranceBps = _bps;
    }

    /// @notice Updates the volatile asset price tolerance.
    /// @param _bps New tolerance value in basis points.
    /// @dev Only callable by {D0_TIMELOCK_ROLE}.
    function setVolatileAssetPriceToleranceBps(
        uint256 _bps
    ) external onlyRole(D0_TIMELOCK_ROLE) {
        if (_bps > VOLATILE_ASSET_PRICE_MAX_DEVIATION_BPS)
            revert Errors.ExceedMaxDeviationBps();

        emit SetVolatileAssetPriceToleranceBps(
            _volatileAssetPriceToleranceBps,
            _bps
        );

        _volatileAssetPriceToleranceBps = _bps;
    }

    /// @notice Updates the minimum price update interval.
    /// @param _interval New interval in seconds.
    /// @dev Only callable by {D0_TIMELOCK_ROLE}.
    function setPriceUpdateInterval(
        uint256 _interval
    ) external onlyRole(D0_TIMELOCK_ROLE) {
        if (
            _interval < PRICE_UPDATE_MIN_INTERVAL ||
            _interval > PRICE_UPDATE_MAX_INTERVAL
        ) revert Errors.InvalidPriceUpdateInterval();

        emit SetPriceUpdateInterval(_priceUpdateInterval, _interval);

        _priceUpdateInterval = _interval;
    }

    /// @notice Updates the validity duration of price feeds.
    /// @param _duration New duration in seconds.
    /// @dev Only callable by {D1_TIMELOCK_ROLE}.
    function setPriceValidityDuration(
        uint256 _duration
    ) external onlyRole(D1_TIMELOCK_ROLE) {
        if (_duration == 0) revert Errors.ZeroAmount();
        if (_duration > PRICE_MAX_VALIDITY_DURATION)
            revert Errors.PriceMaxValidityExceeded();

        emit SetPriceValidityDuration(_price_validity_duration, _duration);

        _price_validity_duration = _duration;
    }

    /// @notice Sets the mint fee rate for an asset.
    /// @param _asset Address of the asset.
    /// @param _rate New fee rate in bps.
    /// @dev Only callable by {D0_TIMELOCK_ROLE}.
    function setMintFeeRate(
        address _asset,
        uint256 _rate
    ) external onlyRole(D0_TIMELOCK_ROLE) {
        if (_asset == address(0)) revert Errors.ZeroAddress();
        if (_rate > MAX_MINT_FEE_RATE) revert Errors.ExceedMaxMintFeeRate();

        emit SetMintFeeRate(_asset, _mintFeeRate[_asset], _rate);

        _mintFeeRate[_asset] = _rate;
    }

    /// @notice Sets the redeem fee rate for an asset.
    /// @param _asset Address of the asset.
    /// @param _rate New fee rate in bps.
    /// @dev Only callable by {D3_TIMELOCK_ROLE}.
    function setRedeemFeeRate(
        address _asset,
        uint256 _rate
    ) external onlyRole(D3_TIMELOCK_ROLE) {
        if (_asset == address(0)) revert Errors.ZeroAddress();
        if (_rate > MAX_REDEEM_FEE_RATE) revert Errors.ExceedMaxRedeemFeeRate();

        emit SetRedeemFeeRate(_asset, _redeemFeeRate[_asset], _rate);

        _redeemFeeRate[_asset] = _rate;
    }

    /// @notice Enables or disables deposits for an asset.
    /// @param _asset Asset address.
    /// @param _enabled True to enable, false to disable.
    /// @dev Only callable by {D0_TIMELOCK_ROLE}.
    function setDepositEnabled(
        address _asset,
        bool _enabled
    ) external onlyRole(D0_TIMELOCK_ROLE) {
        if (_asset == address(0)) revert Errors.ZeroAddress();

        _depositEnabled[_asset] = _enabled;

        emit SetDepositEnabled(_asset, _enabled);
    }

    /// @notice Enables or disables redemption for an asset.
    /// @param _asset Asset address.
    /// @param _enabled True to enable, false to disable.
    /// @dev Only callable by {D3_TIMELOCK_ROLE}.
    function setRedeemEnabled(
        address _asset,
        bool _enabled
    ) external onlyRole(D3_TIMELOCK_ROLE) {
        if (_asset == address(0)) revert Errors.ZeroAddress();

        _redeemEnabled[_asset] = _enabled;

        emit SetRedeemEnabled(_asset, _enabled);
    }

    /// @notice Sets the global deposit cap.
    /// @param _cap New total deposit cap.
    /// @dev Only callable by {D0_TIMELOCK_ROLE}.
    function setTotalDepositCap(
        uint256 _cap
    ) external onlyRole(D0_TIMELOCK_ROLE) {
        emit SetTotalDepositCap(_total_deposit_cap, _cap);

        _total_deposit_cap = _cap;
    }

    /// @notice Sets the deposit cap for a specific asset.
    /// @param _asset Asset address.
    /// @param _cap New cap value.
    /// @dev Only callable by {D0_TIMELOCK_ROLE}.
    function setTokenDepositCap(
        address _asset,
        uint256 _cap
    ) external onlyRole(D0_TIMELOCK_ROLE) {
        if (_asset == address(0)) revert Errors.ZeroAddress();

        emit SetTokenDepositCap(_asset, _tokenDepositCap[_asset], _cap);

        _tokenDepositCap[_asset] = _cap;
    }

    /// @notice Sets global array length limit.
    /// @param _limit New limit.
    /// @dev Only callable by {D0_TIMELOCK_ROLE}.
    function setArrayLengthLimit(
        uint256 _limit
    ) external onlyRole(D0_TIMELOCK_ROLE) {
        if (_limit == 0) revert Errors.ZeroAmount();

        emit SetArrayLengthLimit(_array_length_limit, _limit);

        _array_length_limit = _limit;
    }

    /// @notice Updates the fee recipient address.
    /// @param _feeRecipient New recipient address.
    /// @dev Only callable by {D0_TIMELOCK_ROLE}.
    function setFeeRecipient(
        address _feeRecipient
    ) external onlyRole(D0_TIMELOCK_ROLE) {
        if (_feeRecipient == address(0)) revert Errors.ZeroAddress();

        emit SetFeeRecipient(_fee_recipient, _feeRecipient);

        _fee_recipient = _feeRecipient;
    }

    /// @notice Updates the forfeited assets treasury address.
    /// @param _forfeitTreasury New treasury address.
    /// @dev Only callable by {D0_TIMELOCK_ROLE}.
    function setForfeitTreasury(
        address _forfeitTreasury
    ) external onlyRole(D0_TIMELOCK_ROLE) {
        if (_forfeitTreasury == address(0)) revert Errors.ZeroAddress();

        emit SetForfeitTreasury(_forfeit_treasury, _forfeitTreasury);

        _forfeit_treasury = _forfeitTreasury;
    }
}
