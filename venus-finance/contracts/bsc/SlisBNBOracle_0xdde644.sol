// ============================================================
// FILE: @openzeppelin/contracts/access/IAccessControl.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (access/IAccessControl.sol)

pragma solidity ^0.8.0;

/**
 * @dev External interface of AccessControl declared to support ERC165 detection.
 */
interface IAccessControl {
    /**
     * @dev Emitted when `newAdminRole` is set as ``role``'s admin role, replacing `previousAdminRole`
     *
     * `DEFAULT_ADMIN_ROLE` is the starting admin for all roles, despite
     * {RoleAdminChanged} not being emitted signaling this.
     *
     * _Available since v3.1._
     */
    event RoleAdminChanged(bytes32 indexed role, bytes32 indexed previousAdminRole, bytes32 indexed newAdminRole);

    /**
     * @dev Emitted when `account` is granted `role`.
     *
     * `sender` is the account that originated the contract call, an admin role
     * bearer except when using {AccessControl-_setupRole}.
     */
    event RoleGranted(bytes32 indexed role, address indexed account, address indexed sender);

    /**
     * @dev Emitted when `account` is revoked `role`.
     *
     * `sender` is the account that originated the contract call:
     *   - if using `revokeRole`, it is the admin role bearer
     *   - if using `renounceRole`, it is the role bearer (i.e. `account`)
     */
    event RoleRevoked(bytes32 indexed role, address indexed account, address indexed sender);

    /**
     * @dev Returns `true` if `account` has been granted `role`.
     */
    function hasRole(bytes32 role, address account) external view returns (bool);

    /**
     * @dev Returns the admin role that controls `role`. See {grantRole} and
     * {revokeRole}.
     *
     * To change a role's admin, use {AccessControl-_setRoleAdmin}.
     */
    function getRoleAdmin(bytes32 role) external view returns (bytes32);

    /**
     * @dev Grants `role` to `account`.
     *
     * If `account` had not been already granted `role`, emits a {RoleGranted}
     * event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     */
    function grantRole(bytes32 role, address account) external;

    /**
     * @dev Revokes `role` from `account`.
     *
     * If `account` had been granted `role`, emits a {RoleRevoked} event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     */
    function revokeRole(bytes32 role, address account) external;

    /**
     * @dev Revokes `role` from the calling account.
     *
     * Roles are often managed via {grantRole} and {revokeRole}: this function's
     * purpose is to provide a mechanism for accounts to lose their privileges
     * if they are compromised (such as when a trusted device is misplaced).
     *
     * If the calling account had been granted `role`, emits a {RoleRevoked}
     * event.
     *
     * Requirements:
     *
     * - the caller must be `account`.
     */
    function renounceRole(bytes32 role, address account) external;
}

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (token/ERC20/extensions/IERC20Metadata.sol)

pragma solidity ^0.8.0;

import "../IERC20.sol";

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

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC20/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.0;

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
    function transferFrom(address from, address to, uint256 amount) external returns (bool);
}

// ============================================================
// FILE: @venusprotocol/governance-contracts/contracts/Governance/IAccessControlManagerV8.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity ^0.8.25;

import "@openzeppelin/contracts/access/IAccessControl.sol";

/**
 * @title IAccessControlManagerV8
 * @author Venus
 * @notice Interface implemented by the `AccessControlManagerV8` contract.
 */
interface IAccessControlManagerV8 is IAccessControl {
    function giveCallPermission(address contractAddress, string calldata functionSig, address accountToPermit) external;

    function revokeCallPermission(
        address contractAddress,
        string calldata functionSig,
        address accountToRevoke
    ) external;

    function isAllowedToCall(address account, string calldata functionSig) external view returns (bool);

    function hasPermission(
        address account,
        address contractAddress,
        string calldata functionSig
    ) external view returns (bool);
}

// ============================================================
// FILE: @venusprotocol/solidity-utilities/contracts/constants.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity ^0.8.25;

/// @dev Base unit for computations, usually used in scaling (multiplications, divisions)
uint256 constant EXP_SCALE = 1e18;

/// @dev A unit (literal one) in EXP_SCALE, usually used in additions/subtractions
uint256 constant MANTISSA_ONE = EXP_SCALE;

/// @dev The approximate number of seconds per year
uint256 constant SECONDS_PER_YEAR = 31_536_000;

// ============================================================
// FILE: @venusprotocol/solidity-utilities/contracts/validators.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

/// @notice Thrown if the supplied address is a zero address where it is not allowed
error ZeroAddressNotAllowed();

/// @notice Thrown if the supplied value is 0 where it is not allowed
error ZeroValueNotAllowed();

/// @notice Checks if the provided address is nonzero, reverts otherwise
/// @param address_ Address to check
/// @custom:error ZeroAddressNotAllowed is thrown if the provided address is a zero address
function ensureNonzeroAddress(address address_) pure {
    if (address_ == address(0)) {
        revert ZeroAddressNotAllowed();
    }
}

/// @notice Checks if the provided value is nonzero, reverts otherwise
/// @param value_ Value to check
/// @custom:error ZeroValueNotAllowed is thrown if the provided value is 0
function ensureNonzeroValue(uint256 value_) pure {
    if (value_ == 0) {
        revert ZeroValueNotAllowed();
    }
}

// ============================================================
// FILE: contracts/interfaces/ICappedOracle.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

interface ICappedOracle {
    function updateSnapshot() external;
}

// ============================================================
// FILE: contracts/interfaces/ISynclubStakeManager.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

interface ISynclubStakeManager {
    function convertSnBnbToBnb(uint256 _amount) external view returns (uint256);
}

// ============================================================
// FILE: contracts/interfaces/OracleInterface.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity ^0.8.25;

interface OracleInterface {
    function getPrice(address asset) external view returns (uint256);
}

interface ResilientOracleInterface is OracleInterface {
    function updatePrice(address vToken) external;

    function updateAssetPrice(address asset) external;

    function getUnderlyingPrice(address vToken) external view returns (uint256);
}

interface BoundValidatorInterface {
    function validatePriceWithAnchorPrice(
        address asset,
        uint256 reporterPrice,
        uint256 anchorPrice
    ) external view returns (bool);
}

// ============================================================
// FILE: contracts/oracles/common/CorrelatedTokenOracle.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

import { OracleInterface, ResilientOracleInterface } from "../../interfaces/OracleInterface.sol";
import { ensureNonzeroAddress } from "@venusprotocol/solidity-utilities/contracts/validators.sol";
import { SECONDS_PER_YEAR } from "@venusprotocol/solidity-utilities/contracts/constants.sol";
import { IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { ICappedOracle } from "../../interfaces/ICappedOracle.sol";
import { IAccessControlManagerV8 } from "@venusprotocol/governance-contracts/contracts/Governance/IAccessControlManagerV8.sol";

/**
 * @title CorrelatedTokenOracle
 * @notice This oracle fetches the price of a token that is correlated to another token.
 */
abstract contract CorrelatedTokenOracle is OracleInterface, ICappedOracle {
    /// @notice Address of the correlated token
    address public immutable CORRELATED_TOKEN;

    /// @notice Address of the underlying token
    address public immutable UNDERLYING_TOKEN;

    /// @notice Address of Resilient Oracle
    ResilientOracleInterface public immutable RESILIENT_ORACLE;

    /// @notice Address of the AccessControlManager contract
    IAccessControlManagerV8 public immutable ACCESS_CONTROL_MANAGER;

    //// @notice Growth rate percentage in seconds. Ex: 1e18 is 100%
    uint256 public growthRatePerSecond;

    /// @notice Snapshot update interval
    uint256 public snapshotInterval;

    /// @notice Last stored snapshot maximum exchange rate
    uint256 public snapshotMaxExchangeRate;

    /// @notice Last stored snapshot timestamp
    uint256 public snapshotTimestamp;

    /// @notice Gap to add when updating the snapshot
    uint256 public snapshotGap;

    /// @notice Emitted when the snapshot is updated
    event SnapshotUpdated(uint256 indexed maxExchangeRate, uint256 indexed timestamp);

    /// @notice Emitted when the growth rate is updated
    event GrowthRateUpdated(
        uint256 indexed oldGrowthRatePerSecond,
        uint256 indexed newGrowthRatePerSecond,
        uint256 indexed oldSnapshotInterval,
        uint256 newSnapshotInterval
    );

    /// @notice Emitted when the snapshot gap is updated
    event SnapshotGapUpdated(uint256 indexed oldSnapshotGap, uint256 indexed newSnapshotGap);

    /// @notice Thrown if the token address is invalid
    error InvalidTokenAddress();

    /// @notice Thrown if the growth rate is invalid
    error InvalidGrowthRate();

    /// @notice Thrown if the initial snapshot is invalid
    error InvalidInitialSnapshot();

    /// @notice Thrown if the max snapshot exchange rate is invalid
    error InvalidSnapshotMaxExchangeRate();

    /// @notice @notice Thrown when the action is prohibited by AccessControlManager
    error Unauthorized(address sender, address calledContract, string methodSignature);

    /**
     * @notice Constructor for the implementation contract.
     * @custom:error InvalidGrowthRate error is thrown if the growth rate is invalid
     * @custom:error InvalidInitialSnapshot error is thrown if the initial snapshot values are invalid
     */
    constructor(
        address _correlatedToken,
        address _underlyingToken,
        address _resilientOracle,
        uint256 _annualGrowthRate,
        uint256 _snapshotInterval,
        uint256 _initialSnapshotMaxExchangeRate,
        uint256 _initialSnapshotTimestamp,
        address _accessControlManager,
        uint256 _snapshotGap
    ) {
        growthRatePerSecond = _annualGrowthRate / SECONDS_PER_YEAR;

        if ((growthRatePerSecond == 0 && _snapshotInterval > 0) || (growthRatePerSecond > 0 && _snapshotInterval == 0))
            revert InvalidGrowthRate();

        if ((_initialSnapshotMaxExchangeRate == 0 || _initialSnapshotTimestamp == 0) && _snapshotInterval > 0) {
            revert InvalidInitialSnapshot();
        }

        ensureNonzeroAddress(_correlatedToken);
        ensureNonzeroAddress(_underlyingToken);
        ensureNonzeroAddress(_resilientOracle);
        ensureNonzeroAddress(_accessControlManager);

        CORRELATED_TOKEN = _correlatedToken;
        UNDERLYING_TOKEN = _underlyingToken;
        RESILIENT_ORACLE = ResilientOracleInterface(_resilientOracle);
        snapshotInterval = _snapshotInterval;

        snapshotMaxExchangeRate = _initialSnapshotMaxExchangeRate;
        snapshotTimestamp = _initialSnapshotTimestamp;
        snapshotGap = _snapshotGap;

        ACCESS_CONTROL_MANAGER = IAccessControlManagerV8(_accessControlManager);
    }

    /**
     * @notice Directly sets the snapshot exchange rate and timestamp
     * @param _snapshotMaxExchangeRate The exchange rate to set
     * @param _snapshotTimestamp The timestamp to set
     * @custom:event Emits SnapshotUpdated event on successful update of the snapshot
     */
    function setSnapshot(uint256 _snapshotMaxExchangeRate, uint256 _snapshotTimestamp) external {
        _checkAccessAllowed("setSnapshot(uint256,uint256)");

        snapshotMaxExchangeRate = _snapshotMaxExchangeRate;
        snapshotTimestamp = _snapshotTimestamp;

        emit SnapshotUpdated(snapshotMaxExchangeRate, snapshotTimestamp);
    }

    /**
     * @notice Sets the growth rate and snapshot interval
     * @param _annualGrowthRate The annual growth rate to set
     * @param _snapshotInterval The snapshot interval to set
     * @custom:error InvalidGrowthRate error is thrown if the growth rate is invalid
     * @custom:event Emits GrowthRateUpdated event on successful update of the growth rate
     */
    function setGrowthRate(uint256 _annualGrowthRate, uint256 _snapshotInterval) external {
        _checkAccessAllowed("setGrowthRate(uint256,uint256)");
        uint256 oldGrowthRatePerSecond = growthRatePerSecond;

        growthRatePerSecond = _annualGrowthRate / SECONDS_PER_YEAR;

        if ((growthRatePerSecond == 0 && _snapshotInterval > 0) || (growthRatePerSecond > 0 && _snapshotInterval == 0))
            revert InvalidGrowthRate();

        emit GrowthRateUpdated(oldGrowthRatePerSecond, growthRatePerSecond, snapshotInterval, _snapshotInterval);

        snapshotInterval = _snapshotInterval;
    }

    /**
     * @notice Sets the snapshot gap
     * @param _snapshotGap The snapshot gap to set
     * @custom:event Emits SnapshotGapUpdated event on successful update of the snapshot gap
     */
    function setSnapshotGap(uint256 _snapshotGap) external {
        _checkAccessAllowed("setSnapshotGap(uint256)");

        emit SnapshotGapUpdated(snapshotGap, _snapshotGap);

        snapshotGap = _snapshotGap;
    }

    /**
     * @notice Returns if the price is capped
     * @return isCapped Boolean indicating if the price is capped
     */
    function isCapped() external view virtual returns (bool) {
        if (snapshotInterval == 0) {
            return false;
        }

        uint256 maxAllowedExchangeRate = getMaxAllowedExchangeRate();
        if (maxAllowedExchangeRate == 0) {
            return false;
        }

        uint256 exchangeRate = getUnderlyingAmount();

        return exchangeRate > maxAllowedExchangeRate;
    }

    /**
     * @notice Updates the snapshot price and timestamp
     * @custom:event Emits SnapshotUpdated event on successful update of the snapshot
     * @custom:error InvalidSnapshotMaxExchangeRate error is thrown if the max snapshot exchange rate is zero
     */
    function updateSnapshot() public override {
        if (block.timestamp - snapshotTimestamp < snapshotInterval || snapshotInterval == 0) return;

        uint256 exchangeRate = getUnderlyingAmount();
        uint256 maxAllowedExchangeRate = getMaxAllowedExchangeRate();

        snapshotMaxExchangeRate =
            (exchangeRate > maxAllowedExchangeRate ? maxAllowedExchangeRate : exchangeRate) +
            snapshotGap;
        snapshotTimestamp = block.timestamp;

        if (snapshotMaxExchangeRate == 0) revert InvalidSnapshotMaxExchangeRate();

        RESILIENT_ORACLE.updateAssetPrice(UNDERLYING_TOKEN);
        emit SnapshotUpdated(snapshotMaxExchangeRate, snapshotTimestamp);
    }

    /**
     * @notice Fetches the price of the token
     * @param asset Address of the token
     * @return price The price of the token in scaled decimal places. It can be capped
     * to a maximum value taking into account the growth rate
     * @custom:error InvalidTokenAddress error is thrown if the token address is invalid
     */
    function getPrice(address asset) public view override returns (uint256) {
        if (asset != CORRELATED_TOKEN) revert InvalidTokenAddress();

        uint256 exchangeRate = getUnderlyingAmount();

        if (snapshotInterval == 0) {
            return _calculatePrice(exchangeRate);
        }

        uint256 maxAllowedExchangeRate = getMaxAllowedExchangeRate();

        uint256 finalExchangeRate = (exchangeRate > maxAllowedExchangeRate && maxAllowedExchangeRate != 0)
            ? maxAllowedExchangeRate
            : exchangeRate;

        return _calculatePrice(finalExchangeRate);
    }

    /**
     * @notice Gets the maximum allowed exchange rate for token
     * @return maxExchangeRate Maximum allowed exchange rate
     */
    function getMaxAllowedExchangeRate() public view returns (uint256) {
        uint256 timeElapsed = block.timestamp - snapshotTimestamp;
        uint256 maxExchangeRate = snapshotMaxExchangeRate +
            (snapshotMaxExchangeRate * growthRatePerSecond * timeElapsed) /
            1e18;
        return maxExchangeRate;
    }

    /**
     * @notice Gets the underlying amount for correlated token
     * @return underlyingAmount Amount of underlying token
     */
    function getUnderlyingAmount() public view virtual returns (uint256);

    /**
     * @notice Fetches price of the token based on an underlying exchange rate
     * @param exchangeRate The underlying exchange rate to use
     * @return price The price of the token in scaled decimal places
     */
    function _calculatePrice(uint256 exchangeRate) internal view returns (uint256) {
        uint256 underlyingUSDPrice = RESILIENT_ORACLE.getPrice(UNDERLYING_TOKEN);

        IERC20Metadata token = IERC20Metadata(CORRELATED_TOKEN);
        uint256 decimals = token.decimals();

        return (exchangeRate * underlyingUSDPrice) / (10 ** decimals);
    }

    /**
     * @notice Reverts if the call is not allowed by AccessControlManager
     * @param signature Method signature
     * @custom:error Unauthorized error is thrown if the call is not allowed
     */
    function _checkAccessAllowed(string memory signature) internal view {
        bool isAllowedToCall = ACCESS_CONTROL_MANAGER.isAllowedToCall(msg.sender, signature);

        if (!isAllowedToCall) {
            revert Unauthorized(msg.sender, address(this), signature);
        }
    }
}

// ============================================================
// FILE: contracts/oracles/SlisBNBOracle.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

import { ISynclubStakeManager } from "../interfaces/ISynclubStakeManager.sol";
import { ensureNonzeroAddress } from "@venusprotocol/solidity-utilities/contracts/validators.sol";
import { CorrelatedTokenOracle } from "./common/CorrelatedTokenOracle.sol";
import { EXP_SCALE } from "@venusprotocol/solidity-utilities/contracts/constants.sol";

/**
 * @title SlisBNBOracle
 * @author Venus
 * @notice This oracle fetches the price of slisBNB asset
 */
contract SlisBNBOracle is CorrelatedTokenOracle {
    /// @notice This is used as token address of BNB on BSC
    address public constant NATIVE_TOKEN_ADDR = 0xbBbBBBBbbBBBbbbBbbBbbbbBBbBbbbbBbBbbBBbB;

    /// @notice Address of StakeManager
    ISynclubStakeManager public immutable STAKE_MANAGER;

    /// @notice Constructor for the implementation contract.
    constructor(
        address stakeManager,
        address slisBNB,
        address resilientOracle,
        uint256 annualGrowthRate,
        uint256 _snapshotInterval,
        uint256 initialSnapshotMaxExchangeRate,
        uint256 initialSnapshotTimestamp,
        address accessControlManager,
        uint256 _snapshotGap
    )
        CorrelatedTokenOracle(
            slisBNB,
            NATIVE_TOKEN_ADDR,
            resilientOracle,
            annualGrowthRate,
            _snapshotInterval,
            initialSnapshotMaxExchangeRate,
            initialSnapshotTimestamp,
            accessControlManager,
            _snapshotGap
        )
    {
        ensureNonzeroAddress(stakeManager);
        STAKE_MANAGER = ISynclubStakeManager(stakeManager);
    }

    /**
     * @notice Fetches the amount of BNB for 1 slisBNB
     * @return amount The amount of BNB for slisBNB
     */
    function getUnderlyingAmount() public view override returns (uint256) {
        return STAKE_MANAGER.convertSnBnbToBnb(EXP_SCALE);
    }
}
