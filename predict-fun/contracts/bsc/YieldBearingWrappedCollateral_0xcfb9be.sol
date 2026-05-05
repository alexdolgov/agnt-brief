// ============================================================
// FILE: contracts/YieldBearing/interfaces/IComptroller.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

interface IComptroller {
    function treasuryPercent() external view returns (uint256);
}

// ============================================================
// FILE: contracts/YieldBearing/interfaces/IVToken.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

interface IVToken {
    function balanceOfUnderlying(address _owner) external returns (uint256);
    function mint(uint256 _amount) external returns (uint256);
    function redeem(uint256 _amount) external returns (uint256);
    function redeemUnderlying(uint256 _amount) external returns (uint256);

    function balanceOf(address _owner) external view returns (uint256);
    function exchangeRateCurrent() external returns (uint256);
    function isVToken() external view returns (bool);
    function underlying() external view returns (address);

    function comptroller() external view returns (address);
}

// ============================================================
// FILE: contracts/YieldBearing/Venus.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {IComptroller} from "./interfaces/IComptroller.sol";
import {IVToken} from "./interfaces/IVToken.sol";

/**
 * @title Venus
 * @notice A contract for depositing underlying tokens to Venus for yield
 * @dev This contract is meant to be inherited by other contracts that need to deposit underlying tokens to Venus for yield.
 *      Some functions need to be access controlled by the child contract.
 * @author predict.fun protocol team
 */
contract Venus {
    using SafeERC20 for IERC20;

    /**
     * @notice Enable or disable Venus for an underlying token. When enabled, the contract will deposit underlying tokens to Venus for yield.
     *         When disabled, the contract will stop depositing underlying tokens to Venus for yield and withdraw all underlying tokens from Venus.
     *         This is useful for emergency cases where Venus is exploited or when there is a liquidity crunch and we need to remain operational and solvent.
     */
    mapping(address underlying => bool isEnabled) public underlyingIsEnabled;

    /**
     * @notice Maps underlying tokens to their corresponding vTokens
     */
    mapping(address underlying => address vToken) public underlyingToVToken;

    /**
     * @notice Maps underlying tokens to the amount deposited to Venus
     */
    mapping(address underlying => uint256 amount) public depositedAmount;

    /**
     * @notice Emitted when an underlying token is connected to a vToken
     * @param underlying The underlying token
     * @param vToken The vToken
     */
    event UnderlyingTokenConnectedToVToken(address underlying, address vToken);

    /**
     * @notice Emitted when vTokens are minted
     * @param underlying The underlying token
     * @param vToken The vToken
     * @param underlyingAmount The amount of underlying tokens deposited
     */
    event VTokenMinted(address indexed underlying, address indexed vToken, uint256 underlyingAmount);

    /**
     * @notice Emitted when underlying tokens are redeemed
     * @param underlying The underlying token
     * @param vToken The vToken
     * @param amountRedeemed The amount of underlying tokens redeemed
     * @param amountReceived The amount of underlying tokens received. It can be less than the amount redeemed if there is a withdrawal fee.
     */
    event UnderlyingTokenRedeemed(
        address indexed underlying,
        address indexed vToken,
        uint256 amountRedeemed,
        uint256 amountReceived
    );

    /**
     * @notice Emitted when an underlying token is disabled
     * @param underlying The underlying token
     * @param amountRedeemed The amount of underlying tokens redeemed
     * @param yieldRecipient The address of the yield recipient
     * @param yieldClaimed The amount of yield claimed
     */
    event UnderlyingTokenDisabled(
        address indexed underlying,
        uint256 amountRedeemed,
        address yieldRecipient,
        uint256 yieldClaimed
    );

    /**
     * @notice Emitted when an underlying token is enabled
     * @param underlying The underlying token
     * @param amount The amount of underlying tokens deposited
     */
    event UnderlyingTokenEnabled(address indexed underlying, uint256 amount);

    /**
     * @notice Emitted when yield is claimed
     * @param underlying The underlying token
     * @param vToken The vToken
     * @param vTokenAmount The amount of vTokens claimed
     * @param underlyingAmount The amount of underlying tokens received
     */
    event YieldClaimed(
        address indexed underlying,
        address indexed vToken,
        uint256 vTokenAmount,
        uint256 underlyingAmount
    );

    error Insolvent();
    error NotYieldBearingToken();
    error NoUnderlyingToken();
    error NoYield();
    error NoYieldBearingToken();
    error UnderlyingTokenAlreadyConnected();
    error UnderlyingTokenAlreadyDisabled();
    error UnderlyingTokenAlreadyEnabled();
    error VTokenCallFailed(uint256 err);
    error VTokenTreasuryPercentMustBeZero();

    /**
     * @notice Splits contract vToken balance into principal and yield
     * @param underlying The underlying token
     * @return principal The principal amount
     * @return yield The yield amount
     */
    function splitPrincipalAndYield(address underlying) public returns (uint256 principal, uint256 yield) {
        address vToken = _getVToken(underlying);
        uint256 exchangeRateCurrent = IVToken(vToken).exchangeRateCurrent();
        (, principal) = divScalarByExpTruncate(depositedAmount[underlying], Exp({mantissa: exchangeRateCurrent}));
        yield = IVToken(vToken).balanceOf(address(this)) - principal;
    }

    /**
     * @notice Mints vTokens
     * @param underlying The underlying token
     * @param amount The amount of underlying tokens to mint
     */
    function _mintVToken(address underlying, uint256 amount) internal {
        address vToken = _getVToken(underlying);

        IComptroller comptroller = IComptroller(IVToken(vToken).comptroller());
        if (comptroller.treasuryPercent() > 0) {
            revert VTokenTreasuryPercentMustBeZero();
        }

        depositedAmount[underlying] += amount;

        IERC20(underlying).forceApprove(vToken, amount);
        uint256 err = IVToken(vToken).mint(amount);
        if (err != 0) {
            revert VTokenCallFailed(err);
        }

        emit VTokenMinted(underlying, vToken, amount);
    }

    /**
     * @notice Redeems underlying tokens from Venus
     * @param underlying The underlying token
     * @param amount The amount of underlying tokens to redeem
     * @return amountRedeemed The actual amount of underlying tokens redeemed
     */
    function _redeemUnderlying(address underlying, uint256 amount) internal returns (uint256 amountRedeemed) {
        address vToken = _getVToken(underlying);

        uint256 underlyingBalanceBefore = IERC20(underlying).balanceOf(address(this));

        uint256 err = IVToken(vToken).redeemUnderlying(amount);
        if (err != 0) {
            revert VTokenCallFailed(err);
        }

        amountRedeemed = IERC20(underlying).balanceOf(address(this)) - underlyingBalanceBefore;

        depositedAmount[underlying] -= amount;

        emit UnderlyingTokenRedeemed(underlying, vToken, amount, amountRedeemed);
    }

    /**
     * @notice Claims yield from Venus
     * @dev We should never claim 100% of the yield because Venus' balanceOfUnderlying carries precision loss
     * @param underlying The underlying token
     * @param vTokenAmount The amount of vTokens to claim
     */
    function _claimYield(address underlying, uint256 vTokenAmount, address recipient) internal {
        address vToken = _getVToken(underlying);
        (, uint256 yield) = splitPrincipalAndYield(underlying);

        if (vTokenAmount == 0) {
            vTokenAmount = (yield * 9_999) / 10_000;
        }

        uint256 underlyingBalanceBefore = IERC20(underlying).balanceOf(address(this));

        uint256 err = IVToken(vToken).redeem(vTokenAmount);
        if (err != 0) {
            revert VTokenCallFailed(err);
        }

        uint256 underlyingBalanceAfter = IERC20(underlying).balanceOf(address(this));

        uint256 yieldClaimed = underlyingBalanceAfter - underlyingBalanceBefore;

        if (yieldClaimed == 0) {
            revert NoYield();
        }

        IERC20(underlying).safeTransfer(recipient, yieldClaimed);

        // We should never claim 100% of the yield because balanceOfUnderlying carries precision loss
        // even though our own calculation is precise
        if (IVToken(vToken).balanceOfUnderlying(address(this)) < depositedAmount[underlying]) {
            revert Insolvent();
        }

        emit YieldClaimed(underlying, vToken, vTokenAmount, yieldClaimed);
    }

    /**
     * @notice Connects an underlying token to a vToken
     * @param vToken The vToken to connect
     * @return underlying The underlying token
     */
    function _connectVTokenToUnderlying(address vToken) internal returns (address underlying) {
        if (!IVToken(vToken).isVToken()) {
            revert NotYieldBearingToken();
        }

        underlying = IVToken(vToken).underlying();

        if (underlying == address(0)) {
            revert NoUnderlyingToken();
        }

        if (underlyingToVToken[underlying] != address(0)) {
            revert UnderlyingTokenAlreadyConnected();
        }

        underlyingToVToken[underlying] = vToken;
        underlyingIsEnabled[underlying] = true;

        emit UnderlyingTokenConnectedToVToken(underlying, vToken);
    }

    /**
     * @notice Disables Venus for an underlying token. Withdraws all underlying tokens from Venus.
     * @param underlying The underlying token
     * @param yieldRecipient The address of the yield recipient
     */
    function _disableUnderlying(address underlying, address yieldRecipient) internal {
        if (!underlyingIsEnabled[underlying]) {
            revert UnderlyingTokenAlreadyDisabled();
        }

        underlyingIsEnabled[underlying] = false;

        uint256 balanceOfUnderlying = IERC20(underlying).balanceOf(address(this));

        address vToken = _getVToken(underlying);
        uint256 redeemAmount = IVToken(vToken).balanceOfUnderlying(address(this));
        uint256 originalDepositedAmount = depositedAmount[underlying];
        if (redeemAmount < originalDepositedAmount) {
            redeemAmount = originalDepositedAmount;
        }

        if (redeemAmount > 0) {
            uint256 err = IVToken(vToken).redeemUnderlying(redeemAmount);
            if (err != 0) {
                revert VTokenCallFailed(err);
            }
        }

        depositedAmount[underlying] = 0;

        uint256 amountRedeemed = IERC20(underlying).balanceOf(address(this)) - balanceOfUnderlying;

        uint256 yieldClaimed = amountRedeemed - originalDepositedAmount;

        if (yieldClaimed > 0) {
            IERC20(underlying).safeTransfer(yieldRecipient, yieldClaimed);
        }

        emit UnderlyingTokenDisabled(underlying, amountRedeemed, yieldRecipient, yieldClaimed);
    }

    /**
     * @notice Enable Venus for an underlying token. Deposits underlying tokens to Venus for yield.
     * @param underlying The underlying token
     */
    function _enableUnderlying(address underlying) internal {
        if (underlyingIsEnabled[underlying]) {
            revert UnderlyingTokenAlreadyEnabled();
        }

        underlyingIsEnabled[underlying] = true;

        uint256 amount = IERC20(underlying).balanceOf(address(this));
        if (amount > 0) {
            _mintVToken(underlying, amount);
        }

        emit UnderlyingTokenEnabled(underlying, amount);
    }

    /**
     * @notice Gets the vToken for an underlying token
     * @param underlying The underlying token
     * @return vToken The vToken
     */
    function _getVToken(address underlying) internal view returns (address vToken) {
        vToken = underlyingToVToken[underlying];

        if (vToken == address(0)) {
            revert NoYieldBearingToken();
        }

        return vToken;
    }

    // NOTE: Code **directly** copied from Venus **without modifications** for splitting principal and yield

    enum MathError {
        NO_ERROR,
        DIVISION_BY_ZERO,
        INTEGER_OVERFLOW,
        INTEGER_UNDERFLOW
    }

    struct Exp {
        uint mantissa;
    }

    /// forge-lint: disable-next-line(screaming-snake-case-const)
    uint256 public constant expScale = 1e18;

    /**
     * @dev Divide a scalar by an Exp, returning a new Exp.
     */
    function divScalarByExp(uint scalar, Exp memory divisor) internal pure returns (MathError, Exp memory) {
        /*
          We are doing this as:
          getExp(mulUInt(expScale, scalar), divisor.mantissa)

          How it works:
          Exp = a / b;
          Scalar = s;
          `s / (a / b)` = `b * s / a` and since for an Exp `a = mantissa, b = expScale`
        */
        (MathError err0, uint numerator) = mulUInt(expScale, scalar);
        if (err0 != MathError.NO_ERROR) {
            return (err0, Exp({mantissa: 0}));
        }
        return getExp(numerator, divisor.mantissa);
    }

    /**
     * @dev Divide a scalar by an Exp, then truncate to return an unsigned integer.
     */
    function divScalarByExpTruncate(uint scalar, Exp memory divisor) internal pure returns (MathError, uint) {
        (MathError err, Exp memory fraction) = divScalarByExp(scalar, divisor);
        if (err != MathError.NO_ERROR) {
            return (err, 0);
        }

        return (MathError.NO_ERROR, truncate(fraction));
    }

    /**
     * @dev Truncates the given exp to a whole number value.
     *      For example, truncate(Exp{mantissa: 15 * expScale}) = 15
     */
    function truncate(Exp memory exp) internal pure returns (uint) {
        // Note: We are not using careful math here as we're performing a division that cannot fail
        return exp.mantissa / expScale;
    }

    /**
     * @dev Multiplies two numbers, returns an error on overflow.
     */
    function mulUInt(uint a, uint b) internal pure returns (MathError, uint) {
        if (a == 0) {
            return (MathError.NO_ERROR, 0);
        }

        uint c;
        unchecked {
            c = a * b;
        }

        if (c / a != b) {
            return (MathError.INTEGER_OVERFLOW, 0);
        } else {
            return (MathError.NO_ERROR, c);
        }
    }

    /**
     * @dev Creates an exponential from numerator and denominator values.
     *      Note: Returns an error if (`num` * 10e18) > MAX_INT,
     *            or if `denom` is zero.
     */
    function getExp(uint num, uint denom) internal pure returns (MathError, Exp memory) {
        (MathError err0, uint scaledNumerator) = mulUInt(num, expScale);
        if (err0 != MathError.NO_ERROR) {
            return (err0, Exp({mantissa: 0}));
        }

        (MathError err1, uint rational) = divUInt(scaledNumerator, denom);
        if (err1 != MathError.NO_ERROR) {
            return (err1, Exp({mantissa: 0}));
        }

        return (MathError.NO_ERROR, Exp({mantissa: rational}));
    }

    /**
     * @dev Integer division of two numbers, truncating the quotient.
     */
    function divUInt(uint a, uint b) internal pure returns (MathError, uint) {
        if (b == 0) {
            return (MathError.DIVISION_BY_ZERO, 0);
        }

        return (MathError.NO_ERROR, a / b);
    }
}

// ============================================================
// FILE: contracts/YieldBearing/YieldBearingWrappedCollateral.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {ERC20} from "solmate/src/tokens/ERC20.sol";
import {SafeTransferLib} from "solmate/src/utils/SafeTransferLib.sol";

import {Venus} from "./Venus.sol";

/// @title IWrappedCollateralEE
/// @notice WrappedCollateral Errors and Events
interface IYieldBearingWrappedCollateralEE {
    error OnlyOwner();
}

string constant NAME = "Wrapped Collateral";
string constant SYMBOL = "WCOL";

/// @title YieldBearingWrappedCollateral
/// @notice Wraps an ERC20 token to be used as collateral in the CTF, and generates yield using Venus
/// @author predict.fun protocol team
contract YieldBearingWrappedCollateral is IYieldBearingWrappedCollateralEE, ERC20, Venus {
    using SafeTransferLib for ERC20;

    /*//////////////////////////////////////////////////////////////
                                 STATE
    //////////////////////////////////////////////////////////////*/

    address public immutable owner;
    address public immutable underlying;

    address public yieldManager;

    event YieldBearingWrappedCollateral__YieldManagerUpdated(address indexed yieldManager);

    error OnlyYieldManager();
    error UnderlyingTokenMismatch();

    /*//////////////////////////////////////////////////////////////
                               MODIFIERS
    //////////////////////////////////////////////////////////////*/

    modifier onlyOwner() {
        if (msg.sender != owner) revert OnlyOwner();
        _;
    }

    modifier onlyYieldManager() {
        if (msg.sender != yieldManager) revert OnlyYieldManager();
        _;
    }

    /*//////////////////////////////////////////////////////////////
                              CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    /// @notice The owner is YieldBearingNegRiskAdapter
    /// @param _underlying The address of the underlying ERC20 token
    /// @param _decimals The number of decimals of the underlying ERC20 token
    /// @param _yieldManager The address of the yield manager
    constructor(address _underlying, uint8 _decimals, address _yieldManager) ERC20(NAME, SYMBOL, _decimals) {
        owner = msg.sender;
        underlying = _underlying;
        yieldManager = _yieldManager;
    }

    /*//////////////////////////////////////////////////////////////
                          YIELD OPERATIONS
    //////////////////////////////////////////////////////////////*/

    function updateYieldManager(address _yieldManager) external onlyYieldManager {
        yieldManager = _yieldManager;
        emit YieldBearingWrappedCollateral__YieldManagerUpdated(_yieldManager);
    }

    /**
     * @notice Connects a vToken to an underlying token. Only callable by the owner.
     * @param vToken The vToken to connect
     */
    function connectVTokenToUnderlying(address vToken) external onlyYieldManager {
        address _underlying = _connectVTokenToUnderlying(vToken);
        if (_underlying != underlying) {
            revert UnderlyingTokenMismatch();
        }
    }

    /**
     * @notice Claims yield from Venus. Only callable by the owner.
     * @param vTokenAmount The amount of vTokens to claim
     * @param recipient The address to receive the yield
     */
    function claimYield(uint256 vTokenAmount, address recipient) external onlyYieldManager {
        _claimYield(underlying, vTokenAmount, recipient);
    }

    /**
     * @notice Enables Venus for an underlying token. Only callable by the yield manager.
     */
    function enableUnderlying() external onlyYieldManager {
        _enableUnderlying(underlying);
    }

    /**
     * @notice Disables Venus for the underlying token. Only callable by the yield manager.
     * @param yieldRecipient The address to receive the yield
     */
    function disableUnderlying(address yieldRecipient) external onlyYieldManager {
        _disableUnderlying(underlying, yieldRecipient);
    }

    /*//////////////////////////////////////////////////////////////
                                 UNWRAP
    //////////////////////////////////////////////////////////////*/

    /// @notice Unwraps the specified amount of tokens
    /// @param _to The address to send the unwrapped tokens to
    /// @param _amount The amount of tokens to unwrap
    function unwrap(address _to, uint256 _amount) external {
        _burn(msg.sender, _amount);
        _release(_to, _amount);
    }

    /*//////////////////////////////////////////////////////////////
                                 ADMIN
    //////////////////////////////////////////////////////////////*/

    /// @notice Wraps the specified amount of tokens
    /// @notice Can only be called by the owner
    /// @param _to     - the address to send the wrapped tokens to
    /// @param _amount - the amount of tokens to wrap
    function wrap(address _to, uint256 _amount) external onlyOwner {
        address _underlying = underlying;
        ERC20(_underlying).safeTransferFrom(msg.sender, address(this), _amount);
        if (underlyingIsEnabled[_underlying]) {
            _mintVToken(_underlying, _amount);
        }
        _mint(_to, _amount);
    }

    /// @notice Burns the specified amount of tokens
    /// @notice Can only be called by the owner
    /// @param _amount - the amount of tokens to burn
    function burn(uint256 _amount) external onlyOwner {
        _burn(msg.sender, _amount);
    }

    /// @notice Mints the specified amount of tokens
    /// @notice Can only be called by the owner
    /// @param _amount - the amount of tokens to mint
    function mint(uint256 _amount) external onlyOwner {
        _mint(msg.sender, _amount);
    }

    /// @notice Releases the specified amount of the underlying token
    /// @notice Can only be called by the owner
    /// @param _to     - the address to send the released tokens to
    /// @param _amount - the amount of tokens to release
    function release(address _to, uint256 _amount) external onlyOwner {
        _release(_to, _amount);
    }

    /// @notice Releases the specified amount of the underlying token
    /// @param _to     - the address to send the released tokens to
    /// @param _amount - the amount of tokens to release
    function _release(address _to, uint256 _amount) private {
        address _underlying = underlying;
        if (underlyingIsEnabled[_underlying]) {
            _amount = _redeemUnderlying(_underlying, _amount);
        }
        ERC20(_underlying).safeTransfer(_to, _amount);
    }
}

// ============================================================
// FILE: node_modules/@openzeppelin/contracts/token/ERC20/extensions/IERC20Permit.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/extensions/IERC20Permit.sol)

pragma solidity ^0.8.20;

/**
 * @dev Interface of the ERC20 Permit extension allowing approvals to be made via signatures, as defined in
 * https://eips.ethereum.org/EIPS/eip-2612[EIP-2612].
 *
 * Adds the {permit} method, which can be used to change an account's ERC20 allowance (see {IERC20-allowance}) by
 * presenting a message signed by the account. By not relying on {IERC20-approve}, the token holder account doesn't
 * need to send a transaction, and thus is not required to hold Ether at all.
 *
 * ==== Security Considerations
 *
 * There are two important considerations concerning the use of `permit`. The first is that a valid permit signature
 * expresses an allowance, and it should not be assumed to convey additional meaning. In particular, it should not be
 * considered as an intention to spend the allowance in any specific way. The second is that because permits have
 * built-in replay protection and can be submitted by anyone, they can be frontrun. A protocol that uses permits should
 * take this into consideration and allow a `permit` call to fail. Combining these two aspects, a pattern that may be
 * generally recommended is:
 *
 * ```solidity
 * function doThingWithPermit(..., uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s) public {
 *     try token.permit(msg.sender, address(this), value, deadline, v, r, s) {} catch {}
 *     doThing(..., value);
 * }
 *
 * function doThing(..., uint256 value) public {
 *     token.safeTransferFrom(msg.sender, address(this), value);
 *     ...
 * }
 * ```
 *
 * Observe that: 1) `msg.sender` is used as the owner, leaving no ambiguity as to the signer intent, and 2) the use of
 * `try/catch` allows the permit to fail and makes the code tolerant to frontrunning. (See also
 * {SafeERC20-safeTransferFrom}).
 *
 * Additionally, note that smart contract wallets (such as Argent or Safe) are not able to produce permit signatures, so
 * contracts should have entry points that don't rely on permit.
 */
interface IERC20Permit {
    /**
     * @dev Sets `value` as the allowance of `spender` over ``owner``'s tokens,
     * given ``owner``'s signed approval.
     *
     * IMPORTANT: The same issues {IERC20-approve} has related to transaction
     * ordering also apply here.
     *
     * Emits an {Approval} event.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     * - `deadline` must be a timestamp in the future.
     * - `v`, `r` and `s` must be a valid `secp256k1` signature from `owner`
     * over the EIP712-formatted function arguments.
     * - the signature must use ``owner``'s current nonce (see {nonces}).
     *
     * For more information on the signature format, see the
     * https://eips.ethereum.org/EIPS/eip-2612#specification[relevant EIP
     * section].
     *
     * CAUTION: See Security Considerations above.
     */
    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external;

    /**
     * @dev Returns the current nonce for `owner`. This value must be
     * included whenever a signature is generated for {permit}.
     *
     * Every successful call to {permit} increases ``owner``'s nonce by one. This
     * prevents a signature from being used multiple times.
     */
    function nonces(address owner) external view returns (uint256);

    /**
     * @dev Returns the domain separator used in the encoding of the signature for {permit}, as defined by {EIP712}.
     */
    // solhint-disable-next-line func-name-mixedcase
    function DOMAIN_SEPARATOR() external view returns (bytes32);
}

// ============================================================
// FILE: node_modules/@openzeppelin/contracts/token/ERC20/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.20;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20 {
    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);

    /**
     * @dev Returns the value of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the value of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves a `value` amount of tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 value) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets a `value` amount of tokens as the allowance of `spender` over the
     * caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 value) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to` using the
     * allowance mechanism. `value` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 value) external returns (bool);
}

// ============================================================
// FILE: node_modules/@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/utils/SafeERC20.sol)

pragma solidity ^0.8.20;

import {IERC20} from "../IERC20.sol";
import {IERC20Permit} from "../extensions/IERC20Permit.sol";
import {Address} from "../../../utils/Address.sol";

/**
 * @title SafeERC20
 * @dev Wrappers around ERC20 operations that throw on failure (when the token
 * contract returns false). Tokens that return no value (and instead revert or
 * throw on failure) are also supported, non-reverting calls are assumed to be
 * successful.
 * To use this library you can add a `using SafeERC20 for IERC20;` statement to your contract,
 * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
 */
library SafeERC20 {
    using Address for address;

    /**
     * @dev An operation with an ERC20 token failed.
     */
    error SafeERC20FailedOperation(address token);

    /**
     * @dev Indicates a failed `decreaseAllowance` request.
     */
    error SafeERC20FailedDecreaseAllowance(address spender, uint256 currentAllowance, uint256 requestedDecrease);

    /**
     * @dev Transfer `value` amount of `token` from the calling contract to `to`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeTransfer(IERC20 token, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeCall(token.transfer, (to, value)));
    }

    /**
     * @dev Transfer `value` amount of `token` from `from` to `to`, spending the approval given by `from` to the
     * calling contract. If `token` returns no value, non-reverting calls are assumed to be successful.
     */
    function safeTransferFrom(IERC20 token, address from, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeCall(token.transferFrom, (from, to, value)));
    }

    /**
     * @dev Increase the calling contract's allowance toward `spender` by `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeIncreaseAllowance(IERC20 token, address spender, uint256 value) internal {
        uint256 oldAllowance = token.allowance(address(this), spender);
        forceApprove(token, spender, oldAllowance + value);
    }

    /**
     * @dev Decrease the calling contract's allowance toward `spender` by `requestedDecrease`. If `token` returns no
     * value, non-reverting calls are assumed to be successful.
     */
    function safeDecreaseAllowance(IERC20 token, address spender, uint256 requestedDecrease) internal {
        unchecked {
            uint256 currentAllowance = token.allowance(address(this), spender);
            if (currentAllowance < requestedDecrease) {
                revert SafeERC20FailedDecreaseAllowance(spender, currentAllowance, requestedDecrease);
            }
            forceApprove(token, spender, currentAllowance - requestedDecrease);
        }
    }

    /**
     * @dev Set the calling contract's allowance toward `spender` to `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful. Meant to be used with tokens that require the approval
     * to be set to zero before setting it to a non-zero value, such as USDT.
     */
    function forceApprove(IERC20 token, address spender, uint256 value) internal {
        bytes memory approvalCall = abi.encodeCall(token.approve, (spender, value));

        if (!_callOptionalReturnBool(token, approvalCall)) {
            _callOptionalReturn(token, abi.encodeCall(token.approve, (spender, 0)));
            _callOptionalReturn(token, approvalCall);
        }
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     */
    function _callOptionalReturn(IERC20 token, bytes memory data) private {
        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since
        // we're implementing it ourselves. We use {Address-functionCall} to perform this call, which verifies that
        // the target address contains contract code and also asserts for success in the low-level call.

        bytes memory returndata = address(token).functionCall(data);
        if (returndata.length != 0 && !abi.decode(returndata, (bool))) {
            revert SafeERC20FailedOperation(address(token));
        }
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     *
     * This is a variant of {_callOptionalReturn} that silents catches all reverts and returns a bool instead.
     */
    function _callOptionalReturnBool(IERC20 token, bytes memory data) private returns (bool) {
        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since
        // we're implementing it ourselves. We cannot use {Address-functionCall} here since this should return false
        // and not revert is the subcall reverts.

        (bool success, bytes memory returndata) = address(token).call(data);
        return success && (returndata.length == 0 || abi.decode(returndata, (bool))) && address(token).code.length > 0;
    }
}

// ============================================================
// FILE: node_modules/@openzeppelin/contracts/utils/Address.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/Address.sol)

pragma solidity ^0.8.20;

/**
 * @dev Collection of functions related to the address type
 */
library Address {
    /**
     * @dev The ETH balance of the account is not enough to perform the operation.
     */
    error AddressInsufficientBalance(address account);

    /**
     * @dev There's no code at `target` (it is not a contract).
     */
    error AddressEmptyCode(address target);

    /**
     * @dev A call to an address target failed. The target may have reverted.
     */
    error FailedInnerCall();

    /**
     * @dev Replacement for Solidity's `transfer`: sends `amount` wei to
     * `recipient`, forwarding all available gas and reverting on errors.
     *
     * https://eips.ethereum.org/EIPS/eip-1884[EIP1884] increases the gas cost
     * of certain opcodes, possibly making contracts go over the 2300 gas limit
     * imposed by `transfer`, making them unable to receive funds via
     * `transfer`. {sendValue} removes this limitation.
     *
     * https://consensys.net/diligence/blog/2019/09/stop-using-soliditys-transfer-now/[Learn more].
     *
     * IMPORTANT: because control is transferred to `recipient`, care must be
     * taken to not create reentrancy vulnerabilities. Consider using
     * {ReentrancyGuard} or the
     * https://solidity.readthedocs.io/en/v0.8.20/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].
     */
    function sendValue(address payable recipient, uint256 amount) internal {
        if (address(this).balance < amount) {
            revert AddressInsufficientBalance(address(this));
        }

        (bool success, ) = recipient.call{value: amount}("");
        if (!success) {
            revert FailedInnerCall();
        }
    }

    /**
     * @dev Performs a Solidity function call using a low level `call`. A
     * plain `call` is an unsafe replacement for a function call: use this
     * function instead.
     *
     * If `target` reverts with a revert reason or custom error, it is bubbled
     * up by this function (like regular Solidity function calls). However, if
     * the call reverted with no returned reason, this function reverts with a
     * {FailedInnerCall} error.
     *
     * Returns the raw returned data. To convert to the expected return value,
     * use https://solidity.readthedocs.io/en/latest/units-and-global-variables.html?highlight=abi.decode#abi-encoding-and-decoding-functions[`abi.decode`].
     *
     * Requirements:
     *
     * - `target` must be a contract.
     * - calling `target` with `data` must not revert.
     */
    function functionCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but also transferring `value` wei to `target`.
     *
     * Requirements:
     *
     * - the calling contract must have an ETH balance of at least `value`.
     * - the called Solidity function must be `payable`.
     */
    function functionCallWithValue(address target, bytes memory data, uint256 value) internal returns (bytes memory) {
        if (address(this).balance < value) {
            revert AddressInsufficientBalance(address(this));
        }
        (bool success, bytes memory returndata) = target.call{value: value}(data);
        return verifyCallResultFromTarget(target, success, returndata);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a static call.
     */
    function functionStaticCall(address target, bytes memory data) internal view returns (bytes memory) {
        (bool success, bytes memory returndata) = target.staticcall(data);
        return verifyCallResultFromTarget(target, success, returndata);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a delegate call.
     */
    function functionDelegateCall(address target, bytes memory data) internal returns (bytes memory) {
        (bool success, bytes memory returndata) = target.delegatecall(data);
        return verifyCallResultFromTarget(target, success, returndata);
    }

    /**
     * @dev Tool to verify that a low level call to smart-contract was successful, and reverts if the target
     * was not a contract or bubbling up the revert reason (falling back to {FailedInnerCall}) in case of an
     * unsuccessful call.
     */
    function verifyCallResultFromTarget(
        address target,
        bool success,
        bytes memory returndata
    ) internal view returns (bytes memory) {
        if (!success) {
            _revert(returndata);
        } else {
            // only check if target is a contract if the call was successful and the return data is empty
            // otherwise we already know that it was a contract
            if (returndata.length == 0 && target.code.length == 0) {
                revert AddressEmptyCode(target);
            }
            return returndata;
        }
    }

    /**
     * @dev Tool to verify that a low level call was successful, and reverts if it wasn't, either by bubbling the
     * revert reason or with a default {FailedInnerCall} error.
     */
    function verifyCallResult(bool success, bytes memory returndata) internal pure returns (bytes memory) {
        if (!success) {
            _revert(returndata);
        } else {
            return returndata;
        }
    }

    /**
     * @dev Reverts with returndata if present. Otherwise reverts with {FailedInnerCall}.
     */
    function _revert(bytes memory returndata) private pure {
        // Look for revert reason and bubble it up if present
        if (returndata.length > 0) {
            // The easiest way to bubble the revert reason is using memory via assembly
            /// @solidity memory-safe-assembly
            assembly {
                let returndata_size := mload(returndata)
                revert(add(32, returndata), returndata_size)
            }
        } else {
            revert FailedInnerCall();
        }
    }
}

// ============================================================
// FILE: node_modules/solmate/src/tokens/ERC20.sol
// ============================================================

// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.0;

/// @notice Modern and gas efficient ERC20 + EIP-2612 implementation.
/// @author Solmate (https://github.com/transmissions11/solmate/blob/main/src/tokens/ERC20.sol)
/// @author Modified from Uniswap (https://github.com/Uniswap/uniswap-v2-core/blob/master/contracts/UniswapV2ERC20.sol)
/// @dev Do not manually set balances without updating totalSupply, as the sum of all user balances must not exceed it.
abstract contract ERC20 {
    /*//////////////////////////////////////////////////////////////
                                 EVENTS
    //////////////////////////////////////////////////////////////*/

    event Transfer(address indexed from, address indexed to, uint256 amount);

    event Approval(address indexed owner, address indexed spender, uint256 amount);

    /*//////////////////////////////////////////////////////////////
                            METADATA STORAGE
    //////////////////////////////////////////////////////////////*/

    string public name;

    string public symbol;

    uint8 public immutable decimals;

    /*//////////////////////////////////////////////////////////////
                              ERC20 STORAGE
    //////////////////////////////////////////////////////////////*/

    uint256 public totalSupply;

    mapping(address => uint256) public balanceOf;

    mapping(address => mapping(address => uint256)) public allowance;

    /*//////////////////////////////////////////////////////////////
                            EIP-2612 STORAGE
    //////////////////////////////////////////////////////////////*/

    uint256 internal immutable INITIAL_CHAIN_ID;

    bytes32 internal immutable INITIAL_DOMAIN_SEPARATOR;

    mapping(address => uint256) public nonces;

    /*//////////////////////////////////////////////////////////////
                               CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    constructor(
        string memory _name,
        string memory _symbol,
        uint8 _decimals
    ) {
        name = _name;
        symbol = _symbol;
        decimals = _decimals;

        INITIAL_CHAIN_ID = block.chainid;
        INITIAL_DOMAIN_SEPARATOR = computeDomainSeparator();
    }

    /*//////////////////////////////////////////////////////////////
                               ERC20 LOGIC
    //////////////////////////////////////////////////////////////*/

    function approve(address spender, uint256 amount) public virtual returns (bool) {
        allowance[msg.sender][spender] = amount;

        emit Approval(msg.sender, spender, amount);

        return true;
    }

    function transfer(address to, uint256 amount) public virtual returns (bool) {
        balanceOf[msg.sender] -= amount;

        // Cannot overflow because the sum of all user
        // balances can't exceed the max uint256 value.
        unchecked {
            balanceOf[to] += amount;
        }

        emit Transfer(msg.sender, to, amount);

        return true;
    }

    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) public virtual returns (bool) {
        uint256 allowed = allowance[from][msg.sender]; // Saves gas for limited approvals.

        if (allowed != type(uint256).max) allowance[from][msg.sender] = allowed - amount;

        balanceOf[from] -= amount;

        // Cannot overflow because the sum of all user
        // balances can't exceed the max uint256 value.
        unchecked {
            balanceOf[to] += amount;
        }

        emit Transfer(from, to, amount);

        return true;
    }

    /*//////////////////////////////////////////////////////////////
                             EIP-2612 LOGIC
    //////////////////////////////////////////////////////////////*/

    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) public virtual {
        require(deadline >= block.timestamp, "PERMIT_DEADLINE_EXPIRED");

        // Unchecked because the only math done is incrementing
        // the owner's nonce which cannot realistically overflow.
        unchecked {
            address recoveredAddress = ecrecover(
                keccak256(
                    abi.encodePacked(
                        "\x19\x01",
                        DOMAIN_SEPARATOR(),
                        keccak256(
                            abi.encode(
                                keccak256(
                                    "Permit(address owner,address spender,uint256 value,uint256 nonce,uint256 deadline)"
                                ),
                                owner,
                                spender,
                                value,
                                nonces[owner]++,
                                deadline
                            )
                        )
                    )
                ),
                v,
                r,
                s
            );

            require(recoveredAddress != address(0) && recoveredAddress == owner, "INVALID_SIGNER");

            allowance[recoveredAddress][spender] = value;
        }

        emit Approval(owner, spender, value);
    }

    function DOMAIN_SEPARATOR() public view virtual returns (bytes32) {
        return block.chainid == INITIAL_CHAIN_ID ? INITIAL_DOMAIN_SEPARATOR : computeDomainSeparator();
    }

    function computeDomainSeparator() internal view virtual returns (bytes32) {
        return
            keccak256(
                abi.encode(
                    keccak256("EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)"),
                    keccak256(bytes(name)),
                    keccak256("1"),
                    block.chainid,
                    address(this)
                )
            );
    }

    /*//////////////////////////////////////////////////////////////
                        INTERNAL MINT/BURN LOGIC
    //////////////////////////////////////////////////////////////*/

    function _mint(address to, uint256 amount) internal virtual {
        totalSupply += amount;

        // Cannot overflow because the sum of all user
        // balances can't exceed the max uint256 value.
        unchecked {
            balanceOf[to] += amount;
        }

        emit Transfer(address(0), to, amount);
    }

    function _burn(address from, uint256 amount) internal virtual {
        balanceOf[from] -= amount;

        // Cannot underflow because a user's balance
        // will never be larger than the total supply.
        unchecked {
            totalSupply -= amount;
        }

        emit Transfer(from, address(0), amount);
    }
}

// ============================================================
// FILE: node_modules/solmate/src/utils/SafeTransferLib.sol
// ============================================================

// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.0;

import {ERC20} from "../tokens/ERC20.sol";

/// @notice Safe ETH and ERC20 transfer library that gracefully handles missing return values.
/// @author Solmate (https://github.com/transmissions11/solmate/blob/main/src/utils/SafeTransferLib.sol)
/// @dev Use with caution! Some functions in this library knowingly create dirty bits at the destination of the free memory pointer.
/// @dev Note that none of the functions in this library check that a token has code at all! That responsibility is delegated to the caller.
library SafeTransferLib {
    /*//////////////////////////////////////////////////////////////
                             ETH OPERATIONS
    //////////////////////////////////////////////////////////////*/

    function safeTransferETH(address to, uint256 amount) internal {
        bool success;

        /// @solidity memory-safe-assembly
        assembly {
            // Transfer the ETH and store if it succeeded or not.
            success := call(gas(), to, amount, 0, 0, 0, 0)
        }

        require(success, "ETH_TRANSFER_FAILED");
    }

    /*//////////////////////////////////////////////////////////////
                            ERC20 OPERATIONS
    //////////////////////////////////////////////////////////////*/

    function safeTransferFrom(
        ERC20 token,
        address from,
        address to,
        uint256 amount
    ) internal {
        bool success;

        /// @solidity memory-safe-assembly
        assembly {
            // Get a pointer to some free memory.
            let freeMemoryPointer := mload(0x40)

            // Write the abi-encoded calldata into memory, beginning with the function selector.
            mstore(freeMemoryPointer, 0x23b872dd00000000000000000000000000000000000000000000000000000000)
            mstore(add(freeMemoryPointer, 4), and(from, 0xffffffffffffffffffffffffffffffffffffffff)) // Append and mask the "from" argument.
            mstore(add(freeMemoryPointer, 36), and(to, 0xffffffffffffffffffffffffffffffffffffffff)) // Append and mask the "to" argument.
            mstore(add(freeMemoryPointer, 68), amount) // Append the "amount" argument. Masking not required as it's a full 32 byte type.

            success := and(
                // Set success to whether the call reverted, if not we check it either
                // returned exactly 1 (can't just be non-zero data), or had no return data.
                or(and(eq(mload(0), 1), gt(returndatasize(), 31)), iszero(returndatasize())),
                // We use 100 because the length of our calldata totals up like so: 4 + 32 * 3.
                // We use 0 and 32 to copy up to 32 bytes of return data into the scratch space.
                // Counterintuitively, this call must be positioned second to the or() call in the
                // surrounding and() call or else returndatasize() will be zero during the computation.
                call(gas(), token, 0, freeMemoryPointer, 100, 0, 32)
            )
        }

        require(success, "TRANSFER_FROM_FAILED");
    }

    function safeTransfer(
        ERC20 token,
        address to,
        uint256 amount
    ) internal {
        bool success;

        /// @solidity memory-safe-assembly
        assembly {
            // Get a pointer to some free memory.
            let freeMemoryPointer := mload(0x40)

            // Write the abi-encoded calldata into memory, beginning with the function selector.
            mstore(freeMemoryPointer, 0xa9059cbb00000000000000000000000000000000000000000000000000000000)
            mstore(add(freeMemoryPointer, 4), and(to, 0xffffffffffffffffffffffffffffffffffffffff)) // Append and mask the "to" argument.
            mstore(add(freeMemoryPointer, 36), amount) // Append the "amount" argument. Masking not required as it's a full 32 byte type.

            success := and(
                // Set success to whether the call reverted, if not we check it either
                // returned exactly 1 (can't just be non-zero data), or had no return data.
                or(and(eq(mload(0), 1), gt(returndatasize(), 31)), iszero(returndatasize())),
                // We use 68 because the length of our calldata totals up like so: 4 + 32 * 2.
                // We use 0 and 32 to copy up to 32 bytes of return data into the scratch space.
                // Counterintuitively, this call must be positioned second to the or() call in the
                // surrounding and() call or else returndatasize() will be zero during the computation.
                call(gas(), token, 0, freeMemoryPointer, 68, 0, 32)
            )
        }

        require(success, "TRANSFER_FAILED");
    }

    function safeApprove(
        ERC20 token,
        address to,
        uint256 amount
    ) internal {
        bool success;

        /// @solidity memory-safe-assembly
        assembly {
            // Get a pointer to some free memory.
            let freeMemoryPointer := mload(0x40)

            // Write the abi-encoded calldata into memory, beginning with the function selector.
            mstore(freeMemoryPointer, 0x095ea7b300000000000000000000000000000000000000000000000000000000)
            mstore(add(freeMemoryPointer, 4), and(to, 0xffffffffffffffffffffffffffffffffffffffff)) // Append and mask the "to" argument.
            mstore(add(freeMemoryPointer, 36), amount) // Append the "amount" argument. Masking not required as it's a full 32 byte type.

            success := and(
                // Set success to whether the call reverted, if not we check it either
                // returned exactly 1 (can't just be non-zero data), or had no return data.
                or(and(eq(mload(0), 1), gt(returndatasize(), 31)), iszero(returndatasize())),
                // We use 68 because the length of our calldata totals up like so: 4 + 32 * 2.
                // We use 0 and 32 to copy up to 32 bytes of return data into the scratch space.
                // Counterintuitively, this call must be positioned second to the or() call in the
                // surrounding and() call or else returndatasize() will be zero during the computation.
                call(gas(), token, 0, freeMemoryPointer, 68, 0, 32)
            )
        }

        require(success, "APPROVE_FAILED");
    }
}
