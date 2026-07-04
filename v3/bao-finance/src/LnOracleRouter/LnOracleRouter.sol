// SPDX-License-Identifier: MIT

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

// File @openzeppelin/contracts-upgradeable/utils/SafeCastUpgradeable.sol@v3.3.0

pragma solidity >=0.6.0 <0.8.0;

/**
 * @dev Wrappers over Solidity's uintXX/intXX casting operators with added overflow
 * checks.
 *
 * Downcasting from uint256/int256 in Solidity does not revert on overflow. This can
 * easily result in undesired exploitation or bugs, since developers usually
 * assume that overflows raise errors. `SafeCast` restores this intuition by
 * reverting the transaction when such an operation overflows.
 *
 * Using this library instead of the unchecked operations eliminates an entire
 * class of bugs, so it's recommended to use it always.
 *
 * Can be combined with {SafeMath} and {SignedSafeMath} to extend it to smaller types, by performing
 * all math on `uint256` and `int256` and then downcasting.
 */
library SafeCastUpgradeable {
    /**
     * @dev Returns the downcasted uint128 from uint256, reverting on
     * overflow (when the input is greater than largest uint128).
     *
     * Counterpart to Solidity's `uint128` operator.
     *
     * Requirements:
     *
     * - input must fit into 128 bits
     */
    function toUint128(uint256 value) internal pure returns (uint128) {
        require(value < 2**128, "SafeCast: value doesn't fit in 128 bits");
        return uint128(value);
    }

    /**
     * @dev Returns the downcasted uint64 from uint256, reverting on
     * overflow (when the input is greater than largest uint64).
     *
     * Counterpart to Solidity's `uint64` operator.
     *
     * Requirements:
     *
     * - input must fit into 64 bits
     */
    function toUint64(uint256 value) internal pure returns (uint64) {
        require(value < 2**64, "SafeCast: value doesn't fit in 64 bits");
        return uint64(value);
    }

    /**
     * @dev Returns the downcasted uint32 from uint256, reverting on
     * overflow (when the input is greater than largest uint32).
     *
     * Counterpart to Solidity's `uint32` operator.
     *
     * Requirements:
     *
     * - input must fit into 32 bits
     */
    function toUint32(uint256 value) internal pure returns (uint32) {
        require(value < 2**32, "SafeCast: value doesn't fit in 32 bits");
        return uint32(value);
    }

    /**
     * @dev Returns the downcasted uint16 from uint256, reverting on
     * overflow (when the input is greater than largest uint16).
     *
     * Counterpart to Solidity's `uint16` operator.
     *
     * Requirements:
     *
     * - input must fit into 16 bits
     */
    function toUint16(uint256 value) internal pure returns (uint16) {
        require(value < 2**16, "SafeCast: value doesn't fit in 16 bits");
        return uint16(value);
    }

    /**
     * @dev Returns the downcasted uint8 from uint256, reverting on
     * overflow (when the input is greater than largest uint8).
     *
     * Counterpart to Solidity's `uint8` operator.
     *
     * Requirements:
     *
     * - input must fit into 8 bits.
     */
    function toUint8(uint256 value) internal pure returns (uint8) {
        require(value < 2**8, "SafeCast: value doesn't fit in 8 bits");
        return uint8(value);
    }

    /**
     * @dev Converts a signed int256 into an unsigned uint256.
     *
     * Requirements:
     *
     * - input must be greater than or equal to 0.
     */
    function toUint256(int256 value) internal pure returns (uint256) {
        require(value >= 0, "SafeCast: value must be positive");
        return uint256(value);
    }

    /**
     * @dev Returns the downcasted int128 from int256, reverting on
     * overflow (when the input is less than smallest int128 or
     * greater than largest int128).
     *
     * Counterpart to Solidity's `int128` operator.
     *
     * Requirements:
     *
     * - input must fit into 128 bits
     *
     * _Available since v3.1._
     */
    function toInt128(int256 value) internal pure returns (int128) {
        require(value >= -2**127 && value < 2**127, "SafeCast: value doesn't fit in 128 bits");
        return int128(value);
    }

    /**
     * @dev Returns the downcasted int64 from int256, reverting on
     * overflow (when the input is less than smallest int64 or
     * greater than largest int64).
     *
     * Counterpart to Solidity's `int64` operator.
     *
     * Requirements:
     *
     * - input must fit into 64 bits
     *
     * _Available since v3.1._
     */
    function toInt64(int256 value) internal pure returns (int64) {
        require(value >= -2**63 && value < 2**63, "SafeCast: value doesn't fit in 64 bits");
        return int64(value);
    }

    /**
     * @dev Returns the downcasted int32 from int256, reverting on
     * overflow (when the input is less than smallest int32 or
     * greater than largest int32).
     *
     * Counterpart to Solidity's `int32` operator.
     *
     * Requirements:
     *
     * - input must fit into 32 bits
     *
     * _Available since v3.1._
     */
    function toInt32(int256 value) internal pure returns (int32) {
        require(value >= -2**31 && value < 2**31, "SafeCast: value doesn't fit in 32 bits");
        return int32(value);
    }

    /**
     * @dev Returns the downcasted int16 from int256, reverting on
     * overflow (when the input is less than smallest int16 or
     * greater than largest int16).
     *
     * Counterpart to Solidity's `int16` operator.
     *
     * Requirements:
     *
     * - input must fit into 16 bits
     *
     * _Available since v3.1._
     */
    function toInt16(int256 value) internal pure returns (int16) {
        require(value >= -2**15 && value < 2**15, "SafeCast: value doesn't fit in 16 bits");
        return int16(value);
    }

    /**
     * @dev Returns the downcasted int8 from int256, reverting on
     * overflow (when the input is less than smallest int8 or
     * greater than largest int8).
     *
     * Counterpart to Solidity's `int8` operator.
     *
     * Requirements:
     *
     * - input must fit into 8 bits.
     *
     * _Available since v3.1._
     */
    function toInt8(int256 value) internal pure returns (int8) {
        require(value >= -2**7 && value < 2**7, "SafeCast: value doesn't fit in 8 bits");
        return int8(value);
    }

    /**
     * @dev Converts an unsigned uint256 into a signed int256.
     *
     * Requirements:
     *
     * - input must be less than or equal to maxInt256.
     */
    function toInt256(uint256 value) internal pure returns (int256) {
        require(value < 2**255, "SafeCast: value doesn't fit in an int256");
        return int256(value);
    }
}

// File contracts/interfaces/IBandProtocolOracle.sol

pragma solidity >=0.6.12 <0.8.0;
pragma experimental ABIEncoderV2;

/**
 * Interface taken from Band Protocol's StdReferenceProxy contract.
 */
interface IBandProtocolOracle {
    /// A structure returned whenever someone requests for standard reference data.
    struct ReferenceData {
        uint256 rate; // base/quote exchange rate, multiplied by 1e18.
        uint256 lastUpdatedBase; // UNIX epoch of the last time when base price gets updated.
        uint256 lastUpdatedQuote; // UNIX epoch of the last time when quote price gets updated.
    }

    /// Returns the price data for the given base/quote pair. Revert if not available.
    function getReferenceData(string memory _base, string memory _quote) external view returns (ReferenceData memory);

    /// Similar to getReferenceData, but with multiple base/quote pairs at once.
    function getReferenceDataBulk(string[] memory _bases, string[] memory _quotes)
        external
        view
        returns (ReferenceData[] memory);
}

// File contracts/interfaces/IChainlinkOracle.sol

pragma solidity >=0.6.12 <0.8.0;

interface IChainlinkOracle {
    function decimals() external view returns (uint8);

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

// File contracts/LnOracleRouter.sol

pragma solidity ^0.6.12;

/**
 * @title LnOracleRouter
 *
 * @dev A contract for providing Linear contracts with access to asset prices from multiple data
 * oracles including Chainlink and Band Protocol.
 */
contract LnOracleRouter is LnAdminUpgradeable, ILnPrices {
    using SafeCastUpgradeable for int256;
    using SafeDecimalMath for uint256;
    using SafeMathUpgradeable for uint256;

    event GlobalStalePeriodUpdated(uint256 oldStalePeriod, uint256 newStalePeriod);
    event StalePeriodOverrideUpdated(bytes32 currencyKey, uint256 oldStalePeriod, uint256 newStalePeriod);
    event ChainlinkOracleAdded(bytes32 currencyKey, address oracle);
    event BandOracleAdded(bytes32 currencyKey, string bandCurrencyKey, address oracle);
    event OracleRemoved(bytes32 currencyKey, address oracle);

    struct OracleSettings {
        uint8 oracleType;
        address oracleAddress;
    }

    uint256 public globalStalePeriod;
    mapping(bytes32 => uint256) public stalePeriodOverrides;
    mapping(bytes32 => OracleSettings) public oracleSettings;
    mapping(bytes32 => string) public linearCurrencyKeysToBandCurrencyKeys;

    bytes32 public constant override LUSD = "lUSD";

    uint8 public constant ORACLE_TYPE_CHAINLINK = 1;
    uint8 public constant ORACLE_TYPE_BAND = 2;

    uint8 private constant OUTPUT_PRICE_DECIMALS = 18;

    function getPrice(bytes32 currencyKey) external view override returns (uint256) {
        (uint256 price, ) = _getPriceData(currencyKey);
        return price;
    }

    function getPriceAndUpdatedTime(bytes32 currencyKey) external view returns (uint256 price, uint256 time) {
        (price, time) = _getPriceData(currencyKey);
    }

    function isPriceStaled(bytes32 currencyKey) external view returns (bool) {
        if (currencyKey == LUSD) return false;
        (, uint256 time) = _getPriceData(currencyKey);
        return _isUpdateTimeStaled(time, getStalePeriodForCurrency(currencyKey));
    }

    function exchange(
        bytes32 sourceKey,
        uint sourceAmount,
        bytes32 destKey
    ) external view override returns (uint256) {
        if (sourceKey == destKey) return sourceAmount;

        (uint256 sourcePrice, uint256 sourceTime) = _getPriceData(sourceKey);
        (uint256 destPrice, uint256 destTime) = _getPriceData(destKey);

        require(
            !_isUpdateTimeStaled(sourceTime, getStalePeriodForCurrency(sourceKey)) &&
                !_isUpdateTimeStaled(destTime, getStalePeriodForCurrency(destKey)),
            "LnOracleRouter: staled price data"
        );

        return sourceAmount.multiplyDecimalRound(sourcePrice).divideDecimalRound(destPrice);
    }

    function getStalePeriodForCurrency(bytes32 currencyKey) public view returns (uint256) {
        uint256 overridenPeriod = stalePeriodOverrides[currencyKey];
        return overridenPeriod == 0 ? globalStalePeriod : overridenPeriod;
    }

    function __LnOracleRouter_init(address _admin) public initializer {
        __LnAdminUpgradeable_init(_admin);
    }

    function setGlobalStalePeriod(uint256 newStalePeriod) external onlyAdmin {
        uint256 oldStalePeriod = globalStalePeriod;
        globalStalePeriod = newStalePeriod;
        emit GlobalStalePeriodUpdated(oldStalePeriod, newStalePeriod);
    }

    function setStalePeriodOverride(bytes32 currencyKey, uint256 newStalePeriod) external onlyAdmin {
        uint256 oldStalePeriod = stalePeriodOverrides[currencyKey];
        stalePeriodOverrides[currencyKey] = newStalePeriod;
        emit StalePeriodOverrideUpdated(currencyKey, oldStalePeriod, newStalePeriod);
    }

    function addChainlinkOracle(
        bytes32 currencyKey,
        address oracleAddress,
        bool removeExisting
    ) external onlyAdmin {
        _addChainlinkOracle(currencyKey, oracleAddress, removeExisting);
    }

    function addChainlinkOracles(
        bytes32[] calldata currencyKeys,
        address[] calldata oracleAddresses,
        bool removeExisting
    ) external onlyAdmin {
        require(currencyKeys.length == oracleAddresses.length, "LnOracleRouter: array length mismatch");

        for (uint256 ind = 0; ind < currencyKeys.length; ind++) {
            _addChainlinkOracle(currencyKeys[ind], oracleAddresses[ind], removeExisting);
        }
    }

    function addBandOracle(
        bytes32 currencyKey,
        string calldata bandCurrencyKey,
        address oracleAddress,
        bool removeExisting
    ) external onlyAdmin {
        _addBandOracle(currencyKey, bandCurrencyKey, oracleAddress, removeExisting);
    }

    function addBandOracles(
        bytes32[] calldata currencyKeys,
        string[] calldata bandCurrencyKeys,
        address[] calldata oracleAddresses,
        bool removeExisting
    ) external onlyAdmin {
        require(
            currencyKeys.length == bandCurrencyKeys.length && bandCurrencyKeys.length == oracleAddresses.length,
            "LnOracleRouter: array length mismatch"
        );

        for (uint256 ind = 0; ind < currencyKeys.length; ind++) {
            _addBandOracle(currencyKeys[ind], bandCurrencyKeys[ind], oracleAddresses[ind], removeExisting);
        }
    }

    function removeOracle(bytes32 currencyKey) external onlyAdmin {
        _removeOracle(currencyKey);
    }

    function _addChainlinkOracle(
        bytes32 currencyKey,
        address oracleAddress,
        bool removeExisting
    ) private {
        require(currencyKey != bytes32(0), "LnOracleRouter: empty currency key");
        require(oracleAddress != address(0), "LnOracleRouter: empty oracle address");

        if (oracleSettings[currencyKey].oracleAddress != address(0)) {
            require(removeExisting, "LnOracleRouter: oracle already exists");
            _removeOracle(currencyKey);
        }

        oracleSettings[currencyKey] = OracleSettings({oracleType: ORACLE_TYPE_CHAINLINK, oracleAddress: oracleAddress});

        emit ChainlinkOracleAdded(currencyKey, oracleAddress);
    }

    function _addBandOracle(
        bytes32 currencyKey,
        string calldata bandCurrencyKey,
        address oracleAddress,
        bool removeExisting
    ) private {
        require(currencyKey != bytes32(0), "LnOracleRouter: empty currency key");
        require(bytes(bandCurrencyKey).length != 0, "LnOracleRouter: empty band currency key");
        require(oracleAddress != address(0), "LnOracleRouter: empty oracle address");

        if (oracleSettings[currencyKey].oracleAddress != address(0)) {
            require(removeExisting, "LnOracleRouter: oracle already exists");
            _removeOracle(currencyKey);
        }

        oracleSettings[currencyKey] = OracleSettings({oracleType: ORACLE_TYPE_BAND, oracleAddress: oracleAddress});
        linearCurrencyKeysToBandCurrencyKeys[currencyKey] = bandCurrencyKey;

        emit BandOracleAdded(currencyKey, bandCurrencyKey, oracleAddress);
    }

    function _removeOracle(bytes32 currencyKey) private {
        OracleSettings memory settings = oracleSettings[currencyKey];
        require(settings.oracleAddress != address(0), "LnOracleRouter: oracle not found");

        delete oracleSettings[currencyKey];

        if (settings.oracleType == ORACLE_TYPE_BAND) {
            delete linearCurrencyKeysToBandCurrencyKeys[currencyKey];
        }

        emit OracleRemoved(currencyKey, settings.oracleAddress);
    }

    function _getPriceData(bytes32 currencyKey) private view returns (uint256 price, uint256 updateTime) {
        if (currencyKey == LUSD) return (SafeDecimalMath.unit(), block.timestamp);

        OracleSettings memory settings = oracleSettings[currencyKey];
        require(settings.oracleAddress != address(0), "LnOracleRouter: oracle not set");

        if (settings.oracleType == ORACLE_TYPE_CHAINLINK) {
            (, int256 rawAnswer, , uint256 rawUpdateTime, ) = IChainlinkOracle(settings.oracleAddress).latestRoundData();

            uint8 oraclePriceDecimals = IChainlinkOracle(settings.oracleAddress).decimals();
            if (oraclePriceDecimals == OUTPUT_PRICE_DECIMALS) {
                price = rawAnswer.toUint256();
            } else if (oraclePriceDecimals > OUTPUT_PRICE_DECIMALS) {
                // Too many decimals
                price = rawAnswer.toUint256().div(10**(oraclePriceDecimals - OUTPUT_PRICE_DECIMALS));
            } else {
                // Too few decimals
                price = rawAnswer.toUint256().mul(10**(OUTPUT_PRICE_DECIMALS - oraclePriceDecimals));
            }

            updateTime = rawUpdateTime;
        } else if (settings.oracleType == ORACLE_TYPE_BAND) {
            IBandProtocolOracle.ReferenceData memory priceRes =
                IBandProtocolOracle(settings.oracleAddress).getReferenceData(
                    linearCurrencyKeysToBandCurrencyKeys[currencyKey],
                    "USD"
                );

            price = priceRes.rate;
            updateTime = priceRes.lastUpdatedBase;
        } else {
            require(false, "LnOracleRouter: unknown oracle type");
        }
    }

    function _isUpdateTimeStaled(uint256 updateTime, uint256 stalePeriod) private view returns (bool) {
        return updateTime.add(stalePeriod) < block.timestamp;
    }
}