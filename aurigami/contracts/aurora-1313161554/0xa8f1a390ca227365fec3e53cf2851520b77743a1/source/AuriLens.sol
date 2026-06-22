pragma solidity 0.8.11;

abstract contract ComptrollerInterface {
    /// @notice Indicator that this is a Comptroller contract (for inspection)
    bool public constant isComptroller = true;

    /*** Assets You Are In ***/

    function enterMarkets(address[] calldata plyTokens) external virtual;
    function exitMarket(address plyToken) external virtual;

    /*** Policy Hooks ***/

    function mintAllowed(address plyToken, address minter, uint mintAmount) external virtual;

    function redeemAllowed(address plyToken, address redeemer, uint redeemTokens) external virtual;

    function borrowAllowed(address plyToken, address borrower, uint borrowAmount) external virtual;

    function repayBorrowAllowed(
        address plyToken,
        address payer,
        address borrower,
        uint repayAmount) external virtual;

    function liquidateBorrowAllowed(
        address plyTokenBorrowed,
        address plyTokenCollateral,
        address liquidator,
        address borrower,
        uint repayAmount) external virtual;

    function seizeAllowed(
        address plyTokenCollateral,
        address plyTokenBorrowed,
        address liquidator,
        address borrower,
        uint seizeTokens) external virtual;

    function transferAllowed(address plyToken, address src, address dst, uint transferTokens) external virtual;

    /*** Liquidity/Liquidation Calculations ***/

    function liquidateCalculateSeizeTokens(
        address plyTokenBorrowed,
        address plyTokenCollateral,
        uint repayAmount) external view virtual returns (uint);
}

/**
  * @title Aurigami Finance's InterestRateModel Interface
  */
abstract contract InterestRateModel {
    /// @notice Indicator that this is an InterestRateModel contract (for inspection)
    bool public constant isInterestRateModel = true;

    /**
      * @notice Calculates the current borrow interest rate per timestmp
      * @param cash The total amount of cash the market has
      * @param borrows The total amount of borrows the market has outstanding
      * @param reserves The total amount of reserves the market has
      * @return The borrow rate per timestmp (as a percentage, and scaled by 1e18)
      */
    function getBorrowRate(uint cash, uint borrows, uint reserves) external view virtual returns (uint);

    /**
      * @notice Calculates the current supply interest rate per timestmp
      * @param cash The total amount of cash the market has
      * @param borrows The total amount of borrows the market has outstanding
      * @param reserves The total amount of reserves the market has
      * @param reserveFactorMantissa The current reserve factor the market has
      * @return The supply rate per timestmp (as a percentage, and scaled by 1e18)
      */
    function getSupplyRate(uint cash, uint borrows, uint reserves, uint reserveFactorMantissa) external view virtual returns (uint);

}

/**
 * @title EIP20NonStandardInterface
 * @dev Version of ERC20 with no return values for `transfer` and `transferFrom`
 *  See https://medium.com/coinmonks/missing-return-value-bug-at-least-130-tokens-affected-d67bf08521ca
 */
interface EIP20NonStandardInterface {

    /**
     * @notice Get the total number of tokens in circulation
     * @return The supply of tokens
     */
    function totalSupply() external view returns (uint256);

    /**
     * @notice Gets the balance of the specified address
     * @param owner The address from which the balance will be retrieved
     * @return balance The balance
     */
    function balanceOf(address owner) external view returns (uint256 balance);

    ///
    /// !!!!!!!!!!!!!!
    /// !!! NOTICE !!! `transfer` does not return a value, in violation of the ERC-20 specification
    /// !!!!!!!!!!!!!!
    ///

    /**
      * @notice Transfer `amount` tokens from `msg.sender` to `dst`
      * @param dst The address of the destination account
      * @param amount The number of tokens to transfer
      */
    function transfer(address dst, uint256 amount) external;

    ///
    /// !!!!!!!!!!!!!!
    /// !!! NOTICE !!! `transferFrom` does not return a value, in violation of the ERC-20 specification
    /// !!!!!!!!!!!!!!
    ///

    /**
      * @notice Transfer `amount` tokens from `src` to `dst`
      * @param src The address of the source account
      * @param dst The address of the destination account
      * @param amount The number of tokens to transfer
      */
    function transferFrom(address src, address dst, uint256 amount) external;

    /**
      * @notice Approve `spender` to transfer up to `amount` from `src`
      * @dev This will overwrite the approval amount for `spender`
      *  and is subject to issues noted [here](https://eips.ethereum.org/EIPS/eip-20#approve)
      * @param spender The address of the account which may transfer tokens
      * @param amount The number of tokens that are approved
      * @return success Whether or not the approval succeeded
      */
    function approve(address spender, uint256 amount) external returns (bool success);

    /**
      * @notice Get the current allowance from `owner` for `spender`
      * @param owner The address of the account which owns the tokens to be spent
      * @param spender The address of the account which may transfer tokens
      * @return remaining The number of tokens allowed to be spent
      */
    function allowance(address owner, address spender) external view returns (uint256 remaining);

    event Transfer(address indexed from, address indexed to, uint256 amount);
    event Approval(address indexed owner, address indexed spender, uint256 amount);
}

/**
 * @title ERC 20 Token Standard Interface
 *  https://eips.ethereum.org/EIPS/eip-20
 */
interface EIP20Interface {
    function name() external view returns (string memory);
    function symbol() external view returns (string memory);
    function decimals() external view returns (uint8);

    /**
      * @notice Get the total number of tokens in circulation
      * @return The supply of tokens
      */
    function totalSupply() external view returns (uint256);

    /**
     * @notice Gets the balance of the specified address
     * @param owner The address from which the balance will be retrieved
     * @return balance The balance
     */
    function balanceOf(address owner) external view returns (uint256 balance);

    /**
      * @notice Transfer `amount` tokens from `msg.sender` to `dst`
      * @param dst The address of the destination account
      * @param amount The number of tokens to transfer
      * @return success Whether or not the transfer succeeded
      */
    function transfer(address dst, uint256 amount) external returns (bool success);

    /**
      * @notice Transfer `amount` tokens from `src` to `dst`
      * @param src The address of the source account
      * @param dst The address of the destination account
      * @param amount The number of tokens to transfer
      * @return success Whether or not the transfer succeeded
      */
    function transferFrom(address src, address dst, uint256 amount) external returns (bool success);

    /**
      * @notice Approve `spender` to transfer up to `amount` from `src`
      * @dev This will overwrite the approval amount for `spender`
      *  and is subject to issues noted [here](https://eips.ethereum.org/EIPS/eip-20#approve)
      * @param spender The address of the account which may transfer tokens
      * @param amount The number of tokens that are approved (-1 means infinite)
      * @return success Whether or not the approval succeeded
      */
    function approve(address spender, uint256 amount) external returns (bool success);

    /**
      * @notice Get the current allowance from `owner` for `spender`
      * @param owner The address of the account which owns the tokens to be spent
      * @param spender The address of the account which may transfer tokens
      * @return remaining The number of tokens allowed to be spent (-1 means infinite)
      */
    function allowance(address owner, address spender) external view returns (uint256 remaining);

    event Transfer(address indexed from, address indexed to, uint256 amount);
    event Approval(address indexed owner, address indexed spender, uint256 amount);
}

// OpenZeppelin Contracts v4.4.1 (security/ReentrancyGuard.sol)

/**
 * @dev Contract module that helps prevent reentrant calls to a function.
 *
 * Inheriting from `ReentrancyGuard` will make the {nonReentrant} modifier
 * available, which can be applied to functions to make sure there are no nested
 * (reentrant) calls to them.
 *
 * Note that because there is a single `nonReentrant` guard, functions marked as
 * `nonReentrant` may not call one another. This can be worked around by making
 * those functions `private`, and then adding `external` `nonReentrant` entry
 * points to them.
 *
 * TIP: If you would like to learn more about reentrancy and alternative ways
 * to protect against it, check out our blog post
 * https://blog.openzeppelin.com/reentrancy-after-istanbul/[Reentrancy After Istanbul].
 */
abstract contract ReentrancyGuard {
    // Booleans are more expensive than uint256 or any type that takes up a full
    // word because each write operation emits an extra SLOAD to first read the
    // slot's contents, replace the bits taken up by the boolean, and then write
    // back. This is the compiler's defense against contract upgrades and
    // pointer aliasing, and it cannot be disabled.

    // The values being non-zero value makes deployment a bit more expensive,
    // but in exchange the refund on every call to nonReentrant will be lower in
    // amount. Since refunds are capped to a percentage of the total
    // transaction's gas, it is best to keep them low in cases like this one, to
    // increase the likelihood of the full refund coming into effect.
    uint256 private constant _NOT_ENTERED = 1;
    uint256 private constant _ENTERED = 2;

    uint256 private _status;

    constructor() {
        _status = _NOT_ENTERED;
    }

    /**
     * @dev Prevents a contract from calling itself, directly or indirectly.
     * Calling a `nonReentrant` function from another `nonReentrant`
     * function is not supported. It is possible to prevent this from happening
     * by making the `nonReentrant` function external, and making it call a
     * `private` function that does the actual work.
     */
    modifier nonReentrant() {
        // On the first call to nonReentrant, _notEntered will be true
        require(_status != _ENTERED, "ReentrancyGuard: reentrant call");

        // Any calls to nonReentrant after this point will fail
        _status = _ENTERED;

        _;

        // By storing the original value once again, a refund is triggered (see
        // https://eips.ethereum.org/EIPS/eip-2200)
        _status = _NOT_ENTERED;
    }
}

contract AuTokenStorage is ReentrancyGuard {
    /**
     * @notice EIP-20 token name for this token
     */
    string public name;

    /**
     * @notice EIP-20 token symbol for this token
     */
    string public symbol;

    /**
     * @notice EIP-20 token decimals for this token
     */
    uint8 immutable public decimals;

    /**
     * @notice Maximum borrow rate that can ever be applied (.0005% / block)
     */

    uint internal constant borrowRateMaxMantissa = 0.0005e16;

    /**
     * @notice Maximum fraction of interest that can be set aside for reserves
     */
    uint internal constant reserveFactorMaxMantissa = 1e18;

    /**
     * @notice Administrator for this contract
     */
    address payable public admin;

    /**
     * @notice Pending administrator for this contract
     */
    address payable public pendingAdmin;

    /**
     * @notice Contract which oversees inter-auToken operations
     */
    ComptrollerInterface public comptroller;

    /**
     * @notice Model which tells what the current interest rate should be
     */
    InterestRateModel public interestRateModel;

    /**
     * @notice Initial exchange rate used when minting the first AuTokens (used when totalSupply = 0)
     */
    uint internal immutable initialExchangeRateMantissa;

    /**
     * @notice Fraction of interest currently set aside for reserves
     */
    uint public reserveFactorMantissa;

    /**
     * @notice Block number that interest was last accrued at
     */
    uint public accrualBlockTimestamp;

    /**
     * @notice Accumulator of the total earned interest rate since the opening of the market
     */
    uint public borrowIndex;

    /**
     * @notice Total amount of outstanding borrows of the underlying in this market
     */
    uint public totalBorrows;

    /**
     * @notice Total amount of reserves of the underlying held in this market
     */
    uint public totalReserves;

    /**
     * @notice Total number of tokens in circulation
     */
    uint public totalSupply;

    /**
     * @notice Official record of token balances for each account
     */
    mapping (address => uint) internal accountTokens;

    /**
     * @notice Approved token transfer amounts on behalf of others
     */
    mapping (address => mapping (address => uint)) internal transferAllowances;

    /**
     * @notice Container for borrow balance information
     * @member principal Total balance (with accrued interest), after applying the most recent balance-changing action
     * @member interestIndex Global borrowIndex as of the most recent balance-changing action
     */
    struct BorrowSnapshot {
        uint principal;
        uint interestIndex;
    }

    /**
     * @notice Mapping of account addresses to outstanding borrow balances
     */
    mapping(address => BorrowSnapshot) internal accountBorrows;

    /**
     * @notice Share of seized collateral that is added to reserves
     */
    uint public protocolSeizeShareMantissa;

    constructor(uint8 decimals_, uint256 initialExchangeRateMantissa_) ReentrancyGuard() {
        require(initialExchangeRateMantissa_ > 0, "initial exchange rate must be greater than zero.");
        decimals = decimals_;
        initialExchangeRateMantissa = initialExchangeRateMantissa_;
    }
}

abstract contract AuTokenInterface is AuTokenStorage {
    /**
     * @notice Indicator that this is a AuToken contract (for inspection)
     */
    bool public constant isAuToken = true;

    /*** Market Events ***/

    /**
     * @notice Event emitted when interest is accrued
     */
    event AccrueInterest(uint cashPrior, uint interestAccumulated, uint borrowIndex, uint totalBorrows);

    /**
     * @notice Event emitted when tokens are minted
     */
    event Mint(address minter, uint mintAmount, uint mintTokens);

    /**
     * @notice Event emitted when tokens are redeemed
     */
    event Redeem(address redeemer, uint redeemAmount, uint redeemTokens);

    /**
     * @notice Event emitted when underlying is borrowed
     */
    event Borrow(address borrower, uint borrowAmount, uint accountBorrows, uint totalBorrows);

    /**
     * @notice Event emitted when a borrow is repaid
     */
    event RepayBorrow(address payer, address borrower, uint repayAmount, uint accountBorrows, uint totalBorrows);

    /**
     * @notice Event emitted when a borrow is liquidated
     */
    event LiquidateBorrow(address liquidator, address borrower, uint repayAmount, address auTokenCollateral, uint seizeTokens);

    /*** Admin Events ***/

    /**
     * @notice Event emitted when pendingAdmin is changed
     */
    event NewPendingAdmin(address oldPendingAdmin, address newPendingAdmin);

    /**
     * @notice Event emitted when pendingAdmin is accepted, which means admin is updated
     */
    event NewAdmin(address oldAdmin, address newAdmin);

    /**
     * @notice Event emitted when comptroller is changed
     */
    event NewComptroller(ComptrollerInterface oldComptroller, ComptrollerInterface newComptroller);

    /**
     * @notice Event emitted when interestRateModel is changed
     */
    event NewMarketInterestRateModel(InterestRateModel oldInterestRateModel, InterestRateModel newInterestRateModel);

    /**
     * @notice Event emitted when the reserve factor is changed
     */
    event NewReserveFactor(uint oldReserveFactorMantissa, uint newReserveFactorMantissa);

    /**
     * @notice Event emitted when the protocol seize share is changed
     */
    event NewProtocolSeizeShare(uint oldProtocolSeizeShareMantissa, uint newProtocolSeizeShareMantissa);

    /**
     * @notice Event emitted when the reserves are added
     */
    event ReservesAdded(address benefactor, uint addAmount, uint newTotalReserves);

    /**
     * @notice Event emitted when the reserves are reduced
     */
    event ReservesReduced(address admin, uint reduceAmount, uint newTotalReserves);

    /**
     * @notice EIP20 Transfer event
     */
    event Transfer(address indexed from, address indexed to, uint amount);

    /**
     * @notice EIP20 Approval event
     */
    event Approval(address indexed owner, address indexed spender, uint amount);

    /*** User Interface ***/

    function transfer(address dst, uint amount) external virtual returns (bool);
    function transferFrom(address src, address dst, uint amount) external virtual returns (bool);
    function approve(address spender, uint amount) external virtual returns (bool);
    function allowance(address owner, address spender) external virtual view returns (uint);
    function balanceOf(address owner) external virtual view returns (uint);
    function balanceOfUnderlying(address owner) external virtual returns (uint);
    function getAccountSnapshot(address account) external virtual view returns (uint, uint, uint);
    function borrowRatePerTimestamp() external virtual view returns (uint);
    function supplyRatePerTimestamp() external virtual view returns (uint);
    function totalBorrowsCurrent() external virtual returns (uint);
    function borrowBalanceCurrent(address account) external virtual returns (uint);
    function borrowBalanceStored(address account) public view virtual returns (uint);
    function exchangeRateCurrent() public virtual returns (uint);
    function exchangeRateStored() public view virtual returns (uint);
    function getBorrowDataOfAccount(address account) public view virtual returns (uint, uint);
    function getSupplyDataOfOneAccount(address account) public view virtual returns (uint, uint);
    function getSupplyDataOfTwoAccount(address account1, address account2) public view virtual returns (uint, uint, uint);
    function getCash() external virtual view returns (uint);
    function accrueInterest() public virtual;
    function seize(address liquidator, address borrower, uint seizeTokens) external virtual;

    /*** Admin Functions ***/

    function _setPendingAdmin(address payable newPendingAdmin) external virtual;
    function _acceptAdmin() external virtual;
    function _setComptroller(ComptrollerInterface newComptroller) public virtual;
    function _setReserveFactor(uint newReserveFactorMantissa) external virtual;
    function _reduceReserves(uint reduceAmount) external virtual;
    function _setInterestRateModel(InterestRateModel newInterestRateModel) public virtual;
    function _setProtocolSeizeShare(uint newProtocolSeizeShareMantissa) external virtual;
}

contract AuErc20Storage {
    /**
     * @notice Underlying asset for this AuToken
     */
    address public immutable underlying;

    constructor(address underlying_) {
        underlying = underlying_;
        EIP20Interface(underlying).totalSupply();
    }
}

abstract contract AuErc20Interface is AuErc20Storage {

    /*** User Interface ***/

    function mint(uint mintAmount) external virtual;
    function redeem(uint redeemTokens) external virtual;
    function redeemUnderlying(uint redeemAmount) external virtual;
    function borrow(uint borrowAmount) external virtual;
    function repayBorrow(uint repayAmount) external virtual;
    function repayBorrowBehalf(address borrower, uint repayAmount) external virtual;
    function liquidateBorrow(address borrower, uint repayAmount, AuTokenInterface auTokenCollateral) external virtual;
    function sweepToken(EIP20NonStandardInterface token) external virtual;

    /*** Admin Functions ***/

    function _addReserves(uint addAmount) external virtual;
}

/**
 * @title Exponential module for storing fixed-precision decimals
 * @author Compound
 * @notice Exp is a struct which stores decimals with a fixed precision of 18 decimal places.
 *         Thus, if we wanted to store the 5.1, mantissa would store 5.1e18. That is:
 *         `Exp({mantissa: 5100000000000000000})`.
 */
contract ExponentialNoError {
    type Exp is uint;
    type Double is uint;

    uint constant internal expScale = 1e18;
    uint constant internal doubleScale = 1e36;
    uint constant internal halfExpScale = expScale/2;
    uint constant internal mantissaOne = expScale;

    /**
     * @dev Truncates the given exp to a whole number value.
     *      For example, truncate(Exp{mantissa: 15 * expScale}) = 15
     */
    function truncate(Exp exp) pure internal returns (uint) {
        return Exp.unwrap(exp) / expScale;
    }

    /**
     * @dev Multiply an Exp by a scalar, then truncate to return an unsigned integer.
     */
    function mul_ScalarTruncate(Exp a, uint scalar) pure internal returns (uint) {
        return truncate(mul_(a, scalar));
    }

    /**
     * @dev Multiply an Exp by a scalar, truncate, then add an to an unsigned integer, returning an unsigned integer.
     */
    function mul_ScalarTruncateAddUInt(Exp a, uint scalar, uint addend) pure internal returns (uint) {
        return truncate(mul_(a, scalar)) + addend;
    }

    /**
     * @dev Checks if first Exp is less than second Exp.
     */
    function lessThanExp(Exp left, Exp right) pure internal returns (bool) {
        return Exp.unwrap(left) < Exp.unwrap(right);
    }

    /**
     * @dev Checks if left Exp <= right Exp.
     */
    function lessThanOrEqualExp(Exp left, Exp right) pure internal returns (bool) {
        return Exp.unwrap(left) <= Exp.unwrap(right);
    }

    /**
     * @dev Checks if left Exp > right Exp.
     */
    function greaterThanExp(Exp left, Exp right) pure internal returns (bool) {
        return Exp.unwrap(left) > Exp.unwrap(right);
    }

    /**
     * @dev returns true if Exp is exactly zero
     */
    function isZeroExp(Exp value) pure internal returns (bool) {
        return Exp.unwrap(value) == 0;
    }

    function safe224(uint n) pure internal returns (uint224) {
        require(n <= type(uint224).max, "safe224");
        return uint224(n);
    }

    function add_(Exp a, Exp b) pure internal returns (Exp) {
        return Exp.wrap(Exp.unwrap(a) + Exp.unwrap(b));
    }

    function add_(Double a, Double b) pure internal returns (Double) {
        return Double.wrap(Double.unwrap(a) + Double.unwrap(b));
    }

    function sub_(Exp a, Exp b) pure internal returns (Exp) {
        return Exp.wrap(Exp.unwrap(a) - Exp.unwrap(b));
    }

    function sub_(Double a, Double b) pure internal returns (Double) {
        return Double.wrap(Double.unwrap(a) - Double.unwrap(b));
    }

    function mul_(Exp a, Exp b) pure internal returns (Exp) {
        return Exp.wrap(Exp.unwrap(a) * Exp.unwrap(b) / expScale);
    }

    function mul_(Exp a, uint b) pure internal returns (Exp) {
        return Exp.wrap(Exp.unwrap(a) * b);
    }

    function mul_(uint a, Exp b) pure internal returns (uint) {
        return a * Exp.unwrap(b) / expScale;
    }

    function mul_(Double a, Double b) pure internal returns (Double) {
        return Double.wrap(Double.unwrap(a) * Double.unwrap(b) / doubleScale);
    }

    function mul_(Double a, uint b) pure internal returns (Double) {
        return Double.wrap(Double.unwrap(a) * b);
    }

    function mul_(uint a, Double b) pure internal returns (uint) {
        return a * Double.unwrap(b) / doubleScale;
    }

    function div_(Exp a, Exp b) pure internal returns (Exp) {
        return Exp.wrap(Exp.unwrap(a) * expScale / Exp.unwrap(b));
    }

    function div_(Exp a, uint b) pure internal returns (Exp) {
        return Exp.wrap(Exp.unwrap(a) / b);
    }

    function div_(uint a, Exp b) pure internal returns (uint) {
        return a * expScale / Exp.unwrap(b);
    }

    function div_(Double a, Double b) pure internal returns (Double) {
        return Double.wrap(Double.unwrap(a) * doubleScale / Double.unwrap(b));
    }

    function div_(Double a, uint b) pure internal returns (Double) {
        return Double.wrap(Double.unwrap(a) / b);
    }

    function div_(uint a, Double b) pure internal returns (uint) {
        return a * doubleScale / Double.unwrap(b);
    }

    function fraction(uint a, uint b) pure internal returns (Double) {
        return Double.wrap(a * doubleScale / b);
    }
}

/**
 * @title Exponential module for storing fixed-precision decimals
 * @notice Exp is a user-defined type which stores decimals with a fixed precision of 18 decimal places.
 *         Thus, if we wanted to store the 5.1, mantissa would store 5.1e18. That is:
 *         `Exp.wrap(5100000000000000000)`.

 * @notice All the Math errors were removed from this contract. Every math error will now cause the transaction to be reverted.
 */
contract Exponential is ExponentialNoError {
    /**
     * @dev Creates an exponential from numerator and denominator values.
     */
    function getExp(uint num, uint denom) pure internal returns (Exp) {
        return Exp.wrap(num * expScale / denom);
    }

    /**
     * @dev Multiply an Exp by a scalar, returning a new Exp.
     */
    function mulScalar(Exp a, uint scalar) pure internal returns (Exp) {
        return Exp.wrap(Exp.unwrap(a) * scalar);
    }

    /**
     * @dev Multiply an Exp by a scalar, then truncate to return an unsigned integer.
     */
    function mulScalarTruncate(Exp a, uint scalar) pure internal returns (uint) {
        return truncate(mulScalar(a, scalar));
    }

    /**
     * @dev Multiply an Exp by a scalar, truncate, then add an to an unsigned integer, returning an unsigned integer.
     */
    function mulScalarTruncateAddUInt(Exp a, uint scalar, uint addend) pure internal returns (uint) {
        return truncate(mulScalar(a, scalar)) + addend;
    }

    /**
     * @dev Divide an Exp by a scalar, returning a new Exp.
     */
    function divScalar(Exp a, uint scalar) pure internal returns (Exp) {
        return Exp.wrap(Exp.unwrap(a) / scalar);
    }

    /**
     * @dev Divide a scalar by an Exp, returning a new Exp.
     */
    function divScalarByExp(uint scalar, Exp divisor) pure internal returns (Exp) {
        /*
          We are doing this as:
          getExp(expScale * scalar, divisor)
          How it works:
          Exp = a / b;
          Scalar = s;
          `s / (a / b)` = `b * s / a` and since for an Exp `a = mantissa, b = expScale`
        */
        return getExp(expScale * scalar, Exp.unwrap(divisor));
    }

    /**
     * @dev Divide a scalar by an Exp, then truncate to return an unsigned integer.
     */
    function divScalarByExpTruncate(uint scalar, Exp divisor) pure internal returns (uint) {
        return truncate(divScalarByExp(scalar, divisor));
    }

    /**
     * @dev Multiplies two exponentials, returning a new exponential.
     */
    function mulExp(Exp a, Exp b) pure internal returns (Exp) {

        uint doubleScaledProduct = Exp.unwrap(a) * Exp.unwrap(b);

        // We add half the scale before dividing so that we get rounding instead of truncation.
        //  See "Listing 6" and text above it at https://accu.org/index.php/journals/1717
        // Without this change, a result like 6.6...e-19 will be truncated to 0 instead of being rounded to 1e-18.
        uint doubleScaledProductWithHalfScale = halfExpScale + doubleScaledProduct;

        uint product = doubleScaledProductWithHalfScale / expScale;

        return Exp.wrap(product);
    }

    /**
     * @dev Multiplies two exponentials given their mantissas, returning a new exponential.
     */
    function mulExp(uint a, uint b) pure internal returns (Exp) {
        return mulExp(Exp.wrap(a), Exp.wrap(b));
    }

    /**
     * @dev Multiplies three exponentials, returning a new exponential.
     */
    function mulExp3(Exp a, Exp b, Exp c) pure internal returns (Exp) {
        return mulExp(mulExp(a, b), c);
    }

    /**
     * @dev Divides two exponentials, returning a new exponential.
     *     (a/scale) / (b/scale) = (a/scale) * (scale/b) = a/b,
     *  which we can scale as an Exp by calling getExp(a.mantissa, b.mantissa)
     */
    function divExp(Exp a, Exp b) pure internal returns (Exp) {
        return getExp(Exp.unwrap(a), Exp.unwrap(b));
    }
}

/**
 * @title Aurigami Finance's AuToken Contract
 * @notice Abstract base for auTokens
 */
abstract contract AuToken is AuTokenInterface, Exponential {
    error MarketNotFresh();
    error TokenInsufficientCash();
    error Unauthorized();
    error BadInput();
    error InvalidCloseAmountRequested();
    error InvalidAccountPair();

    constructor(
        ComptrollerInterface comptroller_,
        InterestRateModel interestRateModel_,
        uint initialExchangeRateMantissa_,
        string memory name_,
        string memory symbol_,
        uint8 decimals_,
        address admin_
    ) AuTokenStorage(decimals_, initialExchangeRateMantissa_) {
        // set admin temporarily
        admin = payable(msg.sender);

        // Set the comptroller
        _setComptroller(comptroller_);

        // Initialize block timestamp and borrow index (block timestamp mocks depend on comptroller being set)
        accrualBlockTimestamp = getBlockTimestamp();
        borrowIndex = mantissaOne;

        // Set the interest rate model (depends on block timestamp / borrow index)
        _setInterestRateModelFresh(interestRateModel_);

        name = name_;
        symbol = symbol_;

        admin = payable(admin_);
    }

    /**
     * @notice Transfer `tokens` tokens from `src` to `dst` by `spender`
     * @dev Called by both `transfer` and `transferFrom` internally
     * @param spender The address of the account performing the transfer
     * @param src The address of the source account
     * @param dst The address of the destination account
     * @param tokens The number of tokens to transfer
     */
    function transferTokens(address spender, address src, address dst, uint tokens) internal {
        /* Fail if transfer not allowed */
        comptroller.transferAllowed(address(this), src, dst, tokens);

        /* Do not allow self-transfers */
        if (src == dst) {
            revert BadInput();
        }

        /* Get the allowance, infinite for the account owner */
        uint startingAllowance = 0;
        if (spender == src) {
            startingAllowance = type(uint256).max;
        } else {
            startingAllowance = transferAllowances[src][spender];
        }

        /* Do the calculations, checking for {under,over}flow */
        uint allowanceNew;
        uint srcTokensNew;
        uint dstTokensNew;

        allowanceNew = startingAllowance - tokens;
        srcTokensNew = accountTokens[src] - tokens;
        dstTokensNew = accountTokens[dst] + tokens;

        /////////////////////////
        // EFFECTS & INTERACTIONS
        // (No safe failures beyond this point)

        accountTokens[src] = srcTokensNew;
        accountTokens[dst] = dstTokensNew;

        /* Eat some of the allowance (if necessary) */
        if (startingAllowance != type(uint256).max) {
            transferAllowances[src][spender] = allowanceNew;
        }

        /* We emit a Transfer event */
        emit Transfer(src, dst, tokens);

        // unused function
        // comptroller.transferVerify(address(this), src, dst, tokens);
    }

    /**
     * @notice Transfer `amount` tokens from `msg.sender` to `dst`
     * @param dst The address of the destination account
     * @param amount The number of tokens to transfer
     * @return Whether or not the transfer succeeded
     */
    function transfer(address dst, uint256 amount) external override nonReentrant returns (bool) {
        transferTokens(msg.sender, msg.sender, dst, amount);
        return true;
    }

    /**
     * @notice Transfer `amount` tokens from `src` to `dst`
     * @param src The address of the source account
     * @param dst The address of the destination account
     * @param amount The number of tokens to transfer
     * @return Whether or not the transfer succeeded
     */
    function transferFrom(address src, address dst, uint256 amount) external override nonReentrant returns (bool) {
        transferTokens(msg.sender, src, dst, amount);
        return true;
    }

    /**
     * @notice Approve `spender` to transfer up to `amount` from `src`
     * @dev This will overwrite the approval amount for `spender`
     *  and is subject to issues noted [here](https://eips.ethereum.org/EIPS/eip-20#approve)
     * @param spender The address of the account which may transfer tokens
     * @param amount The number of tokens that are approved (-1 means infinite)
     * @return Whether or not the approval succeeded
     */
    function approve(address spender, uint256 amount) external override returns (bool) {
        address src = msg.sender;
        transferAllowances[src][spender] = amount;
        emit Approval(src, spender, amount);
        return true;
    }

    /**
     * @notice Get the current allowance from `owner` for `spender`
     * @param owner The address of the account which owns the tokens to be spent
     * @param spender The address of the account which may transfer tokens
     * @return The number of tokens allowed to be spent (-1 means infinite)
     */
    function allowance(address owner, address spender) external view override returns (uint256) {
        return transferAllowances[owner][spender];
    }

    /**
     * @notice Get the token balance of the `owner`
     * @param owner The address of the account to query
     * @return The number of tokens owned by `owner`
     */
    function balanceOf(address owner) external view override returns (uint256) {
        return accountTokens[owner];
    }

    /**
     * @notice Get the underlying balance of the `owner`
     * @dev This also accrues interest in a transaction
     * @param owner The address of the account to query
     * @return The amount of underlying owned by `owner`
     */
    function balanceOfUnderlying(address owner) external override returns (uint) {
        Exp exchangeRate = Exp.wrap(exchangeRateCurrent());
        uint balance = mulScalarTruncate(exchangeRate, accountTokens[owner]);
        return balance;
    }

    /**
     * @notice Get a snapshot of the account's balances, and the cached exchange rate
     * @dev This is used by comptroller to more efficiently perform liquidity checks.
     * @param account Address of the account to snapshot
     * @return (token balance, borrow balance, exchange rate mantissa)
     */
    function getAccountSnapshot(address account) external view override returns (uint, uint, uint) {
        uint auTokenBalance = accountTokens[account];

        uint borrowBalance = borrowBalanceStoredInternal(account);

        uint exchangeRateMantissa = exchangeRateStoredInternal();

        return (auTokenBalance, borrowBalance, exchangeRateMantissa);
    }

    /**
     * @dev Function to simply retrieve block timestamp
     *  This exists mainly for inheriting test contracts to stub this result.
     */
    function getBlockTimestamp() internal view returns (uint) {
        return block.timestamp;
    }

    /**
     * @notice Returns the current per-timestamp borrow interest rate for this auToken
     * @return The borrow interest rate per timestmp, scaled by 1e18
     */
    function borrowRatePerTimestamp() external view override returns (uint) {
        return interestRateModel.getBorrowRate(getCashPrior(), totalBorrows, totalReserves);
    }

    /**
     * @notice Returns the current per-timestamp supply interest rate for this auToken
     * @return The supply interest rate per timestmp, scaled by 1e18
     */
    function supplyRatePerTimestamp() external view override returns (uint) {
        return interestRateModel.getSupplyRate(getCashPrior(), totalBorrows, totalReserves, reserveFactorMantissa);
    }

    /**
     * @notice Returns the current total borrows plus accrued interest
     * @return The total borrows with interest
     */
    function totalBorrowsCurrent() external override nonReentrant returns (uint) {
        accrueInterest();
        return totalBorrows;
    }

    /**
     * @notice Accrue interest to updated borrowIndex and then calculate account's borrow balance using the updated borrowIndex
     * @param account The address whose balance should be calculated after updating borrowIndex
     * @return The calculated balance
     */
    function borrowBalanceCurrent(address account) external override nonReentrant returns (uint) {
        accrueInterest();
        return borrowBalanceStored(account);
    }

    /**
     * @notice Return the borrow balance of account based on stored data
     * @param account The address whose balance should be calculated
     * @return The calculated balance
     */
    function borrowBalanceStored(address account) public view override returns (uint) {
        uint result = borrowBalanceStoredInternal(account);
        return result;
    }

    /**
     * @notice Return the borrow balance of account based on stored data
     * @param account The address whose balance should be calculated
     * @return the calculated balance
     */
    function borrowBalanceStoredInternal(address account) internal view returns (uint) {
        uint principalTimesIndex;
        uint result;

        /* Get borrowBalance and borrowIndex */
        BorrowSnapshot storage borrowSnapshot = accountBorrows[account];

        /* If borrowBalance = 0 then borrowIndex is likely also 0.
         * Rather than failing the calculation with a division by 0, we immediately return 0 in this case.
         */
        if (borrowSnapshot.principal == 0){
            return 0;
        }

        /* Calculate new borrow balance using the interest index:
         *  recentBorrowBalance = borrower.borrowBalance * market.borrowIndex / borrower.borrowIndex
         */
        principalTimesIndex = borrowSnapshot.principal * borrowIndex;

        result = principalTimesIndex / borrowSnapshot.interestIndex;

        return result;
    }

    /**
     * @notice Accrue interest then return the up-to-date exchange rate
     * @return Calculated exchange rate scaled by 1e18
     */
    function exchangeRateCurrent() public override nonReentrant returns (uint) {
        accrueInterest();
        return exchangeRateStored();
    }

    /**
     * @notice Calculates the exchange rate from the underlying to the AuToken
     * @dev This function does not accrue interest before calculating the exchange rate
     * @return Calculated exchange rate scaled by 1e18
     */
    function exchangeRateStored() public view override returns (uint) {
        return exchangeRateStoredInternal();
    }

    /**
     * @notice Retrieve the totalBorrows & borrowBalance of account
     * @param account The address whose data to be retrieved
     * @return (totalBorrows, borrowBalance of account)
     */
    function getBorrowDataOfAccount(address account) public view override returns (uint, uint) {
        return (totalBorrows, borrowBalanceStored(account));
    }

    /**
     * @notice Retrieve the totalSupply & auTokenBalance of account
     * @param account The address whose data to be retrieved
     * @return (totalSupply, auTokenBalance of account)
     */
    function getSupplyDataOfOneAccount(address account) public view override returns (uint, uint) {
        return (totalSupply, accountTokens[account]);
    }

    /**
     * @notice Retrieve the totalSupply & auTokenBalance of two accounts
     * @param account1 The address whose data to be retrieved
     * @param account2 The address whose data to be retrieved
     * @return (totalSupply, auTokenBalance of account1, auTokenBalance of account2)
     */
    function getSupplyDataOfTwoAccount(address account1, address account2) public view override returns (uint, uint, uint) {
        return (totalSupply, accountTokens[account1], accountTokens[account2]);
    }

    /**
     * @notice Calculates the exchange rate from the underlying to the AuToken
     * @dev This function does not accrue interest before calculating the exchange rate
     * @return (calculated exchange rate scaled by 1e18)
     */
    function exchangeRateStoredInternal() internal view returns (uint) {
        uint _totalSupply = totalSupply;
        if (_totalSupply == 0) {
            /*
             * If there are no tokens minted:
             *  exchangeRate = initialExchangeRate
             */
            return initialExchangeRateMantissa;
        } else {
            /*
             * Otherwise:
             *  exchangeRate = (totalCash + totalBorrows - totalReserves) / totalSupply
             */
            uint totalCash = getCashPrior();
            uint cashPlusBorrowsMinusReserves;
            Exp exchangeRate;

            cashPlusBorrowsMinusReserves = totalCash + totalBorrows - totalReserves;

            exchangeRate = getExp(cashPlusBorrowsMinusReserves, _totalSupply);

            return Exp.unwrap(exchangeRate);
        }
    }

    /**
     * @notice Get cash balance of this auToken in the underlying asset
     * @return The quantity of underlying asset owned by this contract
     */
    function getCash() external view override returns (uint) {
        return getCashPrior();
    }

    /**
     * @notice Applies accrued interest to total borrows and reserves
     * @dev This calculates interest accrued from the last checkpointed block
     *   up to the current block and writes new checkpoint to storage.
     */
    function accrueInterest() public override{
        /* Remember the initial block timestamp */
        uint currentBlockTimestamp = getBlockTimestamp();
        uint accrualBlockTimestampPrior = accrualBlockTimestamp;

        /* Short-circuit accumulating 0 interest */
        if (accrualBlockTimestampPrior == currentBlockTimestamp){
            return;
        }

        /* Read the previous values out of storage */
        uint cashPrior = getCashPrior();
        uint borrowsPrior = totalBorrows;
        uint reservesPrior = totalReserves;
        uint borrowIndexPrior = borrowIndex;

        /* Calculate the current borrow interest rate */
        uint borrowRateMantissa = interestRateModel.getBorrowRate(cashPrior, borrowsPrior, reservesPrior);
        require(borrowRateMantissa <= borrowRateMaxMantissa, "borrow rate is absurdly high");

        /* Calculate the number of timestamp elapsed since the last accrual */
        uint timestampDelta = currentBlockTimestamp - accrualBlockTimestampPrior;

        /*
         * Calculate the interest accumulated into borrows and reserves and the new index:
         *  simpleInterestFactor = borrowRate * timestampDelta
         *  interestAccumulated = simpleInterestFactor * totalBorrows
         *  totalBorrowsNew = interestAccumulated + totalBorrows
         *  totalReservesNew = interestAccumulated * reserveFactor + totalReserves
         *  borrowIndexNew = simpleInterestFactor * borrowIndex + borrowIndex
         */

        Exp simpleInterestFactor;
        uint interestAccumulated;
        uint totalBorrowsNew;
        uint totalReservesNew;
        uint borrowIndexNew;

        simpleInterestFactor = mulScalar(Exp.wrap(borrowRateMantissa), timestampDelta);

        interestAccumulated = mulScalarTruncate(simpleInterestFactor, borrowsPrior);

        totalBorrowsNew = interestAccumulated + borrowsPrior;

        totalReservesNew = mulScalarTruncateAddUInt(Exp.wrap(reserveFactorMantissa), interestAccumulated, reservesPrior);

        borrowIndexNew = mulScalarTruncateAddUInt(simpleInterestFactor, borrowIndexPrior, borrowIndexPrior);

        /////////////////////////
        // EFFECTS & INTERACTIONS
        // (No safe failures beyond this point)

        /* We write the previously calculated values into storage */
        accrualBlockTimestamp = currentBlockTimestamp;
        borrowIndex = borrowIndexNew;
        totalBorrows = totalBorrowsNew;
        totalReserves = totalReservesNew;

        /* We emit an AccrueInterest event */
        emit AccrueInterest(cashPrior, interestAccumulated, borrowIndexNew, totalBorrowsNew);

    }

    /**
     * @notice Sender supplies assets into the market and receives auTokens in exchange
     * @param mintAmount The amount of the underlying asset to supply
     * @return the actual mint amount.
     */
    function mintInternal(uint mintAmount) internal nonReentrant returns (uint) {
        accrueInterest();
        return mintFresh(msg.sender, mintAmount);
    }

    struct MintLocalVars {
        uint exchangeRateMantissa;
        uint mintTokens;
        uint totalSupplyNew;
        uint accountTokensNew;
        uint actualMintAmount;
    }

    /**
     * @notice User supplies assets into the market and receives auTokens in exchange
     * @dev Assumes interest has already been accrued up to the current block
     * @param minter The address of the account which is supplying the assets
     * @param mintAmount The amount of the underlying asset to supply
     * @return the actual mint amount.
     */
    function mintFresh(address minter, uint mintAmount) internal returns (uint) {
        /* Fail if mint not allowed */
        comptroller.mintAllowed(address(this), minter, mintAmount);

        /* Verify market's block timestamp equals current block timestamp */
        if (accrualBlockTimestamp != getBlockTimestamp()) {
            revert MarketNotFresh();
        }
        MintLocalVars memory vars;

        vars.exchangeRateMantissa = exchangeRateStoredInternal();

        /////////////////////////
        // EFFECTS & INTERACTIONS
        // (No safe failures beyond this point)

        /*
         *  We call `doTransferIn` for the minter and the mintAmount.
         *  Note: The auToken must handle variations between ERC-20 and ETH underlying.
         *  `doTransferIn` reverts if anything goes wrong, since we can't be sure if
         *  side-effects occurred. The function returns the amount actually transferred,
         *  in case of a fee. On success, the auToken holds an additional `actualMintAmount`
         *  of cash.
         */
        vars.actualMintAmount = doTransferIn(minter, mintAmount);

        /*
         * We get the current exchange rate and calculate the number of auTokens to be minted:
         *  mintTokens = actualMintAmount / exchangeRate
         */

        vars.mintTokens = divScalarByExpTruncate(vars.actualMintAmount, Exp.wrap(vars.exchangeRateMantissa));

        /*
         * We calculate the new total supply of auTokens and minter token balance, checking for overflow:
         *  totalSupplyNew = totalSupply + mintTokens
         *  accountTokensNew = accountTokens[minter] + mintTokens
         */
        vars.totalSupplyNew = totalSupply + vars.mintTokens;

        vars.accountTokensNew = accountTokens[minter] + vars.mintTokens;

        /* We write previously calculated values into storage */
        totalSupply = vars.totalSupplyNew;
        accountTokens[minter] = vars.accountTokensNew;

        /* We emit a Mint event, and a Transfer event */
        emit Mint(minter, vars.actualMintAmount, vars.mintTokens);
        emit Transfer(address(this), minter, vars.mintTokens);

        /* We call the defense hook */
        // unused function
        // comptroller.mintVerify(address(this), minter, vars.actualMintAmount, vars.mintTokens);

        return vars.actualMintAmount;
    }

    /**
     * @notice Sender redeems auTokens in exchange for the underlying asset
     * @param redeemTokens The number of auTokens to redeem into underlying
     */
    function redeemInternal(uint redeemTokens) internal nonReentrant {
        accrueInterest();
        redeemFresh(payable(msg.sender), redeemTokens, 0);
    }

    /**
     * @notice Sender redeems auTokens in exchange for a specified amount of underlying asset
     * @param redeemAmount The amount of underlying to receive from redeeming auTokens
     */
    function redeemUnderlyingInternal(uint redeemAmount) internal nonReentrant {
        accrueInterest();
        redeemFresh(payable(msg.sender), 0, redeemAmount);
    }

    struct RedeemLocalVars {
        uint exchangeRateMantissa;
        uint redeemTokens;
        uint redeemAmount;
        uint totalSupplyNew;
        uint accountTokensNew;
    }

    /**
     * @notice User redeems auTokens in exchange for the underlying asset
     * @dev Assumes interest has already been accrued up to the current block
     * @param redeemer The address of the account which is redeeming the tokens
     * @param redeemTokensIn The number of auTokens to redeem into underlying (only one of redeemTokensIn or redeemAmountIn may be non-zero)
     * @param redeemAmountIn The number of underlying tokens to receive from redeeming auTokens (only one of redeemTokensIn or redeemAmountIn may be non-zero)
     */
    function redeemFresh(address payable redeemer, uint redeemTokensIn, uint redeemAmountIn) internal{
        require(redeemTokensIn == 0 || redeemAmountIn == 0, "one of redeemTokensIn or redeemAmountIn must be zero");

        RedeemLocalVars memory vars;

        /* exchangeRate = invoke Exchange Rate Stored() */
        vars.exchangeRateMantissa = exchangeRateStoredInternal();

        /* If redeemTokensIn > 0: */
        if (redeemTokensIn > 0) {
            /*
             * We calculate the exchange rate and the amount of underlying to be redeemed:
             *  redeemTokens = redeemTokensIn
             *  redeemAmount = redeemTokensIn x exchangeRateCurrent
             */
            if (redeemTokensIn == type(uint256).max) {
                vars.redeemTokens = accountTokens[redeemer];
            } else {
                vars.redeemTokens = redeemTokensIn;
            }

            vars.redeemAmount = mulScalarTruncate(Exp.wrap(vars.exchangeRateMantissa), vars.redeemTokens);
        } else {
            /*
             * We get the current exchange rate and calculate the amount to be redeemed:
             *  redeemTokens = redeemAmountIn / exchangeRate
             *  redeemAmount = redeemAmountIn
             */
            if (redeemAmountIn == type(uint256).max) {
                vars.redeemTokens = accountTokens[redeemer];

                vars.redeemAmount = mulScalarTruncate(Exp.wrap(vars.exchangeRateMantissa), vars.redeemTokens);
            } else {
                vars.redeemAmount = redeemAmountIn;

                vars.redeemTokens = divScalarByExpTruncate(redeemAmountIn, Exp.wrap(vars.exchangeRateMantissa));
            }
        }

        /* Fail if redeem not allowed */
        comptroller.redeemAllowed(address(this), redeemer, vars.redeemTokens);

        /* Verify market's block timestamp equals current block timestamp */
        if (accrualBlockTimestamp != getBlockTimestamp()) {
            revert MarketNotFresh();
        }

        /*
         * We calculate the new total supply and redeemer balance, checking for underflow:
         *  totalSupplyNew = totalSupply - redeemTokens
         *  accountTokensNew = accountTokens[redeemer] - redeemTokens
         */
        vars.totalSupplyNew = totalSupply - vars.redeemTokens;
        vars.accountTokensNew = accountTokens[redeemer] - vars.redeemTokens;

        /* Revert if protocol has insufficient cash */
        if (getCashPrior() < vars.redeemAmount) {
            revert TokenInsufficientCash();
        }

        /////////////////////////
        // EFFECTS & INTERACTIONS
        // (No safe failures beyond this point)

        /* We write previously calculated values into storage */
        totalSupply = vars.totalSupplyNew;
        accountTokens[redeemer] = vars.accountTokensNew;

        /* We emit a Transfer event, and a Redeem event */
        emit Transfer(redeemer, address(this), vars.redeemTokens);
        emit Redeem(redeemer, vars.redeemAmount, vars.redeemTokens);

        // the comptroller's redeemVerify hook is inlined in here to save external call
        if (vars.redeemTokens == 0 && vars.redeemAmount > 0) {
            revert("redeemTokens zero");
        }

        /*
         * We invoke doTransferOut for the redeemer and the redeemAmount.
         *  Note: The auToken must handle variations between ERC-20 and ETH underlying.
         *  On success, the auToken has redeemAmount less of cash.
         *  doTransferOut reverts if anything goes wrong, since we can't be sure if side effects occurred.
         *  Note: This doTransferOut is moved here to prevent exploits similar to the CREAM hack.
         */
        doTransferOut(redeemer, vars.redeemAmount);
    }

    /**
      * @notice Sender borrows assets from the protocol to their own address
      * @param borrowAmount The amount of the underlying asset to borrow
      */
    function borrowInternal(uint borrowAmount) internal nonReentrant {
        accrueInterest();
        borrowFresh(payable(msg.sender), borrowAmount);
    }

    struct BorrowLocalVars {
        uint accountBorrows;
        uint accountBorrowsNew;
        uint totalBorrowsNew;
    }

    /**
      * @notice Users borrow assets from the protocol to their own address
      * @param borrowAmount The amount of the underlying asset to borrow
      */
    function borrowFresh(address payable borrower, uint borrowAmount) internal {
        /* Fail if borrow not allowed */
        comptroller.borrowAllowed(address(this), borrower, borrowAmount);

        /* Verify market's block timestamp equals current block timestamp */
        if (accrualBlockTimestamp != getBlockTimestamp()) {
            revert MarketNotFresh();
        }

        /* Revert if protocol has insufficient underlying cash */
        if (getCashPrior() < borrowAmount) {
            revert TokenInsufficientCash();
        }

        BorrowLocalVars memory vars;

        /*
         * We calculate the new borrower and total borrow balances, failing on overflow:
         *  accountBorrowsNew = accountBorrows + borrowAmount
         *  totalBorrowsNew = totalBorrows + borrowAmount
         */
        vars.accountBorrows = borrowBalanceStoredInternal(borrower);

        vars.accountBorrowsNew = vars.accountBorrows + borrowAmount;

        vars.totalBorrowsNew = totalBorrows + borrowAmount;

        /////////////////////////
        // EFFECTS & INTERACTIONS
        // (No safe failures beyond this point)

        /* We write the previously calculated values into storage */
        accountBorrows[borrower].principal = vars.accountBorrowsNew;
        accountBorrows[borrower].interestIndex = borrowIndex;
        totalBorrows = vars.totalBorrowsNew;

        /* We emit a Borrow event */
        emit Borrow(borrower, borrowAmount, vars.accountBorrowsNew, vars.totalBorrowsNew);

        /* We call the defense hook */
        // unused function
        // comptroller.borrowVerify(address(this), borrower, borrowAmount);

        /*
         * We invoke doTransferOut for the borrower and the borrowAmount.
         *  Note: The auToken must handle variations between ERC-20 and ETH underlying.
         *  On success, the auToken borrowAmount less of cash.
         *  doTransferOut reverts if anything goes wrong, since we can't be sure if side effects occurred.
         *  Note: This doTransferOut is moved here to prevent exploits similar to the CREAM hack.
         */
        doTransferOut(borrower, borrowAmount);

    }

    /**
     * @notice Sender repays their own borrow
     * @param repayAmount The amount to repay
     * @return the actual repayment amount.
     */
    function repayBorrowInternal(uint repayAmount) internal nonReentrant returns (uint) {
        accrueInterest();
        return repayBorrowFresh(msg.sender, msg.sender, repayAmount);
    }

    /**
     * @notice Sender repays a borrow belonging to borrower
     * @param borrower the account with the debt being payed off
     * @param repayAmount The amount to repay
     * @return the actual repayment amount.
     */
    function repayBorrowBehalfInternal(address borrower, uint repayAmount) internal nonReentrant returns (uint) {
        accrueInterest();
        return repayBorrowFresh(msg.sender, borrower, repayAmount);
    }

    struct RepayBorrowLocalVars {
        uint repayAmount;
        uint borrowerIndex;
        uint accountBorrows;
        uint accountBorrowsNew;
        uint totalBorrowsNew;
        uint actualRepayAmount;
    }

    /**
     * @notice Borrows are repaid by another user (possibly the borrower).
     * @param payer the account paying off the borrow
     * @param borrower the account with the debt being payed off
     * @param repayAmount the amount of undelrying tokens being returned
     * @return the actual repayment amount.
     */
    function repayBorrowFresh(address payer, address borrower, uint repayAmount) internal returns (uint) {
        /* Fail if repayBorrow not allowed */
        comptroller.repayBorrowAllowed(address(this), payer, borrower, repayAmount);

        /* Verify market's block timestamp equals current block timestamp */
        if (accrualBlockTimestamp != getBlockTimestamp()) {
            revert MarketNotFresh();
        }
        RepayBorrowLocalVars memory vars;

        /* We remember the original borrowerIndex for verification purposes */
        vars.borrowerIndex = accountBorrows[borrower].interestIndex;

        /* We fetch the amount the borrower owes, with accumulated interest */
        vars.accountBorrows = borrowBalanceStoredInternal(borrower);

        /* If repayAmount == type(uint256).max, repayAmount = accountBorrows */
        if (repayAmount == type(uint256).max) {
            vars.repayAmount = vars.accountBorrows;
        } else {
            vars.repayAmount = repayAmount;
        }

        /////////////////////////
        // EFFECTS & INTERACTIONS
        // (No safe failures beyond this point)

        /*
         * We call doTransferIn for the payer and the repayAmount
         *  Note: The auToken must handle variations between ERC-20 and ETH underlying.
         *  On success, the auToken holds an additional repayAmount of cash.
         *  doTransferIn reverts if anything goes wrong, since we can't be sure if side effects occurred.
         *   it returns the amount actually transferred, in case of a fee.
         */
        vars.actualRepayAmount = doTransferIn(payer, vars.repayAmount);

        /*
         * We calculate the new borrower and total borrow balances, failing on underflow:
         *  accountBorrowsNew = accountBorrows - actualRepayAmount
         *  totalBorrowsNew = totalBorrows - actualRepayAmount
         */
        vars.accountBorrowsNew = vars.accountBorrows - vars.actualRepayAmount;

        vars.totalBorrowsNew = totalBorrows - vars.actualRepayAmount;

        /* We write the previously calculated values into storage */
        accountBorrows[borrower].principal = vars.accountBorrowsNew;
        accountBorrows[borrower].interestIndex = borrowIndex;
        totalBorrows = vars.totalBorrowsNew;

        /* We emit a RepayBorrow event */
        emit RepayBorrow(payer, borrower, vars.actualRepayAmount, vars.accountBorrowsNew, vars.totalBorrowsNew);

        /* We call the defense hook */
        // unused function
        // comptroller.repayBorrowVerify(address(this), payer, borrower, vars.actualRepayAmount, vars.borrowerIndex);

        return vars.actualRepayAmount;
    }

    /**
     * @notice The sender liquidates the borrowers collateral.
     *  The collateral seized is transferred to the liquidator.
     * @param borrower The borrower of this auToken to be liquidated
     * @param auTokenCollateral The market in which to seize collateral from the borrower
     * @param repayAmount The amount of the underlying borrowed asset to repay
     * @return the actual repayment amount.
     */
    function liquidateBorrowInternal(address borrower, uint repayAmount, AuTokenInterface auTokenCollateral) internal nonReentrant returns (uint) {
        accrueInterest();
        auTokenCollateral.accrueInterest();
        return liquidateBorrowFresh(msg.sender, borrower, repayAmount, auTokenCollateral);
    }

    /**
     * @notice The liquidator liquidates the borrowers collateral.
     *  The collateral seized is transferred to the liquidator.
     * @param borrower The borrower of this auToken to be liquidated
     * @param liquidator The address repaying the borrow and seizing collateral
     * @param auTokenCollateral The market in which to seize collateral from the borrower
     * @param repayAmount The amount of the underlying borrowed asset to repay
     * @return the actual repayment amount.
     */
    function liquidateBorrowFresh(address liquidator, address borrower, uint repayAmount, AuTokenInterface auTokenCollateral) internal returns (uint) {
        /* Fail if liquidate not allowed */
        comptroller.liquidateBorrowAllowed(address(this), address(auTokenCollateral), liquidator, borrower, repayAmount);
        /* Verify market's block timestamp equals current block timestamp */
        if (accrualBlockTimestamp != getBlockTimestamp()) {
            revert MarketNotFresh();
        }

        /* Verify auTokenCollateral market's block timestamp equals current block timestamp */
        if (auTokenCollateral.accrualBlockTimestamp() != getBlockTimestamp()) {
            revert MarketNotFresh();
        }

        /* Fail if borrower = liquidator */
        if (borrower == liquidator) {
            revert InvalidAccountPair();
        }

        /* Fail if repayAmount = 0 */
        if (repayAmount == 0) {
            revert InvalidCloseAmountRequested();
        }

        /* Fail if repayAmount = type(uint256).max */
        if (repayAmount == type(uint256).max) {
            revert InvalidCloseAmountRequested();
        }

        /* Fail if repayBorrow fails */
        uint actualRepayAmount = repayBorrowFresh(liquidator, borrower, repayAmount);

        /////////////////////////
        // EFFECTS & INTERACTIONS
        // (No safe failures beyond this point)

        /* We calculate the number of collateral tokens that will be seized */
        uint seizeTokens = comptroller.liquidateCalculateSeizeTokens(address(this), address(auTokenCollateral), actualRepayAmount);

        /* Revert if borrower collateral token balance < seizeTokens */
        require(auTokenCollateral.balanceOf(borrower) >= seizeTokens, "LIQUIDATE_SEIZE_TOO_MUCH");

        // If this is also the collateral, run seizeInternal to avoid re-entrancy, otherwise make an external call
        if (address(auTokenCollateral) == address(this)) {
            seizeInternal(address(this), liquidator, borrower, seizeTokens);
        } else {
            auTokenCollateral.seize(liquidator, borrower, seizeTokens);
        }

        /* We emit a LiquidateBorrow event */
        emit LiquidateBorrow(liquidator, borrower, actualRepayAmount, address(auTokenCollateral), seizeTokens);

        /* We call the defense hook */
        // unused function
        // comptroller.liquidateBorrowVerify(address(this), address(auTokenCollateral), liquidator, borrower, actualRepayAmount, seizeTokens);

        return actualRepayAmount;
    }

    /**
     * @notice Transfers collateral tokens (this market) to the liquidator.
     * @dev Will fail unless called by another auToken during the process of liquidation.
     *  Its absolutely critical to use msg.sender as the borrowed auToken and not a parameter.
     * @param liquidator The account receiving seized collateral
     * @param borrower The account having collateral seized
     * @param seizeTokens The number of auTokens to seize
     */
    function seize(address liquidator, address borrower, uint seizeTokens) external override nonReentrant {
        seizeInternal(msg.sender, liquidator, borrower, seizeTokens);
    }

    struct SeizeInternalLocalVars {
        uint borrowerTokensNew;
        uint liquidatorTokensNew;
        uint liquidatorSeizeTokens;
        uint protocolSeizeTokens;
        uint protocolSeizeAmount;
        uint exchangeRateMantissa;
        uint totalReservesNew;
        uint totalSupplyNew;
    }

    /**
     * @notice Transfers collateral tokens (this market) to the liquidator.
     * @dev Called only during an in-kind liquidation, or by liquidateBorrow during the liquidation of another AuToken.
     *  Its absolutely critical to use msg.sender as the seizer auToken and not a parameter.
     * @param seizerToken The contract seizing the collateral (i.e. borrowed auToken)
     * @param liquidator The account receiving seized collateral
     * @param borrower The account having collateral seized
     * @param seizeTokens The number of auTokens to seize
     */
    function seizeInternal(address seizerToken, address liquidator, address borrower, uint seizeTokens) internal{
        /* Fail if seize not allowed */
        comptroller.seizeAllowed(address(this), seizerToken, liquidator, borrower, seizeTokens);

        /* Fail if borrower = liquidator */
        if (borrower == liquidator) {
            revert InvalidAccountPair();
        }

        SeizeInternalLocalVars memory vars;

        /*
         * We calculate the new borrower and liquidator token balances, failing on underflow/overflow:
         *  borrowerTokensNew = accountTokens[borrower] - seizeTokens
         *  liquidatorTokensNew = accountTokens[liquidator] + seizeTokens
         */
        vars.borrowerTokensNew = accountTokens[borrower] - seizeTokens;

        vars.protocolSeizeTokens = mul_(seizeTokens, Exp.wrap(protocolSeizeShareMantissa));
        vars.liquidatorSeizeTokens = seizeTokens - vars.protocolSeizeTokens;

        vars.exchangeRateMantissa = exchangeRateStoredInternal();

        vars.protocolSeizeAmount = mul_ScalarTruncate(Exp.wrap(vars.exchangeRateMantissa), vars.protocolSeizeTokens);

        vars.totalReservesNew = totalReserves + vars.protocolSeizeAmount;
        vars.totalSupplyNew = totalSupply - vars.protocolSeizeTokens;

        vars.liquidatorTokensNew = accountTokens[liquidator] + vars.liquidatorSeizeTokens;

        /////////////////////////
        // EFFECTS & INTERACTIONS
        // (No safe failures beyond this point)

        /* We write the previously calculated values into storage */
        totalReserves = vars.totalReservesNew;
        totalSupply = vars.totalSupplyNew;
        accountTokens[borrower] = vars.borrowerTokensNew;
        accountTokens[liquidator] = vars.liquidatorTokensNew;

        /* Emit a Transfer event */
        emit Transfer(borrower, liquidator, vars.liquidatorSeizeTokens);
        emit Transfer(borrower, address(this), vars.protocolSeizeTokens);
        emit ReservesAdded(address(this), vars.protocolSeizeAmount, vars.totalReservesNew);

        /* We call the defense hook */
        // unused function
        // comptroller.seizeVerify(address(this), seizerToken, liquidator, borrower, seizeTokens);
    }

    /*** Admin Functions ***/

    /**
      * @notice Begins transfer of admin rights. The newPendingAdmin must call `_acceptAdmin` to finalize the transfer.
      * @dev Admin function to begin change of admin. The newPendingAdmin must call `_acceptAdmin` to finalize the transfer.
      * @param newPendingAdmin New pending admin.
      */
    function _setPendingAdmin(address payable newPendingAdmin) external override  {
        // Check caller = admin
        if (msg.sender != admin) {
            revert Unauthorized();
        }

        // Save current value, if any, for inclusion in log
        address oldPendingAdmin = pendingAdmin;

        // Store pendingAdmin with value newPendingAdmin
        pendingAdmin = newPendingAdmin;

        // Emit NewPendingAdmin(oldPendingAdmin, newPendingAdmin)
        emit NewPendingAdmin(oldPendingAdmin, newPendingAdmin);
    }

    /**
      * @notice Accepts transfer of admin rights. msg.sender must be pendingAdmin
      * @dev Admin function for pending admin to accept role and update admin
      */
    function _acceptAdmin() external override{
        // Check caller is pendingAdmin
        if (msg.sender != pendingAdmin) {
            revert Unauthorized();
        }

        // Save current values for inclusion in log
        address oldAdmin = admin;
        address oldPendingAdmin = pendingAdmin;

        // Store admin with value pendingAdmin
        admin = pendingAdmin;

        // Clear the pending value
        pendingAdmin = payable(0);

        emit NewAdmin(oldAdmin, admin);
        emit NewPendingAdmin(oldPendingAdmin, pendingAdmin);
    }

    /**
      * @notice Sets a new comptroller for the market
      * @dev Admin function to set a new comptroller
      */
    function _setComptroller(ComptrollerInterface newComptroller) public override{
        // Check caller is admin
        if (msg.sender != admin) {
            revert Unauthorized();
        }

        ComptrollerInterface oldComptroller = comptroller;
        // Ensure invoke comptroller.isComptroller() returns true
        require(newComptroller.isComptroller(), "marker method returned false");

        // Set market's comptroller to newComptroller
        comptroller = newComptroller;

        // Emit NewComptroller(oldComptroller, newComptroller)
        emit NewComptroller(oldComptroller, newComptroller);
    }

    /**
      * @notice accrues interest and sets a new reserve factor for the protocol using _setReserveFactorFresh
      * @dev Admin function to accrue interest and set a new reserve factor
      */
    function _setReserveFactor(uint newReserveFactorMantissa) external override nonReentrant{
        accrueInterest();
        _setReserveFactorFresh(newReserveFactorMantissa);
    }

    /**
      * @notice Sets a new reserve factor for the protocol (*requires fresh interest accrual)
      * @dev Admin function to set a new reserve factor
      */
    function _setReserveFactorFresh(uint newReserveFactorMantissa) internal{
        // Check caller is admin
        if (msg.sender != admin) {
            revert Unauthorized();
        }

        // Verify market's block timestamp equals current block timestamp
        if (accrualBlockTimestamp != getBlockTimestamp()) {
            revert MarketNotFresh();
        }

        // Check newReserveFactor ≤ maxReserveFactor
        if (newReserveFactorMantissa > reserveFactorMaxMantissa) {
            revert BadInput();
        }

        uint oldReserveFactorMantissa = reserveFactorMantissa;
        reserveFactorMantissa = newReserveFactorMantissa;

        emit NewReserveFactor(oldReserveFactorMantissa, newReserveFactorMantissa);
    }

    /**
     * @notice Accrues interest and reduces reserves by transferring from msg.sender
     * @param addAmount Amount of addition to reserves
     */
    function _addReservesInternal(uint addAmount) internal nonReentrant{
        accrueInterest();
        _addReservesFresh(addAmount);
    }

    /**
     * @notice Add reserves by transferring from caller
     * @dev Requires fresh interest accrual
     * @param addAmount Amount of addition to reserves
     * @return (uint, uint) An error code (0=success, otherwise a failure (see ErrorReporter.sol for details)) and the actual amount added, net token fees
     */
    function _addReservesFresh(uint addAmount) internal returns (uint) {
        // totalReserves + actualAddAmount
        uint totalReservesNew;
        uint actualAddAmount;

        // We revert unless market's block timestamp equals current block timestamp
        if (accrualBlockTimestamp != getBlockTimestamp()) {
            revert MarketNotFresh();
        }

        /////////////////////////
        // EFFECTS & INTERACTIONS
        // (No safe failures beyond this point)

        /*
         * We call doTransferIn for the caller and the addAmount
         *  Note: The auToken must handle variations between ERC-20 and ETH underlying.
         *  On success, the auToken holds an additional addAmount of cash.
         *  doTransferIn reverts if anything goes wrong, since we can't be sure if side effects occurred.
         *  it returns the amount actually transferred, in case of a fee.
         */

        actualAddAmount = doTransferIn(msg.sender, addAmount);

        totalReservesNew = totalReserves + actualAddAmount;

        /* Revert on overflow */
        require(totalReservesNew >= totalReserves, "add reserves unexpected overflow");

        // Store reserves[n+1] = reserves[n] + actualAddAmount
        totalReserves = totalReservesNew;

        /* Emit NewReserves(admin, actualAddAmount, reserves[n+1]) */
        emit ReservesAdded(msg.sender, actualAddAmount, totalReservesNew);

        return actualAddAmount;
    }

    /**
     * @notice Accrues interest and reduces reserves by transferring to admin
     * @param reduceAmount Amount of reduction to reserves
     */
    function _reduceReserves(uint reduceAmount) external override nonReentrant{
        accrueInterest();
        _reduceReservesFresh(reduceAmount);
    }

    /**
     * @notice Reduces reserves by transferring to admin
     * @dev Requires fresh interest accrual
     * @param reduceAmount Amount of reduction to reserves
     */
    function _reduceReservesFresh(uint reduceAmount) internal{
        // totalReserves - reduceAmount
        uint totalReservesNew;

        // Check caller is admin
        if (msg.sender != admin) {
            revert Unauthorized();
        }

        // We revert unless market's block timestamp equals current block timestamp
        if (accrualBlockTimestamp != getBlockTimestamp()) {
            revert MarketNotFresh();
        }

        // Revert if protocol has insufficient underlying cash
        if (getCashPrior() < reduceAmount) {
            revert TokenInsufficientCash();
        }

        // Check reduceAmount ≤ reserves[n] (totalReserves)
        if (reduceAmount > totalReserves) {
            revert BadInput();
        }

        /////////////////////////
        // EFFECTS & INTERACTIONS
        // (No safe failures beyond this point)

        totalReservesNew = totalReserves - reduceAmount;
        // We checked reduceAmount <= totalReserves above, so this should never revert.
        require(totalReservesNew <= totalReserves, "reduce reserves unexpected underflow");

        // Store reserves[n+1] = reserves[n] - reduceAmount
        totalReserves = totalReservesNew;

        // doTransferOut reverts if anything goes wrong, since we can't be sure if side effects occurred.
        doTransferOut(admin, reduceAmount);

        emit ReservesReduced(admin, reduceAmount, totalReservesNew);
    }

    /**
     * @notice accrues interest and updates the interest rate model using _setInterestRateModelFresh
     * @dev Admin function to accrue interest and update the interest rate model
     * @param newInterestRateModel the new interest rate model to use
     */
    function _setInterestRateModel(InterestRateModel newInterestRateModel) public override {
        accrueInterest();
        _setInterestRateModelFresh(newInterestRateModel);
    }

    /**
     * @notice updates the interest rate model (*requires fresh interest accrual)
     * @dev Admin function to update the interest rate model
     * @param newInterestRateModel the new interest rate model to use
     */
    function _setInterestRateModelFresh(InterestRateModel newInterestRateModel) internal {

        // Used to store old model for use in the event that is emitted on success
        InterestRateModel oldInterestRateModel;

        // Check caller is admin
        if (msg.sender != admin) {
            revert Unauthorized();
        }

        // We revert unless market's block timestamp equals current block timestamp
        if (accrualBlockTimestamp != getBlockTimestamp()) {
            revert MarketNotFresh();
        }

        // Track the market's current interest rate model
        oldInterestRateModel = interestRateModel;

        // Ensure invoke newInterestRateModel.isInterestRateModel() returns true
        require(newInterestRateModel.isInterestRateModel(), "marker method returned false");

        // Set the interest rate model to newInterestRateModel
        interestRateModel = newInterestRateModel;

        // Emit NewMarketInterestRateModel(oldInterestRateModel, newInterestRateModel)
        emit NewMarketInterestRateModel(oldInterestRateModel, newInterestRateModel);
    }

    /**
     * @notice accrues interest and updates the protocol seize share using _setProtocolSeizeShareFresh
     * @dev Admin function to accrue interest and update the protocol seize share
     * @param newProtocolSeizeShareMantissa the new protocol seize share to use
     */
    function _setProtocolSeizeShare(uint newProtocolSeizeShareMantissa) external override nonReentrant{
        accrueInterest();
        _setProtocolSeizeShareFresh(newProtocolSeizeShareMantissa);
    }

    /**
     * @notice updates the protocol seize share (*requires fresh interest accrual)
     * @dev Admin function to update the protocol seize share
     * @param newProtocolSeizeShareMantissa the new protocol seize share to use
     */
    function _setProtocolSeizeShareFresh(uint newProtocolSeizeShareMantissa) internal{

        // Used to store old share for use in the event that is emitted on success
        uint oldProtocolSeizeShareMantissa;

        // Check caller is admin
        if (msg.sender != admin) {
            revert Unauthorized();
        }
        // We revert unless market's block timestamp equals current block timestamp
        if (accrualBlockTimestamp != getBlockTimestamp()) {
            revert MarketNotFresh();
        }

        // Track the market's current protocol seize share
        oldProtocolSeizeShareMantissa = protocolSeizeShareMantissa;

        // Set the protocol seize share to newProtocolSeizeShareMantissa
        protocolSeizeShareMantissa = newProtocolSeizeShareMantissa;

        // Emit NewProtocolSeizeShareMantissa(oldProtocolSeizeShareMantissa, newProtocolSeizeShareMantissa)
        emit NewProtocolSeizeShare(oldProtocolSeizeShareMantissa, newProtocolSeizeShareMantissa);
    }

    /*** Safe Token ***/

    /**
     * @notice Gets balance of this contract in terms of the underlying
     * @dev This excludes the value of the current message, if any
     * @return The quantity of underlying owned by this contract
     */
    function getCashPrior() internal view virtual returns (uint);

    /**
     * @dev Performs a transfer in, reverting upon failure. Returns the amount actually transferred to the protocol, in case of a fee.
     *  This may revert due to insufficient balance or insufficient allowance.
     */
    function doTransferIn(address from, uint amount) internal virtual returns (uint);

    /**
     * @dev Performs a transfer out, ideally returning an explanatory error code upon failure tather than reverting.
     *  If caller has not called checked protocol's balance, may revert due to insufficient cash held in the contract.
     *  If caller has checked protocol's balance, and verified it is >= amount, this should not revert in normal conditions.
     */
    function doTransferOut(address payable to, uint amount) internal virtual;
}

/*
    Due to gas issue on Aurora & NEAR, external calls from one contract to another costs a lot more tGas than usual.
    Aurigami decides to cut away the Delegator and Delegatee contracts, letting AuErc20 and AuEth has their own contract and implementation.
*/

contract AuErc20 is AuToken, AuErc20Interface {
    /**
     * @notice Construct a new money market
     * @param underlying_ The address of the underlying asset
     * @param comptroller_ The address of the Comptroller
     * @param interestRateModel_ The address of the interest rate model
     * @param initialExchangeRateMantissa_ The initial exchange rate, scaled by 1e18
     * @param name_ ERC-20 name of this token
     * @param symbol_ ERC-20 symbol of this token
     * @param decimals_ ERC-20 decimal precision of this token
     * @param admin_ Address of the administrator of this token
     */
    constructor(
        address underlying_,
        ComptrollerInterface comptroller_,
        InterestRateModel interestRateModel_,
        uint initialExchangeRateMantissa_,
        string memory name_,
        string memory symbol_,
        uint8 decimals_,
        address payable admin_
    )
        AuToken(
            comptroller_,
            interestRateModel_,
            initialExchangeRateMantissa_,
            name_,
            symbol_,
            decimals_,
            admin_
        ) AuErc20Storage(underlying_)
    {}

    /*** User Interface ***/

    /**
     * @notice Sender supplies assets into the market and receives auTokens in exchange
     * @dev Accrues interest whether or not the operation succeeds, unless reverted
     * @param mintAmount The amount of the underlying asset to supply
     */
    function mint(uint mintAmount) external override{
        mintInternal(mintAmount);
    }

    /**
     * @notice Sender redeems auTokens in exchange for the underlying asset
     * @dev Accrues interest whether or not the operation succeeds, unless reverted
     * @param redeemTokens The number of auTokens to redeem into underlying
     */
    function redeem(uint redeemTokens) external override{
        redeemInternal(redeemTokens);
    }

    /**
     * @notice Sender redeems auTokens in exchange for a specified amount of underlying asset
     * @dev Accrues interest whether or not the operation succeeds, unless reverted
     * @param redeemAmount The amount of underlying to redeem
     */
    function redeemUnderlying(uint redeemAmount) external override{
        redeemUnderlyingInternal(redeemAmount);
    }

    /**
      * @notice Sender borrows assets from the protocol to their own address
      * @param borrowAmount The amount of the underlying asset to borrow
      */
    function borrow(uint borrowAmount) external override {
        borrowInternal(borrowAmount);
    }

    /**
     * @notice Sender repays their own borrow
     * @param repayAmount The amount to repay
     */
    function repayBorrow(uint repayAmount) external override {
        repayBorrowInternal(repayAmount);
    }

    /**
     * @notice Sender repays a borrow belonging to borrower
     * @param borrower the account with the debt being payed off
     * @param repayAmount The amount to repay
     */
    function repayBorrowBehalf(address borrower, uint repayAmount) external override{
        repayBorrowBehalfInternal(borrower, repayAmount);
    }

    /**
     * @notice The sender liquidates the borrowers collateral.
     *  The collateral seized is transferred to the liquidator.
     * @param borrower The borrower of this auToken to be liquidated
     * @param repayAmount The amount of the underlying borrowed asset to repay
     * @param auTokenCollateral The market in which to seize collateral from the borrower
     */
    function liquidateBorrow(address borrower, uint repayAmount, AuTokenInterface auTokenCollateral) external override {
        liquidateBorrowInternal(borrower, repayAmount, auTokenCollateral);
    }

    /**
     * @notice A public function to sweep accidental ERC-20 transfers to this contract. Tokens are sent to admin (timelock)
     * @param token The address of the ERC-20 token to sweep
     */
    function sweepToken(EIP20NonStandardInterface token) external override {
    	require(address(token) != underlying, "AuErc20::sweepToken: can not sweep underlying token");
    	uint256 balance = token.balanceOf(address(this));
    	token.transfer(admin, balance);
    }

    /**
     * @notice The sender adds to reserves.
     * @param addAmount The amount fo underlying token to add as reserves
     */
    function _addReserves(uint addAmount) external override {
        _addReservesInternal(addAmount);
    }

    /*** Safe Token ***/

    /**
     * @notice Gets balance of this contract in terms of the underlying
     * @dev This excludes the value of the current message, if any
     * @return The quantity of underlying tokens owned by this contract
     */
    function getCashPrior() internal view override returns (uint) {
        EIP20Interface token = EIP20Interface(underlying);
        return token.balanceOf(address(this));
    }

    /**
     * @dev Similar to EIP20 transfer, except it handles a False result from `transferFrom` and reverts in that case.
     *      This will revert due to insufficient balance or insufficient allowance.
     *
     *      Note: This wrapper safely handles non-standard ERC-20 tokens that do not return a value.
     *            See here: https://medium.com/coinmonks/missing-return-value-bug-at-least-130-tokens-affected-d67bf08521ca
     * @dev this function doesn't work with fee-on-transfer tokens
     */
    function doTransferIn(address from, uint amount) internal override returns (uint) {
        EIP20NonStandardInterface token = EIP20NonStandardInterface(underlying);
        token.transferFrom(from, address(this), amount);

        bool success;
        assembly {
            switch returndatasize()
                case 0 {                       // This is a non-standard ERC-20
                    success := not(0)          // set success to true
                }
                case 32 {                      // This is a compliant ERC-20
                    returndatacopy(0, 0, 32)
                    success := mload(0)        // Set `success = returndata` of external call
                }
                default {                      // This is an excessively non-compliant ERC-20, revert.
                    revert(0, 0)
                }
        }
        require(success, "TOKEN_TRANSFER_IN_FAILED");

        // Skip the check for fee on transfer tokens
        return amount;
    }

    /**
     * @dev Similar to EIP20 transfer, except it handles a False success from `transfer` and returns an explanatory
     *      error code rather than reverting. If caller has not called checked protocol's balance, this may revert due to
     *      insufficient cash held in this contract. If caller has checked protocol's balance prior to this call, and verified
     *      it is >= amount, this should not revert in normal conditions.
     *
     *      Note: This wrapper safely handles non-standard ERC-20 tokens that do not return a value.
     *            See here: https://medium.com/coinmonks/missing-return-value-bug-at-least-130-tokens-affected-d67bf08521ca
     */
    function doTransferOut(address payable to, uint amount) internal override {
        EIP20NonStandardInterface token = EIP20NonStandardInterface(underlying);
        token.transfer(to, amount);

        bool success;
        assembly {
            switch returndatasize()
                case 0 {                      // This is a non-standard ERC-20
                    success := not(0)          // set success to true
                }
                case 32 {                     // This is a complaint ERC-20
                    returndatacopy(0, 0, 32)
                    success := mload(0)        // Set `success = returndata` of external call
                }
                default {                     // This is an excessively non-compliant ERC-20, revert.
                    revert(0, 0)
                }
        }
        require(success, "TOKEN_TRANSFER_OUT_FAILED");
    }
}

// OpenZeppelin Contracts (last updated v4.5.0) (token/ERC20/IERC20.sol)

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20 {
    /**
     * @dev Returns the amount of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 amount) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets `amount` as the allowance of `spender` over the caller's tokens.
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
    function approve(address spender, uint256 amount) external returns (bool);

    /**
     * @dev Moves `amount` tokens from `from` to `to` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) external returns (bool);

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
}

abstract contract PriceOracle {
    /// @notice Indicator that this is a PriceOracle contract (for inspection)
    bool public constant isPriceOracle = true;

    /**
      * @notice Get the underlying price of a AuToken asset
      * @param auToken The AuToken to get the underlying price of
      * @return The underlying asset price mantissa (scaled by 1e18).
      *  Zero means the price is unavailable.
      */
    function getUnderlyingPrice(AuToken auToken) external view virtual returns (uint);

    function getUnderlyingPrices(AuToken[] calldata auTokens) external view virtual returns (uint256[] memory res);
}

// OpenZeppelin Contracts v4.4.1 (token/ERC20/extensions/IERC20Metadata.sol)

/**
 * @dev Interface for the optional metadata functions from the ERC20 standard.
 *
 * _Available since v4.1._
 */
interface IERC20Metadata is IERC20 {
    /**
     * @dev Returns the name of the token.
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the symbol of the token.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the decimals places of the token.
     */
    function decimals() external view returns (uint8);
}

interface PULPInterface is IERC20Metadata {
  function globalLock(uint256 _week) external view returns (uint256);

  function userLock(address _user, uint256 _week) external view returns (bool, uint224);

  function PLY() external view returns (address);

  function lockPly(address recipient, uint256 amount) external;

  function calcLockAmount(address account, uint256 amount)
    external
    view
    returns (uint256 lockAmount, uint256 claimAmount);

  function redeem(address recipient, uint256 amountToRedeem)
    external
    returns (uint256 amountRedeemed);

  function getMaxAmountRedeemable(address account) external view returns (uint256 res);

  event PlyLocked(address indexed locker, address indexed recipient, uint256 amount);

  event GlobalLockSet(uint256 indexed weekNumber, uint256 newPercentLock);

  event UserLockSet(address indexed account, uint256 indexed weekNumber, uint256 newPercentLock);

  event PulpRedeemed(address indexed redeemer, address indexed recipient, uint256 amount);

  event EarlyRedeemAdd(address indexed account, uint256 amountAdd);

  event EarlyRedeemReset(address indexed account, uint256 newAmount);
}

interface AuriFairLaunchInterface {
  event AddNewPool(
    address indexed stakeToken,
    uint32 indexed startTime,
    uint32 indexed endTime,
    uint256[] rewardPerSeconds
  );
  event RenewPool(
    uint256 indexed pid,
    uint32 indexed startTime,
    uint32 indexed endTime,
    uint256[] rewardPerSeconds
  );
  event UpdatePool(uint256 indexed pid, uint32 indexed endTime, uint256[] rewardPerSecond);
  event Deposit(
    address indexed user,
    uint256 indexed pid,
    uint256 indexed timestamp,
    uint256 amount
  );
  event Withdraw(
    address indexed user,
    uint256 indexed pid,
    uint256 indexed timestamp,
    uint256 amount
  );
  event Harvest(
    address indexed user,
    uint256 indexed pid,
    address indexed rewardToken,
    uint256 lockedAmount,
    uint256 timestamp
  );
  event EmergencyWithdraw(
    address indexed user,
    uint256 indexed pid,
    uint256 indexed timestamp,
    uint256 amount
  );
  event RewardTokenWithdrawn(address indexed owner, address indexed rewardToken, uint256 amount);

  function harvest(
    address account,
    uint256 _pid,
    uint256 _maxAmountToHarvest
  ) external;

  function pendingRewards(uint256 _pid, address _user) external view returns (uint256[] memory rewards);

  function getUserInfo(uint256 _pid, address _account)
    external
    view
    returns (
      uint256 amount,
      uint256[] memory unclaimedRewards,
      uint256[] memory lastRewardPerShares
    );

  function updateAndGetUserInfo(uint256 _pid, address _account)
    external
    returns (
      uint256 amount,
      uint256[] memory unclaimedRewards,
      uint256[] memory lastRewardPerShares
    );

  function updateMultiplePools(address account, uint256[] calldata _pids) external;
}

// OpenZeppelin Contracts (last updated v4.5.0) (token/ERC20/IERC20.sol)

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20Upgradeable {
    /**
     * @dev Returns the amount of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 amount) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets `amount` as the allowance of `spender` over the caller's tokens.
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
    function approve(address spender, uint256 amount) external returns (bool);

    /**
     * @dev Moves `amount` tokens from `from` to `to` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) external returns (bool);

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
}

// OpenZeppelin Contracts v4.4.1 (security/ReentrancyGuard.sol)

// OpenZeppelin Contracts (last updated v4.5.0) (proxy/utils/Initializable.sol)

// OpenZeppelin Contracts (last updated v4.5.0) (utils/Address.sol)

/**
 * @dev Collection of functions related to the address type
 */
library AddressUpgradeable {
    /**
     * @dev Returns true if `account` is a contract.
     *
     * [IMPORTANT]
     * ====
     * It is unsafe to assume that an address for which this function returns
     * false is an externally-owned account (EOA) and not a contract.
     *
     * Among others, `isContract` will return false for the following
     * types of addresses:
     *
     *  - an externally-owned account
     *  - a contract in construction
     *  - an address where a contract will be created
     *  - an address where a contract lived, but was destroyed
     * ====
     *
     * [IMPORTANT]
     * ====
     * You shouldn't rely on `isContract` to protect against flash loan attacks!
     *
     * Preventing calls from contracts is highly discouraged. It breaks composability, breaks support for smart wallets
     * like Gnosis Safe, and does not provide security since it can be circumvented by calling from a contract
     * constructor.
     * ====
     */
    function isContract(address account) internal view returns (bool) {
        // This method relies on extcodesize/address.code.length, which returns 0
        // for contracts in construction, since the code is only stored at the end
        // of the constructor execution.

        return account.code.length > 0;
    }

    /**
     * @dev Replacement for Solidity's `transfer`: sends `amount` wei to
     * `recipient`, forwarding all available gas and reverting on errors.
     *
     * https://eips.ethereum.org/EIPS/eip-1884[EIP1884] increases the gas cost
     * of certain opcodes, possibly making contracts go over the 2300 gas limit
     * imposed by `transfer`, making them unable to receive funds via
     * `transfer`. {sendValue} removes this limitation.
     *
     * https://diligence.consensys.net/posts/2019/09/stop-using-soliditys-transfer-now/[Learn more].
     *
     * IMPORTANT: because control is transferred to `recipient`, care must be
     * taken to not create reentrancy vulnerabilities. Consider using
     * {ReentrancyGuard} or the
     * https://solidity.readthedocs.io/en/v0.5.11/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].
     */
    function sendValue(address payable recipient, uint256 amount) internal {
        require(address(this).balance >= amount, "Address: insufficient balance");

        (bool success, ) = recipient.call{value: amount}("");
        require(success, "Address: unable to send value, recipient may have reverted");
    }

    /**
     * @dev Performs a Solidity function call using a low level `call`. A
     * plain `call` is an unsafe replacement for a function call: use this
     * function instead.
     *
     * If `target` reverts with a revert reason, it is bubbled up by this
     * function (like regular Solidity function calls).
     *
     * Returns the raw returned data. To convert to the expected return value,
     * use https://solidity.readthedocs.io/en/latest/units-and-global-variables.html?highlight=abi.decode#abi-encoding-and-decoding-functions[`abi.decode`].
     *
     * Requirements:
     *
     * - `target` must be a contract.
     * - calling `target` with `data` must not revert.
     *
     * _Available since v3.1._
     */
    function functionCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionCall(target, data, "Address: low-level call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`], but with
     * `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but also transferring `value` wei to `target`.
     *
     * Requirements:
     *
     * - the calling contract must have an ETH balance of at least `value`.
     * - the called Solidity function must be `payable`.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(
        address target,
        bytes memory data,
        uint256 value
    ) internal returns (bytes memory) {
        return functionCallWithValue(target, data, value, "Address: low-level call with value failed");
    }

    /**
     * @dev Same as {xref-Address-functionCallWithValue-address-bytes-uint256-}[`functionCallWithValue`], but
     * with `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(
        address target,
        bytes memory data,
        uint256 value,
        string memory errorMessage
    ) internal returns (bytes memory) {
        require(address(this).balance >= value, "Address: insufficient balance for call");
        require(isContract(target), "Address: call to non-contract");

        (bool success, bytes memory returndata) = target.call{value: value}(data);
        return verifyCallResult(success, returndata, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(address target, bytes memory data) internal view returns (bytes memory) {
        return functionStaticCall(target, data, "Address: low-level static call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal view returns (bytes memory) {
        require(isContract(target), "Address: static call to non-contract");

        (bool success, bytes memory returndata) = target.staticcall(data);
        return verifyCallResult(success, returndata, errorMessage);
    }

    /**
     * @dev Tool to verifies that a low level call was successful, and revert if it wasn't, either by bubbling the
     * revert reason using the provided one.
     *
     * _Available since v4.3._
     */
    function verifyCallResult(
        bool success,
        bytes memory returndata,
        string memory errorMessage
    ) internal pure returns (bytes memory) {
        if (success) {
            return returndata;
        } else {
            // Look for revert reason and bubble it up if present
            if (returndata.length > 0) {
                // The easiest way to bubble the revert reason is using memory via assembly

                assembly {
                    let returndata_size := mload(returndata)
                    revert(add(32, returndata), returndata_size)
                }
            } else {
                revert(errorMessage);
            }
        }
    }
}

/**
 * @dev This is a base contract to aid in writing upgradeable contracts, or any kind of contract that will be deployed
 * behind a proxy. Since proxied contracts do not make use of a constructor, it's common to move constructor logic to an
 * external initializer function, usually called `initialize`. It then becomes necessary to protect this initializer
 * function so it can only be called once. The {initializer} modifier provided by this contract will have this effect.
 *
 * TIP: To avoid leaving the proxy in an uninitialized state, the initializer function should be called as early as
 * possible by providing the encoded function call as the `_data` argument to {ERC1967Proxy-constructor}.
 *
 * CAUTION: When used with inheritance, manual care must be taken to not invoke a parent initializer twice, or to ensure
 * that all initializers are idempotent. This is not verified automatically as constructors are by Solidity.
 *
 * [CAUTION]
 * ====
 * Avoid leaving a contract uninitialized.
 *
 * An uninitialized contract can be taken over by an attacker. This applies to both a proxy and its implementation
 * contract, which may impact the proxy. To initialize the implementation contract, you can either invoke the
 * initializer manually, or you can include a constructor to automatically mark it as initialized when it is deployed:
 *
 * [.hljs-theme-light.nopadding]
 * ```
 * /// @custom:oz-upgrades-unsafe-allow constructor
 * constructor() initializer {}
 * ```
 * ====
 */
abstract contract Initializable {
    /**
     * @dev Indicates that the contract has been initialized.
     */
    bool private _initialized;

    /**
     * @dev Indicates that the contract is in the process of being initialized.
     */
    bool private _initializing;

    /**
     * @dev Modifier to protect an initializer function from being invoked twice.
     */
    modifier initializer() {
        // If the contract is initializing we ignore whether _initialized is set in order to support multiple
        // inheritance patterns, but we only do this in the context of a constructor, because in other contexts the
        // contract may have been reentered.
        require(_initializing ? _isConstructor() : !_initialized, "Initializable: contract is already initialized");

        bool isTopLevelCall = !_initializing;
        if (isTopLevelCall) {
            _initializing = true;
            _initialized = true;
        }

        _;

        if (isTopLevelCall) {
            _initializing = false;
        }
    }

    /**
     * @dev Modifier to protect an initialization function so that it can only be invoked by functions with the
     * {initializer} modifier, directly or indirectly.
     */
    modifier onlyInitializing() {
        require(_initializing, "Initializable: contract is not initializing");
        _;
    }

    function _isConstructor() private view returns (bool) {
        return !AddressUpgradeable.isContract(address(this));
    }
}

/**
 * @dev Contract module that helps prevent reentrant calls to a function.
 *
 * Inheriting from `ReentrancyGuard` will make the {nonReentrant} modifier
 * available, which can be applied to functions to make sure there are no nested
 * (reentrant) calls to them.
 *
 * Note that because there is a single `nonReentrant` guard, functions marked as
 * `nonReentrant` may not call one another. This can be worked around by making
 * those functions `private`, and then adding `external` `nonReentrant` entry
 * points to them.
 *
 * TIP: If you would like to learn more about reentrancy and alternative ways
 * to protect against it, check out our blog post
 * https://blog.openzeppelin.com/reentrancy-after-istanbul/[Reentrancy After Istanbul].
 */
abstract contract ReentrancyGuardUpgradeable is Initializable {
    // Booleans are more expensive than uint256 or any type that takes up a full
    // word because each write operation emits an extra SLOAD to first read the
    // slot's contents, replace the bits taken up by the boolean, and then write
    // back. This is the compiler's defense against contract upgrades and
    // pointer aliasing, and it cannot be disabled.

    // The values being non-zero value makes deployment a bit more expensive,
    // but in exchange the refund on every call to nonReentrant will be lower in
    // amount. Since refunds are capped to a percentage of the total
    // transaction's gas, it is best to keep them low in cases like this one, to
    // increase the likelihood of the full refund coming into effect.
    uint256 private constant _NOT_ENTERED = 1;
    uint256 private constant _ENTERED = 2;

    uint256 private _status;

    function __ReentrancyGuard_init() internal onlyInitializing {
        __ReentrancyGuard_init_unchained();
    }

    function __ReentrancyGuard_init_unchained() internal onlyInitializing {
        _status = _NOT_ENTERED;
    }

    /**
     * @dev Prevents a contract from calling itself, directly or indirectly.
     * Calling a `nonReentrant` function from another `nonReentrant`
     * function is not supported. It is possible to prevent this from happening
     * by making the `nonReentrant` function external, and making it call a
     * `private` function that does the actual work.
     */
    modifier nonReentrant() {
        // On the first call to nonReentrant, _notEntered will be true
        require(_status != _ENTERED, "ReentrancyGuard: reentrant call");

        // Any calls to nonReentrant after this point will fail
        _status = _ENTERED;

        _;

        // By storing the original value once again, a refund is triggered (see
        // https://eips.ethereum.org/EIPS/eip-2200)
        _status = _NOT_ENTERED;
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[49] private __gap;
}

// OpenZeppelin Contracts v4.4.1 (token/ERC20/utils/SafeERC20.sol)

/**
 * @title SafeERC20
 * @dev Wrappers around ERC20 operations that throw on failure (when the token
 * contract returns false). Tokens that return no value (and instead revert or
 * throw on failure) are also supported, non-reverting calls are assumed to be
 * successful.
 * To use this library you can add a `using SafeERC20 for IERC20;` statement to your contract,
 * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
 */
library SafeERC20Upgradeable {
    using AddressUpgradeable for address;

    function safeTransfer(
        IERC20Upgradeable token,
        address to,
        uint256 value
    ) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transfer.selector, to, value));
    }

    function safeTransferFrom(
        IERC20Upgradeable token,
        address from,
        address to,
        uint256 value
    ) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transferFrom.selector, from, to, value));
    }

    /**
     * @dev Deprecated. This function has issues similar to the ones found in
     * {IERC20-approve}, and its usage is discouraged.
     *
     * Whenever possible, use {safeIncreaseAllowance} and
     * {safeDecreaseAllowance} instead.
     */
    function safeApprove(
        IERC20Upgradeable token,
        address spender,
        uint256 value
    ) internal {
        // safeApprove should only be called when setting an initial allowance,
        // or when resetting it to zero. To increase and decrease it, use
        // 'safeIncreaseAllowance' and 'safeDecreaseAllowance'
        require(
            (value == 0) || (token.allowance(address(this), spender) == 0),
            "SafeERC20: approve from non-zero to non-zero allowance"
        );
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, value));
    }

    function safeIncreaseAllowance(
        IERC20Upgradeable token,
        address spender,
        uint256 value
    ) internal {
        uint256 newAllowance = token.allowance(address(this), spender) + value;
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, newAllowance));
    }

    function safeDecreaseAllowance(
        IERC20Upgradeable token,
        address spender,
        uint256 value
    ) internal {
        unchecked {
            uint256 oldAllowance = token.allowance(address(this), spender);
            require(oldAllowance >= value, "SafeERC20: decreased allowance below zero");
            uint256 newAllowance = oldAllowance - value;
            _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, newAllowance));
        }
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     */
    function _callOptionalReturn(IERC20Upgradeable token, bytes memory data) private {
        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since
        // we're implementing it ourselves. We use {Address.functionCall} to perform this call, which verifies that
        // the target address contains contract code and also asserts for success in the low-level call.

        bytes memory returndata = address(token).functionCall(data, "SafeERC20: low-level call failed");
        if (returndata.length > 0) {
            // Return data is optional
            require(abi.decode(returndata, (bool)), "SafeERC20: ERC20 operation did not succeed");
        }
    }
}

// OpenZeppelin Contracts (last updated v4.5.0) (proxy/utils/UUPSUpgradeable.sol)

// OpenZeppelin Contracts (last updated v4.5.0) (interfaces/draft-IERC1822.sol)

/**
 * @dev ERC1822: Universal Upgradeable Proxy Standard (UUPS) documents a method for upgradeability through a simplified
 * proxy whose upgrades are fully controlled by the current implementation.
 */
interface IERC1822ProxiableUpgradeable {
    /**
     * @dev Returns the storage slot that the proxiable contract assumes is being used to store the implementation
     * address.
     *
     * IMPORTANT: A proxy pointing at a proxiable contract should not be considered proxiable itself, because this risks
     * bricking a proxy that upgrades to it, by delegating to itself until out of gas. Thus it is critical that this
     * function revert if invoked through a proxy.
     */
    function proxiableUUID() external view returns (bytes32);
}

// OpenZeppelin Contracts (last updated v4.5.0) (proxy/ERC1967/ERC1967Upgrade.sol)

// OpenZeppelin Contracts v4.4.1 (proxy/beacon/IBeacon.sol)

/**
 * @dev This is the interface that {BeaconProxy} expects of its beacon.
 */
interface IBeaconUpgradeable {
    /**
     * @dev Must return an address that can be used as a delegate call target.
     *
     * {BeaconProxy} will check that this address is a contract.
     */
    function implementation() external view returns (address);
}

// OpenZeppelin Contracts v4.4.1 (utils/StorageSlot.sol)

/**
 * @dev Library for reading and writing primitive types to specific storage slots.
 *
 * Storage slots are often used to avoid storage conflict when dealing with upgradeable contracts.
 * This library helps with reading and writing to such slots without the need for inline assembly.
 *
 * The functions in this library return Slot structs that contain a `value` member that can be used to read or write.
 *
 * Example usage to set ERC1967 implementation slot:
 * ```
 * contract ERC1967 {
 *     bytes32 internal constant _IMPLEMENTATION_SLOT = 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc;
 *
 *     function _getImplementation() internal view returns (address) {
 *         return StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value;
 *     }
 *
 *     function _setImplementation(address newImplementation) internal {
 *         require(Address.isContract(newImplementation), "ERC1967: new implementation is not a contract");
 *         StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value = newImplementation;
 *     }
 * }
 * ```
 *
 * _Available since v4.1 for `address`, `bool`, `bytes32`, and `uint256`._
 */
library StorageSlotUpgradeable {
    struct AddressSlot {
        address value;
    }

    struct BooleanSlot {
        bool value;
    }

    struct Bytes32Slot {
        bytes32 value;
    }

    struct Uint256Slot {
        uint256 value;
    }

    /**
     * @dev Returns an `AddressSlot` with member `value` located at `slot`.
     */
    function getAddressSlot(bytes32 slot) internal pure returns (AddressSlot storage r) {
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `BooleanSlot` with member `value` located at `slot`.
     */
    function getBooleanSlot(bytes32 slot) internal pure returns (BooleanSlot storage r) {
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `Bytes32Slot` with member `value` located at `slot`.
     */
    function getBytes32Slot(bytes32 slot) internal pure returns (Bytes32Slot storage r) {
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `Uint256Slot` with member `value` located at `slot`.
     */
    function getUint256Slot(bytes32 slot) internal pure returns (Uint256Slot storage r) {
        assembly {
            r.slot := slot
        }
    }
}

/**
 * @dev This abstract contract provides getters and event emitting update functions for
 * https://eips.ethereum.org/EIPS/eip-1967[EIP1967] slots.
 *
 * _Available since v4.1._
 *
 * @custom:oz-upgrades-unsafe-allow delegatecall
 */
abstract contract ERC1967UpgradeUpgradeable is Initializable {
    function __ERC1967Upgrade_init() internal onlyInitializing {
    }

    function __ERC1967Upgrade_init_unchained() internal onlyInitializing {
    }
    // This is the keccak-256 hash of "eip1967.proxy.rollback" subtracted by 1
    bytes32 private constant _ROLLBACK_SLOT = 0x4910fdfa16fed3260ed0e7147f7cc6da11a60208b5b9406d12a635614ffd9143;

    /**
     * @dev Storage slot with the address of the current implementation.
     * This is the keccak-256 hash of "eip1967.proxy.implementation" subtracted by 1, and is
     * validated in the constructor.
     */
    bytes32 internal constant _IMPLEMENTATION_SLOT = 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc;

    /**
     * @dev Emitted when the implementation is upgraded.
     */
    event Upgraded(address indexed implementation);

    /**
     * @dev Returns the current implementation address.
     */
    function _getImplementation() internal view returns (address) {
        return StorageSlotUpgradeable.getAddressSlot(_IMPLEMENTATION_SLOT).value;
    }

    /**
     * @dev Stores a new address in the EIP1967 implementation slot.
     */
    function _setImplementation(address newImplementation) private {
        require(AddressUpgradeable.isContract(newImplementation), "ERC1967: new implementation is not a contract");
        StorageSlotUpgradeable.getAddressSlot(_IMPLEMENTATION_SLOT).value = newImplementation;
    }

    /**
     * @dev Perform implementation upgrade
     *
     * Emits an {Upgraded} event.
     */
    function _upgradeTo(address newImplementation) internal {
        _setImplementation(newImplementation);
        emit Upgraded(newImplementation);
    }

    /**
     * @dev Perform implementation upgrade with additional setup call.
     *
     * Emits an {Upgraded} event.
     */
    function _upgradeToAndCall(
        address newImplementation,
        bytes memory data,
        bool forceCall
    ) internal {
        _upgradeTo(newImplementation);
        if (data.length > 0 || forceCall) {
            _functionDelegateCall(newImplementation, data);
        }
    }

    /**
     * @dev Perform implementation upgrade with security checks for UUPS proxies, and additional setup call.
     *
     * Emits an {Upgraded} event.
     */
    function _upgradeToAndCallUUPS(
        address newImplementation,
        bytes memory data,
        bool forceCall
    ) internal {
        // Upgrades from old implementations will perform a rollback test. This test requires the new
        // implementation to upgrade back to the old, non-ERC1822 compliant, implementation. Removing
        // this special case will break upgrade paths from old UUPS implementation to new ones.
        if (StorageSlotUpgradeable.getBooleanSlot(_ROLLBACK_SLOT).value) {
            _setImplementation(newImplementation);
        } else {
            try IERC1822ProxiableUpgradeable(newImplementation).proxiableUUID() returns (bytes32 slot) {
                require(slot == _IMPLEMENTATION_SLOT, "ERC1967Upgrade: unsupported proxiableUUID");
            } catch {
                revert("ERC1967Upgrade: new implementation is not UUPS");
            }
            _upgradeToAndCall(newImplementation, data, forceCall);
        }
    }

    /**
     * @dev Storage slot with the admin of the contract.
     * This is the keccak-256 hash of "eip1967.proxy.admin" subtracted by 1, and is
     * validated in the constructor.
     */
    bytes32 internal constant _ADMIN_SLOT = 0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103;

    /**
     * @dev Emitted when the admin account has changed.
     */
    event AdminChanged(address previousAdmin, address newAdmin);

    /**
     * @dev Returns the current admin.
     */
    function _getAdmin() internal view returns (address) {
        return StorageSlotUpgradeable.getAddressSlot(_ADMIN_SLOT).value;
    }

    /**
     * @dev Stores a new address in the EIP1967 admin slot.
     */
    function _setAdmin(address newAdmin) private {
        require(newAdmin != address(0), "ERC1967: new admin is the zero address");
        StorageSlotUpgradeable.getAddressSlot(_ADMIN_SLOT).value = newAdmin;
    }

    /**
     * @dev Changes the admin of the proxy.
     *
     * Emits an {AdminChanged} event.
     */
    function _changeAdmin(address newAdmin) internal {
        emit AdminChanged(_getAdmin(), newAdmin);
        _setAdmin(newAdmin);
    }

    /**
     * @dev The storage slot of the UpgradeableBeacon contract which defines the implementation for this proxy.
     * This is bytes32(uint256(keccak256('eip1967.proxy.beacon')) - 1)) and is validated in the constructor.
     */
    bytes32 internal constant _BEACON_SLOT = 0xa3f0ad74e5423aebfd80d3ef4346578335a9a72aeaee59ff6cb3582b35133d50;

    /**
     * @dev Emitted when the beacon is upgraded.
     */
    event BeaconUpgraded(address indexed beacon);

    /**
     * @dev Returns the current beacon.
     */
    function _getBeacon() internal view returns (address) {
        return StorageSlotUpgradeable.getAddressSlot(_BEACON_SLOT).value;
    }

    /**
     * @dev Stores a new beacon in the EIP1967 beacon slot.
     */
    function _setBeacon(address newBeacon) private {
        require(AddressUpgradeable.isContract(newBeacon), "ERC1967: new beacon is not a contract");
        require(
            AddressUpgradeable.isContract(IBeaconUpgradeable(newBeacon).implementation()),
            "ERC1967: beacon implementation is not a contract"
        );
        StorageSlotUpgradeable.getAddressSlot(_BEACON_SLOT).value = newBeacon;
    }

    /**
     * @dev Perform beacon upgrade with additional setup call. Note: This upgrades the address of the beacon, it does
     * not upgrade the implementation contained in the beacon (see {UpgradeableBeacon-_setImplementation} for that).
     *
     * Emits a {BeaconUpgraded} event.
     */
    function _upgradeBeaconToAndCall(
        address newBeacon,
        bytes memory data,
        bool forceCall
    ) internal {
        _setBeacon(newBeacon);
        emit BeaconUpgraded(newBeacon);
        if (data.length > 0 || forceCall) {
            _functionDelegateCall(IBeaconUpgradeable(newBeacon).implementation(), data);
        }
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a delegate call.
     *
     * _Available since v3.4._
     */
    function _functionDelegateCall(address target, bytes memory data) private returns (bytes memory) {
        require(AddressUpgradeable.isContract(target), "Address: delegate call to non-contract");

        // solhint-disable-next-line avoid-low-level-calls
        (bool success, bytes memory returndata) = target.delegatecall(data);
        return AddressUpgradeable.verifyCallResult(success, returndata, "Address: low-level delegate call failed");
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[50] private __gap;
}

/**
 * @dev An upgradeability mechanism designed for UUPS proxies. The functions included here can perform an upgrade of an
 * {ERC1967Proxy}, when this contract is set as the implementation behind such a proxy.
 *
 * A security mechanism ensures that an upgrade does not turn off upgradeability accidentally, although this risk is
 * reinstated if the upgrade retains upgradeability but removes the security mechanism, e.g. by replacing
 * `UUPSUpgradeable` with a custom implementation of upgrades.
 *
 * The {_authorizeUpgrade} function must be overridden to include access restriction to the upgrade mechanism.
 *
 * _Available since v4.1._
 */
abstract contract UUPSUpgradeable is Initializable, IERC1822ProxiableUpgradeable, ERC1967UpgradeUpgradeable {
    function __UUPSUpgradeable_init() internal onlyInitializing {
    }

    function __UUPSUpgradeable_init_unchained() internal onlyInitializing {
    }
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable state-variable-assignment
    address private immutable __self = address(this);

    /**
     * @dev Check that the execution is being performed through a delegatecall call and that the execution context is
     * a proxy contract with an implementation (as defined in ERC1967) pointing to self. This should only be the case
     * for UUPS and transparent proxies that are using the current contract as their implementation. Execution of a
     * function through ERC1167 minimal proxies (clones) would not normally pass this test, but is not guaranteed to
     * fail.
     */
    modifier onlyProxy() {
        require(address(this) != __self, "Function must be called through delegatecall");
        require(_getImplementation() == __self, "Function must be called through active proxy");
        _;
    }

    /**
     * @dev Check that the execution is not being performed through a delegate call. This allows a function to be
     * callable on the implementing contract but not through proxies.
     */
    modifier notDelegated() {
        require(address(this) == __self, "UUPSUpgradeable: must not be called through delegatecall");
        _;
    }

    /**
     * @dev Implementation of the ERC1822 {proxiableUUID} function. This returns the storage slot used by the
     * implementation. It is used to validate that the this implementation remains valid after an upgrade.
     *
     * IMPORTANT: A proxy pointing at a proxiable contract should not be considered proxiable itself, because this risks
     * bricking a proxy that upgrades to it, by delegating to itself until out of gas. Thus it is critical that this
     * function revert if invoked through a proxy. This is guaranteed by the `notDelegated` modifier.
     */
    function proxiableUUID() external view virtual override notDelegated returns (bytes32) {
        return _IMPLEMENTATION_SLOT;
    }

    /**
     * @dev Upgrade the implementation of the proxy to `newImplementation`.
     *
     * Calls {_authorizeUpgrade}.
     *
     * Emits an {Upgraded} event.
     */
    function upgradeTo(address newImplementation) external virtual onlyProxy {
        _authorizeUpgrade(newImplementation);
        _upgradeToAndCallUUPS(newImplementation, new bytes(0), false);
    }

    /**
     * @dev Upgrade the implementation of the proxy to `newImplementation`, and subsequently execute the function call
     * encoded in `data`.
     *
     * Calls {_authorizeUpgrade}.
     *
     * Emits an {Upgraded} event.
     */
    function upgradeToAndCall(address newImplementation, bytes memory data) external payable virtual onlyProxy {
        _authorizeUpgrade(newImplementation);
        _upgradeToAndCallUUPS(newImplementation, data, true);
    }

    /**
     * @dev Function that should revert when `msg.sender` is not authorized to upgrade the contract. Called by
     * {upgradeTo} and {upgradeToAndCall}.
     *
     * Normally, this function will use an xref:access.adoc[access control] modifier such as {Ownable-onlyOwner}.
     *
     * ```solidity
     * function _authorizeUpgrade(address) internal override onlyOwner {}
     * ```
     */
    function _authorizeUpgrade(address newImplementation) internal virtual;

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[50] private __gap;
}

contract BoringOwnableUpgradeableData {
  address public owner;
  address public pendingOwner;
}

contract BoringOwnableUpgradeable is BoringOwnableUpgradeableData, Initializable {
  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

  function __BoringOwnable_init() internal onlyInitializing {
    owner = msg.sender;
  }

  /// @notice Transfers ownership to `newOwner`. Either directly or claimable by the new pending owner.
  /// Can only be invoked by the current `owner`.
  /// @param newOwner Address of the new owner.
  /// @param direct True if `newOwner` should be set immediately. False if `newOwner` needs to use `claimOwnership`.
  /// @param renounce Allows the `newOwner` to be `address(0)` if `direct` and `renounce` is True. Has no effect otherwise.
  function transferOwnership(
    address newOwner,
    bool direct,
    bool renounce
  ) public onlyOwner {
    if (direct) {
      // Checks
      require(newOwner != address(0) || renounce, "Ownable: zero address");

      // Effects
      emit OwnershipTransferred(owner, newOwner);
      owner = newOwner;
      pendingOwner = address(0);
    } else {
      // Effects
      pendingOwner = newOwner;
    }
  }

  /// @notice Needs to be called by `pendingOwner` to claim ownership.
  function claimOwnership() public {
    address _pendingOwner = pendingOwner;

    // Checks
    require(msg.sender == _pendingOwner, "Ownable: caller != pending owner");

    // Effects
    emit OwnershipTransferred(owner, _pendingOwner);
    owner = _pendingOwner;
    pendingOwner = address(0);
  }

  /// @notice Only allows the `owner` to execute the function.
  modifier onlyOwner() {
    require(msg.sender == owner, "Ownable: caller is not the owner");
    _;
  }

  uint256[48] private __gap;
}

interface ComptrollerLensInterface {
  function markets(address) external view returns (bool, uint256);

  function oracle() external view returns (PriceOracle);

  function getAccountLiquidity(address) external view returns (uint256, uint256);

  function getAssetsIn(address) external view returns (AuToken[] memory);

  function claimReward(uint8, address) external;

  function rewardAccrued(uint8, address) external view returns (uint256);

  function rewardSpeeds(
    uint8,
    address,
    bool
  ) external view returns (uint256);

  function borrowCaps(address) external view returns (uint256);

  function ply() external view returns (IERC20);

  function aurora() external view returns (IERC20);

  function pulp() external view returns (PULPInterface);
}

contract AuriLens is Initializable, BoringOwnableUpgradeable, UUPSUpgradeable {
  struct AuTokenMetadata {
    address auToken;
    uint256 exchangeRateCurrent;
    uint256 supplyRatePerBlock;
    uint256 borrowRatePerBlock;
    uint256 reserveFactorMantissa;
    uint256 totalBorrows;
    uint256 totalReserves;
    uint256 totalSupply;
    uint256 totalCash;
    bool isListed;
    uint256 collateralFactorMantissa;
    address underlyingAssetAddress;
    uint256 auTokenDecimals;
    uint256 underlyingDecimals;
    uint256 plyRewardSupplySpeed;
    uint256 plyRewardBorrowSpeed;
    uint256 auroraRewardSupplySpeed;
    uint256 auroraRewardBorrowSpeed;
    uint256 borrowCap;
  }

  struct RewardSpeeds {
    uint256 plyRewardSupplySpeed;
    uint256 plyRewardBorrowSpeed;
    uint256 auroraRewardSupplySpeed;
    uint256 auroraRewardBorrowSpeed;
  }

  struct AuTokenBalances {
    address auToken;
    uint256 balanceOf;
    uint256 borrowBalanceCurrent;
    uint256 balanceOfUnderlying;
    uint256 tokenBalance;
    uint256 tokenAllowance;
  }

  struct AuTokenUnderlyingPrice {
    address auToken;
    uint256 underlyingPrice;
  }

  struct RewardBalancesMetadata {
    uint256 plyAccrured;
    uint256 auroraClaimable;
    uint256 wnearClaimable;
  }

  struct AccountLimits {
    AuToken[] markets;
    uint256 liquidity;
    uint256 shortfall;
  }

  IERC20 public immutable WNEAR;

  constructor(IERC20 _WNEAR) initializer {
    WNEAR = _WNEAR;
  }

  function initialize() external initializer {
    __BoringOwnable_init();
  }

  function _authorizeUpgrade(address) internal virtual override onlyOwner {}

  function getRewardSpeeds(ComptrollerLensInterface comptroller, AuToken auToken)
    public
    view
    returns (RewardSpeeds memory rewardSpeeds)
  {
    rewardSpeeds.plyRewardSupplySpeed = comptroller.rewardSpeeds(0, address(auToken), true);
    rewardSpeeds.plyRewardBorrowSpeed = comptroller.rewardSpeeds(0, address(auToken), false);
    rewardSpeeds.auroraRewardSupplySpeed = comptroller.rewardSpeeds(1, address(auToken), true);
    rewardSpeeds.auroraRewardBorrowSpeed = comptroller.rewardSpeeds(1, address(auToken), false);
  }

  function getAddresses(ComptrollerLensInterface comptroller)
    external
    view
    returns (
      address ply,
      address aurora,
      address wnear,
      address pulp
    )
  {
    ply = address(comptroller.ply());
    aurora = address(comptroller.aurora());
    pulp = address(comptroller.pulp());
    wnear = address(WNEAR);
  }

  /**
    @dev only auToken.exchangeRateCurrent() is a non-view function
  */
  function auTokenMetadataNonView(AuToken auToken) public returns (AuTokenMetadata memory) {
    ComptrollerLensInterface comptroller = ComptrollerLensInterface(
      address(auToken.comptroller())
    );
    (bool isListed, uint256 collateralFactorMantissa) = comptroller.markets(address(auToken));
    address underlyingAssetAddress;
    uint256 underlyingDecimals;

    if (compareStrings(auToken.symbol(), "auETH")) {
      underlyingAssetAddress = address(0);
      underlyingDecimals = 18;
    } else {
      AuErc20 auErc20 = AuErc20(address(auToken));
      underlyingAssetAddress = auErc20.underlying();
      underlyingDecimals = IERC20Metadata(auErc20.underlying()).decimals();
    }
    RewardSpeeds memory rewardSpeeds = getRewardSpeeds(comptroller, auToken);

    uint256 borrowCap = 0;
    (bool borrowCapSuccess, bytes memory borrowCapReturnData) = address(comptroller).staticcall(
      abi.encodePacked(comptroller.borrowCaps.selector, abi.encode(address(auToken)))
    );
    if (borrowCapSuccess) {
      borrowCap = abi.decode(borrowCapReturnData, (uint256));
    }

    return
      AuTokenMetadata({
        auToken: address(auToken),
        exchangeRateCurrent: auToken.exchangeRateCurrent(),
        supplyRatePerBlock: auToken.supplyRatePerTimestamp(),
        borrowRatePerBlock: auToken.borrowRatePerTimestamp(),
        reserveFactorMantissa: auToken.reserveFactorMantissa(),
        totalBorrows: auToken.totalBorrows(),
        totalReserves: auToken.totalReserves(),
        totalSupply: auToken.totalSupply(),
        totalCash: auToken.getCash(),
        isListed: isListed,
        collateralFactorMantissa: collateralFactorMantissa,
        underlyingAssetAddress: underlyingAssetAddress,
        auTokenDecimals: auToken.decimals(),
        underlyingDecimals: underlyingDecimals,
        plyRewardSupplySpeed: rewardSpeeds.plyRewardSupplySpeed,
        plyRewardBorrowSpeed: rewardSpeeds.plyRewardBorrowSpeed,
        auroraRewardSupplySpeed: rewardSpeeds.auroraRewardSupplySpeed,
        auroraRewardBorrowSpeed: rewardSpeeds.auroraRewardBorrowSpeed,
        borrowCap: borrowCap
      });
  }

  function auTokenMetadataAllNonView(AuToken[] calldata auTokens)
    external
    returns (AuTokenMetadata[] memory)
  {
    uint256 auTokenCount = auTokens.length;
    AuTokenMetadata[] memory res = new AuTokenMetadata[](auTokenCount);
    for (uint256 i = 0; i < auTokenCount; i++) {
      res[i] = auTokenMetadataNonView(auTokens[i]);
    }
    return res;
  }

  /**
    @dev only borrowBalanceCurrent & balanceOfUnderlying are non-view functions
  */
  function auTokenBalances(AuToken auToken) public returns (AuTokenBalances memory) {
    uint256 tokenBalance;
    uint256 tokenAllowance;

    if (compareStrings(auToken.symbol(), "auETH")) {
      tokenBalance = msg.sender.balance;
      tokenAllowance = msg.sender.balance;
    } else {
      IERC20 underlying = IERC20(AuErc20(address(auToken)).underlying());
      tokenBalance = underlying.balanceOf(msg.sender);
      tokenAllowance = underlying.allowance(msg.sender, address(auToken));
    }

    return
      AuTokenBalances({
        auToken: address(auToken),
        balanceOf: auToken.balanceOf(msg.sender),
        borrowBalanceCurrent: auToken.borrowBalanceCurrent(msg.sender),
        balanceOfUnderlying: auToken.balanceOfUnderlying(msg.sender),
        tokenBalance: tokenBalance,
        tokenAllowance: tokenAllowance
      });
  }

  function auTokenBalancesAll(AuToken[] calldata auTokens)
    external
    returns (AuTokenBalances[] memory)
  {
    uint256 auTokenCount = auTokens.length;
    AuTokenBalances[] memory res = new AuTokenBalances[](auTokenCount);
    for (uint256 i = 0; i < auTokenCount; i++) {
      res[i] = auTokenBalances(auTokens[i]);
    }
    return res;
  }

  function auTokenUnderlyingPrice(AuToken auToken)
    public
    view
    returns (AuTokenUnderlyingPrice memory)
  {
    ComptrollerLensInterface comptroller = ComptrollerLensInterface(
      address(auToken.comptroller())
    );
    PriceOracle priceOracle = comptroller.oracle();

    return
      AuTokenUnderlyingPrice({
        auToken: address(auToken),
        underlyingPrice: priceOracle.getUnderlyingPrice(auToken)
      });
  }

  function auTokenUnderlyingPriceAll(AuToken[] calldata auTokens)
    external
    view
    returns (AuTokenUnderlyingPrice[] memory)
  {
    uint256 auTokenCount = auTokens.length;
    AuTokenUnderlyingPrice[] memory res = new AuTokenUnderlyingPrice[](auTokenCount);
    for (uint256 i = 0; i < auTokenCount; i++) {
      res[i] = auTokenUnderlyingPrice(auTokens[i]);
    }
    return res;
  }

  function getAccountLimits(ComptrollerLensInterface comptroller)
    public
    view
    returns (AccountLimits memory)
  {
    (uint256 liquidity, uint256 shortfall) = comptroller.getAccountLiquidity(msg.sender);

    return
      AccountLimits({
        markets: comptroller.getAssetsIn(msg.sender),
        liquidity: liquidity,
        shortfall: shortfall
      });
  }

  /**
   * @dev comptroller.claimReward, fairlaunch.harvest & pulp.redeem are non-view
   * @dev to be impersonated and callStatic by SDK
   */
  function claimRewards(
    ComptrollerLensInterface comptroller,
    AuriFairLaunchInterface fairLaunch,
    uint256[] calldata pids
  ) external returns (RewardBalancesMetadata memory rewardData) {
    /// ------------------------------------------------------------
    /// set-up states
    /// ------------------------------------------------------------

    IERC20 ply = comptroller.ply();
    IERC20 aurora = comptroller.aurora();
    IERC20 wnear = WNEAR;
    PULPInterface pulp = PULPInterface(comptroller.pulp());

    uint256 plyBalance = ply.balanceOf(msg.sender);
    uint256 pulpBalance = pulp.balanceOf(msg.sender);
    uint256 auroraBalance = aurora.balanceOf(msg.sender);
    uint256 wnearBalance = wnear.balanceOf(msg.sender);

    /// ------------------------------------------------------------
    /// claim rewards
    /// ------------------------------------------------------------

    comptroller.claimReward(0, msg.sender);
    comptroller.claimReward(1, msg.sender);
    for (uint256 i; i < pids.length; i++) {
      fairLaunch.harvest(msg.sender, pids[i], type(uint256).max);
    }

    /// ------------------------------------------------------------
    /// calc redeemed amounts
    /// ------------------------------------------------------------

    // only ply,aurora and wnear will be rewarded to users
    rewardData.plyAccrured =
      ply.balanceOf(msg.sender) -
      plyBalance +
      pulp.balanceOf(msg.sender) -
      pulpBalance;
    rewardData.auroraClaimable = aurora.balanceOf(msg.sender) - auroraBalance;
    rewardData.wnearClaimable = wnear.balanceOf(msg.sender) - wnearBalance;
  }

  function compareStrings(string memory a, string memory b) internal pure returns (bool) {
    return (keccak256(abi.encodePacked((a))) == keccak256(abi.encodePacked((b))));
  }

  /**
   * @dev Get percentage lock of a user in a specific week
   */
  function getPercentLock(
    PULPInterface pulp,
    address account,
    int256 weekInt
  ) public view returns (uint256 percentLock) {
    if (weekInt < 0) return 10_000;

    uint256 week = uint256(weekInt);

    (bool _isSet, uint224 _percentLock) = pulp.userLock(account, week);
    if (_isSet) {
      percentLock = _percentLock;
    } else {
      percentLock = pulp.globalLock(week);
    }
  }

  /**
   * @dev Get the first week that the unlock percentage reach the target
   * @dev This function is very gas intensive & is intended to be called by SDK
   */
  function getWeekToUnlock(
    PULPInterface pulp,
    address account,
    uint256 targetUnlockPercent
  ) external view returns (int256) {
    uint256 targetLockPercent = 10_000 - targetUnlockPercent;
    for (int256 i = 0; i <= 47; i++) {
      if (getPercentLock(pulp, account, i) <= targetLockPercent) {
        return i;
      }
    }
    return 48;
  }
}

