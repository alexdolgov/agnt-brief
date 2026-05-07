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
// FILE: @openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (token/ERC20/extensions/IERC20Metadata.sol)

pragma solidity ^0.8.20;

import {IERC20} from "../IERC20.sol";

/**
 * @dev Interface for the optional metadata functions from the ERC-20 standard.
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
// FILE: @openzeppelin/contracts/utils/introspection/ERC165.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (utils/introspection/ERC165.sol)

pragma solidity ^0.8.20;

import {IERC165} from "./IERC165.sol";

/**
 * @dev Implementation of the {IERC165} interface.
 *
 * Contracts that want to implement ERC-165 should inherit from this contract and override {supportsInterface} to check
 * for the additional interface id that will be supported. For example:
 *
 * ```solidity
 * function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
 *     return interfaceId == type(MyInterface).interfaceId || super.supportsInterface(interfaceId);
 * }
 * ```
 */
abstract contract ERC165 is IERC165 {
    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual returns (bool) {
        return interfaceId == type(IERC165).interfaceId;
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
// FILE: contracts/gateway/MintingHubGateway.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import {MintingHub} from "../MintingHubV2/MintingHub.sol";
import {IFrontendGateway} from "./interface/IFrontendGateway.sol";
import {IMintingHubGateway} from "./interface/IMintingHubGateway.sol";

contract MintingHubGateway is MintingHub, IMintingHubGateway {
    IFrontendGateway public immutable GATEWAY;

    constructor(
        address _deuro,
        address _leadrate,
        address _roller,
        address _factory,
        address _gateway
    ) MintingHub(_deuro, _leadrate, _roller, _factory) {
        GATEWAY = IFrontendGateway(_gateway);
    }

    function openPosition(
        address _collateralAddress,
        uint256 _minCollateral,
        uint256 _initialCollateral,
        uint256 _mintingMaximum,
        uint40 _initPeriodSeconds,
        uint40 _expirationSeconds,
        uint40 _challengeSeconds,
        uint24 _riskPremium,
        uint256 _liqPrice,
        uint24 _reservePPM,
        bytes32 _frontendCode
    ) public returns (address) {
        address position = openPosition(
            _collateralAddress,
            _minCollateral,
            _initialCollateral,
            _mintingMaximum,
            _initPeriodSeconds,
            _expirationSeconds,
            _challengeSeconds,
            _riskPremium,
            _liqPrice,
            _reservePPM
        );
        GATEWAY.registerPosition(position, _frontendCode);
        return position;
    }

    function clone(
        address parent,
        uint256 _initialCollateral,
        uint256 _initialMint,
        uint40 expiration,
        bytes32 frontendCode
    ) public returns (address) {
        return clone(msg.sender, parent, _initialCollateral, _initialMint, expiration, frontendCode);
    }

    /**
     * @notice Clones an existing position and immediately tries to mint the specified amount using the given collateral.
     * @dev This needs an allowance to be set on the collateral contract such that the minting hub can get the collateral.
     */
    function clone(
        address owner,
        address parent,
        uint256 _initialCollateral,
        uint256 _initialMint,
        uint40 expiration,
        bytes32 frontendCode
    ) public returns (address) {
        address position = clone(owner, parent, _initialCollateral, _initialMint, expiration);
        GATEWAY.registerPosition(position, frontendCode);
        return position;
    }

    function notifyInterestPaid(uint256 amount) external validPos(msg.sender) {
        GATEWAY.updatePositionRewards(msg.sender, amount);
    }

    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IMintingHubGateway).interfaceId || super.supportsInterface(interfaceId);
    }
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
// FILE: contracts/MintingHubV2/interface/IPositionFactory.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IPositionFactory {
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
    ) external returns (address);

    function clonePosition(address _parent) external returns (address);
}

// ============================================================
// FILE: contracts/MintingHubV2/MintingHub.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {ERC165} from "@openzeppelin/contracts/utils/introspection/ERC165.sol";
import {IDecentralizedEURO} from "../interface/IDecentralizedEURO.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {ILeadrate} from "../interface/ILeadrate.sol";
import {IMintingHub} from "./interface/IMintingHub.sol";
import {IPositionFactory} from "./interface/IPositionFactory.sol";
import {IPosition} from "./interface/IPosition.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {PositionRoller} from "./PositionRoller.sol";

/**
 * @title Minting Hub
 * @notice The central hub for creating, cloning, and challenging collateralized DecentralizedEURO positions.
 * @dev Only one instance of this contract is required, whereas every new position comes with a new position
 * contract. Pending challenges are stored as structs in an array.
 */
contract MintingHub is IMintingHub, ERC165 {
    /**
     * @notice Irrevocable fee in deur when proposing a new position (but not when cloning an existing one).
     */
    uint256 public constant OPENING_FEE = 1000 * 10 ** 18;

    /**
     * @notice The challenger reward in parts per million (ppm) relative to the challenged amount, whereas
     * challenged amount is defined as the challenged collateral amount times the liquidation price.
     */
    uint256 public constant CHALLENGER_REWARD = 20000; // 2%
    uint256 public constant EXPIRED_PRICE_FACTOR = 10;

    IPositionFactory private immutable POSITION_FACTORY; // position contract to clone

    IDecentralizedEURO public immutable DEURO; // currency
    PositionRoller public immutable ROLLER; // helper to roll positions
    ILeadrate public immutable RATE; // to determine the interest rate

    Challenge[] public challenges; // list of open challenges

    /**
     * @notice Map to remember pending postponed collateral returns.
     * @dev It maps collateral => beneficiary => amount.
     */
    mapping(address collateral => mapping(address owner => uint256 amount)) public pendingReturns;

    struct Challenge {
        address challenger; // the address from which the challenge was initiated
        uint40 start; // the start of the challenge
        IPosition position; // the position that was challenged
        uint256 size; // how much collateral the challenger provided
    }

    event PositionOpened(address indexed owner, address indexed position, address original, address collateral);
    event ChallengeStarted(address indexed challenger, address indexed position, uint256 size, uint256 number);
    event ChallengeAverted(address indexed position, uint256 number, uint256 size);
    event ChallengeSucceeded(
        address indexed position,
        uint256 number,
        uint256 bid,
        uint256 acquiredCollateral,
        uint256 challengeSize
    );
    event PostponedReturn(address collateral, address indexed beneficiary, uint256 amount);
    event ForcedSale(address pos, uint256 amount, uint256 priceE36MinusDecimals);

    error UnexpectedPrice();
    error InvalidPos();
    error IncompatibleCollateral();
    error InsufficientCollateral();
    error LeaveNoDust(uint256 amount);
    error InvalidRiskPremium();
    error InvalidReservePPM();
    error InvalidCollateralDecimals();
    error ChallengeTimeTooShort();
    error InitPeriodTooShort();

    modifier validPos(address position) {
        if (DEURO.getPositionParent(position) != address(this)) revert InvalidPos();
        _;
    }

    constructor(address _deur, address _leadrate, address _roller, address _factory) {
        DEURO = IDecentralizedEURO(_deur);
        RATE = ILeadrate(_leadrate);
        POSITION_FACTORY = IPositionFactory(_factory);
        ROLLER = PositionRoller(_roller);
    }

    /**
     * @notice Open a collateralized loan position. See also https://docs.dEURO.com/positions/open .
     * @dev For a successful call, you must set an allowance for the collateral token, allowing
     * the minting hub to transfer the initial collateral amount to the newly created position and to
     * withdraw the fees.
     *
     * @param _collateralAddress  address of collateral token
     * @param _minCollateral      minimum collateral required to prevent dust amounts
     * @param _initialCollateral  amount of initial collateral to be deposited
     * @param _mintingMaximum     maximal amount of deur that can be minted by the position owner
     * @param _initPeriodSeconds  initial period in seconds
     * @param _expirationSeconds  position tenor in seconds from 'now'
     * @param _challengeSeconds   challenge period. Longer for less liquid collateral.
     * @param _riskPremium        ppm of minted amount that is added to the applicable minting fee as a risk premium
     * @param _liqPrice           Liquidation price with (36 - token decimals) decimals,
     *                            e.g. 18 decimals for an 18 dec collateral, 36 decs for a 0 dec collateral.
     * @param _reservePPM         ppm of minted amount that is locked as borrower's reserve, e.g. 20%
     * @return address            address of created position
     */
    function openPosition(
        address _collateralAddress,
        uint256 _minCollateral,
        uint256 _initialCollateral,
        uint256 _mintingMaximum,
        uint40 _initPeriodSeconds,
        uint40 _expirationSeconds,
        uint40 _challengeSeconds,
        uint24 _riskPremium,
        uint256 _liqPrice,
        uint24 _reservePPM
    ) public returns (address) {
        {
            if (_riskPremium > 1_000_000) revert InvalidRiskPremium();
            if (CHALLENGER_REWARD > _reservePPM || _reservePPM > 1_000_000) revert InvalidReservePPM();
            if (IERC20Metadata(_collateralAddress).decimals() > 24) revert InvalidCollateralDecimals(); // leaves 12 digits for price
            if (_challengeSeconds < 1 days) revert ChallengeTimeTooShort();
            if (_initPeriodSeconds < 3 days) revert InitPeriodTooShort();
            uint256 invalidAmount = IERC20(_collateralAddress).totalSupply() + 1;
            try IERC20(_collateralAddress).transfer(address(0x123), invalidAmount) {
                revert IncompatibleCollateral(); // we need a collateral that reverts on failed transfers
            } catch Error(string memory /*reason*/) {} catch Panic(uint /*errorCode*/) {} catch (
                bytes memory /*lowLevelData*/
            ) {}
            if (_initialCollateral < _minCollateral) revert InsufficientCollateral();
            // must start with at least 5000 deur worth of collateral
            if (_minCollateral * _liqPrice < 5000 ether * 10 ** 18) revert InsufficientCollateral();
        }
        IPosition pos = IPosition(
            POSITION_FACTORY.createNewPosition(
                msg.sender,
                address(DEURO),
                _collateralAddress,
                _minCollateral,
                _mintingMaximum,
                _initPeriodSeconds,
                _expirationSeconds,
                _challengeSeconds,
                _riskPremium,
                _liqPrice,
                _reservePPM
            )
        );
        DEURO.registerPosition(address(pos));
        DEURO.collectProfits(msg.sender, OPENING_FEE);
        IERC20(_collateralAddress).transferFrom(msg.sender, address(pos), _initialCollateral);

        emit PositionOpened(msg.sender, address(pos), address(pos), _collateralAddress);
        return address(pos);
    }

    function clone(
        address parent,
        uint256 _initialCollateral,
        uint256 _initialMint,
        uint40 expiration
    ) public returns (address) {
        return clone(msg.sender, parent, _initialCollateral, _initialMint, expiration);
    }

    /**
     * @notice Clones an existing position and immediately tries to mint the specified amount using the given collateral.
     * @dev This needs an allowance to be set on the collateral contract such that the minting hub can get the collateral.
     */
    function clone(
        address owner,
        address parent,
        uint256 _initialCollateral,
        uint256 _initialMint,
        uint40 expiration
    ) public validPos(parent) returns (address) {
        address pos = POSITION_FACTORY.clonePosition(parent);
        IPosition child = IPosition(pos);
        child.initialize(parent, expiration);
        DEURO.registerPosition(pos);
        IERC20 collateral = child.collateral();
        if (_initialCollateral < child.minimumCollateral()) revert InsufficientCollateral();
        collateral.transferFrom(msg.sender, pos, _initialCollateral); // collateral must still come from sender for security
        emit PositionOpened(owner, address(pos), parent, address(collateral));
        child.mint(owner, _initialMint);
        Ownable(address(child)).transferOwnership(owner);
        return address(pos);
    }

    /**
     * @notice Launch a challenge (Dutch auction) on a position
     * @param _positionAddr address of the position we want to challenge
     * @param _collateralAmount amount of the collateral we want to challenge
     * @param minimumPrice guards against the minter front-running with a price change
     * @return index of the challenge in the challenge-array
     */
    function challenge(
        address _positionAddr,
        uint256 _collateralAmount,
        uint256 minimumPrice
    ) external validPos(_positionAddr) returns (uint256) {
        IPosition position = IPosition(_positionAddr);
        // challenger should be ok if front-run by owner with a higher price
        // in case owner front-runs challenger with small price decrease to prevent challenge,
        // the challenger should set minimumPrice to market price
        uint256 liqPrice = position.virtualPrice();
        if (liqPrice < minimumPrice) revert UnexpectedPrice();
        IERC20(position.collateral()).transferFrom(msg.sender, address(this), _collateralAmount);
        uint256 pos = challenges.length;
        challenges.push(Challenge(msg.sender, uint40(block.timestamp), position, _collateralAmount));
        position.notifyChallengeStarted(_collateralAmount, liqPrice);
        emit ChallengeStarted(msg.sender, address(position), _collateralAmount, pos);
        return pos;
    }

    /**
     * @notice Post a bid in deur given an open challenge.
     *
     * @dev In case that the collateral cannot be transferred back to the challenger (i.e. because the collateral token
     * has a blacklist and the challenger is on it), it is possible to postpone the return of the collateral.
     *
     * @param _challengeNumber          index of the challenge as broadcast in the event
     * @param size                      how much of the collateral the caller wants to bid for at most
     *                                  (automatically reduced to the available amount)
     * @param postponeCollateralReturn  To postpone the return of the collateral to the challenger. Usually false.
     */
    function bid(uint32 _challengeNumber, uint256 size, bool postponeCollateralReturn) external {
        Challenge memory _challenge = challenges[_challengeNumber];
        (uint256 liqPrice, uint40 phase) = _challenge.position.challengeData();
        size = _challenge.size < size ? _challenge.size : size; // cannot bid for more than the size of the challenge

        if (block.timestamp <= _challenge.start + phase) {
            _avertChallenge(_challenge, _challengeNumber, liqPrice, size);
            emit ChallengeAverted(address(_challenge.position), _challengeNumber, size);
        } else {
            _returnChallengerCollateral(_challenge, _challengeNumber, size, postponeCollateralReturn);
            (uint256 transferredCollateral, uint256 offer) = _finishChallenge(_challenge, size);
            emit ChallengeSucceeded(address(_challenge.position), _challengeNumber, offer, transferredCollateral, size);
        }
    }

    function _finishChallenge(
        Challenge memory _challenge,
        uint256 size
    ) internal returns (uint256, uint256) {
        // Repayments depend on what was actually minted, whereas bids depend on the available collateral
        (address owner, uint256 collateral, uint256 repayment, uint256 interest, uint32 reservePPM) = _challenge
            .position
            .notifyChallengeSucceeded(size);

        // No overflow possible thanks to invariant (col * price <= limit * 10**18)
        // enforced in Position.setPrice and knowing that collateral <= col.
        uint256 offer = _calculateOffer(_challenge, collateral);

        DEURO.transferFrom(msg.sender, address(this), offer); // get money from bidder 
        uint256 reward = (offer * CHALLENGER_REWARD) / 1_000_000; 
        DEURO.transfer(_challenge.challenger, reward); // pay out the challenger reward
        uint256 fundsAvailable = offer - reward; // funds available after reward

        // Example: available funds are 90, repayment is 50, reserve 20%. Then 20%*(90-50)=16 are collected as profits
        // and the remaining 34 are sent to the position owner. If the position owner maxed out debt before the challenge
        // started and the liquidation price was 100, they would be slightly better off as they would get away with 80
        // instead of 40+36 = 76 in this example.
        if (fundsAvailable > repayment + interest) {
            // The excess amount is distributed between the system and the owner using the reserve ratio
            // At this point, we cannot rely on the liquidation price because the challenge might have been started as a
            // response to an unreasonable increase of the liquidation price, such that we have to use this heuristic
            // for excess fund distribution, which make position owners that maxed out their positions slightly better
            // off in comparison to those who did not.
            uint256 profits = (reservePPM * (fundsAvailable - repayment - interest)) / 1_000_000;
            DEURO.collectProfits(address(this), profits);
            DEURO.transfer(owner, fundsAvailable - repayment - interest - profits);
        } else if (fundsAvailable < repayment + interest) {
            DEURO.coverLoss(address(this), repayment + interest - fundsAvailable); // ensure we have enough to pay everything
        }
        DEURO.burnWithoutReserve(repayment, reservePPM); // Repay the challenged part, example: 50 deur leading to 10 deur in implicit profits
        DEURO.collectProfits(address(this), interest); // Collect interest as profits
        _challenge.position.transferChallengedCollateral(msg.sender, collateral); // transfer the collateral to the bidder
        return (collateral, offer);
    }

    function _avertChallenge(Challenge memory _challenge, uint32 number, uint256 liqPrice, uint256 size) internal {
        require(block.timestamp != _challenge.start); // do not allow to avert the challenge in the same transaction, see CS-ZCHF-037
        if (msg.sender == _challenge.challenger) {
            // allow challenger to cancel challenge without paying themselves
        } else {
            DEURO.transferFrom(msg.sender, _challenge.challenger, (size * liqPrice) / (10 ** 18));
        }

        _challenge.position.notifyChallengeAverted(size);
        _challenge.position.collateral().transfer(msg.sender, size);
        if (size < _challenge.size) {
            challenges[number].size = _challenge.size - size;
        } else {
            require(size == _challenge.size);
            delete challenges[number];
        }
    }

    /**
     * @notice Returns 'amount' of the collateral to the challenger and reduces or deletes the relevant challenge.
     */
    function _returnChallengerCollateral(
        Challenge memory _challenge,
        uint32 number,
        uint256 amount,
        bool postpone
    ) internal {
        _returnCollateral(_challenge.position.collateral(), _challenge.challenger, amount, postpone);
        if (_challenge.size == amount) {
            // bid on full amount
            delete challenges[number];
        } else {
            // bid on partial amount
            challenges[number].size -= amount;
        }
    }

    /**
     * @notice Calculates the current Dutch auction price.
     * @dev Starts at the full price at time 'start' and linearly goes to 0 as 'phase2' passes.
     */
    function _calculatePrice(uint40 start, uint40 phase2, uint256 liqPrice) internal view returns (uint256) {
        uint40 timeNow = uint40(block.timestamp);
        if (timeNow <= start) {
            return liqPrice;
        } else if (timeNow >= start + phase2) {
            return 0;
        } else {
            uint256 timeLeft = phase2 - (timeNow - start);
            return (liqPrice / phase2) * timeLeft;
        }
    }

    /**
     * @notice Calculates the offer amount for the given challenge.
     * @dev The offer is calculated as the current price times the collateral amount.
     */
    function _calculateOffer(Challenge memory _challenge, uint256 collateral) internal view returns (uint256) {
        (uint256 liqPrice, uint40 phase) = _challenge.position.challengeData();
        return (_calculatePrice(_challenge.start + phase, phase, liqPrice) * collateral) / 10 ** 18;
    }

    /**
     * @notice Get the price per unit of the collateral for the given challenge.
     * @dev The price comes with (36 - collateral.decimals()) digits, so multiplying it with the raw collateral amount
     * always yields a price with 36 digits, or 18 digits after dividing by 10**18 again.
     */
    function price(uint32 challengeNumber) public view returns (uint256) {
        Challenge memory _challenge = challenges[challengeNumber];
        if (_challenge.challenger == address(0x0)) {
            return 0;
        } else {
            (uint256 liqPrice, uint40 phase) = _challenge.position.challengeData();
            return _calculatePrice(_challenge.start + phase, phase, liqPrice);
        }
    }

    /**
     * @notice Challengers can call this method to withdraw collateral whose return was postponed.
     */
    function returnPostponedCollateral(address collateral, address target) external {
        uint256 amount = pendingReturns[collateral][msg.sender];
        delete pendingReturns[collateral][msg.sender];
        IERC20(collateral).transfer(target, amount);
    }

    function _returnCollateral(IERC20 collateral, address recipient, uint256 amount, bool postpone) internal {
        if (postpone) {
            // Postponing helps in case the challenger was blacklisted or otherwise cannot receive at the moment.
            pendingReturns[address(collateral)][recipient] += amount;
            emit PostponedReturn(address(collateral), recipient, amount);
        } else {
            collateral.transfer(recipient, amount); // return the challenger's collateral
        }
    }

    /**
     * The applicable purchase price when forcing the sale of collateral of an expired position.
     *
     * The price starts at 10x the liquidation price at the expiration time, linearly declines to
     * 1x liquidation price over the course of one challenge period, and then linearly declines
     * less steeply to 0 over the course of another challenge period.
     */
    function expiredPurchasePrice(IPosition pos) public view returns (uint256) {
        uint256 liqprice = pos.virtualPrice();
        uint256 expiration = pos.expiration();
        if (block.timestamp <= expiration) {
            return EXPIRED_PRICE_FACTOR * liqprice;
        } else {
            uint256 challengePeriod = pos.challengePeriod();
            uint256 timePassed = block.timestamp - expiration;
            if (timePassed <= challengePeriod) {
                // from 10x liquidation price to 1x in first phase
                uint256 timeLeft = challengePeriod - timePassed;
                return liqprice + (((EXPIRED_PRICE_FACTOR - 1) * liqprice * timeLeft) / challengePeriod);
            } else if (timePassed < 2 * challengePeriod) {
                // from 1x liquidation price to 0 in second phase
                uint256 timeLeft = 2 * challengePeriod - timePassed;
                return (liqprice  * timeLeft) / challengePeriod;
            } else {
                // get collateral for free after both phases passed
                return 0;
            }
        }
    }

    /**
     * Buys up to the desired amount of the collateral asset from the given expired position using
     * the applicable 'expiredPurchasePrice' at that instant.
     *
     * To prevent dust either the remaining collateral needs to be bought or collateral with a value
     * of at least OPENING_FEE (1000 dEURO) needs to remain in the position for a different buyer
     */
    function buyExpiredCollateral(IPosition pos, uint256 upToAmount) external returns (uint256) {
        uint256 max = pos.collateral().balanceOf(address(pos));
        uint256 amount = upToAmount > max ? max : upToAmount;
        uint256 forceSalePrice = expiredPurchasePrice(pos);

        uint256 costs = (forceSalePrice * amount) / 10 ** 18;

        if (max - amount > 0 && ((forceSalePrice * (max - amount)) / 10 ** 18) < OPENING_FEE) {
            revert LeaveNoDust(max - amount);
        }

        pos.forceSale(msg.sender, amount, costs);
        emit ForcedSale(address(pos), amount, forceSalePrice);
        return amount;
    }

    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view override virtual returns (bool) {
        return
            interfaceId == type(IMintingHub).interfaceId ||
            super.supportsInterface(interfaceId);
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
