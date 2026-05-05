// ============================================================
// FILE: @openzeppelin/contracts/access/Ownable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (access/Ownable.sol)

pragma solidity ^0.8.20;

import {Context} from "../utils/Context.sol";

/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * The initial owner is set to the address provided by the deployer. This can
 * later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract Ownable is Context {
    address private _owner;

    /**
     * @dev The caller account is not authorized to perform an operation.
     */
    error OwnableUnauthorizedAccount(address account);

    /**
     * @dev The owner is not a valid owner account. (eg. `address(0)`)
     */
    error OwnableInvalidOwner(address owner);

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the address provided by the deployer as the initial owner.
     */
    constructor(address initialOwner) {
        if (initialOwner == address(0)) {
            revert OwnableInvalidOwner(address(0));
        }
        _transferOwnership(initialOwner);
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        _checkOwner();
        _;
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if the sender is not the owner.
     */
    function _checkOwner() internal view virtual {
        if (owner() != _msgSender()) {
            revert OwnableUnauthorizedAccount(_msgSender());
        }
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby disabling any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        _transferOwnership(address(0));
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        if (newOwner == address(0)) {
            revert OwnableInvalidOwner(address(0));
        }
        _transferOwnership(newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual {
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC20/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.20;

/**
 * @dev Interface of the ERC-20 standard as defined in the ERC.
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
// FILE: @openzeppelin/contracts/utils/Context.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.1) (utils/Context.sol)

pragma solidity ^0.8.20;

/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }

    function _contextSuffixLength() internal view virtual returns (uint256) {
        return 0;
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/introspection/IERC165.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (utils/introspection/IERC165.sol)

pragma solidity ^0.8.20;

/**
 * @dev Interface of the ERC-165 standard, as defined in the
 * https://eips.ethereum.org/EIPS/eip-165[ERC].
 *
 * Implementers can declare support of contract interfaces, which can then be
 * queried by others ({ERC165Checker}).
 *
 * For an implementation, see {ERC165}.
 */
interface IERC165 {
    /**
     * @dev Returns true if this contract implements the interface defined by
     * `interfaceId`. See the corresponding
     * https://eips.ethereum.org/EIPS/eip-165#how-interfaces-are-identified[ERC section]
     * to learn more about how these ids are created.
     *
     * This function call must use less than 30 000 gas.
     */
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}

// ============================================================
// FILE: contracts/gateway/interface/IFrontendGateway.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IFrontendGateway {
    struct FrontendCode {
        uint256 balance;
        address owner;
    }

    event FrontendCodeRegistered(address owner, bytes32 frontendCode);
    event FrontendCodeTransferred(address from, address to, bytes32 frontendCode);
    event FrontendCodeRewardsWithdrawn(address to, uint256 amount, bytes32 frontendCode);
    event NewPositionRegistered(address position, bytes32 frontendCode);
    event RateChangesProposed(address who, uint24 nextFeeRate, uint24 nextSavingsFeeRate, uint24 nextMintingFeeRate, uint256 nextChange);
    event RateChangesExecuted(address who, uint24 nextFeeRate, uint24 nextSavingsFeeRate, uint24 nextMintingFeeRate);
    
    event InvestRewardAdded(bytes32 frontendCode, address user, uint256 amount, uint256 reward);
    event RedeemRewardAdded(bytes32 frontendCode, address user, uint256 amount, uint256 reward);
    event UnwrapAndSellRewardAdded(bytes32 frontendCode, address user, uint256 amount, uint256 reward);
    event SavingsRewardAdded(bytes32 frontendCode, address saver, uint256 interest, uint256 reward);
    event PositionRewardAdded(bytes32 frontendCode, address position, uint256 amount, uint256 reward);

    error FrontendCodeAlreadyExists();
    error NotFrontendCodeOwner();
    error NotGatewayService();
    error ProposedChangesToHigh();
    error NoOpenChanges();
    error NotDoneWaiting(uint256 minmumExecutionTime);
    error EquityTooLow();

    function invest(uint256 amount, uint256 expectedShares, bytes32 frontendCode) external returns (uint256);
    function redeem(address target, uint256 shares, uint256 expectedProceeds, bytes32 frontendCode) external returns (uint256);
    function unwrapAndSell(uint256 amount, bytes32 frontendCode) external returns (uint256);

    function updateSavingCode(address savingsOwner, bytes32 frontendCode) external;
    function updateSavingRewards(address saver, uint256 interest) external;

    function registerPosition(address position, bytes32 frontendCode) external;
    function updatePositionRewards(address position, uint256 amount) external;
    function getPositionFrontendCode(address position)view external  returns(bytes32);

    // Frontend Code Logic
    function registerFrontendCode(bytes32 frontendCode) external returns (bool);
    function transferFrontendCode(bytes32 frontendCode, address to) external returns (bool);
    function withdrawRewards(bytes32 frontendCode) external returns (uint256);
    function withdrawRewardsTo(bytes32 frontendCode, address to) external returns (uint256);

    // Governance
    function proposeChanges(uint24 newFeeRatePPM_, uint24 newSavingsFeeRatePPM_, uint24 newMintingFeeRatePPM_, address[] calldata helpers) external;
    function executeChanges() external;
}

// ============================================================
// FILE: contracts/gateway/interface/IMintingHubGateway.sol
// ============================================================

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

import {IMintingHub} from "../../MintingHubV2/interface/IMintingHub.sol";
import {IFrontendGateway} from "./IFrontendGateway.sol";

interface IMintingHubGateway {
    function GATEWAY() external view returns (IFrontendGateway);
    function notifyInterestPaid(uint256 amount) external;
    function openPosition(address _collateralAddress, uint256 _minCollateral, uint256 _initialCollateral, uint256 _mintingMaximum, uint40 _initPeriodSeconds, uint40 _expirationSeconds, uint40 _challengeSeconds, uint24 _riskPremium, uint256 _liqPrice, uint24 _reservePPM, bytes32 _frontendCode) external returns (address);
    function clone(address owner, address parent, uint256 _initialCollateral, uint256 _initialMint, uint40 expiration, bytes32 frontendCode) external returns (address);
}

// ============================================================
// FILE: contracts/interface/IDecentralizedEURO.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IReserve} from "./IReserve.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IDecentralizedEURO is IERC20 {
    function suggestMinter(
        address _minter,
        uint256 _applicationPeriod,
        uint256 _applicationFee,
        string calldata _message
    ) external;

    function registerPosition(address position) external;

    function denyMinter(address minter, address[] calldata helpers, string calldata message) external;

    function reserve() external view returns (IReserve);

    function minterReserve() external view returns (uint256);

    function calculateAssignedReserve(uint256 mintedAmount, uint32 _reservePPM) external view returns (uint256);

    function calculateFreedAmount(uint256 amountExcludingReserve, uint32 _reservePPM) external view returns (uint256);

    function equity() external view returns (uint256);

    function isMinter(address minter) external view returns (bool);

    function getPositionParent(address position) external view returns (address);

    function mint(address target, uint256 amount) external;

    function mintWithReserve(address target, uint256 amount, uint32 reservePPM) external;

    function burn(uint256 amount) external;

    function burnFrom(address target, uint256 amount) external;

    function burnWithoutReserve(uint256 amount, uint32 reservePPM) external;

    function burnFromWithReserve(
        address payer,
        uint256 targetTotalBurnAmount,
        uint32 reservePPM
    ) external returns (uint256);

    function coverLoss(address source, uint256 amount) external;

    function distributeProfits(address recipient, uint256 amount) external;

    function collectProfits(address source, uint256 _amount) external;
}

// ============================================================
// FILE: contracts/interface/ILeadrate.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ILeadrate {
   function currentRatePPM() external view returns (uint24);
   function currentTicks() external view returns (uint64);
}

// ============================================================
// FILE: contracts/interface/IReserve.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IReserve is IERC20 {
    function invest(uint256 amount, uint256 expected) external returns (uint256);
    function checkQualified(address sender, address[] calldata helpers) external view;
}

// ============================================================
// FILE: contracts/MintingHubV2/interface/IMintingHub.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import {ILeadrate} from "../../interface/ILeadrate.sol";
import {IPosition} from "./IPosition.sol";
import {PositionRoller} from "../PositionRoller.sol";

interface IMintingHub {
    function RATE() external view returns (ILeadrate);

    function ROLLER() external view returns (PositionRoller);

    function challenge(
        address _positionAddr,
        uint256 _collateralAmount,
        uint256 minimumPrice
    ) external returns (uint256);

    function bid(uint32 _challengeNumber, uint256 size, bool postponeCollateralReturn) external;

    function returnPostponedCollateral(address collateral, address target) external;

    function buyExpiredCollateral(IPosition pos, uint256 upToAmount) external returns (uint256);

    function clone(address owner, address parent, uint256 _initialCollateral, uint256 _initialMint, uint40 expiration) external returns (address);
}

// ============================================================
// FILE: contracts/MintingHubV2/interface/IPosition.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IPosition {
    function hub() external view returns (address);

    function collateral() external view returns (IERC20);

    function minimumCollateral() external view returns (uint256);

    function price() external view returns (uint256);

    function virtualPrice() external view returns (uint256);

    function challengedAmount() external view returns (uint256);

    function original() external view returns (address);

    function expiration() external view returns (uint40);

    function cooldown() external view returns (uint40);

    function limit() external view returns (uint256);

    function challengePeriod() external view returns (uint40);

    function start() external view returns (uint40);

    function riskPremiumPPM() external view returns (uint24);

    function reserveContribution() external view returns (uint24);

    function principal() external view returns (uint256);

    function interest() external view returns (uint256);

    function lastAccrual() external view returns (uint40);

    function initialize(address parent, uint40 _expiration) external;

    function assertCloneable() external;

    function notifyMint(uint256 mint_) external;

    function notifyRepaid(uint256 repaid_) external;

    function availableForClones() external view returns (uint256);

    function availableForMinting() external view returns (uint256);

    function deny(address[] calldata helpers, string calldata message) external;

    function getUsableMint(uint256 totalMint) external view returns (uint256);

    function getMintAmount(uint256 usableMint) external view returns (uint256);

    function adjust(uint256 newMinted, uint256 newCollateral, uint256 newPrice) external;

    function adjustPrice(uint256 newPrice) external;

    function mint(address target, uint256 amount) external;

    function getDebt() external view returns (uint256);

    function getInterest() external view returns (uint256);

    function repay(uint256 amount) external returns (uint256);

    function repayFull() external returns (uint256);

    function forceSale(address buyer, uint256 colAmount, uint256 proceeds) external;

    function withdraw(address token, address target, uint256 amount) external;

    function withdrawCollateral(address target, uint256 amount) external;

    function transferChallengedCollateral(address target, uint256 amount) external;

    function challengeData() external view returns (uint256 liqPrice, uint40 phase);

    function notifyChallengeStarted(uint256 size, uint256 _price) external;

    function notifyChallengeAverted(uint256 size) external;

    function notifyChallengeSucceeded(
        uint256 _size
    ) external returns (address, uint256, uint256, uint256, uint32);
}

// ============================================================
// FILE: contracts/MintingHubV2/Position.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IMintingHubGateway} from "../gateway/interface/IMintingHubGateway.sol";
import {IDecentralizedEURO} from "../interface/IDecentralizedEURO.sol";
import {IReserve} from "../interface/IReserve.sol";
import {MathUtil} from "../utils/MathUtil.sol";
import {IMintingHub} from "./interface/IMintingHub.sol";
import {IPosition} from "./interface/IPosition.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC165} from "@openzeppelin/contracts/utils/introspection/IERC165.sol";

/**
 * @title Position
 * @notice A collateralized minting position.
 */
contract Position is Ownable, IPosition, MathUtil {
    /**
     * @notice Note that this contract is intended to be cloned. All clones will share the same values for
     * the constant and immutable fields, but have their own values for the other fields.
     */

    /**
     * @notice The deuro price per unit of the collateral below which challenges succeed, (36 - collateral.decimals) decimals
     */
    uint256 public price;

    /**
     * @notice How much has been minted in total. This variable is only used in the parent position.
     */
    uint256 private totalMinted;

    uint256 public immutable limit;

    /**
     * @notice Amount of the collateral that is currently under a challenge.
     * Used to figure out whether there are pending challenges.
     */
    uint256 public challengedAmount;

    /**
     * @notice The price at which the challenge was initiated.
     */
    uint256 private challengedPrice;

    /**
     * @notice Challenge period in seconds.
     */
    uint40 public immutable challengePeriod;

    /**
     * @notice Timestamp when minting can start and the position is no longer denied.
     */
    uint40 public immutable start;

    /**
     * @notice End of the latest cooldown. If this is in the future, minting is suspended.
     */
    uint40 public cooldown;

    /**
     * @notice Timestamp of the expiration of the position. After expiration, challenges cannot be averted
     * any more. This is also the basis for fee calculations.
     */
    uint40 public expiration;

    bool private closed;

    /**
     * @notice The original position to help identify clones.
     */
    address public immutable original;

    /**
     * @notice Pointer to the minting hub.
     */
    address public immutable hub;

    /**
     * @notice The Eurocoin contract.
     */
    IDecentralizedEURO public immutable deuro;

    /**
     * @notice The collateral token.
     */
    IERC20 public immutable override collateral;

    /**
     * @notice Minimum acceptable collateral amount to prevent dust.
     */
    uint256 public immutable override minimumCollateral;

    /**
     * @notice The interest in parts per million per year that is deducted when minting dEURO.
     */
    uint24 public immutable riskPremiumPPM;

    /**
     * @notice The locked-in rate (including riskPremiumPPM) for this position.
     */
    uint24 public fixedAnnualRatePPM;

    /**
     * @notice The reserve contribution in parts per million of the minted amount.
     */
    uint24 public immutable reserveContribution;

    /**
     * @notice The total principal borrowed.
     */
    uint256 public principal;

    /**
     * @notice The total outstanding interest.
     */
    uint256 public interest;

    /**
     * @notice The timestamp of the last interest accrual.
     */
    uint40 public lastAccrual;

    event MintingUpdate(uint256 collateral, uint256 price, uint256 principal);
    event PositionDenied(address indexed sender, string message); // emitted if closed by governance

    error InsufficientCollateral(uint256 needed, uint256 available);
    error TooLate();
    error RepaidTooMuch(uint256 excess);
    error LimitExceeded(uint256 tried, uint256 available);
    error ChallengeTooSmall();
    error Expired(uint40 time, uint40 expiration);
    error Alive();
    error Closed();
    error Hot();
    error Challenged();
    error NotHub();
    error NotOriginal();
    error InvalidExpiration();
    error AlreadyInitialized();
    error PriceTooHigh(uint256 newPrice, uint256 maxPrice);

    modifier alive() {
        if (block.timestamp >= expiration) revert Expired(uint40(block.timestamp), expiration);
        _;
    }

    // requires that the position has always been backed by a minimal amount of collateral
    modifier backed() {
        if (isClosed()) revert Closed();
        _;
    }

    modifier expired() {
        if (block.timestamp < expiration) revert Alive();
        _;
    }

    modifier noCooldown() {
        if (block.timestamp <= cooldown) revert Hot();
        _;
    }

    modifier noChallenge() {
        if (challengedAmount > 0) revert Challenged();
        _;
    }

    modifier onlyHub() {
        if (msg.sender != address(hub)) revert NotHub();
        _;
    }

    modifier ownerOrRoller() {
        if (msg.sender != address(IMintingHub(hub).ROLLER())) _checkOwner();
        _;
    }

    /**
     * @dev See MintingHub.openPosition
     *
     * @param _riskPremiumPPM ppm of minted amount that is added to the applicable minting fee as a risk premium
     */
    constructor(
        address _owner,
        address _hub,
        address _deuro,
        address _collateral,
        uint256 _minCollateral,
        uint256 _initialLimit,
        uint40 _initPeriod,
        uint40 _duration,
        uint40 _challengePeriod,
        uint24 _riskPremiumPPM,
        uint256 _liqPrice,
        uint24 _reservePPM
    ) Ownable(_owner) {
        original = address(this);
        hub = _hub;
        deuro = IDecentralizedEURO(_deuro);
        collateral = IERC20(_collateral);
        riskPremiumPPM = _riskPremiumPPM;
        reserveContribution = _reservePPM;
        minimumCollateral = _minCollateral;
        challengePeriod = _challengePeriod;
        start = uint40(block.timestamp) + _initPeriod; // at least three days time to deny the position
        cooldown = start;
        expiration = start + _duration;
        limit = _initialLimit;
        _setPrice(_liqPrice, _initialLimit);
        _fixRateToLeadrate(_riskPremiumPPM);
    }

    /**
     * Initialization method for clones.
     * Can only be called once. Should be called immediately after creating the clone.
     */
    function initialize(address parent, uint40 _expiration) external onlyHub {
        if (expiration != 0) revert AlreadyInitialized();
        if (_expiration < block.timestamp || _expiration > Position(original).expiration()) revert InvalidExpiration(); // expiration must not be later than original
        expiration = _expiration;
        price = Position(parent).price();
        _fixRateToLeadrate(Position(parent).riskPremiumPPM());
        _transferOwnership(hub);
    }

    /**
     * Cloning a position is only allowed if the position is not challenged, not expired and not in cooldown.
     */
    function assertCloneable() external noChallenge noCooldown alive backed {}

    /**
     * Notify the original that some amount has been minted.
     */
    function notifyMint(uint256 mint_) external {
        if (deuro.getPositionParent(msg.sender) != hub) revert NotHub();
        totalMinted += mint_;
    }

    function notifyRepaid(uint256 repaid_) external {
        if (deuro.getPositionParent(msg.sender) != hub) revert NotHub();
        totalMinted -= repaid_;
    }

    /**
     * Should only be called on the original position.
     * Better use 'availableForMinting'.
     */
    function availableForClones() external view returns (uint256) {
        // reserve capacity for the original to the extent the owner provided collateral
        uint256 potential = (_collateralBalance() * price) / ONE_DEC18;
        uint256 unusedPotential = principal > potential ? 0 : potential - principal;
        if (totalMinted + unusedPotential >= limit) {
            return 0;
        } else {
            return limit - totalMinted - unusedPotential;
        }
    }

    /**
     * The amount available for minting in this position family.
     *
     * Does not check if positions are challenged, closed, or under cooldown.
     */
    function availableForMinting() public view returns (uint256) {
        if (address(this) == original) {
            return limit - totalMinted;
        } else {
            return Position(original).availableForClones();
        }
    }

    /**
     * @notice Qualified pool share holders can call this method to immediately expire a freshly proposed position.
     */
    function deny(address[] calldata helpers, string calldata message) external {
        if (block.timestamp >= start) revert TooLate();
        IReserve(deuro.reserve()).checkQualified(msg.sender, helpers);
        _close();
        emit PositionDenied(msg.sender, message);
    }

    /**
     * Closes the position by putting it into eternal cooldown.
     * This allows the users to still withdraw the collateral that is left, but never to mint again.
     */
    function _close() internal {
        closed = true;
    }

    function isClosed() public view returns (bool) {
        return closed;
    }

    /**
     * @notice This is how much the minter can actually use when minting deuro, with the rest being assigned
     * to the minter reserve.
     */
    function getUsableMint(uint256 mintAmount) public view returns (uint256) {
        return (mintAmount * (1000_000 - reserveContribution)) / 1000_000;
    }

    /**
     * Returns the corresponding mint amount (disregarding the limit).
     */
    function getMintAmount(uint256 usableMint) external view returns (uint256) {
        return _ceilDivPPM(usableMint, reserveContribution);
    }

    /**
     * @notice "All in one" function to adjust the principal, the collateral amount,
     * and the price in one transaction.
     */
    function adjust(uint256 newPrincipal, uint256 newCollateral, uint256 newPrice) external onlyOwner {
        uint256 colbal = _collateralBalance();
        if (newCollateral > colbal) {
            collateral.transferFrom(msg.sender, address(this), newCollateral - colbal);
        }
        // Must be called after collateral deposit, but before withdrawal
        if (newPrincipal < principal) {
            uint256 debt = principal + _accrueInterest();
            _payDownDebt(debt - newPrincipal);
        }
        if (newCollateral < colbal) {
            _withdrawCollateral(msg.sender, colbal - newCollateral);
        }
        // Must be called after collateral withdrawal
        if (newPrincipal > principal) {
            _mint(msg.sender, newPrincipal - principal, newCollateral);
        }
        if (newPrice != price) {
            _adjustPrice(newPrice);
        }
        emit MintingUpdate(newCollateral, newPrice, newPrincipal);
    }

    /**
     * @notice Allows the position owner to adjust the liquidation price as long as there is no pending challenge.
     * Lowering the liquidation price can be done with immediate effect, given that there is enough collateral.
     * Increasing the liquidation price triggers a cooldown period of 3 days, during which minting is suspended.
     */
    function adjustPrice(uint256 newPrice) public onlyOwner {
        _adjustPrice(newPrice);
        emit MintingUpdate(_collateralBalance(), price, principal);
    }

    function _adjustPrice(uint256 newPrice) internal noChallenge alive backed noCooldown {
        if (newPrice > price) {
            _restrictMinting(3 days);
        } else {
            _checkCollateral(_collateralBalance(), newPrice);
        }
        _setPrice(newPrice, principal + availableForMinting());
    }

    function _setPrice(uint256 newPrice, uint256 bounds) internal {
        uint256 colBalance = _collateralBalance();
        if (block.timestamp >= start && newPrice > 2 * price) {
            revert PriceTooHigh(newPrice, 2 * price);
        }
        if (newPrice * colBalance > bounds * ONE_DEC18) {
            revert PriceTooHigh(newPrice, (bounds * ONE_DEC18) / colBalance);
        }
        price = newPrice;
    }

    function _collateralBalance() internal view returns (uint256) {
        return IERC20(collateral).balanceOf(address(this));
    }

    /**
     * @notice Mint deuro as long as there is no open challenge, the position is not subject to a cooldown,
     * and there is sufficient collateral.
     */
    function mint(address target, uint256 amount) public ownerOrRoller {
        uint256 collateralBalance = _collateralBalance();
        _mint(target, amount, collateralBalance);
        emit MintingUpdate(collateralBalance, price, principal);
    }

    /**
     * @notice Returns the virtual price of the collateral in dEURO.
     */
    function virtualPrice() public view returns (uint256) {
        return _virtualPrice(_collateralBalance(), price);
    }

    /**
     * @notice Computes the virtual price of the collateral in dEURO, which is the minimum collateral
     * price required to cover the entire debt with interest overcollateralization, lower bounded by the floor price. 
     * Returns the challenged price if a challenge is active.
     * @param colBalance The collateral balance of the position.
     * @param floorPrice The minimum price of the collateral in dEURO.
     */
    function _virtualPrice(uint256 colBalance, uint256 floorPrice) internal view returns (uint256) {
        if (challengedAmount > 0) return challengedPrice;
        if (colBalance == 0) return floorPrice;
        
        uint256 virtPrice = (_getCollateralRequirement() * ONE_DEC18) / colBalance;
        return virtPrice < floorPrice ? floorPrice: virtPrice;
    }

    /**
     * @notice Fixes the annual rate to the current leadrate plus the risk premium.
     * This re-prices the entire position based on the current leadrate.
     */
    function _fixRateToLeadrate(uint24 _riskPremiumPPM) internal {
        fixedAnnualRatePPM = IMintingHub(hub).RATE().currentRatePPM() + _riskPremiumPPM;
    }

    /**
     * @notice Accrues interest on the principal amount since the last accrual time.
     * @return newInterest The total outstanding interest to be paid.
     */
    function _accrueInterest() internal returns (uint256 newInterest) {
        newInterest = _calculateInterest();

        if (newInterest > interest) {
            interest = newInterest;
        }

        lastAccrual = uint40(block.timestamp);
    }

    /**
     * @notice Computes the total outstanding interest, including newly accrued interest.
     * @dev This function calculates interest accumulated since the last accrual based on
     * the principal amount, the annual interest rate, and the elapsed time.
     * The newly accrued interest is added to the current outstanding interest.
     * @return newInterest The total outstanding interest, including newly accrued interest.
     */
    function _calculateInterest() internal view returns (uint256 newInterest) {
        uint256 timestamp = block.timestamp;
        newInterest = interest;

        if (timestamp > lastAccrual && principal > 0) {
            uint256 delta = timestamp - lastAccrual;
            newInterest += (principal * fixedAnnualRatePPM * delta) / (365 days * 1_000_000);
        }

        return newInterest;
    }

    /**
     * @notice Calculates the current debt (principal + accrued interest)
     * @return Total debt without interest overcollateralization
     */
    function _getDebt() internal view returns (uint256) {
        return principal + _calculateInterest();
    }

    /**
     * @notice Calculates total debt accounting for interest overcollateralization
     * @return Total debt including overcollateralized interest
     */
    function _getCollateralRequirement() internal view returns (uint256) {
        return principal + _ceilDivPPM(_calculateInterest(), reserveContribution);
    }

    /**
     * @notice Public function to calculate current debt
     * @return The total current debt (principal + current accrued interest)
     */
    function getDebt() public view returns (uint256) {
        return _getDebt();
    }
    
    /**
     * @notice Public function to calculate current debt with overcollateralized interest
     * @return The total debt including overcollateralized interest
     */
    function getCollateralRequirement() public view returns (uint256) {
        return _getCollateralRequirement();
    }

    /**
     * @notice Public function to get the current outstanding interest
     */
    function getInterest() public view returns (uint256) {
        return _calculateInterest();
    }

    function _mint(address target, uint256 amount, uint256 collateral_) internal noChallenge noCooldown alive backed {
        if (amount > availableForMinting()) revert LimitExceeded(amount, availableForMinting());

        _accrueInterest(); // accrue interest
        _fixRateToLeadrate(riskPremiumPPM); // sync interest rate with leadrate

        Position(original).notifyMint(amount);
        deuro.mintWithReserve(target, amount, reserveContribution);

        principal += amount;
        _checkCollateral(collateral_, price);
    }

    function _restrictMinting(uint40 period) internal {
        uint40 horizon = uint40(block.timestamp) + period;
        if (horizon > cooldown) {
            cooldown = horizon;
        }
    }

    /**
     * @notice Repays a specified amount of debt from `msg.sender`, prioritizing accrued interest first and then principal.
     * @dev This method integrates the logic of paying accrued interest before principal, as introduced in the continuous
     *      interest accrual model. Any interest repaid is collected as profit, and principal repayment uses `burnFromWithReserve`.
     *
     *      Unlike previous implementations, this function delegates the actual repayment steps to `_payDownDebt`, ensuring
     *      a clean separation of logic. As a result:
     *      - Any surplus `amount` beyond what is needed to pay all outstanding interest and principal is never withdrawn
     *        from `msg.sender`’s account (no leftover handling required).
     *      - The function can be called while there are challenges, though in that scenario, collateral withdrawals remain
     *        blocked until all challenges are resolved.
     *
     *      To fully close the position (bring `debt` to 0), the amount required generally follows the formula:
     *      `debt = principal + interest`. Under normal conditions, this simplifies to:
     *      `amount = (principal * (1000000 - reservePPM)) / 1000000 + interest`.
     *
     *      For example, if `principal` is 40, `interest` is 10, and `reservePPM` is 200000, repaying 42 dEURO
     *      is required to fully close the position.
     *
     * @param amount The maximum amount of dEURO that `msg.sender` is willing to repay.
     * @return used  The actual amount of dEURO used for interest and principal repayment.
     *
     * Emits a {MintingUpdate} event.
     */
    function repay(uint256 amount) public returns (uint256) {
        uint256 used = _payDownDebt(amount);
        emit MintingUpdate(_collateralBalance(), price, principal);
        return used;
    }

    function repayFull() external returns (uint256) {
        return repay(principal + _accrueInterest());
    }

    /**
     * @notice Updates oustanding principal and notifies the original position that a portion of the total
     * minted has been repaid.
     */
    function _notifyRepaid(uint256 amount) internal {
        if (amount > principal) revert RepaidTooMuch(amount - principal);
        Position(original).notifyRepaid(amount);
        principal -= amount;
    }

    /**
     * @notice Updates outstanding interest and notifies the minting hub gateway that interest has been paid.
     */
    function _notifyInterestPaid(uint256 amount) internal {
        if (amount > interest) revert RepaidTooMuch(amount - interest);
        if (IERC165(hub).supportsInterface(type(IMintingHubGateway).interfaceId)) {
            IMintingHubGateway(hub).notifyInterestPaid(amount);
        }
        interest -= amount;
    }

    /**
     * @notice Forcefully sells some of the collateral after the position has expired, using the given buyer as the source of proceeds.
     * @dev
     * - Can only be called by the minting hub once the position is expired.
     * - Requires that there are no open challenges, ensuring that a forced sale is not used to circumvent the challenge process.
     * - The proceeds from the sale are first used to repay any accrued interest (treated as profit, collected via `collectProfits`),
     *   and then the principal (via `burnFromWithReserve`). This ensures correct accounting, where interest is always realized as profit before principal is returned.
     * - If all debt is fully repaid and there are surplus proceeds, these are transferred to the position owner.
     * - If there is a shortfall (not enough proceeds to fully repay the debt) and no remaining collateral, the system covers the loss.
     *
     * Do not allow a forced sale as long as there is an open challenge. Otherwise, a forced sale by the owner
     * himself could remove any incentive to launch challenges shortly before the expiration. (CS-ZCHF2-001)
     *
     * @param buyer         The address buying the collateral. This address provides `proceeds` in dEURO to repay the outstanding debt.
     * @param colAmount     The amount of collateral to be forcibly sold and transferred to the `buyer`.
     * @param proceeds      The amount of dEURO proceeds provided by the `buyer` to repay the outstanding debt.
     *
     * Emits a {MintingUpdate} event indicating the updated collateral balance, price, and debt after the forced sale.
     */
    function forceSale(address buyer, uint256 colAmount, uint256 proceeds) external onlyHub expired noChallenge {
        uint256 debt = principal + _accrueInterest();
        uint256 remainingCollateral = _sendCollateral(buyer, colAmount); // Send collateral to buyer

        // No debt, everything goes to owner if proceeds > 0
        if (debt == 0) {
            if (proceeds > 0) {
                deuro.transferFrom(buyer, owner(), proceeds);
            }
            emit MintingUpdate(_collateralBalance(), price, principal);
            return;
        }

        // Note: A postcondition of _repayPrincipalNet is `principal + interest > 0 => proceeds == 0` (see assert below).
        proceeds = _repayInterest(buyer, proceeds);
        proceeds = _repayPrincipalNet(buyer, proceeds);

        // If remaining collateral is 0 and `principal + interest` > 0, cover the shortfall with the system.
        if (remainingCollateral == 0 && principal + interest > 0) {
            assert(proceeds == 0);
            deuro.coverLoss(address(this), principal + interest);
            if (interest > 0) {
                deuro.collectProfits(address(this), interest);
                _notifyInterestPaid(interest);
            }
            deuro.burnWithoutReserve(principal, reserveContribution);
            _notifyRepaid(principal);
        } else if (proceeds > 0) {
            // All debt paid, leftover proceeds is profit for owner
            deuro.transferFrom(buyer, owner(), proceeds);
        }

        emit MintingUpdate(_collateralBalance(), price, principal);
    }

    /**
     * @notice Withdraw any ERC20 token that might have ended up on this address.
     * Withdrawing collateral is subject to the same restrictions as withdrawCollateral(...).
     */
    function withdraw(address token, address target, uint256 amount) external onlyOwner {
        if (token == address(collateral)) {
            withdrawCollateral(target, amount);
        } else {
            uint256 balance = _collateralBalance();
            IERC20(token).transfer(target, amount);
            require(balance == _collateralBalance()); // guard against double-entry-point tokens
        }
    }

    /**
     * @notice Withdraw collateral from the position up to the extent that it is still well collateralized afterwards.
     * Not possible as long as there is an open challenge or the contract is subject to a cooldown.
     *
     * Withdrawing collateral below the minimum collateral amount formally closes the position.
     */
    function withdrawCollateral(address target, uint256 amount) public ownerOrRoller {
        uint256 balance = _withdrawCollateral(target, amount);
        emit MintingUpdate(balance, price, principal);
    }

    function _withdrawCollateral(address target, uint256 amount) internal noCooldown noChallenge returns (uint256) {
        uint256 balance = _sendCollateral(target, amount);
        _checkCollateral(balance, price);
        return balance;
    }

    /**
     * @notice Transfer the challenged collateral to the bidder. Only callable by minting hub.
     */
    function transferChallengedCollateral(address target, uint256 amount) external onlyHub {
        uint256 newBalance = _sendCollateral(target, amount);
        emit MintingUpdate(newBalance, price, principal);
    }

    function _sendCollateral(address target, uint256 amount) internal returns (uint256) {
        // Some weird tokens fail when trying to transfer 0 amounts
        if (amount > 0) {
            IERC20(collateral).transfer(target, amount);
        }
        uint256 balance = _collateralBalance();
        if (balance < minimumCollateral) {
            _close();
        }
        return balance;
    }

    /**
     * @notice This invariant must always hold and must always be checked when any of the three
     * variables change in an adverse way. Ensures that the position overcollateralizes interest
     * by the same percentage as the reserve contribution.
     */
    function _checkCollateral(uint256 collateralReserve, uint256 atPrice) internal view {
        uint256 relevantCollateral = collateralReserve < minimumCollateral ? 0 : collateralReserve;
        uint256 collateralRequirement = _getCollateralRequirement();
        
        if (relevantCollateral * atPrice < collateralRequirement * ONE_DEC18) {
            revert InsufficientCollateral(relevantCollateral * atPrice, collateralRequirement * ONE_DEC18);
        }
    }

    /**
     * @notice Repays a specified amount of debt from `msg.sender`, prioritizing accrued interest first and then principal.
     * @return The actual amount of dEURO used for interest and principal repayment.
     */
    function _payDownDebt(uint256 amount) internal returns (uint256) {
        _accrueInterest();
        if (amount == 0) return 0;

        uint256 remaining = amount;
        remaining = _repayInterest(msg.sender, remaining); // Repay interest
        remaining = _repayPrincipal(msg.sender, remaining); // Repay principal

        return amount - remaining;
    }

    /**
     * @notice Repays a specified amount of interest from `msg.sender`.
     * @dev Assumes that _accrueInterest has been called before this function.
     * @return `amount` remaining after interest repayment.
     */
    function _repayInterest(address payer, uint256 amount) internal returns (uint256) {
        uint256 repayment = (interest > amount) ? amount : interest;
        if (repayment > 0) {
            deuro.collectProfits(payer, repayment);
            _notifyInterestPaid(repayment);
            return amount - repayment;
        }
        return amount;
    }

    /**
     * @notice Repays a specified amount of principal from `msg.sender`.
     * @param payer The address of the entity repaying the debt.
     * @param amount The repayment amount, including the reserve portion.
     * @return amount remaining after principal repayment
     */
    function _repayPrincipal(address payer, uint256 amount) internal returns (uint256) {
        uint256 repayment = (principal > amount) ? amount : principal;
        if (repayment > 0) {
            uint256 returnedReserve = deuro.burnFromWithReserve(payer, repayment, reserveContribution);
            _notifyRepaid(repayment);
            return amount - (repayment - returnedReserve);
        }
        return amount;
    }

    /**
     * @notice Repays principal from `payer` using the net repayment amount (excluding reserves).
     * To repay an exact amount including reserves, use `_repayPrincipal(address payer, uint256 amount)`.
     *
     * @param payer The address of the entity repaying the debt.
     * @param amount The repayment amount, excluding the reserve portion, i.e. the net amount.
     * @return amount remaining after principal repayment.
     */
    function _repayPrincipalNet(address payer, uint256 amount) internal returns (uint256) {
        uint256 availableReserve = deuro.calculateAssignedReserve(principal, reserveContribution);
        uint256 maxRepayment = principal - availableReserve;
        uint256 repayment = amount > maxRepayment ? maxRepayment : amount;
        if (repayment > 0) {
            uint256 freedAmount = deuro.calculateFreedAmount(repayment, reserveContribution);
            uint256 returnedReserve = deuro.burnFromWithReserve(payer, freedAmount, reserveContribution);
            assert(returnedReserve == freedAmount - repayment);
            _notifyRepaid(freedAmount);
            return amount - repayment;
        }
        return amount;
    }

    /**
     * @notice Returns the liquidation price and the durations for phase1 and phase2 of the challenge.
     * Both phases are usually of equal duration, but near expiration, phase one is adjusted such that
     * it cannot last beyond the expiration date of the position.
     */
    function challengeData() external view returns (uint256 liqPrice, uint40 phase) {
        return (_virtualPrice(_collateralBalance(), price), challengePeriod);
    }

    function notifyChallengeStarted(uint256 size, uint256 _price) external onlyHub alive {
        // Require minimum size. Collateral balance can be below minimum if it was partially challenged before.
        if (size < minimumCollateral && size < _collateralBalance()) revert ChallengeTooSmall();
        if (size == 0) revert ChallengeTooSmall();

        if (challengedAmount == 0) challengedPrice = _price;
        challengedAmount += size;
    }

    /**
     * @param size amount of collateral challenged (dec18)
     */
    function notifyChallengeAverted(uint256 size) external onlyHub {
        challengedAmount -= size;

        // Don't allow minter to close the position immediately so challenge can be repeated before
        // the owner has a chance to mint more on an undercollateralized position
        _restrictMinting(1 days);
    }

    /**
     * @notice Notifies the position that a challenge was successful.
     * Everything else is assumed to be handled by the hub.
     *
     * @param _size amount of the collateral bid for
     * @return (position owner, effective challenge size in deuro, amount of principal to repay, amount of interest to pay, reserve ppm)
     */
    function notifyChallengeSucceeded(
        uint256 _size
    ) external onlyHub returns (address, uint256, uint256, uint256, uint32) {
        _accrueInterest();

        challengedAmount -= _size;
        uint256 colBal = _collateralBalance();
        if (colBal < _size) {
            _size = colBal;
        }

        // Determine how much of the debt must be repaid based on challenged collateral
        uint256 interestToPay = (colBal == 0) ? 0 : (interest * _size) / colBal;
        uint256 principalToPay = (colBal == 0) ? 0 : (principal * _size) / colBal;
        _notifyInterestPaid(interestToPay);
        _notifyRepaid(principalToPay);

        // Give time for additional challenges before the owner can mint again.
        _restrictMinting(3 days);

        return (owner(), _size, principalToPay, interestToPay, reserveContribution);
    }
}

// ============================================================
// FILE: contracts/MintingHubV2/PositionFactory.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Position} from "./Position.sol";
import {IDecentralizedEURO} from "../interface/IDecentralizedEURO.sol";

contract PositionFactory {
    /**
     * Create a completely new position in a newly deployed contract.
     * Must be called through the minting hub to be recognized as a valid position.
     */
    function createNewPosition(
        address _owner,
        address _deuro,
        address _collateral,
        uint256 _minCollateral,
        uint256 _initialLimit,
        uint40 _initPeriod,
        uint40 _duration,
        uint40 _challengePeriod,
        uint24 _riskPremiumPPM,
        uint256 _liqPrice,
        uint24 _reserve
    ) external returns (address) {
        return
            address(
                new Position(
                    _owner,
                    msg.sender,
                    _deuro,
                    _collateral,
                    _minCollateral,
                    _initialLimit,
                    _initPeriod,
                    _duration,
                    _challengePeriod,
                    _riskPremiumPPM,
                    _liqPrice,
                    _reserve
                )
            );
    }

    /**
     * @notice Clone an existing position. This can be a clone of another clone,
     * or an original position.
     * @param _parent address of the position we want to clone
     * @return address of the newly created clone position
     */
    function clonePosition(address _parent) external returns (address) {
        Position parent = Position(_parent);
        parent.assertCloneable();
        Position clone = Position(_createClone(parent.original()));
        return address(clone);
    }

    // github.com/optionality/clone-factory/blob/32782f82dfc5a00d103a7e61a17a5dedbd1e8e9d/contracts/CloneFactory.sol
    function _createClone(address target) internal returns (address result) {
        bytes20 targetBytes = bytes20(target);
        assembly {
            let clone := mload(0x40)
            mstore(clone, 0x3d602d80600a3d3981f3363d3d373d3d3d363d73000000000000000000000000)
            mstore(add(clone, 0x14), targetBytes)
            mstore(add(clone, 0x28), 0x5af43d82803e903d91602b57fd5bf30000000000000000000000000000000000)
            result := create(0, clone, 0x37)
        }
        require(result != address(0), "ERC1167: create failed");
    }
}

// ============================================================
// FILE: contracts/MintingHubV2/PositionRoller.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IDecentralizedEURO} from "../interface/IDecentralizedEURO.sol";
import {IERC165} from "@openzeppelin/contracts/utils/introspection/IERC165.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IMintingHubGateway} from "../gateway/interface/IMintingHubGateway.sol";
import {IMintingHub} from "./interface/IMintingHub.sol";
import {IPosition} from "./interface/IPosition.sol";
import {IReserve} from "../interface/IReserve.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title PositionRoller
 *
 * Helper to roll over a debt from an old position to a new one.
 * Both positions should have the same collateral. Otherwise, it does not make much sense.
 */
contract PositionRoller {
    IDecentralizedEURO private deuro;

    error NotOwner(address pos);
    error NotPosition(address pos);
    error Log(uint256, uint256, uint256);

    event Roll(address source, uint256 collWithdraw, uint256 repay, address target, uint256 collDeposit, uint256 mint);

    constructor(address deuro_) {
        deuro = IDecentralizedEURO(deuro_);
    }

    /**
     * Convenience method to roll an old position into a new one.
     *
     * Pre-condition: an allowance for the roller to spend the collateral asset on behalf of the caller,
     * i.e., one should set collateral.approve(roller, collateral.balanceOf(sourcePosition)).
     *
     * The following is assumed:
     * - If the limit of the target position permits, the user wants to roll everything.
     * - The user does not want to add additional collateral, but excess collateral is returned.
     * - If not enough can be minted in the new position, it is acceptable for the roller to use dEURO from the msg.sender.
     */
    function rollFully(IPosition source, IPosition target) external {
        rollFullyWithExpiration(source, target, target.expiration());
    }

    /**
     * Like rollFully, but with a custom expiration date for the new position.
     */
    function rollFullyWithExpiration(IPosition source, IPosition target, uint40 expiration) public {
        require(source.collateral() == target.collateral());
        uint256 principal = source.principal();
        uint256 interest = source.getInterest();
        uint256 usableMint = source.getUsableMint(principal) + interest; // Roll interest into principal
        uint256 mintAmount = target.getMintAmount(usableMint);
        uint256 collateralToWithdraw = IERC20(source.collateral()).balanceOf(address(source));
        uint256 targetPrice = target.price();
        uint256 depositAmount = (mintAmount * 10 ** 18 + targetPrice - 1) / targetPrice; // round up
        if (depositAmount > collateralToWithdraw) {
            // If we need more collateral than available from the old position, we opt for taking
            // the missing funds from the caller instead of requiring additional collateral.
            depositAmount = collateralToWithdraw;
            mintAmount = (depositAmount * target.price()) / 10 ** 18; // round down, rest will be taken from caller
        }

        roll(source, principal + interest, collateralToWithdraw, target, mintAmount, depositAmount, expiration);
    }

    /**
     * Rolls the source position into the target position using a flash loan.
     * Both the source and the target position must recognize this roller.
     * It is the responsibility of the caller to ensure that both positions are valid contracts.
     *
     * @param source The source position, must be owned by the msg.sender.
     * @param repay The amount of principal to repay from the source position using a flash loan, freeing up some or all collateral .
     * @param collWithdraw Collateral to move from the source position to the msg.sender.
     * @param target The target position. If not owned by msg.sender or if it does not have the desired expiration,
     *               it is cloned to create a position owned by the msg.sender.
     * @param mint The amount to be minted from the target position using collateral from msg.sender.
     * @param collDeposit The amount of collateral to be sent from msg.sender to the target position.
     * @param expiration The desired expiration date for the target position.
     */
    function roll(
        IPosition source,
        uint256 repay,
        uint256 collWithdraw,
        IPosition target,
        uint256 mint,
        uint256 collDeposit,
        uint40 expiration
    ) public valid(source) valid(target) own(source) {
        deuro.mint(address(this), repay); // take a flash loan
        uint256 used = source.repay(repay);
        source.withdrawCollateral(msg.sender, collWithdraw);
        if (mint > 0) {
            IERC20 targetCollateral = IERC20(target.collateral());
            if (Ownable(address(target)).owner() != msg.sender || expiration != target.expiration()) {
                targetCollateral.transferFrom(msg.sender, address(this), collDeposit); // get the new collateral
                targetCollateral.approve(target.hub(), collDeposit); // approve the new collateral and clone:
                target = _cloneTargetPosition(target, source, collDeposit, mint, expiration);
            } else {
                // We can roll into the provided existing position.
                // We do not verify whether the target position was created by the known minting hub in order
                // to allow positions to be rolled into future versions of the minting hub.
                targetCollateral.transferFrom(msg.sender, address(target), collDeposit);
                target.mint(msg.sender, mint);
            }
        }

        // Transfer remaining flash loan to caller for repayment
        if (repay > used) {
            deuro.transfer(msg.sender, repay - used);
        }

        deuro.burnFrom(msg.sender, repay); // repay the flash loan
        emit Roll(address(source), collWithdraw, repay, address(target), collDeposit, mint);
    }

    /**
     * Clones the target position and mints the specified amount using the given collateral.
     */
    function _cloneTargetPosition (
        IPosition target,
        IPosition source,
        uint256 collDeposit,
        uint256 mint,
        uint40 expiration
    ) internal returns (IPosition) {
        if (IERC165(target.hub()).supportsInterface(type(IMintingHubGateway).interfaceId)) {
            bytes32 frontendCode = IMintingHubGateway(target.hub()).GATEWAY().getPositionFrontendCode(
                address(source)
            );
            return IPosition(
                IMintingHubGateway(target.hub()).clone(
                    msg.sender,
                    address(target),
                    collDeposit,
                    mint,
                    expiration,
                    frontendCode // use the same frontend code
                )
            );
        } else {
            return IPosition(
                IMintingHub(target.hub()).clone(msg.sender, address(target), collDeposit, mint, expiration)
            );
        }
    }

    modifier own(IPosition pos) {
        if (Ownable(address(pos)).owner() != msg.sender) revert NotOwner(address(pos));
        _;
    }

    modifier valid(IPosition pos) {
        if (deuro.getPositionParent(address(pos)) == address(0x0)) revert NotPosition(address(pos));
        _;
    }
}

// ============================================================
// FILE: contracts/utils/MathUtil.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/**
 * @title Functions for share valuation
 */
contract MathUtil {
    uint256 internal constant ONE_DEC18 = 10 ** 18;

    // Let's go for 12 digits of precision (18-6)
    uint256 internal constant THRESH_DEC18 = 10 ** 6;

    /**
     * @notice Fifth root with Halley approximation
     *         Number 1e18 decimal
     * @param _v     number for which we calculate x**(1/5)
     * @return returns _v**(1/5)
     */
    function _fifthRoot(uint256 _v) internal pure returns (uint256) {
        // Good first guess for _v slightly above 1.0, which is often the case in the dEURO system
        uint256 x = _v > ONE_DEC18 && _v < 10 ** 19 ? (_v - ONE_DEC18) / 5 + ONE_DEC18 : ONE_DEC18;
        uint256 diff;
        do {
            uint256 powX5 = _power5(x);
            uint256 xnew = (x * (2 * powX5 + 3 * _v)) / (3 * powX5 + 2 * _v);
            diff = xnew > x ? xnew - x : x - xnew;
            x = xnew;
        } while (diff > THRESH_DEC18);
        return x;
    }

    function _mulD18(uint256 _a, uint256 _b) internal pure returns (uint256) {
        return (_a * _b) / ONE_DEC18;
    }

    function _divD18(uint256 _a, uint256 _b) internal pure returns (uint256) {
        return (_a * ONE_DEC18) / _b;
    }

    function _power5(uint256 _x) internal pure returns (uint256) {
        return _mulD18(_mulD18(_mulD18(_mulD18(_x, _x), _x), _x), _x);
    }

    function _min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a < b ? a : b;
    }
    
    /**
     * @notice Performs ceiling division for PPM calculations using formula: ceil(amount / (1 - ppm/1000000))
     * @param amount The base amount to divide
     * @param ppm Parts per million value (e.g., 200000 for 20%)
     * @return The result of ceiling division
     */
    function _ceilDivPPM(uint256 amount, uint24 ppm) internal pure returns (uint256) {
        return amount == 0 ? 0 : (amount * 1_000_000 - 1) / (1_000_000 - ppm) + 1;
    }
}
