// SPDX-License-Identifier: MIT

// File @openzeppelin/contracts/math/Math.sol@v3.3.0

pragma solidity >=0.6.0 <0.8.0;

/**
 * @dev Standard math utilities missing in the Solidity language.
 */
library Math {
    /**
     * @dev Returns the largest of two numbers.
     */
    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a >= b ? a : b;
    }

    /**
     * @dev Returns the smallest of two numbers.
     */
    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a < b ? a : b;
    }

    /**
     * @dev Returns the average of two numbers. The result is rounded towards
     * zero.
     */
    function average(uint256 a, uint256 b) internal pure returns (uint256) {
        // (a + b) / 2 can overflow, so we distribute
        return (a / 2) + (b / 2) + (((a % 2) + (b % 2)) / 2);
    }
}

// File @openzeppelin/contracts-upgradeable/math/SafeMathUpgradeable.sol@v3.3.0

pragma solidity >=0.6.0 <0.8.0;

/**
 * @dev Wrappers over Solidity's arithmetic operations with added overflow
 * checks.
 *
 * Arithmetic operations in Solidity wrap on overflow. This can easily result
 * in bugs, because programmers usually assume that an overflow raises an
 * error, which is the standard behavior in high level programming languages.
 * `SafeMath` restores this intuition by reverting the transaction when an
 * operation overflows.
 *
 * Using this library instead of the unchecked operations eliminates an entire
 * class of bugs, so it's recommended to use it always.
 */
library SafeMathUpgradeable {
    /**
     * @dev Returns the addition of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     *
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");

        return c;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        return sub(a, b, "SafeMath: subtraction overflow");
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        require(b <= a, errorMessage);
        uint256 c = a - b;

        return c;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     *
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
        // benefit is lost if 'b' is also tested.
        // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
        if (a == 0) {
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");

        return c;
    }

    /**
     * @dev Returns the integer division of two unsigned integers. Reverts on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        return div(a, b, "SafeMath: division by zero");
    }

    /**
     * @dev Returns the integer division of two unsigned integers. Reverts with custom message on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        require(b > 0, errorMessage);
        uint256 c = a / b;
        // assert(a == b * c + a % b); // There is no case in which this doesn't hold

        return c;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * Reverts when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        return mod(a, b, "SafeMath: modulo by zero");
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * Reverts with custom message when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        require(b != 0, errorMessage);
        return a % b;
    }
}

// File contracts/interfaces/ILnBuildBurnSystem.sol

pragma solidity >=0.6.12 <0.8.0;

interface ILnBuildBurnSystem {
    function buildFromCollateralSys(address user, uint256 amount) external;

    function buildMaxFromCollateralSys(address user) external;

    function burnFromCollateralSys(address user, uint256 amount) external;

    function burnForLiquidation(
        address user,
        address liquidator,
        uint256 amount
    ) external;
}

// File contracts/interfaces/ILnCollateralSystem.sol

pragma solidity >=0.6.12 <0.8.0;

interface ILnCollateralSystem {
    function getUserLinaCollateralBreakdown(address _user) external view returns (uint256 staked, uint256 locked);

    function IsSatisfyTargetRatio(address _user) external view returns (bool);

    function GetUserTotalCollateralInUsd(address _user) external view returns (uint256 rTotal);

    function MaxRedeemableInUsd(address _user) external view returns (uint256);

    function getFreeCollateralInUsd(address user) external view returns (uint256);

    function moveCollateral(
        address fromUser,
        address toUser,
        bytes32 currency,
        uint256 amount
    ) external;
}

// File contracts/interfaces/ILnConfig.sol

pragma solidity >=0.6.12 <0.8.0;

interface ILnConfig {
    function BUILD_RATIO() external view returns (bytes32);

    function getUint(bytes32 key) external view returns (uint);
}

// File contracts/interfaces/ILnDebtSystem.sol

pragma solidity >=0.6.12 <0.8.0;

interface ILnDebtSystem {
    function GetUserDebtBalanceInUsd(address _user) external view returns (uint256, uint256);

    function UpdateDebt(
        address _user,
        uint256 _debtProportion,
        uint256 _factor
    ) external;
}

// File contracts/interfaces/ILnPrices.sol

pragma solidity >=0.4.24;

interface ILnPrices {
    function getPrice(bytes32 currencyKey) external view returns (uint);

    function exchange(
        bytes32 sourceKey,
        uint sourceAmount,
        bytes32 destKey
    ) external view returns (uint);

    function LUSD() external view returns (bytes32);
}

// File contracts/interfaces/ILnRewardLocker.sol

pragma solidity >=0.6.12 <0.8.0;

interface ILnRewardLocker {
    function balanceOf(address user) external view returns (uint256);

    function totalLockedAmount() external view returns (uint256);

    function addReward(
        address user,
        uint256 amount,
        uint256 unlockTime
    ) external;

    function moveReward(
        address from,
        address recipient,
        uint256 amount,
        uint256[] calldata rewardEntryIds
    ) external;

    function moveRewardProRata(
        address from,
        address recipient1,
        uint256 amount1,
        address recipient2,
        uint256 amount2,
        uint256[] calldata rewardEntryIds
    ) external;
}

// File @openzeppelin/contracts-upgradeable/proxy/Initializable.sol@v3.3.0

// solhint-disable-next-line compiler-version
pragma solidity >=0.4.24 <0.8.0;

/**
 * @dev This is a base contract to aid in writing upgradeable contracts, or any kind of contract that will be deployed
 * behind a proxy. Since a proxied contract can't have a constructor, it's common to move constructor logic to an
 * external initializer function, usually called `initialize`. It then becomes necessary to protect this initializer
 * function so it can only be called once. The {initializer} modifier provided by this contract will have this effect.
 *
 * TIP: To avoid leaving the proxy in an uninitialized state, the initializer function should be called as early as
 * possible by providing the encoded function call as the `_data` argument to {UpgradeableProxy-constructor}.
 *
 * CAUTION: When used with inheritance, manual care must be taken to not invoke a parent initializer twice, or to ensure
 * that all initializers are idempotent. This is not verified automatically as constructors are by Solidity.
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
        require(_initializing || _isConstructor() || !_initialized, "Initializable: contract is already initialized");

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

    /// @dev Returns true if and only if the function is running in the constructor
    function _isConstructor() private view returns (bool) {
        // extcodesize checks the size of the code stored in an address, and
        // address returns the current address. Since the code is still not
        // deployed when running a constructor, any checks on its code size will
        // yield zero, making it an effective way to detect if a contract is
        // under construction or not.
        address self = address(this);
        uint256 cs;
        // solhint-disable-next-line no-inline-assembly
        assembly {
            cs := extcodesize(self)
        }
        return cs == 0;
    }
}

// File contracts/upgradeable/LnAdminUpgradeable.sol

pragma solidity >=0.6.12 <0.8.0;

/**
 * @title LnAdminUpgradeable
 *
 * @dev This is an upgradeable version of `LnAdmin` by replacing the constructor with
 * an initializer and reserving storage slots.
 */
contract LnAdminUpgradeable is Initializable {
    event CandidateChanged(address oldCandidate, address newCandidate);
    event AdminChanged(address oldAdmin, address newAdmin);

    address public admin;
    address public candidate;

    function __LnAdminUpgradeable_init(address _admin) public initializer {
        require(_admin != address(0), "LnAdminUpgradeable: zero address");
        admin = _admin;
        emit AdminChanged(address(0), _admin);
    }

    function setCandidate(address _candidate) external onlyAdmin {
        address old = candidate;
        candidate = _candidate;
        emit CandidateChanged(old, candidate);
    }

    function becomeAdmin() external {
        require(msg.sender == candidate, "LnAdminUpgradeable: only candidate can become admin");
        address old = admin;
        admin = candidate;
        emit AdminChanged(old, admin);
    }

    modifier onlyAdmin {
        require((msg.sender == admin), "LnAdminUpgradeable: only the contract admin can perform this action");
        _;
    }

    // Reserved storage space to allow for layout changes in the future.
    uint256[48] private __gap;
}

// File @openzeppelin/contracts/math/SafeMath.sol@v3.3.0

pragma solidity >=0.6.0 <0.8.0;

/**
 * @dev Wrappers over Solidity's arithmetic operations with added overflow
 * checks.
 *
 * Arithmetic operations in Solidity wrap on overflow. This can easily result
 * in bugs, because programmers usually assume that an overflow raises an
 * error, which is the standard behavior in high level programming languages.
 * `SafeMath` restores this intuition by reverting the transaction when an
 * operation overflows.
 *
 * Using this library instead of the unchecked operations eliminates an entire
 * class of bugs, so it's recommended to use it always.
 */
library SafeMath {
    /**
     * @dev Returns the addition of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     *
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");

        return c;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        return sub(a, b, "SafeMath: subtraction overflow");
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        require(b <= a, errorMessage);
        uint256 c = a - b;

        return c;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     *
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
        // benefit is lost if 'b' is also tested.
        // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
        if (a == 0) {
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");

        return c;
    }

    /**
     * @dev Returns the integer division of two unsigned integers. Reverts on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        return div(a, b, "SafeMath: division by zero");
    }

    /**
     * @dev Returns the integer division of two unsigned integers. Reverts with custom message on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        require(b > 0, errorMessage);
        uint256 c = a / b;
        // assert(a == b * c + a % b); // There is no case in which this doesn't hold

        return c;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * Reverts when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        return mod(a, b, "SafeMath: modulo by zero");
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * Reverts with custom message when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        require(b != 0, errorMessage);
        return a % b;
    }
}

// File contracts/SafeDecimalMath.sol

pragma solidity >=0.6.12 <0.8.0;

library SafeDecimalMath {
    using SafeMath for uint;

    uint8 public constant decimals = 18;
    uint8 public constant highPrecisionDecimals = 27;

    uint public constant UNIT = 10**uint(decimals);

    uint public constant PRECISE_UNIT = 10**uint(highPrecisionDecimals);
    uint private constant UNIT_TO_HIGH_PRECISION_CONVERSION_FACTOR = 10**uint(highPrecisionDecimals - decimals);

    function unit() external pure returns (uint) {
        return UNIT;
    }

    function preciseUnit() external pure returns (uint) {
        return PRECISE_UNIT;
    }

    function multiplyDecimal(uint x, uint y) internal pure returns (uint) {
        return x.mul(y) / UNIT;
    }

    function _multiplyDecimalRound(
        uint x,
        uint y,
        uint precisionUnit
    ) private pure returns (uint) {
        uint quotientTimesTen = x.mul(y) / (precisionUnit / 10);

        if (quotientTimesTen % 10 >= 5) {
            quotientTimesTen += 10;
        }

        return quotientTimesTen / 10;
    }

    function multiplyDecimalRoundPrecise(uint x, uint y) internal pure returns (uint) {
        return _multiplyDecimalRound(x, y, PRECISE_UNIT);
    }

    function multiplyDecimalRound(uint x, uint y) internal pure returns (uint) {
        return _multiplyDecimalRound(x, y, UNIT);
    }

    function divideDecimal(uint x, uint y) internal pure returns (uint) {
        return x.mul(UNIT).div(y);
    }

    function _divideDecimalRound(
        uint x,
        uint y,
        uint precisionUnit
    ) private pure returns (uint) {
        uint resultTimesTen = x.mul(precisionUnit * 10).div(y);

        if (resultTimesTen % 10 >= 5) {
            resultTimesTen += 10;
        }

        return resultTimesTen / 10;
    }

    function divideDecimalRound(uint x, uint y) internal pure returns (uint) {
        return _divideDecimalRound(x, y, UNIT);
    }

    function divideDecimalRoundPrecise(uint x, uint y) internal pure returns (uint) {
        return _divideDecimalRound(x, y, PRECISE_UNIT);
    }

    function decimalToPreciseDecimal(uint i) internal pure returns (uint) {
        return i.mul(UNIT_TO_HIGH_PRECISION_CONVERSION_FACTOR);
    }

    function preciseDecimalToDecimal(uint i) internal pure returns (uint) {
        uint quotientTimesTen = i / (UNIT_TO_HIGH_PRECISION_CONVERSION_FACTOR / 10);

        if (quotientTimesTen % 10 >= 5) {
            quotientTimesTen += 10;
        }

        return quotientTimesTen / 10;
    }
}

// File contracts/LnLiquidation.sol

pragma solidity ^0.7.6;

contract LnLiquidation is LnAdminUpgradeable {
    using SafeMathUpgradeable for uint256;
    using SafeDecimalMath for uint256;

    event PositionMarked(address user, address marker);
    event PositionUnmarked(address user);
    event PositionLiquidated(
        address user,
        address marker,
        address liquidator,
        uint256 debtBurnt,
        bytes32 collateralCurrency,
        uint256 collateralWithdrawnFromStaked,
        uint256 collateralWithdrawnFromLocked,
        uint256 markerReward,
        uint256 liquidatorReward
    );

    struct UndercollateralizationMark {
        address marker;
        uint64 timestamp;
    }
    struct EvalUserPositionResult {
        uint256 debtBalance;
        uint256 stakedCollateral;
        uint256 lockedCollateral;
        uint256 collateralPrice;
        uint256 collateralValue;
        uint256 collateralizationRatio;
    }
    struct FetchRatiosResult {
        uint256 issuanceRatio;
        uint256 markerRewardRatio;
        uint256 liquidatorRewardRatio;
    }
    struct LiquidationRewardCalculationResult {
        uint256 collateralWithdrawalAmount;
        uint256 markerReward;
        uint256 liquidatorReward;
        uint256 totalReward;
    }
    struct WithdrawCollateralParams {
        address user;
        address liquidator;
        uint256 collateralWithdrawalAmount;
        uint256 stakedCollateral;
        uint256 lockedCollateral;
    }
    struct DistributeRewardsParams {
        address user;
        address marker;
        address liquidator;
        uint256 markerReward;
        uint256 liquidatorReward;
        uint256 stakedCollateral;
        uint256 lockedCollateral;
    }

    ILnBuildBurnSystem public lnBuildBurnSystem;
    ILnCollateralSystem public lnCollateralSystem;
    ILnConfig public lnConfig;
    ILnDebtSystem public lnDebtSystem;
    ILnPrices public lnPrices;
    ILnRewardLocker public lnRewardLocker;

    mapping(address => UndercollateralizationMark) public undercollateralizationMarks;

    bytes32 public constant LIQUIDATION_MARKER_REWARD_KEY = "LiquidationMarkerReward";
    bytes32 public constant LIQUIDATION_LIQUIDATOR_REWARD_KEY = "LiquidationLiquidatorReward";
    bytes32 public constant LIQUIDATION_RATIO_KEY = "LiquidationRatio";
    bytes32 public constant LIQUIDATION_DELAY_KEY = "LiquidationDelay";
    bytes32 public constant BUILD_RATIO_KEY = "BuildRatio";

    function isPositionMarkedAsUndercollateralized(address user) public view returns (bool) {
        return undercollateralizationMarks[user].timestamp > 0;
    }

    function getUndercollateralizationMarkMarker(address user) public view returns (address) {
        return undercollateralizationMarks[user].marker;
    }

    function getUndercollateralizationMarkTimestamp(address user) public view returns (uint256) {
        return uint256(undercollateralizationMarks[user].timestamp);
    }

    function __LnLiquidation_init(
        ILnBuildBurnSystem _lnBuildBurnSystem,
        ILnCollateralSystem _lnCollateralSystem,
        ILnConfig _lnConfig,
        ILnDebtSystem _lnDebtSystem,
        ILnPrices _lnPrices,
        ILnRewardLocker _lnRewardLocker,
        address _admin
    ) public initializer {
        __LnAdminUpgradeable_init(_admin);

        require(address(_lnBuildBurnSystem) != address(0), "LnLiquidation: zero address");
        require(address(_lnCollateralSystem) != address(0), "LnLiquidation: zero address");
        require(address(_lnConfig) != address(0), "LnLiquidation: zero address");
        require(address(_lnDebtSystem) != address(0), "LnLiquidation: zero address");
        require(address(_lnPrices) != address(0), "LnLiquidation: zero address");
        require(address(_lnRewardLocker) != address(0), "LnLiquidation: zero address");

        lnBuildBurnSystem = _lnBuildBurnSystem;
        lnCollateralSystem = _lnCollateralSystem;
        lnConfig = _lnConfig;
        lnDebtSystem = _lnDebtSystem;
        lnPrices = _lnPrices;
        lnRewardLocker = _lnRewardLocker;
    }

    function setLnPrices(ILnPrices newLnPrices) external onlyAdmin {
        require(address(newLnPrices) != address(0), "LnLiquidation: zero address");
        lnPrices = newLnPrices;
    }

    function markPositionAsUndercollateralized(address user) external {
        require(!isPositionMarkedAsUndercollateralized(user), "LnLiquidation: already marked");

        EvalUserPositionResult memory evalResult = evalUserPostion(user);
        uint256 liquidationRatio = lnConfig.getUint(LIQUIDATION_RATIO_KEY);
        require(evalResult.collateralizationRatio > liquidationRatio, "LnLiquidation: not undercollateralized");

        undercollateralizationMarks[user] = UndercollateralizationMark({
            marker: msg.sender,
            timestamp: uint64(block.timestamp)
        });

        emit PositionMarked(user, msg.sender);
    }

    function removeUndercollateralizationMark(address user) external {
        require(isPositionMarkedAsUndercollateralized(user), "LnLiquidation: not marked");

        // Can only remove mark if C ratio is restored to issuance ratio
        EvalUserPositionResult memory evalResult = evalUserPostion(user);
        uint256 issuanceRatio = lnConfig.getUint(BUILD_RATIO_KEY);
        require(evalResult.collateralizationRatio <= issuanceRatio, "LnLiquidation: still undercollateralized");

        delete undercollateralizationMarks[user];

        emit PositionUnmarked(user);
    }

    function liquidatePosition(
        address user,
        uint256 lusdToBurn,
        uint256[] calldata rewardEntryIds
    ) external {
        require(lusdToBurn > 0, "LnLiquidation: zero amount");

        // Check mark and delay
        UndercollateralizationMark memory mark = undercollateralizationMarks[user];
        {
            uint256 liquidationDelay = lnConfig.getUint(LIQUIDATION_DELAY_KEY);
            require(mark.timestamp > 0, "LnLiquidation: not marked for undercollateralized");
            require(block.timestamp > mark.timestamp + liquidationDelay, "LnLiquidation: liquidation delay not passed");
        }

        // Confirm that the position is still undercollateralized
        FetchRatiosResult memory ratios = fetchRatios();
        EvalUserPositionResult memory evalResult = evalUserPostion(user);
        require(evalResult.collateralizationRatio > ratios.issuanceRatio, "LnLiquidation: not undercollateralized");

        uint256 maxLusdToBurn =
            evalResult.debtBalance.sub(evalResult.collateralValue.multiplyDecimal(ratios.issuanceRatio)).divideDecimal(
                SafeDecimalMath.unit().sub(
                    SafeDecimalMath.unit().add(ratios.markerRewardRatio.add(ratios.liquidatorRewardRatio)).multiplyDecimal(
                        ratios.issuanceRatio
                    )
                )
            );
        require(lusdToBurn <= maxLusdToBurn, "LnLiquidation: burn amount too large");

        // Burn lUSD and update debt
        lnBuildBurnSystem.burnForLiquidation(user, msg.sender, lusdToBurn);

        LiquidationRewardCalculationResult memory rewards =
            calculateRewards(lusdToBurn, evalResult.collateralPrice, ratios.markerRewardRatio, ratios.liquidatorRewardRatio);

        {
            uint256 totalCollateralToMove = rewards.collateralWithdrawalAmount.add(rewards.totalReward);
            uint256 totalCollateralAmount = evalResult.stakedCollateral.add(evalResult.lockedCollateral);
            require(totalCollateralToMove > 0, "LnLiquidation: no collateral withdrawal");
            require(totalCollateralToMove <= totalCollateralAmount, "LnLiquidation: insufficient collateral"); // Insurance fund needed to resolve this
        }

        uint256 totalFromStaked;
        uint256 totalFromLocked;

        // Collateral withdrawal
        {
            (totalFromStaked, totalFromLocked) = withdrawCollateral(
                WithdrawCollateralParams({
                    user: user,
                    liquidator: msg.sender,
                    collateralWithdrawalAmount: rewards.collateralWithdrawalAmount,
                    stakedCollateral: evalResult.stakedCollateral,
                    lockedCollateral: evalResult.lockedCollateral
                }),
                rewardEntryIds
            );

            // Track staked and locked amounts locally
            evalResult.stakedCollateral = evalResult.stakedCollateral.sub(totalFromStaked);
            evalResult.lockedCollateral = evalResult.lockedCollateral.sub(totalFromLocked);
        }

        // Rewards
        {
            (uint256 fromStaked, uint256 fromLocked) =
                distributeRewards(
                    DistributeRewardsParams({
                        user: user,
                        marker: mark.marker,
                        liquidator: msg.sender,
                        markerReward: rewards.markerReward,
                        liquidatorReward: rewards.liquidatorReward,
                        stakedCollateral: evalResult.stakedCollateral,
                        lockedCollateral: evalResult.lockedCollateral
                    }),
                    rewardEntryIds
                );

            totalFromStaked = totalFromStaked.add(fromStaked);
            totalFromLocked = totalFromLocked.add(fromLocked);
        }

        emit PositionLiquidated(
            user,
            mark.marker,
            msg.sender,
            lusdToBurn,
            "LINA",
            totalFromStaked,
            totalFromLocked,
            rewards.markerReward,
            rewards.liquidatorReward
        );

        // If the position is completely liquidated, remove the marker
        if (lusdToBurn == maxLusdToBurn) {
            delete undercollateralizationMarks[user];
            emit PositionUnmarked(user);
        }
    }

    function evalUserPostion(address user) private view returns (EvalUserPositionResult memory) {
        (uint256 debtBalance, ) = lnDebtSystem.GetUserDebtBalanceInUsd(user);
        (uint256 stakedCollateral, uint256 lockedCollateral) = lnCollateralSystem.getUserLinaCollateralBreakdown(user);

        uint256 collateralPrice = lnPrices.getPrice("LINA");
        uint256 collateralValue = stakedCollateral.add(lockedCollateral).multiplyDecimal(collateralPrice);

        uint256 collateralizationRatio = debtBalance.divideDecimal(collateralValue);
        return
            EvalUserPositionResult({
                debtBalance: debtBalance,
                stakedCollateral: stakedCollateral,
                lockedCollateral: lockedCollateral,
                collateralPrice: collateralPrice,
                collateralValue: collateralValue,
                collateralizationRatio: collateralizationRatio
            });
    }

    function fetchRatios() private view returns (FetchRatiosResult memory) {
        uint256 issuanceRatio = lnConfig.getUint(BUILD_RATIO_KEY);
        uint256 markerRewardRatio = lnConfig.getUint(LIQUIDATION_MARKER_REWARD_KEY);
        uint256 liquidatorRewardRatio = lnConfig.getUint(LIQUIDATION_LIQUIDATOR_REWARD_KEY);

        return
            FetchRatiosResult({
                issuanceRatio: issuanceRatio,
                markerRewardRatio: markerRewardRatio,
                liquidatorRewardRatio: liquidatorRewardRatio
            });
    }

    function calculateRewards(
        uint256 lusdToBurn,
        uint256 collateralPrice,
        uint256 markerRewardRatio,
        uint256 liquidatorRewardRatio
    ) private pure returns (LiquidationRewardCalculationResult memory) {
        // Amount of collateral with the same value as the debt burnt (without taking into account rewards)
        uint256 collateralWithdrawalAmount = lusdToBurn.divideDecimal(collateralPrice);

        // Reward amounts
        uint256 markerReward = collateralWithdrawalAmount.multiplyDecimal(markerRewardRatio);
        uint256 liquidatorReward = collateralWithdrawalAmount.multiplyDecimal(liquidatorRewardRatio);
        uint256 totalReward = markerReward.add(liquidatorReward);

        return
            LiquidationRewardCalculationResult({
                collateralWithdrawalAmount: collateralWithdrawalAmount,
                markerReward: markerReward,
                liquidatorReward: liquidatorReward,
                totalReward: totalReward
            });
    }

    function withdrawCollateral(WithdrawCollateralParams memory params, uint256[] calldata rewardEntryIds)
        private
        returns (uint256 amountFromStaked, uint256 amountFromLocked)
    {
        amountFromStaked = Math.min(params.collateralWithdrawalAmount, params.stakedCollateral);
        amountFromLocked = params.collateralWithdrawalAmount.sub(amountFromStaked);

        require(amountFromLocked <= params.lockedCollateral, "LnLiquidation: insufficient locked collateral");

        if (amountFromStaked > 0) {
            lnCollateralSystem.moveCollateral(params.user, params.liquidator, "LINA", amountFromStaked);
        }

        if (amountFromLocked > 0) {
            lnRewardLocker.moveReward(params.user, params.liquidator, amountFromLocked, rewardEntryIds);
        }
    }

    function distributeRewards(DistributeRewardsParams memory params, uint256[] calldata rewardEntryIds)
        private
        returns (uint256 amountFromStaked, uint256 amountFromLocked)
    {
        uint256 totalReward = params.markerReward.add(params.liquidatorReward);

        amountFromStaked = Math.min(totalReward, params.stakedCollateral);
        amountFromLocked = totalReward.sub(amountFromStaked);

        require(amountFromLocked <= params.lockedCollateral, "LnLiquidation: insufficient locked collateral");

        uint256 markerRewardFromLocked = params.markerReward;
        uint256 liquidatorRewardFromLocked = params.liquidatorReward;

        if (amountFromStaked > 0) {
            uint256 markerRewardFromStaked = amountFromStaked.mul(params.markerReward).div(totalReward);
            uint256 liquidatorRewardFromStaked = amountFromStaked.sub(markerRewardFromStaked);

            markerRewardFromLocked = markerRewardFromLocked.sub(markerRewardFromStaked);
            liquidatorRewardFromLocked = liquidatorRewardFromLocked.sub(liquidatorRewardFromStaked);

            lnCollateralSystem.moveCollateral(params.user, params.marker, "LINA", markerRewardFromStaked);
            lnCollateralSystem.moveCollateral(params.user, params.liquidator, "LINA", liquidatorRewardFromStaked);
        }

        if (amountFromLocked > 0) {
            lnRewardLocker.moveRewardProRata(
                params.user,
                params.marker,
                markerRewardFromLocked,
                params.liquidator,
                liquidatorRewardFromLocked,
                rewardEntryIds
            );
        }
    }
}