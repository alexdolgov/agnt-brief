//SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {EnumerableMap} from "@openzeppelin/contracts/utils/structs/EnumerableMap.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

interface IERC20Burnable is IERC20 {
    function burnFrom(address account, uint256 amount) external;
}

contract Redemption is Ownable, ReentrancyGuard, Pausable {
    using SafeERC20 for IERC20;
    using EnumerableSet for EnumerableSet.AddressSet;
    using EnumerableMap for EnumerableMap.AddressToUintMap;

    uint8 public constant REDEEMABLE_DECIMALS = 18;
    uint256 internal constant RATE_BASE = 1e18;

    IERC20Burnable public immutable redeemableToken;
    address public immutable vault;

    uint64 public startTime;
    uint64 public endTime;

    EnumerableSet.AddressSet private _redemptionTokens;   // allowed tokens
    EnumerableMap.AddressToUintMap private _exchangeRate; // token => rate

    // -------- Errors --------
    error ZeroAddress();
    error ZeroAmount();
    error NoRedemptionTokens();
    error RateZero();
    error RateTooLow(address token, uint256 currentRate);
    error SameTokenAsRedeemable();
    error TokenAlreadyExists(address token);
    error TokenNotAllowed(address token);
    error IndexOutOfBounds();
    error TokenMismatch();
    error ArrayLengthMismatch(uint256 tokensLength, uint256 ratesLength);
    error TimeOrderInvalid(uint64 startTime, uint64 endTime);
    error RedemptionNotActive(uint64 startTime, uint64 endTime);
    error InsufficientLiquidity(address token, uint256 available, uint256 required);
    error RedeemableDecimalsQueryFailed();
    error InvalidRedeemableDecimals(uint8 decimals);

    // -------- Events --------
    event Redeemed(address indexed user, uint256 amountIn);
    event RedemptionTokenAdded(address indexed token, uint256 rate);
    event RedemptionTokenRemoved(address indexed token);
    event RedemptionPeriodSet(uint64 startTime, uint64 endTime);
    event ExchangeRateUpdated(address indexed token, uint256 newRate);
    event TokenWithdrawn(address indexed token, uint256 amount);

    constructor(address _redeemableToken, address _vault) ReentrancyGuard() Ownable(msg.sender) {
        if (_redeemableToken == address(0)) revert ZeroAddress();
        if (_vault == address(0)) revert ZeroAddress();

        (bool ok, bytes memory data) =
            _redeemableToken.staticcall(abi.encodeWithSelector(IERC20Metadata.decimals.selector));
        if (!ok || data.length != 32) revert RedeemableDecimalsQueryFailed();

        uint8 decimals = abi.decode(data, (uint8));
        if (decimals != REDEEMABLE_DECIMALS) revert InvalidRedeemableDecimals(decimals);

        redeemableToken = IERC20Burnable(_redeemableToken);
        vault = _vault;
    }

    function redeem(uint256 amountIn, address tokenToReceive) external nonReentrant whenNotPaused {
        if (amountIn == 0) revert ZeroAmount();
        if (!isRedemptionActive()) revert RedemptionNotActive(startTime, endTime);
        if (_redemptionTokens.length() == 0) revert NoRedemptionTokens();

        (bool found, uint256 rate) = _exchangeRate.tryGet(tokenToReceive);
        if (!found || rate == 0) revert RateTooLow(tokenToReceive, rate);

        uint256 amountOut = Math.mulDiv(amountIn, rate, RATE_BASE);

        IERC20 tokenOut = IERC20(tokenToReceive);
        uint256 vaultBalance = tokenOut.balanceOf(vault);
        uint256 vaultAllowance = tokenOut.allowance(vault, address(this));
        uint256 available = vaultBalance < vaultAllowance ? vaultBalance : vaultAllowance;
        if (available < amountOut) {
            revert InsufficientLiquidity(tokenToReceive, available, amountOut);
        }

        redeemableToken.burnFrom(msg.sender, amountIn);
        tokenOut.safeTransferFrom(vault, msg.sender, amountOut);

        emit Redeemed(msg.sender, amountIn);
    }

    function isRedemptionActive() public view returns (bool) {
        uint256 ts = block.timestamp;
        return !paused() && startTime != 0 && endTime != 0 && ts >= startTime && ts <= endTime;
    }

    /**
     * @notice Adds redemption tokens with their exchange rates (rate in token's smallest units)
     */
    function addRedemptionToken(IERC20[] calldata redemptionTokens, uint256[] calldata rates) external onlyOwner {
        uint256 length = redemptionTokens.length;
        if (length != rates.length) revert ArrayLengthMismatch(length, rates.length);
        for (uint256 i = 0; i < length; ++i) {
            address token = address(redemptionTokens[i]);
            uint256 rate = rates[i];
            if (token == address(0)) revert ZeroAddress();
            if (token == address(redeemableToken)) revert SameTokenAsRedeemable();
            if (rate == 0) revert RateZero();
            if (_redemptionTokens.contains(token)) revert TokenAlreadyExists(token);

            _redemptionTokens.add(token);
            _exchangeRate.set(token, rate);

            emit RedemptionTokenAdded(token, rate);
        }
    }

    /**
     * @notice Removes a redemption token by index; sanity-checks address
     */
    function removeRedemptionToken(uint256 _index, address _token)
        public
        onlyOwner
    {
        uint256 length = _redemptionTokens.length();
        if (_index >= length) revert IndexOutOfBounds();

        address listed = _redemptionTokens.at(_index);
        if (listed != _token) revert TokenMismatch();

        _redemptionTokens.remove(_token);
        _exchangeRate.remove(_token);

        emit RedemptionTokenRemoved(_token);
    }

    /**
     * @notice Updates exchange rate for a token (must be in allowed set)
     */
    function setExchangeRate(address token, uint256 newRate) external onlyOwner {
        if (newRate == 0) revert RateZero();
        if (!_redemptionTokens.contains(token)) revert TokenNotAllowed(token);
        _exchangeRate.set(token, newRate);
        emit ExchangeRateUpdated(token, newRate);
    }

    function setRedemptionPeriod(uint64 _startTime, uint64 _endTime) external onlyOwner {
        if (!(_startTime < _endTime)) revert TimeOrderInvalid(_startTime, _endTime);
        startTime = _startTime;
        endTime = _endTime;
        emit RedemptionPeriodSet(_startTime, _endTime);
    }

    function pause() external onlyOwner whenNotPaused {
        _pause();
    }

    function unpause() external onlyOwner whenPaused {
        _unpause();
    }

    // ---- View helpers ----
    function redemptionTokensLength() external view returns (uint256) {
        return _redemptionTokens.length();
    }
    function redemptionTokenAt(uint256 index) external view returns (address) {
        return _redemptionTokens.at(index);
    }
    function exchangeRateOf(address token) external view returns (uint256) {
        (bool ok, uint256 rate) = _exchangeRate.tryGet(token);
        return ok ? rate : 0;
    }
    function listRedemptionTokens() external view returns (address[] memory) {
        return _redemptionTokens.values();
    }
}
