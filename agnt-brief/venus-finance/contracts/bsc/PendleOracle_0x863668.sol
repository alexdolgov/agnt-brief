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
// FILE: contracts/interfaces/IPendlePtOracle.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

interface IPendlePtOracle {
    function getPtToAssetRate(address market, uint32 duration) external view returns (uint256);

    function getPtToSyRate(address market, uint32 duration) external view returns (uint256);

    function getOracleState(
        address market,
        uint32 duration
    )
        external
        view
        returns (bool increaseCardinalityRequired, uint16 cardinalityRequired, bool oldestObservationSatisfied);
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

interface TwapInterface is OracleInterface {
    function updateTwap(address asset) external returns (uint256);
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

import { OracleInterface } from "../../interfaces/OracleInterface.sol";
import { ensureNonzeroAddress } from "@venusprotocol/solidity-utilities/contracts/validators.sol";
import { IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

/**
 * @title CorrelatedTokenOracle
 * @notice This oracle fetches the price of a token that is correlated to another token.
 */
abstract contract CorrelatedTokenOracle is OracleInterface {
    /// @notice Address of the correlated token
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    address public immutable CORRELATED_TOKEN;

    /// @notice Address of the underlying token
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    address public immutable UNDERLYING_TOKEN;

    /// @notice Address of Resilient Oracle
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    OracleInterface public immutable RESILIENT_ORACLE;

    /// @notice Thrown if the token address is invalid
    error InvalidTokenAddress();

    /// @notice Constructor for the implementation contract.
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor(address correlatedToken, address underlyingToken, address resilientOracle) {
        ensureNonzeroAddress(correlatedToken);
        ensureNonzeroAddress(underlyingToken);
        ensureNonzeroAddress(resilientOracle);
        CORRELATED_TOKEN = correlatedToken;
        UNDERLYING_TOKEN = underlyingToken;
        RESILIENT_ORACLE = OracleInterface(resilientOracle);
    }

    /**
     * @notice Fetches the price of the correlated token
     * @param asset Address of the correlated token
     * @return price The price of the correlated token in scaled decimal places
     */
    function getPrice(address asset) external view override returns (uint256) {
        if (asset != CORRELATED_TOKEN) revert InvalidTokenAddress();

        // get underlying token amount for 1 correlated token scaled by underlying token decimals
        uint256 underlyingAmount = _getUnderlyingAmount();

        // oracle returns (36 - asset decimal) scaled price
        uint256 underlyingUSDPrice = RESILIENT_ORACLE.getPrice(UNDERLYING_TOKEN);

        IERC20Metadata token = IERC20Metadata(CORRELATED_TOKEN);
        uint256 decimals = token.decimals();

        // underlyingAmount (for 1 correlated token) * underlyingUSDPrice / decimals(correlated token)
        return (underlyingAmount * underlyingUSDPrice) / (10 ** decimals);
    }

    /**
     * @notice Gets the underlying amount for correlated token
     * @return underlyingAmount Amount of underlying token
     */
    function _getUnderlyingAmount() internal view virtual returns (uint256);
}

// ============================================================
// FILE: contracts/oracles/PendleOracle.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

import { IPendlePtOracle } from "../interfaces/IPendlePtOracle.sol";
import { CorrelatedTokenOracle } from "./common/CorrelatedTokenOracle.sol";
import { ensureNonzeroAddress, ensureNonzeroValue } from "@venusprotocol/solidity-utilities/contracts/validators.sol";
import { IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

/**
 * @title PendleOracle
 * @author Venus
 * @notice This oracle fetches the price of a pendle token
 * @dev As a base price the oracle uses either the price of the Pendle
 * market's asset (in this case PT_TO_ASSET rate should be used) or
 * the price of the Pendle market's interest bearing token (e.g. wstETH
 * for stETH; in this case PT_TO_SY rate should be used). Technically,
 * interest bearing token is different from standardized yield (SY) token,
 * but since SY is a wrapper around an interest bearing token, we can safely
 * assume the prices of the two are equal. This is not always true for asset
 * price though: using PT_TO_ASSET rate assumes that the yield token can
 * be seamlessly redeemed for the underlying asset. In reality, this might
 * not always be the case. For more details, see
 * https://docs.pendle.finance/Developers/Contracts/StandardizedYield
 */
contract PendleOracle is CorrelatedTokenOracle {
    /// @notice Which asset to use as a base for the returned PT
    /// price. Can be either a standardized yield token (SY), in
    /// this case PT/SY price is returned, or the Pendle
    /// market's asset directly.
    enum RateKind {
        PT_TO_ASSET,
        PT_TO_SY
    }

    /// @notice Address of the PT oracle
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    IPendlePtOracle public immutable PT_ORACLE;

    /// @notice Whether to use PT/SY (standardized yield token) rate
    /// or PT/market asset rate
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    RateKind public immutable RATE_KIND;

    /// @notice Address of the market
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    address public immutable MARKET;

    /// @notice Twap duration for the oracle
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    uint32 public immutable TWAP_DURATION;

    /// @notice Decimals of the underlying token
    /// @dev We make an assumption that the underlying decimals will
    /// not change throughout the lifetime of the Pendle market
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    uint8 public immutable UNDERLYING_DECIMALS;

    /// @notice Thrown if the duration is invalid
    error InvalidDuration();

    /// @notice Constructor for the implementation contract.
    /// @custom:oz-upgrades-unsafe-allow constructor
    /// @param market Pendle market
    /// @param ptOracle Pendle oracle
    /// @param rateKind Either PT_TO_ASSET or PT_TO_SY
    /// @param ptToken Pendle PT token
    /// @param underlyingToken Underlying token, can be either the market's asset or the interest bearing token
    /// @param resilientOracle Venus Oracle to get the underlying token price from
    /// @param twapDuration TWAP duration to call Pendle oracle with
    constructor(
        address market,
        address ptOracle,
        RateKind rateKind,
        address ptToken,
        address underlyingToken,
        address resilientOracle,
        uint32 twapDuration
    ) CorrelatedTokenOracle(ptToken, underlyingToken, resilientOracle) {
        ensureNonzeroAddress(market);
        ensureNonzeroAddress(ptOracle);
        ensureNonzeroValue(twapDuration);

        MARKET = market;
        PT_ORACLE = IPendlePtOracle(ptOracle);
        RATE_KIND = rateKind;
        TWAP_DURATION = twapDuration;
        UNDERLYING_DECIMALS = IERC20Metadata(UNDERLYING_TOKEN).decimals();

        (bool increaseCardinalityRequired, , bool oldestObservationSatisfied) = PT_ORACLE.getOracleState(
            MARKET,
            TWAP_DURATION
        );
        if (increaseCardinalityRequired || !oldestObservationSatisfied) {
            revert InvalidDuration();
        }
    }

    /// @notice Fetches the amount of underlying token for 1 PT
    /// @return amount The amount of underlying token (either the market's asset
    /// or the yield token) for 1 PT, adjusted for decimals such that the result
    /// has the same precision as the underlying token
    function _getUnderlyingAmount() internal view override returns (uint256) {
        uint256 rate;
        if (RATE_KIND == RateKind.PT_TO_SY) {
            rate = PT_ORACLE.getPtToSyRate(MARKET, TWAP_DURATION);
        } else {
            rate = PT_ORACLE.getPtToAssetRate(MARKET, TWAP_DURATION);
        }
        return ((10 ** UNDERLYING_DECIMALS) * rate) / 1e18;
    }
}
