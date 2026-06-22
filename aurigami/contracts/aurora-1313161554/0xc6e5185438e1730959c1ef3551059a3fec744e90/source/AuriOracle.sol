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

// Audit on 5-Jan-2021 by Keno and BoringCrypto
// Source: https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol + Claimable.sol
// Edited by BoringCrypto

contract BoringOwnableData {
    address public owner;
    address public pendingOwner;
}

contract BoringOwnable is BoringOwnableData {
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    constructor(){
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
}

// OpenZeppelin Contracts v4.4.1 (token/ERC20/extensions/IERC20Metadata.sol)

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

interface AggregatorV3Interface {
  //
  // V3 Interface:
  //
  function decimals() external view returns (uint8);

  function description() external view returns (string memory);

  // latestRoundData should both raise "No data present"
  // if they do not have data to report, instead of returning unset values
  // which could be misinterpreted as actual reported values.

  function latestRoundData()
    external
    view
    returns (
      uint80 roundId,
      int256 answer,
      uint256 startedAt,
      uint256 updatedAt,
      uint80 answeredInRound
    );
}

library Math {
  /**
   * @dev Returns the largest of two numbers.
   */
  function max(uint256 a, uint256 b) internal pure returns (uint256) {
    return a >= b ? a : b;
  }

  function max(
    uint256 a,
    uint256 b,
    uint256 c
  ) internal pure returns (uint256) {
    return max(a, max(b, c));
  }

  /**
   * @dev Returns the smallest of two numbers.
   */
  function min(uint256 a, uint256 b) internal pure returns (uint256) {
    return a < b ? a : b;
  }

  function min(
    uint256 a,
    uint256 b,
    uint256 c
  ) internal pure returns (uint256) {
    return min(min(a, b), c);
  }

  /**
   * @dev Returns the average of two numbers. The result is rounded towards
   * zero.
   */
  function average(uint256 a, uint256 b) internal pure returns (uint256) {
    // (a + b) / 2 can overflow.
    return (a & b) + (a ^ b) / 2;
  }

  /**
   * @dev Returns the ceiling of the division of two numbers.
   *
   * This differs from standard division with `/` in that it rounds up instead
   * of rounding down.
   */
  function ceilDiv(uint256 a, uint256 b) internal pure returns (uint256) {
    // (a + b - 1) / b can overflow on addition, so we distribute.
    return a / b + (a % b == 0 ? 0 : 1);
  }

  /**
   * @dev Returns the abs of the difference of two numbers.
   */
  function absDiff(uint256 a, uint256 b) internal pure returns (uint256) {
    return (a > b) ? (a - b) : (b - a);
  }

  function safe216(uint256 n) internal pure returns (uint216) {
    require(n <= type(uint216).max, "safe216");
    return uint216(n);
  }

  function safe224(uint256 n) internal pure returns (uint224) {
    require(n <= type(uint224).max, "safe224");
    return uint224(n);
  }

  function safe32(uint256 n) internal pure returns (uint32) {
    require(n <= type(uint32).max, "safe32");
    return uint32(n);
  }
}

/*
  Before chainlink is available on Aurora, Aurigami will host its own price feeds by running 3 bot
  independently, forking price from chainlink on Eth mainnet and update it onto this contract.

  How it works:
  1. Liquidator bots (updator1, updatetor2, updator3) forks chainlink's price feed from eth mainnet (ignoring roundId and updatedAt)
  2. Liquidator bots sends its collected price through a transaction "updateMainFeedData", the updatedAt is set to block.timestamp
  3. During the transaction, the contract will consider the latest updates from 3 bots
    3.1. Update from a bot is considered invalid if (block.timestamp - updatedAt) > validPeriod (= 5 minutes by default)
    3.2. If the number of valid updates <= 1, does nothing
    3.3. If the number of valid updates >= 2, return the average of 2 closest prices, .i.e, (x+y)/2 with minimum (x-y) among prices[]. And updatedAt is set to min of participating answers.

  Why 3.3:
    1. A price is considered valid only if its updated in less than 5 minutes before the transaction
    2. A price is considered trustworthy if another updator also has an answer close to it

  How a query works:
    1. The Oracle checks for the latest mainFeedAnswers (calculated from updates above), if its not outdated, return the price
    2. If mainFeeds answer is outdated, return the backupFeed's price (a third-party's feed)
*/

contract AuriOracle is PriceOracle, BoringOwnable {
  struct AggregatedData {
    uint216 answer;
    uint8 underlyingDecimal; // must not be used anyway except in setUnderlyingDecimals
    uint32 updatedAt;
    // sum = 256 bit
  }

  struct RawData {
    uint216 answer;
    uint32 updatedAt;
    // sum < 256 bit
  }

  address public immutable updator1;
  address public immutable updator2;
  address public immutable updator3;

  mapping(address => mapping(address => RawData)) public mainFeedRaw; // updator => auToken => MainFeedRawData
  mapping(address => AggregatedData) public mainFeed; // auToken => MainFeedData

  mapping(address => address) public backupFeedAddr; // auToken => backupFeedAddr

  uint256 private constant _DEFAULT_PRICE_VALID_PERIOD = 5 minutes;
  uint256 private constant _DEFAULT_FUTURE_TOLERANCE = 3 seconds;
  uint256 private constant _1E10 = 1e10;

  uint256 public validPeriod;
  uint256 public futureTolerance;

  event MainFeedSync(address indexed auToken, uint256 indexed answer, address indexed updator);
  event MainFeedFail(address indexed auToken, address indexed updator);
  event BackupFeedUpdated(address indexed auToken, address indexed backupFeed);
  event DecimalsSet(address indexed auToken, uint8 indexed decimals);

  modifier onlyUpdator() {
    require(
      msg.sender == updator1 || msg.sender == updator2 || msg.sender == updator3,
      "not allowed"
    );
    _;
  }

  constructor(
    address _updator1,
    address _updator2,
    address _updator3
  ) BoringOwnable() {
    validPeriod = _DEFAULT_PRICE_VALID_PERIOD;
    futureTolerance = _DEFAULT_FUTURE_TOLERANCE;
    updator1 = _updator1;
    updator2 = _updator2;
    updator3 = _updator3;
  }

  function getUnderlyingPrices(AuToken[] calldata auTokens)
    external
    view
    override
    returns (uint256[] memory res)
  {
    res = new uint256[](auTokens.length);
    uint256 cachedValidPeriod = validPeriod;
    for (uint256 i = 0; i < auTokens.length; i++) {
      res[i] = _getUnderlyingPrice(auTokens[i], cachedValidPeriod);
    }
  }

  function getUnderlyingPrice(AuToken auToken) external view override returns (uint256) {
    return _getUnderlyingPrice(auToken, validPeriod);
  }

  function _getUnderlyingPrice(AuToken auToken, uint256 cachedValidPeriod)
    internal
    view
    returns (uint256)
  {
    AggregatedData memory mainFeedData = mainFeed[address(auToken)];
    (uint256 rawPrice, uint256 underlyingDecimal, uint256 updatedAt) = (
      mainFeedData.answer,
      mainFeedData.underlyingDecimal,
      mainFeedData.updatedAt
    );
    require(underlyingDecimal != 0, "underlyingDecimal not set");
    require(rawPrice != 0 && updatedAt != 0, "mainFeed data zero");

    if (isOutdated(updatedAt, cachedValidPeriod)) {
      (rawPrice, ) = fetchBackupFeed(backupFeedAddr[address(auToken)]);
    }

    // feed's price is 8 decimals, so we will multiply it by 1e10 to get 1e18 decimals
    uint256 rawPrice18Decimals = rawPrice * _1E10;

    // scale the price to price for 1e18 units
    if (underlyingDecimal <= 18) {
      return rawPrice18Decimals * (10**(18 - underlyingDecimal));
    } else {
      return rawPrice18Decimals / (10**(underlyingDecimal - 18));
    }
  }

  /**
    * @dev out of the 3 feeds, we will take the 2 non-outdated feeds with minimum difference between them,
    and then the final price will be the average of the two
    * @dev by doing this, even if one feed is down (outdated) or one feed is malicious, the system
    would still be able to run normally
    * @param newUpdatedAt the timestamp of the block that we query this price from
  */
  function updateMainFeedData(
    address auToken,
    int256 newUnderlyingPrice,
    uint256 newUpdatedAt
  ) external onlyUpdator {
    require(newUnderlyingPrice > 0, "bad price");
    if (block.timestamp > newUpdatedAt) {
      // reject stale price
      require(!isOutdated(newUpdatedAt, validPeriod), "price outdated");
    } else {
      // reject future timestamp (but accept a small delta of future time)
      require(newUpdatedAt - block.timestamp < futureTolerance, "future time rejected");
      newUpdatedAt = block.timestamp;
    }

    // safe uint256 cast since answer > 0
    mainFeedRaw[msg.sender][auToken] = RawData(
      Math.safe216(uint256(newUnderlyingPrice)),
      Math.safe32(newUpdatedAt)
    );

    (uint256 answer, uint256 updatedAt) = aggregateAllRawData(auToken);

    if (updatedAt != 0) {
      // updatedAt == 0 only if 2 out of 3 feeds are outdated
      // answer != 0 since updatedAt != 0
      mainFeed[auToken].answer = Math.safe216(answer);
      mainFeed[auToken].updatedAt = Math.safe32(updatedAt);
      emit MainFeedSync(auToken, uint256(answer), msg.sender);
    } else {
      emit MainFeedFail(auToken, msg.sender);
    }
  }

  /**
  @notice updatedAt & answer can be both zero when at least 2 of 3 feeds are outdated
  */
  function aggregateAllRawData(address auToken)
    internal
    view
    returns (uint256 answer, uint256 updatedAt)
  {
    RawData[3] memory data = [
      mainFeedRaw[updator1][auToken],
      mainFeedRaw[updator2][auToken],
      mainFeedRaw[updator3][auToken]
    ];

    uint256 cachedValidPeriod = validPeriod;
    uint256 mnDiff = type(uint256).max;

    // Looping through all pairs of prices to find the closest double
    for (uint8 i = 0; i < 3; i++) {
      uint8 j = (i + 1) % 3;
      if (
        isOutdated(data[i].updatedAt, cachedValidPeriod) ||
        isOutdated(data[j].updatedAt, cachedValidPeriod)
      ) continue;
      uint256 diff = Math.absDiff(data[i].answer, data[j].answer);
      if (diff < mnDiff) {
        (answer, updatedAt) = mergeTwoFeeds(data[i], data[j]);
        mnDiff = diff;
      }
    }
  }

  function mergeTwoFeeds(RawData memory feed1, RawData memory feed2)
    internal
    pure
    returns (uint256 answer, uint256 updatedAt)
  {
    answer = Math.average(feed1.answer, feed2.answer);
    updatedAt = Math.min(feed1.updatedAt, feed2.updatedAt);
  }

  function fetchBackupFeed(address feed) public view returns (uint256 answer, uint256 updatedAt) {
    // prettier-ignore
    (
      /*uint80 roundId*/,
      int256 rawAnswer,
      /*uint256 startedAt*/,
      uint256 rawUpdatedAt,
      /*uint80 answeredInRound*/
    ) = AggregatorV3Interface(feed).latestRoundData();

    require(rawAnswer > 0, "bad price");

    // safe cast since rawAnswer > 0
    answer = uint256(rawAnswer);
    updatedAt = rawUpdatedAt;
  }

  function isOutdated(uint256 lastUpdateTimestamp, uint256 localValidPeriod)
    internal
    view
    returns (bool res)
  {
    res = (block.timestamp - lastUpdateTimestamp) > localValidPeriod;
  }

  function setPriceValidity(uint256 _validPeriod) external onlyOwner {
    require(_validPeriod != 0, "bad input");
    validPeriod = _validPeriod;
  }

  function setFutureTolerance(uint256 _futureTolerance) external onlyOwner {
    require(_futureTolerance != 0, "bad input");
    futureTolerance = _futureTolerance;
  }

  function setBackupFeedAddr(address[] calldata auTokens, address[] calldata backupFeeds)
    external
    onlyOwner
  {
    require(auTokens.length == backupFeeds.length, "invalid length");
    for (uint256 i = 0; i < auTokens.length; i++) {
      backupFeedAddr[auTokens[i]] = backupFeeds[i];
      emit BackupFeedUpdated(auTokens[i], backupFeeds[i]);
    }
  }

  function setUnderlyingDecimals(address[] calldata auTokens, uint8[] calldata decimals)
    external
    onlyOwner
  {
    require(auTokens.length == decimals.length, "invalid length");
    for (uint256 i = 0; i < auTokens.length; i++) {
      mainFeed[auTokens[i]].underlyingDecimal = decimals[i];
      emit DecimalsSet(auTokens[i], decimals[i]);
    }
  }

  /**
  @dev ONLY USED FOR MONITORING PURPOSE
  @dev get the raw underlying price without any scaling
  */
  function _getRawUnderlyingPrice(AuToken auToken)
    external
    view
    returns (
      uint256 price,
      uint256 lastUpdated,
      bool isFromMainFeed
    )
  {
    AggregatedData memory mainFeedData = mainFeed[address(auToken)];
    (price, lastUpdated) = (mainFeedData.answer, mainFeedData.updatedAt);
    isFromMainFeed = true;

    if (isOutdated(lastUpdated, validPeriod)) {
      (price, lastUpdated) = fetchBackupFeed(backupFeedAddr[address(auToken)]);
      isFromMainFeed = false;
    }
  }
}

