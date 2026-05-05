// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/interfaces/IERC1363.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (interfaces/IERC1363.sol)

pragma solidity ^0.8.20;

import {IERC20} from "./IERC20.sol";
import {IERC165} from "./IERC165.sol";

/**
 * @title IERC1363
 * @dev Interface of the ERC-1363 standard as defined in the https://eips.ethereum.org/EIPS/eip-1363[ERC-1363].
 *
 * Defines an extension interface for ERC-20 tokens that supports executing code on a recipient contract
 * after `transfer` or `transferFrom`, or code on a spender contract after `approve`, in a single transaction.
 */
interface IERC1363 is IERC20, IERC165 {
    /*
     * Note: the ERC-165 identifier for this interface is 0xb0202a11.
     * 0xb0202a11 ===
     *   bytes4(keccak256('transferAndCall(address,uint256)')) ^
     *   bytes4(keccak256('transferAndCall(address,uint256,bytes)')) ^
     *   bytes4(keccak256('transferFromAndCall(address,address,uint256)')) ^
     *   bytes4(keccak256('transferFromAndCall(address,address,uint256,bytes)')) ^
     *   bytes4(keccak256('approveAndCall(address,uint256)')) ^
     *   bytes4(keccak256('approveAndCall(address,uint256,bytes)'))
     */

    /**
     * @dev Moves a `value` amount of tokens from the caller's account to `to`
     * and then calls {IERC1363Receiver-onTransferReceived} on `to`.
     * @param to The address which you want to transfer to.
     * @param value The amount of tokens to be transferred.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function transferAndCall(address to, uint256 value) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from the caller's account to `to`
     * and then calls {IERC1363Receiver-onTransferReceived} on `to`.
     * @param to The address which you want to transfer to.
     * @param value The amount of tokens to be transferred.
     * @param data Additional data with no specified format, sent in call to `to`.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function transferAndCall(address to, uint256 value, bytes calldata data) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to` using the allowance mechanism
     * and then calls {IERC1363Receiver-onTransferReceived} on `to`.
     * @param from The address which you want to send tokens from.
     * @param to The address which you want to transfer to.
     * @param value The amount of tokens to be transferred.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function transferFromAndCall(address from, address to, uint256 value) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to` using the allowance mechanism
     * and then calls {IERC1363Receiver-onTransferReceived} on `to`.
     * @param from The address which you want to send tokens from.
     * @param to The address which you want to transfer to.
     * @param value The amount of tokens to be transferred.
     * @param data Additional data with no specified format, sent in call to `to`.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function transferFromAndCall(address from, address to, uint256 value, bytes calldata data) external returns (bool);

    /**
     * @dev Sets a `value` amount of tokens as the allowance of `spender` over the
     * caller's tokens and then calls {IERC1363Spender-onApprovalReceived} on `spender`.
     * @param spender The address which will spend the funds.
     * @param value The amount of tokens to be spent.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function approveAndCall(address spender, uint256 value) external returns (bool);

    /**
     * @dev Sets a `value` amount of tokens as the allowance of `spender` over the
     * caller's tokens and then calls {IERC1363Spender-onApprovalReceived} on `spender`.
     * @param spender The address which will spend the funds.
     * @param value The amount of tokens to be spent.
     * @param data Additional data with no specified format, sent in call to `spender`.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function approveAndCall(address spender, uint256 value, bytes calldata data) external returns (bool);
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/interfaces/IERC165.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/IERC165.sol)

pragma solidity ^0.8.20;

import {IERC165} from "../utils/introspection/IERC165.sol";

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/interfaces/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/IERC20.sol)

pragma solidity ^0.8.20;

import {IERC20} from "../token/ERC20/IERC20.sol";

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Metadata.sol
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
// FILE: lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol
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
// FILE: lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.2.0) (token/ERC20/utils/SafeERC20.sol)

pragma solidity ^0.8.20;

import {IERC20} from "../IERC20.sol";
import {IERC1363} from "../../../interfaces/IERC1363.sol";

/**
 * @title SafeERC20
 * @dev Wrappers around ERC-20 operations that throw on failure (when the token
 * contract returns false). Tokens that return no value (and instead revert or
 * throw on failure) are also supported, non-reverting calls are assumed to be
 * successful.
 * To use this library you can add a `using SafeERC20 for IERC20;` statement to your contract,
 * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
 */
library SafeERC20 {
    /**
     * @dev An operation with an ERC-20 token failed.
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
     *
     * IMPORTANT: If the token implements ERC-7674 (ERC-20 with temporary allowance), and if the "client"
     * smart contract uses ERC-7674 to set temporary allowances, then the "client" smart contract should avoid using
     * this function. Performing a {safeIncreaseAllowance} or {safeDecreaseAllowance} operation on a token contract
     * that has a non-zero temporary allowance (for that particular owner-spender) will result in unexpected behavior.
     */
    function safeIncreaseAllowance(IERC20 token, address spender, uint256 value) internal {
        uint256 oldAllowance = token.allowance(address(this), spender);
        forceApprove(token, spender, oldAllowance + value);
    }

    /**
     * @dev Decrease the calling contract's allowance toward `spender` by `requestedDecrease`. If `token` returns no
     * value, non-reverting calls are assumed to be successful.
     *
     * IMPORTANT: If the token implements ERC-7674 (ERC-20 with temporary allowance), and if the "client"
     * smart contract uses ERC-7674 to set temporary allowances, then the "client" smart contract should avoid using
     * this function. Performing a {safeIncreaseAllowance} or {safeDecreaseAllowance} operation on a token contract
     * that has a non-zero temporary allowance (for that particular owner-spender) will result in unexpected behavior.
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
     *
     * NOTE: If the token implements ERC-7674, this function will not modify any temporary allowance. This function
     * only sets the "standard" allowance. Any temporary allowance will remain active, in addition to the value being
     * set here.
     */
    function forceApprove(IERC20 token, address spender, uint256 value) internal {
        bytes memory approvalCall = abi.encodeCall(token.approve, (spender, value));

        if (!_callOptionalReturnBool(token, approvalCall)) {
            _callOptionalReturn(token, abi.encodeCall(token.approve, (spender, 0)));
            _callOptionalReturn(token, approvalCall);
        }
    }

    /**
     * @dev Performs an {ERC1363} transferAndCall, with a fallback to the simple {ERC20} transfer if the target has no
     * code. This can be used to implement an {ERC721}-like safe transfer that rely on {ERC1363} checks when
     * targeting contracts.
     *
     * Reverts if the returned value is other than `true`.
     */
    function transferAndCallRelaxed(IERC1363 token, address to, uint256 value, bytes memory data) internal {
        if (to.code.length == 0) {
            safeTransfer(token, to, value);
        } else if (!token.transferAndCall(to, value, data)) {
            revert SafeERC20FailedOperation(address(token));
        }
    }

    /**
     * @dev Performs an {ERC1363} transferFromAndCall, with a fallback to the simple {ERC20} transferFrom if the target
     * has no code. This can be used to implement an {ERC721}-like safe transfer that rely on {ERC1363} checks when
     * targeting contracts.
     *
     * Reverts if the returned value is other than `true`.
     */
    function transferFromAndCallRelaxed(
        IERC1363 token,
        address from,
        address to,
        uint256 value,
        bytes memory data
    ) internal {
        if (to.code.length == 0) {
            safeTransferFrom(token, from, to, value);
        } else if (!token.transferFromAndCall(from, to, value, data)) {
            revert SafeERC20FailedOperation(address(token));
        }
    }

    /**
     * @dev Performs an {ERC1363} approveAndCall, with a fallback to the simple {ERC20} approve if the target has no
     * code. This can be used to implement an {ERC721}-like safe transfer that rely on {ERC1363} checks when
     * targeting contracts.
     *
     * NOTE: When the recipient address (`to`) has no code (i.e. is an EOA), this function behaves as {forceApprove}.
     * Opposedly, when the recipient address (`to`) has code, this function only attempts to call {ERC1363-approveAndCall}
     * once without retrying, and relies on the returned value to be true.
     *
     * Reverts if the returned value is other than `true`.
     */
    function approveAndCallRelaxed(IERC1363 token, address to, uint256 value, bytes memory data) internal {
        if (to.code.length == 0) {
            forceApprove(token, to, value);
        } else if (!token.approveAndCall(to, value, data)) {
            revert SafeERC20FailedOperation(address(token));
        }
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     *
     * This is a variant of {_callOptionalReturnBool} that reverts if call fails to meet the requirements.
     */
    function _callOptionalReturn(IERC20 token, bytes memory data) private {
        uint256 returnSize;
        uint256 returnValue;
        assembly ("memory-safe") {
            let success := call(gas(), token, 0, add(data, 0x20), mload(data), 0, 0x20)
            // bubble errors
            if iszero(success) {
                let ptr := mload(0x40)
                returndatacopy(ptr, 0, returndatasize())
                revert(ptr, returndatasize())
            }
            returnSize := returndatasize()
            returnValue := mload(0)
        }

        if (returnSize == 0 ? address(token).code.length == 0 : returnValue != 1) {
            revert SafeERC20FailedOperation(address(token));
        }
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     *
     * This is a variant of {_callOptionalReturn} that silently catches all reverts and returns a bool instead.
     */
    function _callOptionalReturnBool(IERC20 token, bytes memory data) private returns (bool) {
        bool success;
        uint256 returnSize;
        uint256 returnValue;
        assembly ("memory-safe") {
            success := call(gas(), token, 0, add(data, 0x20), mload(data), 0, 0x20)
            returnSize := returndatasize()
            returnValue := mload(0)
        }
        return success && (returnSize == 0 ? address(token).code.length > 0 : returnValue == 1);
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/utils/introspection/IERC165.sol
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
// FILE: src/fira_bonding/core/Market/MarketMathCore.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "../../libraries/math/LogExpMath.sol";
import "../../libraries/math/PMath.sol";

import "../../StandardizedYield/BCIndex.sol";

import "../../libraries/Errors.sol";
import "../../libraries/MiniHelpers.sol";

/**
 * @notice Complete state of a FiraMarket, loaded into memory for gas-efficient operations
 * @param totalBt Total Bond Token reserves
 * @param totalFw Total Fira Wrapped token reserves
 * @param totalLp Total LP token supply
 * @param treasury Address receiving fees
 * @param scalarRoot Scaling parameter for the pricing curve
 * @param expiry Unix timestamp when the market expires
 * @param lnFeeRateRoot Natural log of fee rate root
 * @param reserveFeePercent Percentage of fees sent to reserve (base 100)
 * @param lastLnImpliedRate Last recorded ln(impliedRate) after a trade
 */
struct MarketState {
    int256 totalBt;
    int256 totalFw;
    int256 totalLp;
    address treasury;
    /// immutable variables ///
    int256 scalarRoot;
    uint256 expiry;
    /// fee data ///
    uint256 lnFeeRateRoot;
    uint256 reserveFeePercent; // base 100
    uint256 lastLnImpliedRate;
}

/**
 * @notice Pre-computed parameters for trade calculations
 * @dev These values are expensive to compute, so we calculate them once per trade
 * @param rateScalar Time-adjusted scalar for the pricing curve
 * @param totalAsset Total FW reserves converted to underlying asset units
 * @param rateAnchor Current anchor point for the exchange rate calculation
 * @param feeRate Time-adjusted fee multiplier
 */
struct MarketPreCompute {
    int256 rateScalar;
    int256 totalAsset;
    int256 rateAnchor;
    int256 feeRate;
}

/**
 * @title MarketMathCore
 * @notice Core mathematical library for FiraMarket AMM operations
 * @dev Implements an AMM with time-decaying implied interest rates.
 *      The pricing model uses logit functions to maintain exchange rates above 1.0,
 *      ensuring BT always trades at a discount to FW (reflecting the time value of money).
 */
library MarketMathCore {
    using PMath for uint256;
    using PMath for int256;
    using LogExpMath for int256;
    using BCIndexLib for BCIndex;

    /// @dev Minimum LP tokens locked forever to prevent rounding exploits
    int256 internal constant MINIMUM_LIQUIDITY = 10 ** 3;

    /// @dev Base for percentage calculations (100 = 100%)
    int256 internal constant PERCENTAGE_DECIMALS = 100;

    /// @dev Seconds in a day
    uint256 internal constant DAY = 86400;

    /// @dev Annualized time period for implied rate calculations (365 days)
    uint256 internal constant IMPLIED_RATE_TIME = 365 * DAY;

    /// @dev Maximum proportion of BT in the pool (96%) to prevent extreme prices
    int256 internal constant MAX_MARKET_PROPORTION = (1e18 * 96) / 100;

    /* ///////////////////////////////////////////////////////////////
                UINT FUNCTIONS TO PROXY TO CORE FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Adds liquidity to the market, receiving LP tokens in return
     * @dev Wrapper around addLiquidityCore that handles uint256 conversions
     * @param market The current market state (will be modified)
     * @param fwDesired Maximum FW tokens to deposit
     * @param btDesired Maximum BT tokens to deposit
     * @param blockTime Current block timestamp
     * @return lpToReserve LP tokens locked as minimum liquidity (only on first deposit)
     * @return lpToAccount LP tokens minted to the depositor
     * @return fwUsed Actual FW tokens used
     * @return btUsed Actual BT tokens used
     */
    function addLiquidity(MarketState memory market, uint256 fwDesired, uint256 btDesired, uint256 blockTime)
        internal
        pure
        returns (uint256 lpToReserve, uint256 lpToAccount, uint256 fwUsed, uint256 btUsed)
    {
        (int256 _lpToReserve, int256 _lpToAccount, int256 _fwUsed, int256 _btUsed) =
            addLiquidityCore(market, fwDesired.Int(), btDesired.Int(), blockTime);

        lpToReserve = _lpToReserve.Uint();
        lpToAccount = _lpToAccount.Uint();
        fwUsed = _fwUsed.Uint();
        btUsed = _btUsed.Uint();
    }

    /**
     * @notice Removes liquidity from the market by burning LP tokens
     * @dev Wrapper around removeLiquidityCore that handles uint256 conversions
     * @param market The current market state (will be modified)
     * @param lpToRemove Amount of LP tokens to burn
     * @return netFwToAccount FW tokens returned to the withdrawer
     * @return netBtToAccount BT tokens returned to the withdrawer
     */
    function removeLiquidity(MarketState memory market, uint256 lpToRemove)
        internal
        pure
        returns (uint256 netFwToAccount, uint256 netBtToAccount)
    {
        (int256 _fwToAccount, int256 _btToAccount) = removeLiquidityCore(market, lpToRemove.Int());

        netFwToAccount = _fwToAccount.Uint();
        netBtToAccount = _btToAccount.Uint();
    }

    /**
     * @notice Swaps an exact amount of BT for FW
     * @dev Wrapper around executeTradeCore that handles uint256 conversions
     * @param market The current market state (will be modified)
     * @param index Current BC index for FW/asset conversion
     * @param exactBtToMarket Exact amount of BT to sell
     * @param blockTime Current block timestamp
     * @return netFwToAccount FW tokens received by the swapper
     * @return netFwFee Total fee charged in FW
     * @return netFwToReserve Portion of fee sent to reserve
     */
    function swapExactBtForFw(MarketState memory market, BCIndex index, uint256 exactBtToMarket, uint256 blockTime)
        internal
        pure
        returns (uint256 netFwToAccount, uint256 netFwFee, uint256 netFwToReserve)
    {
        (int256 _netFwToAccount, int256 _netFwFee, int256 _netFwToReserve) =
            executeTradeCore(market, index, exactBtToMarket.neg(), blockTime);

        netFwToAccount = _netFwToAccount.Uint();
        netFwFee = _netFwFee.Uint();
        netFwToReserve = _netFwToReserve.Uint();
    }

    /**
     * @notice Swaps FW for an exact amount of BT
     * @dev Wrapper around executeTradeCore that handles uint256 conversions
     * @param market The current market state (will be modified)
     * @param index Current BC index for FW/asset conversion
     * @param exactbtToAccount Exact amount of BT to receive
     * @param blockTime Current block timestamp
     * @return netFwToMarket FW tokens paid by the swapper
     * @return netFwFee Total fee charged in FW
     * @return netFwToReserve Portion of fee sent to reserve
     */
    function swapFwForExactBt(MarketState memory market, BCIndex index, uint256 exactbtToAccount, uint256 blockTime)
        internal
        pure
        returns (uint256 netFwToMarket, uint256 netFwFee, uint256 netFwToReserve)
    {
        (int256 _netFwToAccount, int256 _netFwFee, int256 _netFwToReserve) =
            executeTradeCore(market, index, exactbtToAccount.Int(), blockTime);

        netFwToMarket = _netFwToAccount.neg().Uint();
        netFwFee = _netFwFee.Uint();
        netFwToReserve = _netFwToReserve.Uint();
    }

    /* ///////////////////////////////////////////////////////////////
                    CORE FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Core logic for adding liquidity to the market
     * @dev On first deposit, mints sqrt(fw * bt) LP tokens and locks MINIMUM_LIQUIDITY.
     *      On subsequent deposits, mints LP proportional to the limiting token.
     * @param market The current market state (will be modified)
     * @param FwDesired Maximum FW tokens to deposit
     * @param btDesired Maximum BT tokens to deposit
     * @param blockTime Current block timestamp
     * @return lpToReserve LP tokens to lock as minimum liquidity
     * @return lpToAccount LP tokens to mint to depositor
     * @return FwUsed Actual FW tokens used
     * @return btUsed Actual BT tokens used
     */
    function addLiquidityCore(MarketState memory market, int256 FwDesired, int256 btDesired, uint256 blockTime)
        internal
        pure
        returns (int256 lpToReserve, int256 lpToAccount, int256 FwUsed, int256 btUsed)
    {
        /// ------------------------------------------------------------
        /// CHECKS
        /// ------------------------------------------------------------
        if (FwDesired == 0 || btDesired == 0) revert Errors.MarketZeroAmountsInput();
        if (MiniHelpers.isExpired(market.expiry, blockTime)) revert Errors.MarketExpired();

        /// ------------------------------------------------------------
        /// MATH
        /// ------------------------------------------------------------
        if (market.totalLp == 0) {
            lpToAccount = PMath.sqrt((FwDesired * btDesired).Uint()).Int() - MINIMUM_LIQUIDITY;
            lpToReserve = MINIMUM_LIQUIDITY;
            FwUsed = FwDesired;
            btUsed = btDesired;
        } else {
            int256 netLpBybt = (btDesired * market.totalLp) / market.totalBt;
            int256 netLpByFw = (FwDesired * market.totalLp) / market.totalFw;
            if (netLpBybt < netLpByFw) {
                lpToAccount = netLpBybt;
                btUsed = btDesired;
                FwUsed = (market.totalFw * lpToAccount).rawDivUp(market.totalLp);
            } else {
                lpToAccount = netLpByFw;
                FwUsed = FwDesired;
                btUsed = (market.totalBt * lpToAccount).rawDivUp(market.totalLp);
            }
        }

        if (lpToAccount <= 0 || FwUsed <= 0 || btUsed <= 0) revert Errors.MarketZeroAmountsOutput();

        /// ------------------------------------------------------------
        /// WRITE
        /// ------------------------------------------------------------
        market.totalFw += FwUsed;
        market.totalBt += btUsed;
        market.totalLp += lpToAccount + lpToReserve;
    }

    /**
     * @notice Core logic for removing liquidity from the market
     * @dev Returns proportional share of both BT and FW reserves
     * @param market The current market state (will be modified)
     * @param lpToRemove Amount of LP tokens to burn
     * @return netFwToAccount FW tokens to return
     * @return netbtToAccount BT tokens to return
     */
    function removeLiquidityCore(MarketState memory market, int256 lpToRemove)
        internal
        pure
        returns (int256 netFwToAccount, int256 netbtToAccount)
    {
        /// ------------------------------------------------------------
        /// CHECKS
        /// ------------------------------------------------------------
        if (lpToRemove == 0) revert Errors.MarketZeroAmountsInput();

        /// ------------------------------------------------------------
        /// MATH
        /// ------------------------------------------------------------
        netFwToAccount = (lpToRemove * market.totalFw) / market.totalLp;
        netbtToAccount = (lpToRemove * market.totalBt) / market.totalLp;

        if (netFwToAccount == 0 && netbtToAccount == 0) revert Errors.MarketZeroAmountsOutput();

        /// ------------------------------------------------------------
        /// WRITE
        /// ------------------------------------------------------------
        market.totalLp = market.totalLp.subNoNeg(lpToRemove);
        market.totalBt = market.totalBt.subNoNeg(netbtToAccount);
        market.totalFw = market.totalFw.subNoNeg(netFwToAccount);
    }

    /**
     * @notice Core logic for executing a BT/FW swap
     * @dev Positive netbtToAccount = buying BT (selling FW), negative = selling BT (buying FW)
     * @param market The current market state (will be modified)
     * @param index Current BC index for FW/asset conversion
     * @param netbtToAccount Net BT flow to swapper (positive = receiving, negative = paying)
     * @param blockTime Current block timestamp
     * @return netFwToAccount Net FW flow to swapper (positive = receiving, negative = paying)
     * @return netFwFee Total fee in FW terms
     * @return netFwToReserve Portion of fee sent to reserve
     */
    function executeTradeCore(MarketState memory market, BCIndex index, int256 netbtToAccount, uint256 blockTime)
        internal
        pure
        returns (int256 netFwToAccount, int256 netFwFee, int256 netFwToReserve)
    {
        /// ------------------------------------------------------------
        /// CHECKS
        /// ------------------------------------------------------------
        if (MiniHelpers.isExpired(market.expiry, blockTime)) revert Errors.MarketExpired();
        if (market.totalBt <= netbtToAccount) {
            revert Errors.MarketInsufficientBtForTrade(market.totalBt, netbtToAccount);
        }

        /// ------------------------------------------------------------
        /// MATH
        /// ------------------------------------------------------------
        MarketPreCompute memory comp = getMarketPreCompute(market, index, blockTime);

        (netFwToAccount, netFwFee, netFwToReserve) = calcTrade(market, comp, index, netbtToAccount);

        /// ------------------------------------------------------------
        /// WRITE
        /// ------------------------------------------------------------
        _setNewMarketStateTrade(market, comp, index, netbtToAccount, netFwToAccount, netFwToReserve, blockTime);
    }

    /**
     * @notice Pre-computes expensive parameters needed for trade calculations
     * @dev Calculates rate scalar, total asset value, rate anchor, and fee rate
     * @param market The current market state
     * @param index Current BC index for FW/asset conversion
     * @param blockTime Current block timestamp
     * @return res Pre-computed values for trade math
     */
    function getMarketPreCompute(MarketState memory market, BCIndex index, uint256 blockTime)
        internal
        pure
        returns (MarketPreCompute memory res)
    {
        if (MiniHelpers.isExpired(market.expiry, blockTime)) revert Errors.MarketExpired();

        uint256 timeToExpiry = market.expiry - blockTime;

        res.rateScalar = _getRateScalar(market, timeToExpiry);
        res.totalAsset = index.fwToAsset(market.totalFw);

        if (market.totalBt == 0 || res.totalAsset == 0) {
            revert Errors.MarketZeroTotalBtOrTotalAsset(market.totalBt, res.totalAsset);
        }

        res.rateAnchor =
            _getRateAnchor(market.totalBt, market.lastLnImpliedRate, res.totalAsset, res.rateScalar, timeToExpiry);
        res.feeRate = _getExchangeRateFromImpliedRate(market.lnFeeRateRoot, timeToExpiry);
    }

    /**
     * @notice Calculates the FW amounts for a given BT trade
     * @dev Applies the exchange rate formula and fee calculations
     * @param market The current market state
     * @param comp Pre-computed market parameters
     * @param index Current BC index for FW/asset conversion
     * @param netBtToAccount Net BT flow to swapper
     * @return netFwToAccount Net FW flow to swapper
     * @return netFwFee Total fee in FW
     * @return netFwToReserve Fee portion for reserve
     */
    function calcTrade(MarketState memory market, MarketPreCompute memory comp, BCIndex index, int256 netBtToAccount)
        internal
        pure
        returns (int256 netFwToAccount, int256 netFwFee, int256 netFwToReserve)
    {
        int256 preFeeExchangeRate =
            _getExchangeRate(market.totalBt, comp.totalAsset, comp.rateScalar, comp.rateAnchor, netBtToAccount);

        int256 preFeeAssetToAccount = netBtToAccount.divDown(preFeeExchangeRate).neg();
        int256 fee = comp.feeRate;

        if (netBtToAccount > 0) {
            int256 postFeeExchangeRate = preFeeExchangeRate.divDown(fee);
            if (postFeeExchangeRate < PMath.IONE) {
                revert Errors.MarketExchangeRateBelowOne(postFeeExchangeRate);
            }

            fee = preFeeAssetToAccount.mulDown(PMath.IONE - fee);
        } else {
            fee = ((preFeeAssetToAccount * (PMath.IONE - fee)) / fee).neg();
        }

        int256 netAssetToReserve = (fee * market.reserveFeePercent.Int()) / PERCENTAGE_DECIMALS;
        int256 netAssetToAccount = preFeeAssetToAccount - fee;

        netFwToAccount =
            netAssetToAccount < 0 ? index.assetToFwUp(netAssetToAccount) : index.assetToFw(netAssetToAccount);
        netFwFee = index.assetToFw(fee);
        netFwToReserve = index.assetToFw(netAssetToReserve);
    }

    /**
     * @notice Updates market state after a trade
     * @dev Adjusts reserves and recalculates the implied rate
     * @param market The current market state (will be modified)
     * @param comp Pre-computed market parameters
     * @param index Current BC index for FW/asset conversion
     * @param netbtToAccount Net BT flow to swapper
     * @param netFwToAccount Net FW flow to swapper
     * @param netFwToReserve FW fee portion sent to reserve
     * @param blockTime Current block timestamp
     */
    function _setNewMarketStateTrade(
        MarketState memory market,
        MarketPreCompute memory comp,
        BCIndex index,
        int256 netbtToAccount,
        int256 netFwToAccount,
        int256 netFwToReserve,
        uint256 blockTime
    ) internal pure {
        uint256 timeToExpiry = market.expiry - blockTime;

        market.totalBt = market.totalBt.subNoNeg(netbtToAccount);
        market.totalFw = market.totalFw.subNoNeg(netFwToAccount + netFwToReserve);

        market.lastLnImpliedRate = _getLnImpliedRate(
            market.totalBt, index.fwToAsset(market.totalFw), comp.rateScalar, comp.rateAnchor, timeToExpiry
        );

        if (market.lastLnImpliedRate == 0) revert Errors.MarketZeroLnImpliedRate();
    }

    /**
     * @notice Calculates the rate anchor from the last implied rate
     * @dev The anchor is adjusted so that the current proportion yields the last implied rate
     * @param totalbt Total BT reserves
     * @param lastLnImpliedRate Last recorded natural log of the implied rate
     * @param totalAsset Total FW reserves in asset terms
     * @param rateScalar Time-adjusted scaling parameter
     * @param timeToExpiry Seconds until expiry
     * @return rateAnchor The calculated rate anchor
     */
    function _getRateAnchor(
        int256 totalbt,
        uint256 lastLnImpliedRate,
        int256 totalAsset,
        int256 rateScalar,
        uint256 timeToExpiry
    ) internal pure returns (int256 rateAnchor) {
        int256 newExchangeRate = _getExchangeRateFromImpliedRate(lastLnImpliedRate, timeToExpiry);

        if (newExchangeRate < PMath.IONE) revert Errors.MarketExchangeRateBelowOne(newExchangeRate);

        {
            int256 proportion = totalbt.divDown(totalbt + totalAsset);

            int256 lnProportion = _logProportion(proportion);

            rateAnchor = newExchangeRate - lnProportion.divDown(rateScalar);
        }
    }

    /**
     * @notice Calculates the natural log of the implied interest rate
     * @dev Derived from the current exchange rate and time to expiry
     * @param totalbt Total BT reserves
     * @param totalAsset Total FW reserves in asset terms
     * @param rateScalar Time-adjusted scaling parameter
     * @param rateAnchor Current rate anchor
     * @param timeToExpiry Seconds until expiry
     * @return lnImpliedRate The natural log of the annualized implied rate
     */
    function _getLnImpliedRate(
        int256 totalbt,
        int256 totalAsset,
        int256 rateScalar,
        int256 rateAnchor,
        uint256 timeToExpiry
    ) internal pure returns (uint256 lnImpliedRate) {
        // This will check for exchange rates < PMath.IONE
        int256 exchangeRate = _getExchangeRate(totalbt, totalAsset, rateScalar, rateAnchor, 0);

        // exchangeRate >= 1 so its ln >= 0
        uint256 lnRate = exchangeRate.ln().Uint();

        lnImpliedRate = (lnRate * IMPLIED_RATE_TIME) / timeToExpiry;
    }

    /**
     * @notice Converts an implied rate to an exchange rate given time to expiry
     * @dev Uses the formula E = e^(rt) where r is the implied rate and t is time
     * @param lnImpliedRate Natural log of the annualized implied rate
     * @param timeToExpiry Seconds until expiry
     * @return exchangeRate The exchange rate (BT per FW, scaled by 1e18)
     */
    function _getExchangeRateFromImpliedRate(uint256 lnImpliedRate, uint256 timeToExpiry)
        internal
        pure
        returns (int256 exchangeRate)
    {
        uint256 rt = (lnImpliedRate * timeToExpiry) / IMPLIED_RATE_TIME;

        exchangeRate = LogExpMath.exp(rt.Int());
    }

    /**
     * @notice Calculates the exchange rate for a given trade
     * @dev Uses logit function: exchangeRate = ln(proportion / (1 - proportion)) / rateScalar + rateAnchor
     * @param totalbt Total BT reserves
     * @param totalAsset Total FW reserves in asset terms
     * @param rateScalar Time-adjusted scaling parameter
     * @param rateAnchor Current rate anchor
     * @param netbtToAccount Net BT being traded (for post-trade rate calculation)
     * @return exchangeRate The exchange rate (always >= 1e18)
     */
    function _getExchangeRate(
        int256 totalbt,
        int256 totalAsset,
        int256 rateScalar,
        int256 rateAnchor,
        int256 netbtToAccount
    ) internal pure returns (int256 exchangeRate) {
        int256 numerator = totalbt.subNoNeg(netbtToAccount);

        int256 proportion = (numerator.divDown(totalbt + totalAsset));

        if (proportion > MAX_MARKET_PROPORTION) {
            revert Errors.MarketProportionTooHigh(proportion, MAX_MARKET_PROPORTION);
        }

        int256 lnProportion = _logProportion(proportion);

        exchangeRate = lnProportion.divDown(rateScalar) + rateAnchor;

        if (exchangeRate < PMath.IONE) revert Errors.MarketExchangeRateBelowOne(exchangeRate);
    }

    /**
     * @notice Calculates the logit of a proportion: ln(p / (1-p))
     * @dev Used in the pricing curve formula
     * @param proportion The proportion value (must be < 1e18)
     * @return res The logit value
     */
    function _logProportion(int256 proportion) internal pure returns (int256 res) {
        if (proportion == PMath.IONE) revert Errors.MarketProportionMustNotEqualOne();

        int256 logitP = proportion.divDown(PMath.IONE - proportion);

        res = logitP.ln();
    }

    /**
     * @notice Calculates the time-adjusted rate scalar
     * @dev Scales inversely with time to expiry, making prices more sensitive near expiry
     * @param market The market state containing scalarRoot
     * @param timeToExpiry Seconds until expiry
     * @return rateScalar The adjusted rate scalar
     */
    function _getRateScalar(MarketState memory market, uint256 timeToExpiry) internal pure returns (int256 rateScalar) {
        rateScalar = (market.scalarRoot * IMPLIED_RATE_TIME.Int()) / timeToExpiry.Int();
        if (rateScalar <= 0) revert Errors.MarketRateScalarBelowZero(rateScalar);
    }

    /**
     * @notice Sets the initial implied rate when the market is first initialized
     * @dev Called only once when the first LP deposits liquidity
     * @param market The market state (will be modified)
     * @param index Current BC index for FW/asset conversion
     * @param initialAnchor The configured initial anchor value
     * @param blockTime Current block timestamp
     */
    function setInitialLnImpliedRate(MarketState memory market, BCIndex index, int256 initialAnchor, uint256 blockTime)
        internal
        pure
    {
        /// ------------------------------------------------------------
        /// CHECKS
        /// ------------------------------------------------------------
        if (MiniHelpers.isExpired(market.expiry, blockTime)) revert Errors.MarketExpired();

        /// ------------------------------------------------------------
        /// MATH
        /// ------------------------------------------------------------
        int256 totalAsset = index.fwToAsset(market.totalFw);
        uint256 timeToExpiry = market.expiry - blockTime;
        int256 rateScalar = _getRateScalar(market, timeToExpiry);

        /// ------------------------------------------------------------
        /// WRITE
        /// ------------------------------------------------------------
        market.lastLnImpliedRate =
            _getLnImpliedRate(market.totalBt, totalAsset, rateScalar, initialAnchor, timeToExpiry);
    }
}

// ============================================================
// FILE: src/fira_bonding/libraries/Errors.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

/// @title Errors
/// @notice Centralized error definitions for the Fira protocol
/// @dev All custom errors are defined here to maintain consistency and reduce bytecode size
///      through error code reuse across contracts.
library Errors {
    // BulkSeller
    error BulkInsufficientFwForTrade(uint256 currentAmount, uint256 requiredAmount);
    error BulkInsufficientTokenForTrade(uint256 currentAmount, uint256 requiredAmount);
    error BulkInSufficientFwOut(uint256 actualFwOut, uint256 requiredFwOut);
    error BulkInSufficientTokenOut(uint256 actualTokenOut, uint256 requiredTokenOut);
    error BulkInsufficientFwReceived(uint256 actualBalance, uint256 requiredBalance);
    error BulkNotMaintainer();
    error BulkNotAdmin();
    error BulkSellerAlreadyExisted(address token, address FW, address bulk);
    error BulkSellerInvalidToken(address token, address FW);
    error BulkBadRateTokenToFw(uint256 actualRate, uint256 currentRate, uint256 eps);
    error BulkBadRateFwToToken(uint256 actualRate, uint256 currentRate, uint256 eps);

    // APPROX
    error ApproxFail();
    error ApproxParamsInvalid(uint256 guessMin, uint256 guessMax, uint256 eps);
    error ApproxBinarySearchInputInvalid(
        uint256 approxGuessMin, uint256 approxGuessMax, uint256 minGuessMin, uint256 maxGuessMax
    );

    // MARKET + MARKET MATH CORE
    error MarketExpired();
    error MarketZeroAmountsInput();
    error MarketZeroAmountsOutput();
    error MarketZeroLnImpliedRate();
    error MarketInsufficientBtForTrade(int256 currentAmount, int256 requiredAmount);
    error MarketInsufficientBtReceived(uint256 actualBalance, uint256 requiredBalance);
    error MarketInsufficientFwReceived(uint256 actualBalance, uint256 requiredBalance);
    error MarketZeroTotalBtOrTotalAsset(int256 totalBw, int256 totalAsset);
    error MarketExchangeRateBelowOne(int256 exchangeRate);
    error MarketProportionMustNotEqualOne();
    error MarketRateScalarBelowZero(int256 rateScalar);
    error MarketScalarRootBelowZero(int256 scalarRoot);
    error MarketProportionTooHigh(int256 proportion, int256 maxProportion);

    error OracleUninitialized();
    error OracleTargetTooOld(uint32 target, uint32 oldest);
    error OracleZeroCardinality();

    error MarketFactoryExpiredBt();
    error MarketFactoryInvalidBt();
    error MarketFactoryMarketExists();

    error MarketFactoryLnFeeRateRootTooHigh(uint80 lnFeeRateRoot, uint256 maxLnFeeRateRoot);
    error MarketFactoryOverriddenFeeTooHigh(uint80 overriddenFee, uint256 marketLnFeeRateRoot);
    error MarketFactoryReserveFeePercentTooHigh(uint8 reserveFeePercent, uint8 maxReserveFeePercent);
    error MarketFactoryZeroTreasury();
    error MarketFactoryInitialAnchorTooLow(int256 initialAnchor, int256 minInitialAnchor);
    error MFNotFiraMarket(address addr);

    // ROUTER
    error RouterInsufficientLpOut(uint256 actualLpOut, uint256 requiredLpOut);
    error RouterInsufficientFwOut(uint256 actualFwOut, uint256 requiredFwOut);
    error RouterInsufficientBtOut(uint256 actualBwOut, uint256 requiredBwOut);
    error RouterInsufficientCtOut(uint256 actualCtOut, uint256 requiredCtOut);
    error RouterInsufficientPYOut(uint256 actualPYOut, uint256 requiredPYOut);
    error RouterInsufficientTokenOut(uint256 actualTokenOut, uint256 requiredTokenOut);
    error RouterInsufficientFwRepay(uint256 actualFwRepay, uint256 requiredFwRepay);
    error RouterInsufficientBtRepay(uint256 actualBwRepay, uint256 requiredBwRepay);
    error RouterNotAllFWUsed(uint256 netFwDesired, uint256 netFwUsed);

    error RouterTimeRangeZero();
    error RouterCallbackNotFiraMarket(address caller);
    error RouterInvalidAction(bytes4 selector);
    error RouterInvalidFacet(address facet);

    error RouterKyberSwapDataZero();

    error SimulationResults(bool success, bytes res);

    // YIELD CONTRACT
    error YCExpired();
    error YCNotExpired();
    error YieldContractInsufficientFw(uint256 actualFw, uint256 requiredFw);
    error YCNothingToRedeem();
    error YCPostExpiryDataNotSet();
    error YCNoFloatingFw();

    // YieldFactory
    error YCFactoryInvalidExpiry();
    error YCFactoryYieldContractExisted();
    error YCFactoryZeroExpiryDivisor();
    error YCFactoryZeroTreasury();
    error YCFactoryInterestFeeRateTooHigh(uint256 interestFeeRate, uint256 maxInterestFeeRate);
    error YCFactoryRewardFeeRateTooHigh(uint256 newRewardFeeRate, uint256 maxRewardFeeRate);

    //FW
    error FWInvalidTokenIn(address token);
    error FWInvalidTokenOut(address token);
    error FWZeroDeposit();
    error FWZeroRedeem();
    error FWInsufficientSharesOut(uint256 actualSharesOut, uint256 requiredSharesOut);
    error FWInsufficientTokenOut(uint256 actualTokenOut, uint256 requiredTokenOut);

    // FW-specific
    error FWQiTokenMintFailed(uint256 errCode);
    error FWQiTokenRedeemFailed(uint256 errCode);
    error FWQiTokenRedeemRewardsFailed(uint256 rewardAccruedType0, uint256 rewardAccruedType1);
    error FWQiTokenBorrowRateTooHigh(uint256 borrowRate, uint256 borrowRateMax);

    error FWCurveInvalidPid();
    error FWCurve3crvPoolNotFound();

    error FWApeDepositAmountTooSmall(uint256 amountDeposited);
    error FWBalancerInvalidPid();
    error FWInvalidRewardToken(address token);

    error FWStargateRedeemCapExceeded(uint256 amountLpDesired, uint256 amountLpRedeemable);

    error FWBalancerReentrancy();

    /// @dev Reverts when FW exchangeRate is 0 but totalSupply > 0 (total vault wipeout)
    error FWFullWipeout();

    error NotFromTrustedRemote(uint16 srcChainId, bytes path);

    error ApxETHNotEnoughBuffer();

    /// @dev Error for when caller is not the pauser
    error FWOnlyPauser();

    /// @dev Error for when deposits are paused
    error FWDepositsPaused();

    /// @dev Error for when redemptions are paused
    error FWRedemptionsPaused();

    // Cross-Chain
    error MsgNotFromSendEndpoint(uint16 srcChainId, bytes path);
    error MsgNotFromReceiveEndpoint(address sender);
    error InsufficientFeeToSendMsg(uint256 currentFee, uint256 requiredFee);
    error ApproxDstExecutionGasNotSet();
    error InvalidRetryData();

    // GENERIC MSG
    error ArrayLengthMismatch();
    error ArrayEmpty();
    error ArrayOutOfBounds();
    error ZeroAddress();
    error FailedToSendEther();
    error InvalidMerkleProof();

    error OnlyLayerZeroEndpoint();
    error OnlyCT();
    error OnlyYCFactory();
    error OnlyWhitelisted();
    error OnlyLI();

    // Swap Aggregator
    error SAInsufficientTokenIn(address tokenIn, uint256 amountExpected, uint256 amountActual);
    error UnsupportedSelector(uint256 aggregatorType, bytes4 selector);
}

// ============================================================
// FILE: src/fira_bonding/libraries/math/LogExpMath.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
// Permission is hereby granted, free of charge, to any person obtaining a copy of this software and
// associated
// documentation files (the “Software”), to deal in the Software without restriction, including
// without limitation the
// rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the
// Software, and to
// permit persons to whom the Software is furnished to do so, subject to the following conditions:

// The above copyright notice and this permission notice shall be included in all copies or
// substantial portions of the
// Software.

// THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING
// BUT NOT LIMITED TO THE
// WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT
// SHALL THE AUTHORS OR
// COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
// CONTRACT, TORT OR
// OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
// IN THE SOFTWARE.

pragma solidity ^0.8.0;

/* solhint-disable */

/// @title LogExpMath
/// @notice Exponentiation and logarithm functions for 18-decimal fixed-point numbers
/// @dev Implements exp(x), ln(x), and pow(x,y) for 1e18-scaled fixed-point numbers.
///      Exponentiation and logarithm with arbitrary bases are computed via conversion
///      to natural exponentiation and logarithm (base e).
/// @author Fernando Martinelli - @fernandomartinelli
/// @author Sergio Yuhjtman - @sergioyuhjtman
/// @author Daniel Fernandez - @dmf7z
library LogExpMath {
    // All fixed point multiplications and divisions are inlined. This means we need to divide by
    // ONE when multiplying
    // two numbers, and multiply by ONE when dividing them.

    // All arguments and return values are 18 decimal fixed point numbers.
    int256 constant ONE_18 = 1e18;

    // Internally, intermediate values are computed with higher precision as 20 decimal fixed point
    // numbers, and in the
    // case of ln36, 36 decimals.
    int256 constant ONE_20 = 1e20;
    int256 constant ONE_36 = 1e36;

    // The domain of natural exponentiation is bound by the word size and number of decimals used.
    //
    // Because internally the result will be stored using 20 decimals, the largest possible result
    //is
    // (2^255 - 1) / 10^20, which makes the largest exponent ln((2^255 - 1) / 10^20) =
    // 130.700829182905140221.
    // The smallest possible result is 10^(-18), which makes largest negative argument
    // ln(10^(-18)) = -41.446531673892822312.
    // We use 130.0 and -41.0 to have some safety margin.
    int256 constant MAX_NATURAL_EXPONENT = 130e18;
    int256 constant MIN_NATURAL_EXPONENT = -41e18;

    // Bounds for ln_36's argument. Both ln(0.9) and ln(1.1) can be represented with 36 decimal
    // places in a fixed point
    // 256 bit integer.
    int256 constant LN_36_LOWER_BOUND = ONE_18 - 1e17;
    int256 constant LN_36_UPPER_BOUND = ONE_18 + 1e17;

    uint256 constant MILD_EXPONENT_BOUND = 2 ** 254 / uint256(ONE_20);

    // 18 decimal constants
    int256 constant x0 = 128000000000000000000; // 2ˆ7
    int256 constant a0 = 38877084059945950922200000000000000000000000000000000000; // eˆ(x0)
        // (no decimals)
    int256 constant x1 = 64000000000000000000; // 2ˆ6
    int256 constant a1 = 6235149080811616882910000000; // eˆ(x1) (no decimals)

    // 20 decimal constants
    int256 constant x2 = 3200000000000000000000; // 2ˆ5
    int256 constant a2 = 7896296018268069516100000000000000; // eˆ(x2)
    int256 constant x3 = 1600000000000000000000; // 2ˆ4
    int256 constant a3 = 888611052050787263676000000; // eˆ(x3)
    int256 constant x4 = 800000000000000000000; // 2ˆ3
    int256 constant a4 = 298095798704172827474000; // eˆ(x4)
    int256 constant x5 = 400000000000000000000; // 2ˆ2
    int256 constant a5 = 5459815003314423907810; // eˆ(x5)
    int256 constant x6 = 200000000000000000000; // 2ˆ1
    int256 constant a6 = 738905609893065022723; // eˆ(x6)
    int256 constant x7 = 100000000000000000000; // 2ˆ0
    int256 constant a7 = 271828182845904523536; // eˆ(x7)
    int256 constant x8 = 50000000000000000000; // 2ˆ-1
    int256 constant a8 = 164872127070012814685; // eˆ(x8)
    int256 constant x9 = 25000000000000000000; // 2ˆ-2
    int256 constant a9 = 128402541668774148407; // eˆ(x9)
    int256 constant x10 = 12500000000000000000; // 2ˆ-3
    int256 constant a10 = 113314845306682631683; // eˆ(x10)
    int256 constant x11 = 6250000000000000000; // 2ˆ-4
    int256 constant a11 = 106449445891785942956; // eˆ(x11)

    /**
     * @dev Natural exponentiation (e^x) with signed 18 decimal fixed point exponent.
     *
     * Reverts if `x` is smaller than MIN_NATURAL_EXPONENT, or larger than `MAX_NATURAL_EXPONENT`.
     */
    function exp(int256 x) internal pure returns (int256) {
        unchecked {
            require(x >= MIN_NATURAL_EXPONENT && x <= MAX_NATURAL_EXPONENT, "Invalid exponent");

            if (x < 0) {
                // We only handle positive exponents: e^(-x) is computed as 1 / e^x. We can safely
                // make x positive since
                //it
                // fits in the signed 256 bit range (as it is larger than MIN_NATURAL_EXPONENT).
                // Fixed point division requires multiplying by ONE_18.
                return ((ONE_18 * ONE_18) / exp(-x));
            }

            // First, we use the fact that e^(x+y) = e^x * e^y to decompose x into a sum of powers
            // of two, which we call
            // x_n,
            // where x_n == 2^(7 - n), and e^x_n = a_n has been precomputed. We choose the first
            // x_n, x0, to equal 2^7
            // because all larger powers are larger than MAX_NATURAL_EXPONENT, and therefore not
            // present in the
            // decomposition.
            // At the end of this process we will have the product of all e^x_n = a_n that apply,
            // and the remainder of
            // this
            // decomposition, which will be lower than the smallest x_n.
            // exp(x) = k_0 * a_0 * k_1 * a_1 * ... + k_n * a_n * exp(remainder), where each k_n
            // equals either 0 or 1.
            // We mutate x by subtracting x_n, making it the remainder of the decomposition.

            // The first two a_n (e^(2^7) and e^(2^6)) are too large if stored as 18 decimal
            // numbers, and could cause
            // intermediate overflows. Instead we store them as plain integers, with 0 decimals.
            // Additionally, x0 + x1 is larger than MAX_NATURAL_EXPONENT, which means they will not
            // both be present in
            // the
            // decomposition.

            // For each x_n, we test if that term is present in the decomposition (if x is larger
            // than it), and if so
            // deduct
            // it and compute the accumulated product.

            int256 firstAN;
            if (x >= x0) {
                x -= x0;
                firstAN = a0;
            } else if (x >= x1) {
                x -= x1;
                firstAN = a1;
            } else {
                firstAN = 1; // One with no decimal places
            }

            // We now transform x into a 20 decimal fixed point number, to have enhanced precision
            // when computing the
            // smaller terms.
            x *= 100;

            // `product` is the accumulated product of all a_n (except a0 and a1), which starts at
            // 20 decimal fixed
            // point
            // one. Recall that fixed point multiplication requires dividing by ONE_20.
            int256 product = ONE_20;

            if (x >= x2) {
                x -= x2;
                product = (product * a2) / ONE_20;
            }
            if (x >= x3) {
                x -= x3;
                product = (product * a3) / ONE_20;
            }
            if (x >= x4) {
                x -= x4;
                product = (product * a4) / ONE_20;
            }
            if (x >= x5) {
                x -= x5;
                product = (product * a5) / ONE_20;
            }
            if (x >= x6) {
                x -= x6;
                product = (product * a6) / ONE_20;
            }
            if (x >= x7) {
                x -= x7;
                product = (product * a7) / ONE_20;
            }
            if (x >= x8) {
                x -= x8;
                product = (product * a8) / ONE_20;
            }
            if (x >= x9) {
                x -= x9;
                product = (product * a9) / ONE_20;
            }

            // x10 and x11 are unnecessary here since we have high enough precision already.

            // Now we need to compute e^x, where x is small (in particular, it is smaller than x9).
            // We use the Taylor
            // series
            // expansion for e^x: 1 + x + (x^2 / 2!) + (x^3 / 3!) + ... + (x^n / n!).

            int256 seriesSum = ONE_20; // The initial one in the sum, with 20 decimal places.
            int256 term; // Each term in the sum, where the nth term is (x^n / n!).

            // The first term is simply x.
            term = x;
            seriesSum += term;

            // Each term (x^n / n!) equals the previous one times x, divided by n. Since x is a
            // fixed point number,
            // multiplying by it requires dividing by ONE_20, but dividing by the non-fixed point n
            // values does not.

            term = ((term * x) / ONE_20) / 2;
            seriesSum += term;

            term = ((term * x) / ONE_20) / 3;
            seriesSum += term;

            term = ((term * x) / ONE_20) / 4;
            seriesSum += term;

            term = ((term * x) / ONE_20) / 5;
            seriesSum += term;

            term = ((term * x) / ONE_20) / 6;
            seriesSum += term;

            term = ((term * x) / ONE_20) / 7;
            seriesSum += term;

            term = ((term * x) / ONE_20) / 8;
            seriesSum += term;

            term = ((term * x) / ONE_20) / 9;
            seriesSum += term;

            term = ((term * x) / ONE_20) / 10;
            seriesSum += term;

            term = ((term * x) / ONE_20) / 11;
            seriesSum += term;

            term = ((term * x) / ONE_20) / 12;
            seriesSum += term;

            // 12 Taylor terms are sufficient for 18 decimal precision.

            // We now have the first a_n (with no decimals), and the product of all other a_n
            // present, and the Taylor
            // approximation of the exponentiation of the remainder (both with 20 decimals). All
            // that remains is to
            // multiply
            // all three (one 20 decimal fixed point multiplication, dividing by ONE_20, and one
            // integer
            // multiplication),
            // and then drop two digits to return an 18 decimal value.

            return (((product * seriesSum) / ONE_20) * firstAN) / 100;
        }
    }

    /**
     * @dev Natural logarithm (ln(a)) with signed 18 decimal fixed point argument.
     */
    function ln(int256 a) internal pure returns (int256) {
        unchecked {
            // The real natural logarithm is not defined for negative numbers or zero.
            require(a > 0, "out of bounds");
            if (LN_36_LOWER_BOUND < a && a < LN_36_UPPER_BOUND) {
                return _ln_36(a) / ONE_18;
            } else {
                return _ln(a);
            }
        }
    }

    /**
     * @dev Exponentiation (x^y) with unsigned 18 decimal fixed point base and exponent.
     *
     * Reverts if ln(x) * y is smaller than `MIN_NATURAL_EXPONENT`, or larger than
     * `MAX_NATURAL_EXPONENT`.
     */
    function pow(uint256 x, uint256 y) internal pure returns (uint256) {
        unchecked {
            if (y == 0) {
                // We solve the 0^0 indetermination by making it equal one.
                return uint256(ONE_18);
            }

            if (x == 0) {
                return 0;
            }

            // Instead of computing x^y directly, we instead rely on the properties of logarithms
            // and exponentiation to
            // arrive at that r`esult. In particular, exp(ln(x)) = x, and ln(x^y) = y * ln(x). This
            // means
            // x^y = exp(y * ln(x)).

            // The ln function takes a signed value, so we need to make sure x fits in the signed
            // 256 bit range.
            require(x < 2 ** 255, "x out of bounds");
            int256 x_int256 = int256(x);

            // We will compute y * ln(x) in a single step. Depending on the value of x, we can
            // either use ln or ln_36. In
            // both cases, we leave the division by ONE_18 (due to fixed point multiplication) to
            // the end.

            // This prevents y * ln(x) from overflowing, and at the same time guarantees y fits in
            // the signed 256 bit
            // range.
            require(y < MILD_EXPONENT_BOUND, "y out of bounds");
            int256 y_int256 = int256(y);

            int256 logx_times_y;
            if (LN_36_LOWER_BOUND < x_int256 && x_int256 < LN_36_UPPER_BOUND) {
                int256 ln_36_x = _ln_36(x_int256);

                // ln_36_x has 36 decimal places, so multiplying by y_int256 isn't as
                // straightforward, since we can't
                // just
                // bring y_int256 to 36 decimal places, as it might overflow. Instead, we perform
                // two 18 decimal
                // multiplications and add the results: one with the first 18 decimals of ln_36_x,
                // and one with the
                // (downscaled) last 18 decimals.
                logx_times_y = ((ln_36_x / ONE_18) * y_int256 + ((ln_36_x % ONE_18) * y_int256) / ONE_18);
            } else {
                logx_times_y = _ln(x_int256) * y_int256;
            }
            logx_times_y /= ONE_18;

            // Finally, we compute exp(y * ln(x)) to arrive at x^y
            require(
                MIN_NATURAL_EXPONENT <= logx_times_y && logx_times_y <= MAX_NATURAL_EXPONENT, "product out of bounds"
            );

            return uint256(exp(logx_times_y));
        }
    }

    /**
     * @dev Internal natural logarithm (ln(a)) with signed 18 decimal fixed point argument.
     */
    function _ln(int256 a) private pure returns (int256) {
        unchecked {
            if (a < ONE_18) {
                // Since ln(a^k) = k * ln(a), we can compute ln(a) as ln(a) = ln((1/a)^(-1)) = -
                // ln((1/a)). If a is less
                // than one, 1/a will be greater than one, and this if statement will not be entered
                // in the recursive
                // call.
                // Fixed point division requires multiplying by ONE_18.
                return (-_ln((ONE_18 * ONE_18) / a));
            }

            // First, we use the fact that ln^(a * b) = ln(a) + ln(b) to decompose ln(a) into a sum
            // of powers of two,
            // which
            // we call x_n, where x_n == 2^(7 - n), which are the natural logarithm of precomputed
            // quantities a_n (that
            // is,
            // ln(a_n) = x_n). We choose the first x_n, x0, to equal 2^7 because the exponential of
            // all larger powers
            // cannot
            // be represented as 18 fixed point decimal numbers in 256 bits, and are therefore
            // larger than a.
            // At the end of this process we will have the sum of all x_n = ln(a_n) that apply, and
            // the remainder of
            // this
            // decomposition, which will be lower than the smallest a_n.
            // ln(a) = k_0 * x_0 + k_1 * x_1 + ... + k_n * x_n + ln(remainder), where each k_n
            // equals either 0 or 1.
            // We mutate a by subtracting a_n, making it the remainder of the decomposition.

            // For reasons related to how `exp` works, the first two a_n (e^(2^7) and e^(2^6)) are
            // not stored as fixed
            // point
            // numbers with 18 decimals, but instead as plain integers with 0 decimals, so we need
            // to multiply them by
            // ONE_18 to convert them to fixed point.
            // For each a_n, we test if that term is present in the decomposition (if a is larger
            // than it), and if so
            // divide
            // by it and compute the accumulated sum.

            int256 sum = 0;
            if (a >= a0 * ONE_18) {
                a /= a0; // Integer, not fixed point division
                sum += x0;
            }

            if (a >= a1 * ONE_18) {
                a /= a1; // Integer, not fixed point division
                sum += x1;
            }

            // All other a_n and x_n are stored as 20 digit fixed point numbers, so we convert the
            // sum and a to this
            // format.
            sum *= 100;
            a *= 100;

            // Because further a_n are 20 digit fixed point numbers, we multiply by ONE_20 when
            // dividing by them.

            if (a >= a2) {
                a = (a * ONE_20) / a2;
                sum += x2;
            }

            if (a >= a3) {
                a = (a * ONE_20) / a3;
                sum += x3;
            }

            if (a >= a4) {
                a = (a * ONE_20) / a4;
                sum += x4;
            }

            if (a >= a5) {
                a = (a * ONE_20) / a5;
                sum += x5;
            }

            if (a >= a6) {
                a = (a * ONE_20) / a6;
                sum += x6;
            }

            if (a >= a7) {
                a = (a * ONE_20) / a7;
                sum += x7;
            }

            if (a >= a8) {
                a = (a * ONE_20) / a8;
                sum += x8;
            }

            if (a >= a9) {
                a = (a * ONE_20) / a9;
                sum += x9;
            }

            if (a >= a10) {
                a = (a * ONE_20) / a10;
                sum += x10;
            }

            if (a >= a11) {
                a = (a * ONE_20) / a11;
                sum += x11;
            }

            // a is now a small number (smaller than a_11, which roughly equals 1.06). This means we
            // can use a Taylor
            // series
            // that converges rapidly for values of `a` close to one - the same one used in ln_36.
            // Let z = (a - 1) / (a + 1).
            // ln(a) = 2 * (z + z^3 / 3 + z^5 / 5 + z^7 / 7 + ... + z^(2 * n + 1) / (2 * n + 1))

            // Recall that 20 digit fixed point division requires multiplying by ONE_20, and
            // multiplication requires
            // division by ONE_20.
            int256 z = ((a - ONE_20) * ONE_20) / (a + ONE_20);
            int256 z_squared = (z * z) / ONE_20;

            // num is the numerator of the series: the z^(2 * n + 1) term
            int256 num = z;

            // seriesSum holds the accumulated sum of each term in the series, starting with the
            // initial z
            int256 seriesSum = num;

            // In each step, the numerator is multiplied by z^2
            num = (num * z_squared) / ONE_20;
            seriesSum += num / 3;

            num = (num * z_squared) / ONE_20;
            seriesSum += num / 5;

            num = (num * z_squared) / ONE_20;
            seriesSum += num / 7;

            num = (num * z_squared) / ONE_20;
            seriesSum += num / 9;

            num = (num * z_squared) / ONE_20;
            seriesSum += num / 11;

            // 6 Taylor terms are sufficient for 36 decimal precision.

            // Finally, we multiply by 2 (non fixed point) to compute ln(remainder)
            seriesSum *= 2;

            // We now have the sum of all x_n present, and the Taylor approximation of the logarithm
            // of the remainder
            // (both
            // with 20 decimals). All that remains is to sum these two, and then drop two digits to
            // return a 18 decimal
            // value.

            return (sum + seriesSum) / 100;
        }
    }

    /**
     * @dev Intrnal high precision (36 decimal places) natural logarithm (ln(x)) with signed 18
     * decimal fixed point
     * argument,
     * for x close to one.
     *
     * Should only be used if x is between LN_36_LOWER_BOUND and LN_36_UPPER_BOUND.
     */
    function _ln_36(int256 x) private pure returns (int256) {
        unchecked {
            // Since ln(1) = 0, a value of x close to one will yield a very small result, which
            // makes using 36 digits
            // worthwhile.

            // First, we transform x to a 36 digit fixed point value.
            x *= ONE_18;

            // We will use the following Taylor expansion, which converges very rapidly. Let z = (x
            // - 1) / (x + 1).
            // ln(x) = 2 * (z + z^3 / 3 + z^5 / 5 + z^7 / 7 + ... + z^(2 * n + 1) / (2 * n + 1))

            // Recall that 36 digit fixed point division requires multiplying by ONE_36, and
            // multiplication requires
            // division by ONE_36.
            int256 z = ((x - ONE_36) * ONE_36) / (x + ONE_36);
            int256 z_squared = (z * z) / ONE_36;

            // num is the numerator of the series: the z^(2 * n + 1) term
            int256 num = z;

            // seriesSum holds the accumulated sum of each term in the series, starting with the
            // initial z
            int256 seriesSum = num;

            // In each step, the numerator is multiplied by z^2
            num = (num * z_squared) / ONE_36;
            seriesSum += num / 3;

            num = (num * z_squared) / ONE_36;
            seriesSum += num / 5;

            num = (num * z_squared) / ONE_36;
            seriesSum += num / 7;

            num = (num * z_squared) / ONE_36;
            seriesSum += num / 9;

            num = (num * z_squared) / ONE_36;
            seriesSum += num / 11;

            num = (num * z_squared) / ONE_36;
            seriesSum += num / 13;

            num = (num * z_squared) / ONE_36;
            seriesSum += num / 15;

            // 8 Taylor terms are sufficient for 36 decimal precision.

            // All that remains is multiplying by 2 (non fixed point).
            return seriesSum * 2;
        }
    }
}

// ============================================================
// FILE: src/fira_bonding/libraries/math/PMath.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program. If not, see <http://www.gnu.org/licenses/>.

pragma solidity ^0.8.0;

/* solhint-disable private-vars-leading-underscore, reason-string */

/// @title PMath
/// @notice Fixed-point math library for 18-decimal precision arithmetic
/// @dev Provides multiplication, division, and utility functions for 1e18-scaled fixed-point numbers.
///      Includes safe casting functions between signed and unsigned types of various sizes.
library PMath {
    uint256 internal constant ONE = 1e18; // 18 decimal places
    int256 internal constant IONE = 1e18; // 18 decimal places

    function subMax0(uint256 a, uint256 b) internal pure returns (uint256) {
        unchecked {
            return (a >= b ? a - b : 0);
        }
    }

    function subNoNeg(int256 a, int256 b) internal pure returns (int256) {
        require(a >= b, "negative");
        return a - b; // no unchecked since if b is very negative, a - b might overflow
    }

    function mulDown(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 product = a * b;
        unchecked {
            return product / ONE;
        }
    }

    function mulDown(int256 a, int256 b) internal pure returns (int256) {
        int256 product = a * b;
        unchecked {
            return product / IONE;
        }
    }

    function divDown(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 aInflated = a * ONE;
        unchecked {
            return aInflated / b;
        }
    }

    function divDown(int256 a, int256 b) internal pure returns (int256) {
        int256 aInflated = a * IONE;
        unchecked {
            return aInflated / b;
        }
    }

    function rawDivUp(uint256 a, uint256 b) internal pure returns (uint256) {
        return (a + b - 1) / b;
    }

    function rawDivUp(int256 a, int256 b) internal pure returns (int256) {
        return (a + b - 1) / b;
    }

    function tweakUp(uint256 a, uint256 factor) internal pure returns (uint256) {
        return mulDown(a, ONE + factor);
    }

    function tweakDown(uint256 a, uint256 factor) internal pure returns (uint256) {
        return mulDown(a, ONE - factor);
    }

    /// @return res = min(a + b, bound)
    /// @dev This function should handle arithmetic operation and bound check without
    /// overflow/underflow
    function addWithUpperBound(uint256 a, uint256 b, uint256 bound) internal pure returns (uint256 res) {
        unchecked {
            if (type(uint256).max - b < a) res = bound;
            else res = min(bound, a + b);
        }
    }

    /// @return res = max(a - b, bound)
    /// @dev This function should handle arithmetic operation and bound check without
    /// overflow/underflow
    function subWithLowerBound(uint256 a, uint256 b, uint256 bound) internal pure returns (uint256 res) {
        unchecked {
            if (b > a) res = bound;
            else res = max(a - b, bound);
        }
    }

    function clamp(uint256 x, uint256 lower, uint256 upper) internal pure returns (uint256 res) {
        res = x;
        if (x < lower) res = lower;
        else if (x > upper) res = upper;
    }

    // @author Uniswap
    function sqrt(uint256 y) internal pure returns (uint256 z) {
        if (y > 3) {
            z = y;
            uint256 x = y / 2 + 1;
            while (x < z) {
                z = x;
                x = (y / x + x) / 2;
            }
        } else if (y != 0) {
            z = 1;
        }
    }

    function square(uint256 x) internal pure returns (uint256) {
        return x * x;
    }

    function squareDown(uint256 x) internal pure returns (uint256) {
        return mulDown(x, x);
    }

    function abs(int256 x) internal pure returns (uint256) {
        return uint256(x > 0 ? x : -x);
    }

    function neg(int256 x) internal pure returns (int256) {
        return x * (-1);
    }

    function neg(uint256 x) internal pure returns (int256) {
        return Int(x) * (-1);
    }

    function max(uint256 x, uint256 y) internal pure returns (uint256) {
        return (x > y ? x : y);
    }

    function max(int256 x, int256 y) internal pure returns (int256) {
        return (x > y ? x : y);
    }

    function min(uint256 x, uint256 y) internal pure returns (uint256) {
        return (x < y ? x : y);
    }

    function min(int256 x, int256 y) internal pure returns (int256) {
        return (x < y ? x : y);
    }

    /* ///////////////////////////////////////////////////////////////
                               SIGNED CASTS
    //////////////////////////////////////////////////////////////*/

    function Int(uint256 x) internal pure returns (int256) {
        require(x <= uint256(type(int256).max));
        return int256(x);
    }

    function Int128(int256 x) internal pure returns (int128) {
        require(type(int128).min <= x && x <= type(int128).max);
        return int128(x);
    }

    function Int128(uint256 x) internal pure returns (int128) {
        return Int128(Int(x));
    }

    /* ///////////////////////////////////////////////////////////////
                               UNSIGNED CASTS
    //////////////////////////////////////////////////////////////*/

    function Uint(int256 x) internal pure returns (uint256) {
        require(x >= 0);
        return uint256(x);
    }

    function Uint32(uint256 x) internal pure returns (uint32) {
        require(x <= type(uint32).max);
        return uint32(x);
    }

    function Uint64(uint256 x) internal pure returns (uint64) {
        require(x <= type(uint64).max);
        return uint64(x);
    }

    function Uint112(uint256 x) internal pure returns (uint112) {
        require(x <= type(uint112).max);
        return uint112(x);
    }

    function Uint96(uint256 x) internal pure returns (uint96) {
        require(x <= type(uint96).max);
        return uint96(x);
    }

    function Uint128(uint256 x) internal pure returns (uint128) {
        require(x <= type(uint128).max);
        return uint128(x);
    }

    function Uint192(uint256 x) internal pure returns (uint192) {
        require(x <= type(uint192).max);
        return uint192(x);
    }

    function isAApproxB(uint256 a, uint256 b, uint256 eps) internal pure returns (bool) {
        return mulDown(b, ONE - eps) <= a && a <= mulDown(b, ONE + eps);
    }

    function isAGreaterApproxB(uint256 a, uint256 b, uint256 eps) internal pure returns (bool) {
        return a >= b && a <= mulDown(b, ONE + eps);
    }

    function isASmallerApproxB(uint256 a, uint256 b, uint256 eps) internal pure returns (bool) {
        return a <= b && a >= mulDown(b, ONE - eps);
    }
}

// ============================================================
// FILE: src/fira_bonding/libraries/MiniHelpers.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

/// @title MiniHelpers
/// @notice Small utility functions for time-based checks
/// @dev Provides expiry and timestamp validation helpers used throughout the protocol
library MiniHelpers {
    function isCurrentlyExpired(uint256 expiry) internal view returns (bool) {
        return (expiry <= block.timestamp);
    }

    function isExpired(uint256 expiry, uint256 blockTime) internal pure returns (bool) {
        return (expiry <= blockTime);
    }

    function isTimeInThePast(uint256 timestamp) internal view returns (bool) {
        return (timestamp <= block.timestamp); // same definition as isCurrentlyExpired
    }
}

// ============================================================
// FILE: src/fira_bonding/libraries/TokenHelper.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "../../interfaces/IWETH.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/// @title TokenHelper
/// @notice Abstract contract providing safe token transfer utilities
/// @dev Handles ERC20 and native ETH transfers with proper safety checks.
///      Uses SafeERC20 for ERC20 operations and supports infinite approvals.
abstract contract TokenHelper {
    using SafeERC20 for IERC20;

    address internal constant NATIVE = address(0);
    uint256 internal constant LOWER_BOUND_APPROVAL = type(uint96).max / 2; // some tokens use 96
        // bits for approval

    function _transferIn(address token, address from, uint256 amount) internal {
        if (token == NATIVE) require(msg.value == amount, "eth mismatch");
        else if (amount != 0) IERC20(token).safeTransferFrom(from, address(this), amount);
    }

    function _transferFrom(IERC20 token, address from, address to, uint256 amount) internal {
        if (amount != 0) token.safeTransferFrom(from, to, amount);
    }

    function _transferOut(address token, address to, uint256 amount) internal {
        if (amount == 0) return;
        if (token == NATIVE) {
            (bool success,) = to.call{value: amount}("");
            require(success, "eth send failed");
        } else {
            IERC20(token).safeTransfer(to, amount);
        }
    }

    function _transferOut(address[] memory tokens, address to, uint256[] memory amounts) internal {
        uint256 numTokens = tokens.length;
        require(numTokens == amounts.length, "length mismatch");
        for (uint256 i = 0; i < numTokens;) {
            _transferOut(tokens[i], to, amounts[i]);
            unchecked {
                i++;
            }
        }
    }

    function _selfBalance(address token) internal view returns (uint256) {
        return (token == NATIVE) ? address(this).balance : IERC20(token).balanceOf(address(this));
    }

    function _selfBalance(IERC20 token) internal view returns (uint256) {
        return token.balanceOf(address(this));
    }

    /// @notice Approves the stipulated contract to spend the given allowance in the given token
    /// @dev PLS PAY ATTENTION to tokens that requires the approval to be set to 0 before changing
    /// it
    function _safeApprove(address token, address to, uint256 value) internal {
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(IERC20.approve.selector, to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))), "Safe Approve");
    }

    function _safeApproveInf(address token, address to) internal {
        if (token == NATIVE) return;
        if (IERC20(token).allowance(address(this), to) < LOWER_BOUND_APPROVAL) {
            _safeApprove(token, to, 0);
            _safeApprove(token, to, type(uint256).max);
        }
    }

    function _wrap_unwrap_ETH(address tokenIn, address tokenOut, uint256 netTokenIn) internal {
        if (tokenIn == NATIVE) IWETH(tokenOut).deposit{value: netTokenIn}();
        else IWETH(tokenIn).withdraw(netTokenIn);
    }
}

// ============================================================
// FILE: src/fira_bonding/router/ActionSwapBTV3.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "../../interfaces/IPActionSwapBTV3.sol";
import "./base/ActionBase.sol";
import {ActionDelegateBase} from "./base/ActionDelegateBase.sol";

/// @title ActionSwapBTV3
/// @notice Router facet for swapping tokens to/from Bond Tokens (BT) via the Fira AMM
/// @dev Provides swap functions between BT and other tokens (FW or any token via FW).
///      Bond Tokens represent fixed-rate principal claims that trade at a discount
///      to FW, with the discount reflecting the implied interest rate until expiry.
///
///      Swap directions:
///      - Token -> BT: User wants to acquire BT (e.g., to provide as collateral or LP)
///      - BT -> Token: User wants to sell BT (e.g., after receiving from redemption)
///
///      Note: LimitOrderData parameters are kept for interface compatibility but orderbook
///      is not used in this version of the protocol.
contract ActionSwapBTV3 is IPActionSwapBTV3, ActionBase, ActionDelegateBase {
    using PMath for uint256;

    // ------------------ SWAP TOKEN FOR BT ------------------

    /// @notice Swaps any input token for BT
    /// @dev Flow: input token -> FW (via mint) -> BT (via AMM swap)
    /// @param receiver Address to receive the BT
    /// @param market Address of the Fira market
    /// @param minBtOut Minimum BT to receive (slippage protection)
    /// @param guessBtOut Approximation parameters for calculating BT output
    /// @param input Token input configuration for minting FW
    /// @param limit Limit order data (not used in current version)
    /// @return netBtOut Amount of BT received
    /// @return netFwFee Fees paid in FW
    /// @return netFwInterm Amount of FW minted as intermediate step
    function swapExactTokenForBt(
        address receiver,
        address market,
        uint256 minBtOut,
        ApproxParams calldata guessBtOut,
        TokenInput calldata input,
        LimitOrderData calldata limit
    ) external payable returns (uint256 netBtOut, uint256 netFwFee, uint256 netFwInterm) {
        if (canUseOnchainApproximation(guessBtOut, limit)) {
            return delegateToSwapExactTokenForBtSimple(receiver, market, minBtOut, input);
        }

        (IFiraWrappedStandardized FW,,) = IPMarket(market).readTokens();
        netFwInterm = _mintFwFromToken(_entry_swapExactFwForBt(market, limit), address(FW), 1, input);

        (netBtOut, netFwFee) = _swapExactFwForBt(receiver, market, netFwInterm, minBtOut, guessBtOut, limit);
        emit SwapBtAndToken(
            msg.sender, market, input.tokenIn, receiver, netBtOut.Int(), input.netTokenIn.neg(), netFwInterm
        );
    }

    /// @notice Swaps FW directly for BT
    /// @dev Most gas-efficient swap when user already has FW
    /// @param receiver Address to receive the BT
    /// @param market Address of the Fira market
    /// @param exactFwIn Exact amount of FW to swap
    /// @param minBtOut Minimum BT to receive (slippage protection)
    /// @param guessBtOut Approximation parameters for calculating BT output
    /// @param limit Limit order data (not used in current version)
    /// @return netBtOut Amount of BT received
    /// @return netFwFee Fees paid in FW
    function swapExactFwForBt(
        address receiver,
        address market,
        uint256 exactFwIn,
        uint256 minBtOut,
        ApproxParams calldata guessBtOut,
        LimitOrderData calldata limit
    ) external returns (uint256 netBtOut, uint256 netFwFee) {
        if (canUseOnchainApproximation(guessBtOut, limit)) {
            return delegateToSwapExactFwForBtSimple(receiver, market, exactFwIn, minBtOut);
        }

        (IFiraWrappedStandardized FW,,) = IPMarket(market).readTokens();
        _transferFrom(FW, msg.sender, _entry_swapExactFwForBt(market, limit), exactFwIn);

        (netBtOut, netFwFee) = _swapExactFwForBt(receiver, market, exactFwIn, minBtOut, guessBtOut, limit);
        emit SwapBtAndFw(msg.sender, market, receiver, netBtOut.Int(), exactFwIn.neg());
    }

    /// @notice Swaps BT for any output token
    /// @dev Flow: BT -> FW (via AMM swap) -> output token (via redeem)
    /// @param receiver Address to receive the output token
    /// @param market Address of the Fira market
    /// @param exactBtIn Exact amount of BT to swap
    /// @param output Token output configuration for FW redemption
    /// @param limit Limit order data (not used in current version)
    /// @return netTokenOut Amount of output tokens received
    /// @return netFwFee Fees paid in FW
    /// @return netFwInterm Amount of FW as intermediate step
    function swapExactBtForToken(
        address receiver,
        address market,
        uint256 exactBtIn,
        TokenOutput calldata output,
        LimitOrderData calldata limit
    ) external returns (uint256 netTokenOut, uint256 netFwFee, uint256 netFwInterm) {
        (IFiraWrappedStandardized FW, IBondToken BT,) = IPMarket(market).readTokens();
        _transferFrom(BT, msg.sender, _entry_swapExactBtForFw(market, limit), exactBtIn);

        (netFwInterm, netFwFee) = _swapExactBtForFw(address(FW), market, exactBtIn, 0, limit);

        netTokenOut = _redeemFwToToken(receiver, address(FW), netFwInterm, output, false);

        emit SwapBtAndToken(
            msg.sender, market, output.tokenOut, receiver, exactBtIn.neg(), netTokenOut.Int(), netFwInterm
        );
    }

    /// @notice Swaps BT directly for FW
    /// @dev Most gas-efficient swap when user wants FW output
    /// @param receiver Address to receive the FW
    /// @param market Address of the Fira market
    /// @param exactBtIn Exact amount of BT to swap
    /// @param minFwOut Minimum FW to receive (slippage protection)
    /// @param limit Limit order data (not used in current version)
    /// @return netFwOut Amount of FW received
    /// @return netFwFee Fees paid in FW
    function swapExactBtForFw(
        address receiver,
        address market,
        uint256 exactBtIn,
        uint256 minFwOut,
        LimitOrderData calldata limit
    ) external returns (uint256 netFwOut, uint256 netFwFee) {
        (, IBondToken BT,) = IPMarket(market).readTokens();
        _transferFrom(BT, msg.sender, _entry_swapExactBtForFw(market, limit), exactBtIn);

        (netFwOut, netFwFee) = _swapExactBtForFw(receiver, market, exactBtIn, minFwOut, limit);
        emit SwapBtAndFw(msg.sender, market, receiver, exactBtIn.neg(), netFwOut.Int());
    }
}

// ============================================================
// FILE: src/fira_bonding/router/base/ActionBase.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "../../../interfaces/IBCToken.sol";
import "../../../interfaces/IFiraWrappedStandardized.sol";
import "../../../interfaces/IPAllActionTypeV3.sol";
import "../../../interfaces/IPMarket.sol";

import "../../libraries/Errors.sol";
import "../../libraries/TokenHelper.sol";
import "../math/MarketApproxLibV2.sol";
import "../swap-aggregator/IPSwapAggregator.sol";
import "./CallbackHelper.sol";

/// @title ActionBase
/// @notice Abstract base contract providing core functionality for router actions including FW/BC token
///         minting/redeeming, BT/CT swaps, limit order fills, and liquidity operations.
/// @dev Inherited by action facets in the diamond router pattern. Combines TokenHelper for transfers,
///      CallbackHelper for swap callbacks, and limit order type definitions.
abstract contract ActionBase is TokenHelper, CallbackHelper, IPLimitOrderType {
    using MarketApproxBtInLibV2 for MarketState;
    using MarketApproxBtOutLibV2 for MarketState;
    using PMath for uint256;
    using BCIndexLib for IBCToken;
    using BCIndexLib for BCIndex;

    bytes internal constant EMPTY_BYTES = abi.encode();

    /// @dev Internal state for swapExactBtForFw operations, tracking BT input, FW output, fees, and market order status
    struct SwapExactBtForFw {
        IBondToken BT;
        uint256 netBtLeft;
        uint256 netFwOut;
        uint256 netFwFee;
        bool doMarketOrder;
        uint256 netFwOutMarket;
        uint256 netFwFeeMarket;
    }

    /// @dev Internal state for swapExactFwForBt operations, tracking FW input, BT output, fees, and market order status
    struct SwapExactFwForBt {
        IFiraWrappedStandardized FW;
        IBCToken CT;
        uint256 netFwLeft;
        uint256 netBtOut;
        uint256 netFwFee;
        bool doMarketOrder;
        uint256 netBtOutMarket;
        uint256 netFwFeeMarket;
    }

    // ──────────────────────────────────────────────────────────────────────────────
    // MINT / REDEEM FW AND BC TOKENS
    // ──────────────────────────────────────────────────────────────────────────────

    /// @notice Mints FW tokens from an input token, optionally swapping through an aggregator first
    /// @param receiver Address to receive the minted FW tokens
    /// @param FW Address of the FW token contract to mint
    /// @param minFwOut Minimum FW tokens to receive (slippage protection)
    /// @param inp Token input parameters including swap data if conversion is needed
    /// @return netFwOut Amount of FW tokens minted
    function _mintFwFromToken(address receiver, address FW, uint256 minFwOut, TokenInput calldata inp)
        internal
        returns (uint256 netFwOut)
    {
        SwapType swapType = inp.swapData.swapType;

        uint256 netTokenMintFw;

        if (swapType == SwapType.NONE) {
            _transferIn(inp.tokenIn, msg.sender, inp.netTokenIn);
            netTokenMintFw = inp.netTokenIn;
        } else if (swapType == SwapType.ETH_WETH) {
            _transferIn(inp.tokenIn, msg.sender, inp.netTokenIn);
            _wrap_unwrap_ETH(inp.tokenIn, inp.tokenMintFw, inp.netTokenIn);
            netTokenMintFw = inp.netTokenIn;
        } else {
            _swapTokenInput(inp);
            netTokenMintFw = _selfBalance(inp.tokenMintFw);
        }

        netFwOut = __mintFw(receiver, FW, netTokenMintFw, minFwOut, inp);
    }

    /// @notice Executes a token swap through the configured swap aggregator
    /// @param inp Token input parameters containing swap routing data
    function _swapTokenInput(TokenInput calldata inp) internal {
        if (inp.tokenIn == NATIVE) _transferIn(NATIVE, msg.sender, inp.netTokenIn);
        else _transferFrom(IERC20(inp.tokenIn), msg.sender, inp.firaSwap, inp.netTokenIn);

        IPSwapAggregator(inp.firaSwap)
        .swap{value: inp.tokenIn == NATIVE ? inp.netTokenIn : 0}(inp.tokenIn, inp.netTokenIn, inp.swapData);
    }

    /// @dev Internal helper to deposit tokens into FW contract
    function __mintFw(address receiver, address FW, uint256 netTokenMintFw, uint256 minFwOut, TokenInput calldata inp)
        private
        returns (uint256 netFwOut)
    {
        uint256 netNative = inp.tokenMintFw == NATIVE ? netTokenMintFw : 0;
        _safeApproveInf(inp.tokenMintFw, FW);
        netFwOut =
            IFiraWrappedStandardized(FW).deposit{value: netNative}(receiver, inp.tokenMintFw, netTokenMintFw, minFwOut);
    }

    /// @notice Redeems FW tokens to an output token, optionally swapping through an aggregator
    /// @param receiver Address to receive the output tokens
    /// @param FW Address of the FW token contract to redeem from
    /// @param netFwIn Amount of FW tokens to redeem
    /// @param out Token output parameters including swap data if conversion is needed
    /// @param doPull Whether to pull FW tokens from msg.sender
    /// @return netTokenOut Amount of output tokens received
    function _redeemFwToToken(address receiver, address FW, uint256 netFwIn, TokenOutput calldata out, bool doPull)
        internal
        returns (uint256 netTokenOut)
    {
        SwapType swapType = out.swapData.swapType;

        if (swapType == SwapType.NONE) {
            netTokenOut = __redeemFw(receiver, FW, netFwIn, out, doPull);
        } else if (swapType == SwapType.ETH_WETH) {
            netTokenOut = __redeemFw(address(this), FW, netFwIn, out, doPull); // ETH:WETH is 1:1

            _wrap_unwrap_ETH(out.tokenRedeemFw, out.tokenOut, netTokenOut);

            _transferOut(out.tokenOut, receiver, netTokenOut);
        } else {
            uint256 netTokenRedeemed = __redeemFw(out.firaSwap, FW, netFwIn, out, doPull);

            IPSwapAggregator(out.firaSwap).swap(out.tokenRedeemFw, netTokenRedeemed, out.swapData);

            netTokenOut = _selfBalance(out.tokenOut);

            _transferOut(out.tokenOut, receiver, netTokenOut);
        }

        if (netTokenOut < out.minTokenOut) revert("Slippage: INSUFFICIENT_TOKEN_OUT");
    }

    /// @dev Internal helper to redeem FW tokens to underlying
    function __redeemFw(address receiver, address FW, uint256 netFwIn, TokenOutput calldata out, bool doPull)
        private
        returns (uint256 netTokenRedeemed)
    {
        if (doPull) {
            _transferFrom(IERC20(FW), msg.sender, FW, netFwIn);
        }

        netTokenRedeemed = IFiraWrappedStandardized(FW).redeem(receiver, netFwIn, out.tokenRedeemFw, 0, true);
    }

    /// @notice Mints BC (Bond + Coupon) tokens from FW tokens
    /// @param receiver Address to receive the minted BT and CT tokens
    /// @param FW Address of the FW token used for minting
    /// @param CT Address of the Coupon Token contract
    /// @param netFwIn Amount of FW tokens to use for minting
    /// @param minBcOut Minimum BC tokens to receive (slippage protection)
    /// @param doPull Whether to pull FW tokens from msg.sender
    /// @return netBcOut Amount of BC tokens minted (equal amounts of BT and CT)
    function _mintBcFromFw(address receiver, address FW, address CT, uint256 netFwIn, uint256 minBcOut, bool doPull)
        internal
        returns (uint256 netBcOut)
    {
        if (doPull) {
            _transferFrom(IERC20(FW), msg.sender, CT, netFwIn);
        }

        netBcOut = IBCToken(CT).mintBC(receiver, receiver);
        if (netBcOut < minBcOut) revert("Slippage: INSUFFICIENT_BT_CT_OUT");
    }

    /// @notice Redeems BC (Bond + Coupon) tokens back to FW tokens
    /// @param receiver Address to receive the redeemed FW tokens
    /// @param CT Address of the Coupon Token contract
    /// @param netBcIn Amount of BC tokens to redeem
    /// @param minFwOut Minimum FW tokens to receive (slippage protection)
    /// @return netFwOut Amount of FW tokens received
    function _redeemBcToFw(address receiver, address CT, uint256 netBcIn, uint256 minFwOut)
        internal
        returns (uint256 netFwOut)
    {
        address BT = IBCToken(CT).BT();

        _transferFrom(IERC20(BT), msg.sender, CT, netBcIn);

        bool needToBurnCt = (!IBCToken(CT).isExpired());
        if (needToBurnCt) _transferFrom(IERC20(CT), msg.sender, CT, netBcIn);

        netFwOut = IBCToken(CT).redeemBC(receiver);
        if (netFwOut < minFwOut) revert("Slippage: INSUFFICIENT_FW_OUT");
    }

    // ──────────────────────────────────────────────────────────────────────────────
    // MARKET STATE HELPERS
    // ──────────────────────────────────────────────────────────────────────────────

    /// @notice Reads the current state of a Fira market
    /// @param market Address of the Fira market
    /// @return MarketState struct containing current market parameters
    function _readMarket(address market) internal view returns (MarketState memory) {
        return IPMarket(market).readState(address(this));
    }

    // ──────────────────────────────────────────────────────────────────────────────
    // BT (BOND TOKEN) SWAPS
    // ──────────────────────────────────────────────────────────────────────────────

    /// @notice Determines the entry point address for swapExactBtForFw based on limit order presence
    /// @param market Address of the Fira market
    /// @param limit Limit order data (if any)
    /// @return Entry address: this contract if limit orders exist, otherwise the market
    function _entry_swapExactBtForFw(address market, LimitOrderData calldata limit) internal view returns (address) {
        return _entry_swapExactBtForFw(market, !_isEmptyLimit(limit));
    }

    /// @dev Overload that takes a boolean for limit order presence
    function _entry_swapExactBtForFw(address market, bool hasLimitOrder) internal view returns (address) {
        return hasLimitOrder ? address(this) : market;
    }

    /// @notice Swaps an exact amount of BT for FW, optionally filling limit orders first
    /// @param receiver Address to receive the FW tokens
    /// @param market Address of the Fira market
    /// @param exactBtIn Exact amount of BT to swap
    /// @param minFwOut Minimum FW to receive (slippage protection)
    /// @param limit Limit order data for off-chain order matching
    /// @return netFwOut Total FW received
    /// @return netFwFee Total fees paid in FW
    function _swapExactBtForFw(
        address receiver,
        address market,
        uint256 exactBtIn,
        uint256 minFwOut,
        LimitOrderData calldata limit
    ) internal returns (uint256 netFwOut, uint256 netFwFee) {
        SwapExactBtForFw memory vars;

        (, vars.BT,) = IPMarket(market).readTokens();
        vars.netBtLeft = exactBtIn;
        vars.doMarketOrder = true;

        if (!_isEmptyLimit(limit)) {
            (vars.netBtLeft, vars.netFwOut, vars.netFwFee, vars.doMarketOrder) =
                _fillLimit(receiver, vars.BT, vars.netBtLeft, limit);
            if (vars.doMarketOrder) {
                _transferOut(address(vars.BT), market, vars.netBtLeft);
            } else {
                _transferOut(address(vars.BT), receiver, vars.netBtLeft);
            }
        }

        if (vars.doMarketOrder) {
            (vars.netFwOutMarket, vars.netFwFeeMarket) =
                IPMarket(market).swapExactBtForFw(receiver, vars.netBtLeft, EMPTY_BYTES);

            vars.netFwOut += vars.netFwOutMarket;
            vars.netFwFee += vars.netFwFeeMarket;
        }

        if (vars.netFwOut < minFwOut) revert("Slippage: INSUFFICIENT_FW_OUT");

        return (vars.netFwOut, vars.netFwFee);
    }

    /// @notice Determines the entry point address for swapExactFwForBt based on limit order presence
    /// @param market Address of the Fira market
    /// @param limit Limit order data (if any)
    /// @return Entry address: this contract if limit orders exist, otherwise the market
    function _entry_swapExactFwForBt(address market, LimitOrderData calldata limit) internal view returns (address) {
        return _entry_swapExactFwForBt(market, !_isEmptyLimit(limit));
    }

    /// @dev Overload that takes a boolean for limit order presence
    function _entry_swapExactFwForBt(address market, bool hasLimitOrder) internal view returns (address) {
        return hasLimitOrder ? address(this) : market;
    }

    /// @notice Swaps an exact amount of FW for BT, optionally filling limit orders first
    /// @param receiver Address to receive the BT tokens
    /// @param market Address of the Fira market
    /// @param exactFwIn Exact amount of FW to swap
    /// @param minBtOut Minimum BT to receive (slippage protection)
    /// @param guessBtOut Approximation parameters for calculating BT output
    /// @param limit Limit order data for off-chain order matching
    /// @return netBtOut Total BT received
    /// @return netFwFee Total fees paid in FW
    function _swapExactFwForBt(
        address receiver,
        address market,
        uint256 exactFwIn,
        uint256 minBtOut,
        ApproxParams calldata guessBtOut,
        LimitOrderData calldata limit
    ) internal returns (uint256 netBtOut, uint256 netFwFee) {
        SwapExactFwForBt memory vars;

        (vars.FW,, vars.CT) = IPMarket(market).readTokens();
        vars.netFwLeft = exactFwIn;
        vars.doMarketOrder = true;

        if (!_isEmptyLimit(limit)) {
            (vars.netFwLeft, vars.netBtOut, vars.netFwFee, vars.doMarketOrder) =
                _fillLimit(receiver, vars.FW, vars.netFwLeft, limit);
            if (vars.doMarketOrder) {
                _transferOut(address(vars.FW), market, vars.netFwLeft);
            } else {
                _transferOut(address(vars.FW), receiver, vars.netFwLeft);
            }
        }

        if (vars.doMarketOrder) {
            (vars.netBtOutMarket,) = _readMarket(market)
                .approxSwapExactFwForBtV2(vars.CT.newIndex(), vars.netFwLeft, block.timestamp, guessBtOut);

            (, vars.netFwFeeMarket) = IPMarket(market).swapFwForExactBt(receiver, vars.netBtOutMarket, EMPTY_BYTES);

            vars.netBtOut += vars.netBtOutMarket;
            vars.netFwFee += vars.netFwFeeMarket;
        }

        if (vars.netBtOut < minBtOut) revert("Slippage: INSUFFICIENT_BT_OUT");

        return (vars.netBtOut, vars.netFwFee);
    }

    // ──────────────────────────────────────────────────────────────────────────────
    // CT (COUPON TOKEN) SWAPS
    // ──────────────────────────────────────────────────────────────────────────────

    /// @notice Determines the entry point address for swapExactCtForFw based on limit order presence
    /// @param CT The Coupon Token contract
    /// @param limit Limit order data (if any)
    /// @return Entry address: this contract if limit orders exist, otherwise the CT contract
    function _entry_swapExactCtForFw(IBCToken CT, LimitOrderData calldata limit) internal view returns (address) {
        return _entry_swapExactCtForFw(CT, !_isEmptyLimit(limit));
    }

    /// @dev Overload that takes a boolean for limit order presence
    function _entry_swapExactCtForFw(IBCToken CT, bool hasLimitOrder) internal view returns (address) {
        return hasLimitOrder ? address(this) : address(CT);
    }

    /// @notice Swaps an exact amount of CT for FW via the market's BT-FW pool
    /// @dev CT is swapped by first acquiring BT through the market, then redeeming BT+CT for FW
    /// @param receiver Address to receive the FW tokens
    /// @param market Address of the Fira market
    /// @param FW The FW token contract
    /// @param CT The Coupon Token contract
    /// @param exactCtIn Exact amount of CT to swap
    /// @param minFwOut Minimum FW to receive (slippage protection)
    /// @param limit Limit order data for off-chain order matching
    /// @return netFwOut Total FW received
    /// @return netFwFee Total fees paid in FW
    function _swapExactCtForFw(
        address receiver,
        address market,
        IFiraWrappedStandardized FW,
        IBCToken CT,
        uint256 exactCtIn,
        uint256 minFwOut,
        LimitOrderData calldata limit
    ) internal returns (uint256 netFwOut, uint256 netFwFee) {
        uint256 netCtLeft = exactCtIn;
        bool doMarketOrder = true;

        if (!_isEmptyLimit(limit)) {
            (netCtLeft, netFwOut, netFwFee, doMarketOrder) = _fillLimit(receiver, CT, netCtLeft, limit);
            if (doMarketOrder) {
                _transferOut(address(CT), address(CT), netCtLeft);
            } else {
                _transferOut(address(CT), receiver, netCtLeft);
            }
        }

        if (doMarketOrder) {
            uint256 preFwBalance = FW.balanceOf(receiver);

            (, uint256 netFwFeeMarket) = IPMarket(market)
                .swapFwForExactBt(
                    address(CT),
                    netCtLeft, // exactPtOut = netCtLeft
                    _encodeSwapCtForFw(receiver, CT)
                );

            // avoid stack issue
            netFwFee += netFwFeeMarket;
            netFwOut += FW.balanceOf(receiver) - preFwBalance;
        }

        if (netFwOut < minFwOut) revert("Slippage: INSUFFICIENT_FW_OUT");
    }

    /// @notice Determines the entry point address for swapExactFwForCt based on limit order presence
    /// @param CT The Coupon Token contract
    /// @param limit Limit order data (if any)
    /// @return Entry address: this contract if limit orders exist, otherwise the CT contract
    function _entry_swapExactFwForCt(IBCToken CT, LimitOrderData calldata limit) internal view returns (address) {
        return _entry_swapExactFwForCt(CT, !_isEmptyLimit(limit));
    }

    /// @dev Overload that takes a boolean for limit order presence
    function _entry_swapExactFwForCt(IBCToken CT, bool hasLimitOrder) internal view returns (address) {
        return hasLimitOrder ? address(this) : address(CT);
    }

    /// @notice Swaps an exact amount of FW for CT via the market's BT-FW pool
    /// @dev FW is first minted into BT+CT, then BT is sold for more FW, netting CT output
    /// @param receiver Address to receive the CT tokens
    /// @param market Address of the Fira market
    /// @param FW The FW token contract
    /// @param CT The Coupon Token contract
    /// @param exactFwIn Exact amount of FW to swap
    /// @param minCtOut Minimum CT to receive (slippage protection)
    /// @param guessCtOut Approximation parameters for calculating CT output
    /// @param limit Limit order data for off-chain order matching
    /// @return netCtOut Total CT received
    /// @return netFwFee Total fees paid in FW
    function _swapExactFwForCt(
        address receiver,
        address market,
        IFiraWrappedStandardized FW,
        IBCToken CT,
        uint256 exactFwIn,
        uint256 minCtOut,
        ApproxParams calldata guessCtOut,
        LimitOrderData calldata limit
    ) internal returns (uint256 netCtOut, uint256 netFwFee) {
        uint256 netFwLeft = exactFwIn;
        bool doMarketOrder = true;

        if (!_isEmptyLimit(limit)) {
            (netFwLeft, netCtOut, netFwFee, doMarketOrder) = _fillLimit(receiver, FW, netFwLeft, limit);
            if (doMarketOrder) {
                _transferOut(address(FW), address(CT), netFwLeft);
            } else {
                _transferOut(address(FW), receiver, netFwLeft);
            }
        }

        if (doMarketOrder) {
            (uint256 netCtOutMarket,) =
                _readMarket(market).approxSwapExactFwForCtV2(CT.newIndex(), netFwLeft, block.timestamp, guessCtOut);

            (, uint256 netFwFeeMarket) = IPMarket(market)
                .swapExactBtForFw(
                    address(CT),
                    netCtOutMarket, // exactPtIn = netCtOut
                    _encodeSwapExactFwForCt(receiver, CT)
                );

            netCtOut += netCtOutMarket;
            netFwFee += netFwFeeMarket;
        }

        if (netCtOut < minCtOut) revert("Slippage: INSUFFICIENT_CT_OUT");
    }

    // ──────────────────────────────────────────────────────────────────────────────
    // LIMIT ORDERS
    // ──────────────────────────────────────────────────────────────────────────────

    /// @notice Fills limit orders from the order book before executing remaining amount on AMM
    /// @param receiver Address to receive output tokens from filled orders
    /// @param tokenIn Token being sold to fill orders
    /// @param netInput Total input amount available
    /// @param lim Limit order data containing normal and flash fills
    /// @return netLeft Remaining input after filling orders
    /// @return netOut Total output received from filled orders
    /// @return netFwFee Total fees paid
    /// @return doMarketOrder Whether remaining amount warrants a market order (based on epsSkipMarket)
    function _fillLimit(address receiver, IERC20 tokenIn, uint256 netInput, LimitOrderData calldata lim)
        internal
        returns (uint256 netLeft, uint256 netOut, uint256 netFwFee, bool doMarketOrder)
    {
        IPLimitRouter router = IPLimitRouter(lim.limitRouter);
        netLeft = netInput;

        if (lim.normalFills.length != 0) {
            _safeApproveInf(address(tokenIn), lim.limitRouter);
            (uint256 actualMaking, uint256 actualTaking, uint256 totalFee,) =
                router.fill(lim.normalFills, receiver, netLeft, lim.optData, EMPTY_BYTES);
            netOut += actualMaking;
            netLeft -= actualTaking;
            netFwFee += totalFee;
        }

        if (lim.flashFills.length != 0) {
            address CT = lim.flashFills[0].order.CT;
            OrderType orderType = lim.flashFills[0].order.orderType;

            (,, uint256 totalFee, bytes memory ret) = router.fill(
                lim.flashFills, CT, type(uint256).max, lim.optData, abi.encode(orderType, CT, netLeft, receiver)
            );
            (uint256 netUse, uint256 netReceived) = abi.decode(ret, (uint256, uint256));

            netOut += netReceived;
            netLeft -= netUse;
            netFwFee += totalFee;
        }

        doMarketOrder = netLeft > netInput.mulDown(lim.epsSkipMarket);
    }

    /// @notice Checks if limit order data is empty (no orders to fill)
    /// @param a Limit order data to check
    /// @return True if both normalFills and flashFills are empty
    function _isEmptyLimit(LimitOrderData calldata a) internal pure returns (bool) {
        return a.normalFills.length == 0 && a.flashFills.length == 0;
    }

    // ──────────────────────────────────────────────────────────────────────────────
    // LIQUIDITY ENTRY POINTS
    // ──────────────────────────────────────────────────────────────────────────────

    /// @notice Determines the entry point for adding liquidity with single BT
    /// @param market Address of the Fira market
    /// @param lim Limit order data (if any)
    /// @return Entry address: this contract if limit orders exist, otherwise the market
    function _entry_addLiquiditySingleBt(address market, LimitOrderData calldata lim) internal view returns (address) {
        return _entry_addLiquiditySingleBt(market, !_isEmptyLimit(lim));
    }

    /// @dev Overload that takes a boolean for limit order presence
    function _entry_addLiquiditySingleBt(address market, bool hasLimitOrder) internal view returns (address) {
        return hasLimitOrder ? address(this) : market;
    }

    /// @notice Determines the entry point for adding liquidity with single FW
    /// @param market Address of the Fira market
    /// @param lim Limit order data (if any)
    /// @return Entry address: this contract if limit orders exist, otherwise the market
    function _entry_addLiquiditySingleFw(address market, LimitOrderData calldata lim) internal view returns (address) {
        return _entry_addLiquiditySingleFw(market, !_isEmptyLimit(lim));
    }

    /// @dev Overload that takes a boolean for limit order presence
    function _entry_addLiquiditySingleFw(address market, bool hasLimitOrder) internal view returns (address) {
        return hasLimitOrder ? address(this) : market;
    }

    // ──────────────────────────────────────────────────────────────────────────────
    // DELEGATE CALL HELPERS
    // ──────────────────────────────────────────────────────────────────────────────

    /// @notice Executes a delegatecall to this contract itself
    /// @dev Used for calling other facet functions while preserving storage context
    /// @param data Encoded function call data
    /// @param allowFailure If false, reverts on delegatecall failure; if true, returns failure status
    /// @return success Whether the delegatecall succeeded
    /// @return result Return data from the delegatecall
    function _delegateToSelf(bytes memory data, bool allowFailure)
        internal
        returns (bool success, bytes memory result)
    {
        (success, result) = address(this).delegatecall(data);

        if (!success && !allowFailure) {
            assembly {
                // We use Yul's revert() to bubble up errors from the target contract.
                revert(add(32, result), mload(result))
            }
        }
    }
}

// ============================================================
// FILE: src/fira_bonding/router/base/ActionDelegateBase.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import {IPActionSimple} from "../../../interfaces/IPActionSimple.sol";
import {ApproxParams, LimitOrderData, TokenInput} from "../../../interfaces/IPAllActionTypeV3.sol";
import {ActionBase} from "./ActionBase.sol";

/// @title ActionDelegateBase
/// @notice Provides internal delegate call wrappers for simple action functions.
/// @dev These wrappers allow complex action facets to reuse simple action logic via delegatecall,
///      ensuring storage context is preserved while avoiding code duplication. Each delegate function
///      encodes a call to IPActionSimple and executes it through _delegateToSelf.
contract ActionDelegateBase is ActionBase {
    /// @notice Delegates to addLiquiditySingleBtSimple to add liquidity using only BT
    /// @param receiver Address to receive the LP tokens
    /// @param market Address of the Fira market
    /// @param netBtIn Amount of BT to add as liquidity
    /// @param minLpOut Minimum LP tokens to receive (slippage protection)
    /// @return netLpOut Amount of LP tokens received
    /// @return netFwFee Fees paid in FW
    function delegateToAddLiquiditySingleBtSimple(address receiver, address market, uint256 netBtIn, uint256 minLpOut)
        internal
        returns (uint256 netLpOut, uint256 netFwFee)
    {
        (bool success, bytes memory res) = _delegateToSelf(
            abi.encodeCall(IPActionSimple.addLiquiditySingleBtSimple, (receiver, market, netBtIn, minLpOut)),
            /* allowFailure= */
            false
        );
        assert(success);
        return abi.decode(res, (uint256, uint256));
    }

    /// @notice Delegates to addLiquiditySingleTokenSimple to add liquidity using any input token
    /// @param receiver Address to receive the LP tokens
    /// @param market Address of the Fira market
    /// @param minLpOut Minimum LP tokens to receive (slippage protection)
    /// @param input Token input parameters including swap routing if needed
    /// @return netLpOut Amount of LP tokens received
    /// @return netFwFee Fees paid in FW
    /// @return netFwInterm Intermediate FW amount used
    function delegateToAddLiquiditySingleTokenSimple(
        address receiver,
        address market,
        uint256 minLpOut,
        TokenInput calldata input
    ) internal returns (uint256 netLpOut, uint256 netFwFee, uint256 netFwInterm) {
        (bool success, bytes memory res) = _delegateToSelf(
            abi.encodeCall(IPActionSimple.addLiquiditySingleTokenSimple, (receiver, market, minLpOut, input)),
            /* allowFailure= */
            false
        );
        assert(success);
        return abi.decode(res, (uint256, uint256, uint256));
    }

    /// @notice Delegates to addLiquiditySingleFwSimple to add liquidity using only FW
    /// @param receiver Address to receive the LP tokens
    /// @param market Address of the Fira market
    /// @param netFwIn Amount of FW to add as liquidity
    /// @param minLpOut Minimum LP tokens to receive (slippage protection)
    /// @return netLpOut Amount of LP tokens received
    /// @return netFwFee Fees paid in FW
    function delegateToAddLiquiditySingleFwSimple(address receiver, address market, uint256 netFwIn, uint256 minLpOut)
        internal
        returns (uint256 netLpOut, uint256 netFwFee)
    {
        (bool success, bytes memory res) = _delegateToSelf(
            abi.encodeCall(IPActionSimple.addLiquiditySingleFwSimple, (receiver, market, netFwIn, minLpOut)),
            /* allowFailure= */
            false
        );
        assert(success);
        return abi.decode(res, (uint256, uint256));
    }

    /// @notice Delegates to removeLiquiditySingleBtSimple to remove liquidity and receive BT
    /// @param receiver Address to receive the BT tokens
    /// @param market Address of the Fira market
    /// @param netLpToRemove Amount of LP tokens to burn
    /// @param minBtOut Minimum BT to receive (slippage protection)
    /// @return netBtOut Amount of BT received
    /// @return netFwFee Fees paid in FW
    function delegateToRemoveLiquiditySingleBtSimple(
        address receiver,
        address market,
        uint256 netLpToRemove,
        uint256 minBtOut
    ) internal returns (uint256 netBtOut, uint256 netFwFee) {
        (bool success, bytes memory res) = _delegateToSelf(
            abi.encodeCall(IPActionSimple.removeLiquiditySingleBtSimple, (receiver, market, netLpToRemove, minBtOut)),
            /* allowFailure= */
            false
        );
        assert(success);
        return abi.decode(res, (uint256, uint256));
    }

    /// @notice Delegates to swapExactTokenForBtSimple to swap any token for BT
    /// @param receiver Address to receive the BT tokens
    /// @param market Address of the Fira market
    /// @param minBtOut Minimum BT to receive (slippage protection)
    /// @param input Token input parameters including swap routing if needed
    /// @return netBtOut Amount of BT received
    /// @return netFwFee Fees paid in FW
    /// @return netFwInterm Intermediate FW amount used
    function delegateToSwapExactTokenForBtSimple(
        address receiver,
        address market,
        uint256 minBtOut,
        TokenInput calldata input
    ) internal returns (uint256 netBtOut, uint256 netFwFee, uint256 netFwInterm) {
        (bool success, bytes memory res) = _delegateToSelf(
            abi.encodeCall(IPActionSimple.swapExactTokenForBtSimple, (receiver, market, minBtOut, input)),
            /* allowFailure= */
            false
        );
        assert(success);
        return abi.decode(res, (uint256, uint256, uint256));
    }

    /// @notice Delegates to swapExactFwForBtSimple to swap FW for BT
    /// @param receiver Address to receive the BT tokens
    /// @param market Address of the Fira market
    /// @param exactFwIn Exact amount of FW to swap
    /// @param minBtOut Minimum BT to receive (slippage protection)
    /// @return netBtOut Amount of BT received
    /// @return netFwFee Fees paid in FW
    function delegateToSwapExactFwForBtSimple(address receiver, address market, uint256 exactFwIn, uint256 minBtOut)
        internal
        returns (uint256 netBtOut, uint256 netFwFee)
    {
        (bool success, bytes memory res) = _delegateToSelf(
            abi.encodeCall(IPActionSimple.swapExactFwForBtSimple, (receiver, market, exactFwIn, minBtOut)),
            /* allowFailure= */
            false
        );
        assert(success);
        return abi.decode(res, (uint256, uint256));
    }

    /// @notice Delegates to swapExactTokenForCtSimple to swap any token for CT
    /// @param receiver Address to receive the CT tokens
    /// @param market Address of the Fira market
    /// @param minCtOut Minimum CT to receive (slippage protection)
    /// @param input Token input parameters including swap routing if needed
    /// @return netCtOut Amount of CT received
    /// @return netFwFee Fees paid in FW
    /// @return netFwInterm Intermediate FW amount used
    function delegateToSwapExactTokenForCtSimple(
        address receiver,
        address market,
        uint256 minCtOut,
        TokenInput calldata input
    ) internal returns (uint256 netCtOut, uint256 netFwFee, uint256 netFwInterm) {
        (bool success, bytes memory res) = _delegateToSelf(
            abi.encodeCall(IPActionSimple.swapExactTokenForCtSimple, (receiver, market, minCtOut, input)),
            /* allowFailure= */
            false
        );
        assert(success);
        return abi.decode(res, (uint256, uint256, uint256));
    }

    /// @notice Delegates to swapExactFwForCtSimple to swap FW for CT
    /// @param receiver Address to receive the CT tokens
    /// @param market Address of the Fira market
    /// @param exactFwIn Exact amount of FW to swap
    /// @param minCtOut Minimum CT to receive (slippage protection)
    /// @return netCtOut Amount of CT received
    /// @return netFwFee Fees paid in FW
    function delegateToSwapExactFwForCtSimple(address receiver, address market, uint256 exactFwIn, uint256 minCtOut)
        internal
        returns (uint256 netCtOut, uint256 netFwFee)
    {
        (bool success, bytes memory res) = _delegateToSelf(
            abi.encodeCall(IPActionSimple.swapExactFwForCtSimple, (receiver, market, exactFwIn, minCtOut)),
            /* allowFailure= */
            false
        );
        assert(success);
        return abi.decode(res, (uint256, uint256));
    }

    /// @notice Checks if on-chain approximation can be used instead of off-chain computed values
    /// @dev On-chain approximation is only valid when no off-chain guess is provided and no limit orders exist
    /// @param approx Approximation parameters containing guessOffchain value
    /// @param limit Limit order data to check for presence of orders
    /// @return True if on-chain approximation can be used
    function canUseOnchainApproximation(ApproxParams calldata approx, LimitOrderData calldata limit)
        internal
        pure
        returns (bool)
    {
        return approx.guessOffchain == 0 && _isEmptyLimit(limit);
    }
}

// ============================================================
// FILE: src/fira_bonding/router/base/CallbackHelper.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

import "../../../interfaces/IBondToken.sol";

import "../../../interfaces/IBCToken.sol";
import "../../../interfaces/IFiraWrappedStandardized.sol";

/// @title CallbackHelper
/// @notice Abstract contract providing encoding/decoding utilities for swap callback data
/// @dev The Fira market uses callbacks during complex swap operations. This helper provides
///      type-safe encoding and decoding of callback parameters for different swap types.
///
///      Callback flow:
///      1. Router initiates swap on market
///      2. Market transfers tokens to router
///      3. Market calls router's swapCallback with encoded data
///      4. Router decodes data, performs operations (mint/redeem BC)
///      5. Router repays the market
///
///      Uses assembly for gas-efficient encoding/decoding.
abstract contract CallbackHelper {
    /// @notice Types of swap operations that use callbacks
    /// @dev Each type has its own encode/decode functions
    enum ActionType {
        SwapExactFwForCt,
        SwapCtForFw,
        SwapExactCtForBt,
        SwapExactBtForCt
    }

    /// ------------------------------------------------------------
    /// SwapExactFwForCt
    /// ------------------------------------------------------------

    /// @notice Encodes callback data for swapping exact FW for CT
    /// @param receiver Address to receive the CT tokens
    /// @param CT The Coupon Token contract
    /// @return res Encoded callback data
    function _encodeSwapExactFwForCt(address receiver, IBCToken CT) internal pure returns (bytes memory res) {
        res = new bytes(96);
        uint256 actionType = uint256(ActionType.SwapExactFwForCt);

        assembly {
            mstore(add(res, 32), actionType)
            mstore(add(res, 64), receiver)
            mstore(add(res, 96), CT)
        }
    }

    /// @notice Decodes callback data for swapping exact FW for CT
    /// @param data Encoded callback data
    /// @return receiver Address to receive CT
    /// @return CT The Coupon Token contract
    function _decodeSwapExactFwForCt(bytes calldata data) internal pure returns (address receiver, IBCToken CT) {
        assembly {
            // first 32 bytes is ActionType
            receiver := calldataload(add(data.offset, 32))
            CT := calldataload(add(data.offset, 64))
        }
    }

    /// ------------------------------------------------------------
    /// SwapCtForFw
    /// ------------------------------------------------------------

    /// @notice Encodes callback data for swapping CT for FW
    /// @param receiver Address to receive the FW tokens
    /// @param CT The Coupon Token contract
    /// @return res Encoded callback data
    function _encodeSwapCtForFw(address receiver, IBCToken CT) internal pure returns (bytes memory res) {
        res = new bytes(96);
        uint256 actionType = uint256(ActionType.SwapCtForFw);

        assembly {
            mstore(add(res, 32), actionType)
            mstore(add(res, 64), receiver)
            mstore(add(res, 96), CT)
        }
    }

    /// @notice Decodes callback data for swapping CT for FW
    /// @param data Encoded callback data
    /// @return receiver Address to receive FW
    /// @return CT The Coupon Token contract
    function _decodeSwapCtForFw(bytes calldata data) internal pure returns (address receiver, IBCToken CT) {
        assembly {
            // first 32 bytes is ActionType
            receiver := calldataload(add(data.offset, 32))
            CT := calldataload(add(data.offset, 64))
        }
    }

    /// @notice Encodes callback data for swapping exact CT for BT
    /// @param receiver Address to receive the BT tokens
    /// @param netBtOut Expected BT output amount
    /// @param BT The Bond Token contract
    /// @param CT The Coupon Token contract
    /// @return res Encoded callback data
    function _encodeSwapExactCtForBt(address receiver, uint256 netBtOut, IBondToken BT, IBCToken CT)
        internal
        pure
        returns (bytes memory res)
    {
        res = new bytes(160);
        uint256 actionType = uint256(ActionType.SwapExactCtForBt);

        assembly {
            mstore(add(res, 32), actionType)
            mstore(add(res, 64), receiver)
            mstore(add(res, 96), netBtOut)
            mstore(add(res, 128), BT)
            mstore(add(res, 160), CT)
        }
    }

    /// @notice Decodes callback data for swapping exact CT for BT
    /// @param data Encoded callback data
    /// @return receiver Address to receive BT
    /// @return netBtOut Expected BT output
    /// @return BT The Bond Token contract
    /// @return CT The Coupon Token contract
    function _decodeSwapExactCtForBt(bytes calldata data)
        internal
        pure
        returns (address receiver, uint256 netBtOut, IBondToken BT, IBCToken CT)
    {
        assembly {
            // first 32 bytes is ActionType
            receiver := calldataload(add(data.offset, 32))
            netBtOut := calldataload(add(data.offset, 64))
            BT := calldataload(add(data.offset, 96))
            CT := calldataload(add(data.offset, 128))
        }
    }

    /// @notice Encodes callback data for swapping exact BT for CT
    /// @param receiver Address to receive the CT tokens
    /// @param exactBtIn Exact BT input amount
    /// @param minCtOut Minimum CT output (slippage protection)
    /// @param CT The Coupon Token contract
    /// @return res Encoded callback data
    function _encodeSwapExactBtForCt(address receiver, uint256 exactBtIn, uint256 minCtOut, IBCToken CT)
        internal
        pure
        returns (bytes memory res)
    {
        res = new bytes(160);
        uint256 actionType = uint256(ActionType.SwapExactBtForCt);

        assembly {
            mstore(add(res, 32), actionType)
            mstore(add(res, 64), receiver)
            mstore(add(res, 96), exactBtIn)
            mstore(add(res, 128), minCtOut)
            mstore(add(res, 160), CT)
        }
    }

    /// @notice Decodes callback data for swapping exact BT for CT
    /// @param data Encoded callback data
    /// @return receiver Address to receive CT
    /// @return exactBtIn Exact BT input amount
    /// @return minCtOut Minimum CT output
    /// @return CT The Coupon Token contract
    function _decodeSwapExactBtForCt(bytes calldata data)
        internal
        pure
        returns (address receiver, uint256 exactBtIn, uint256 minCtOut, IBCToken CT)
    {
        assembly {
            // first 32 bytes is ActionType
            receiver := calldataload(add(data.offset, 32))
            exactBtIn := calldataload(add(data.offset, 64))
            minCtOut := calldataload(add(data.offset, 96))
            CT := calldataload(add(data.offset, 128))
        }
    }

    /// ------------------------------------------------------------
    /// Misc functions
    /// ------------------------------------------------------------

    /// @notice Extracts the action type from encoded callback data
    /// @param data Encoded callback data (action type is first 32 bytes)
    /// @return actionType The decoded action type
    function _getActionType(bytes calldata data) internal pure returns (ActionType actionType) {
        assembly {
            actionType := calldataload(data.offset)
        }
    }
}

// ============================================================
// FILE: src/fira_bonding/router/math/MarketApproxLibV2.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import {ApproxParams} from "../../../interfaces/IPAllActionTypeV3.sol";
import "../../core/Market/MarketMathCore.sol";
import "../../libraries/math/PMath.sol";

uint256 constant QUICK_CALC_MAX_ITER = 50;
uint256 constant CUT_OFF_SCALE_CLAMP = 2;
uint256 constant QUICK_CALC_TRIGGER_EPS = 1e17;

/// @title MarketApproxBtInLibV2
/// @notice V2 approximation library for swaps where BT flows into the market
/// @dev Handles swaps like FW->CT and adding liquidity with BT. Supports both off-chain
///      pre-computed guesses and on-chain estimation with adaptive search strategies.
library MarketApproxBtInLibV2 {
    using MarketMathCore for MarketState;
    using BCIndexLib for BCIndex;
    using PMath for uint256;
    using PMath for int256;
    using LogExpMath for int256;

    /// @notice Approximates swap of exact FW input for CT output with optional off-chain guess
    /// @dev When guessOffchain != 0, uses the pre-computed guess as starting point.
    ///      Otherwise, estimates and validates bounds on-chain. Uses scaled clamping for
    ///      initial iterations, then switches to binary search midpoint.
    /// @param market The current market state
    /// @param index BC index for FW/asset conversions
    /// @param exactFwIn Exact amount of FW to spend
    /// @param blockTime Current block timestamp
    /// @param approx Approximation parameters (guessMin, guessMax, guessOffchain, maxIteration, eps)
    /// @return netCtOut Amount of CT tokens received
    /// @return netFwFee Fee amount in FW tokens
    function approxSwapExactFwForCtV2(
        MarketState memory market,
        BCIndex index,
        uint256 exactFwIn,
        uint256 blockTime,
        ApproxParams memory approx
    )
        internal
        pure
        returns (
            uint256, /* netCtOut*/
            uint256 /* netFwFee*/
        )
    {
        MarketPreCompute memory comp = market.getMarketPreCompute(index, blockTime);
        if (approx.guessOffchain == 0) {
            approx.guessMin = PMath.max(approx.guessMin, index.fwToAsset(exactFwIn));
            approx.guessMax = PMath.min(approx.guessMax, calcMaxBtIn(market, comp));
            validateApprox(approx);
        }

        // at minimum we will flashswap exactFwIn since we have enough FW to payback the BT loan

        uint256 guess = getFirstGuess(approx);

        for (uint256 iter = 0; iter < approx.maxIteration; ++iter) {
            (uint256 netFwOut, uint256 netFwFee,) = calcFwOut(market, comp, index, guess);

            uint256 netFwToTokenizeBt = index.assetToFwUp(guess);

            // for sure netfwToTokenizeBt >= netFwOut since we are swapping BT to FW
            uint256 netFwToPull = netFwToTokenizeBt - netFwOut;

            if (netFwToPull <= exactFwIn) {
                if (PMath.isASmallerApproxB(netFwToPull, exactFwIn, approx.eps)) {
                    return (guess, netFwFee);
                }
                if (approx.guessMin == guess) {
                    break;
                }
                approx.guessMin = guess;
            } else {
                approx.guessMax = guess - 1;
            }

            if (iter <= CUT_OFF_SCALE_CLAMP) {
                guess = scaleClamp(guess, exactFwIn, netFwToPull, approx);
            } else {
                guess = calcMidpoint(approx);
            }
        }

        revert("Slippage: APPROX_EXHAUSTED");
    }

    /// @notice Arguments struct for approxSwapBtToAddLiquidityV2 to avoid stack depth issues
    struct Args5 {
        MarketState market;
        BCIndex index;
        uint256 totalBtIn;
        uint256 netFwHolding;
        uint256 blockTime;
        ApproxParams approx;
    }

    /// @notice Approximates optimal BT swap amount for adding liquidity with optional off-chain guess
    /// @dev Finds the BT amount to swap for FW such that the resulting ratio matches the pool.
    ///      When proportions get close (within QUICK_CALC_TRIGGER_EPS), triggers quickCalc
    ///      optimization for faster convergence using linear interpolation.
    /// @param _market The current market state (must have existing liquidity)
    /// @param _index BC index for conversions
    /// @param _totalBtIn Total BT tokens available
    /// @param _netFwHolding FW tokens already held
    /// @param _blockTime Current block timestamp
    /// @param approx Approximation parameters
    /// @return netBtSwap Amount of BT to swap
    /// @return netFwFromSwap Amount of FW received
    /// @return netFwFee Fee in FW tokens
    function approxSwapBtToAddLiquidityV2(
        MarketState memory _market,
        BCIndex _index,
        uint256 _totalBtIn,
        uint256 _netFwHolding,
        uint256 _blockTime,
        ApproxParams memory approx
    )
        internal
        pure
        returns (
            uint256, /* netBtSwap*/
            uint256, /* netFwFromSwap*/
            uint256 /* netFwFee*/
        )
    {
        Args5 memory a = Args5(_market, _index, _totalBtIn, _netFwHolding, _blockTime, approx);
        MarketPreCompute memory comp = a.market.getMarketPreCompute(a.index, a.blockTime);
        if (approx.guessOffchain == 0) {
            // no limit on min
            approx.guessMax = PMath.min(approx.guessMax, calcMaxBtIn(a.market, comp));
            approx.guessMax = PMath.min(approx.guessMax, a.totalBtIn);
            validateApprox(approx);
            require(a.market.totalLp != 0, "no existing lp");
        }

        uint256 guess = getFirstGuess(approx);

        bool quickCalcRan = false;
        for (uint256 iter = 0; iter < approx.maxIteration; ++iter) {
            (uint256 fwNumerator, uint256 btNumerator, uint256 netFwOut, uint256 netFwFee, uint256 netFwToReserve) =
                calcNumerators(a.market, a.index, a.totalBtIn, a.netFwHolding, comp, guess);

            if (PMath.isAApproxB(fwNumerator, btNumerator, approx.eps)) {
                return (guess, netFwOut, netFwFee);
            }

            if (fwNumerator <= btNumerator) {
                // needs more FW --> swap more BT
                if (approx.guessMin == guess) {
                    break;
                }
                approx.guessMin = guess;
            } else {
                // needs less FW --> swap less BT
                approx.guessMax = guess - 1;
            }

            if (!quickCalcRan && PMath.isAApproxB(fwNumerator, btNumerator, QUICK_CALC_TRIGGER_EPS)) {
                quickCalcRan = true;
                guess = quickCalc(a, guess, netFwOut, netFwToReserve);
                if (guess <= a.approx.guessMin || guess >= a.approx.guessMax) {
                    guess = calcMidpoint(a.approx);
                }
            } else {
                guess = calcMidpoint(a.approx);
            }
        }
        revert("Slippage: APPROX_EXHAUSTED");
    }

    /// @notice Fast approximation using linear interpolation when close to the solution
    /// @dev Assumes netFwOut and netFwToReserve scale linearly with the guess amount.
    ///      Uses unchecked arithmetic for gas optimization since values are bounded.
    ///      Triggered when fwNumerator and btNumerator are within QUICK_CALC_TRIGGER_EPS.
    /// @param a Arguments struct containing market state and parameters
    /// @param _guess Current guess that triggered quickCalc
    /// @param _netFwOut FW output at current guess (used for linear scaling)
    /// @param _netFwToReserve FW to reserve at current guess (used for linear scaling)
    /// @return Refined guess value closer to the optimal solution
    function quickCalc(Args5 memory a, uint256 _guess, uint256 _netFwOut, uint256 _netFwToReserve)
        internal
        pure
        returns (uint256)
    {
        unchecked {
            uint256 low = a.approx.guessMin;
            uint256 high = a.approx.guessMax;

            for (uint256 i = 0; i < QUICK_CALC_MAX_ITER; i++) {
                uint256 mid = (low + high) / 2;

                uint256 thisNetFwOut = (_netFwOut * mid) / _guess;
                uint256 thisNetFwToReserve = (_netFwToReserve * mid) / _guess;

                uint256 newTotalBt = uint256(a.market.totalBt) + mid;
                uint256 newTotalFw = (uint256(a.market.totalFw) - thisNetFwOut - thisNetFwToReserve);

                uint256 fwNumerator = (thisNetFwOut + a.netFwHolding) * newTotalBt;
                uint256 btNumerator = (a.totalBtIn - mid) * newTotalFw;

                if (isAApproxBUnchecked(fwNumerator, btNumerator, a.approx.eps)) {
                    return mid;
                }

                if (fwNumerator <= btNumerator) {
                    if (low == mid) {
                        break;
                    }
                    low = mid;
                } else {
                    high = mid - 1;
                }

                if (low > high) return mid;
            }
            return (low + high) / 2;
        }
    }

    /// @notice Calculates numerators for comparing BT and FW proportions in liquidity addition
    /// @dev Computes values to check if (netFwOut + netFwHolding) / newTotalFw = netBtRemaining / newTotalBt.
    ///      Cross-multiplied: fwNumerator = (netFwOut + netFwHolding) * newTotalBt,
    ///      btNumerator = (totalBtIn - guess) * newTotalFw. Equal when proportions match.
    /// @param market The current market state
    /// @param index BC index for conversions
    /// @param totalBtIn Total BT tokens available
    /// @param netFwHolding FW tokens already held
    /// @param comp Pre-computed market values
    /// @param guess Current guess for BT swap amount
    /// @return fwNumerator FW side of the proportion equation
    /// @return btNumerator BT side of the proportion equation
    /// @return netFwOut FW received from swap
    /// @return netFwFee Swap fee in FW
    /// @return netFwToReserve FW directed to reserves
    function calcNumerators(
        MarketState memory market,
        BCIndex index,
        uint256 totalBtIn,
        uint256 netFwHolding,
        MarketPreCompute memory comp,
        uint256 guess
    )
        internal
        pure
        returns (uint256 fwNumerator, uint256 btNumerator, uint256 netFwOut, uint256 netFwFee, uint256 netFwToReserve)
    {
        (netFwOut, netFwFee, netFwToReserve) = calcFwOut(market, comp, index, guess);

        uint256 newTotalBt = uint256(market.totalBt) + guess;
        uint256 newTotalFw = (uint256(market.totalFw) - netFwOut - netFwToReserve);

        // it is desired that
        // (netFwOut + netfwHolding) / newTotalfw = netBtRemaining / newTotalBt
        // which is equivalent to
        // (netFwOut + netFwHolding) * newTotalBt = netBtRemaining * newTotalFw

        fwNumerator = (netFwOut + netFwHolding) * newTotalBt;
        btNumerator = (totalBtIn - guess) * newTotalFw;
    }

    // //////////////////////////////////////////////////////////////////////////////

    /// @notice Calculates FW output for a given BT input amount
    /// @dev Wrapper around market.calcTrade converting signed to unsigned results
    /// @param market The current market state
    /// @param comp Pre-computed market values
    /// @param index BC index for conversions
    /// @param netBtIn Amount of BT to swap into the market
    /// @return netFwOut FW tokens received
    /// @return netFwFee Swap fee in FW
    /// @return netFwToReserve FW directed to reserves
    function calcFwOut(MarketState memory market, MarketPreCompute memory comp, BCIndex index, uint256 netBtIn)
        internal
        pure
        returns (uint256 netFwOut, uint256 netFwFee, uint256 netFwToReserve)
    {
        (int256 _netFwOut, int256 _netFwFee, int256 _netFwToReserve) = market.calcTrade(comp, index, -int256(netBtIn));
        netFwOut = uint256(_netFwOut);
        netFwFee = uint256(_netFwFee);
        netFwToReserve = uint256(_netFwToReserve);
    }

    /// @notice Validates approximation parameters for on-chain computation
    /// @dev Only called when guessOffchain == 0. Ensures guessMin <= guessMax and eps <= 1e18.
    /// @param approx The approximation parameters to validate
    function validateApprox(ApproxParams memory approx) internal pure {
        if (approx.guessMin > approx.guessMax || approx.eps > PMath.ONE) {
            revert("Internal: INVALID_APPROX_PARAMS");
        }
    }

    /// @notice Calculates the maximum BT amount that can be swapped into the market
    /// @dev Uses binary search to find the point where the AMM curve slope becomes negative.
    ///      Also bounded by MAX_MARKET_PROPORTION to prevent extreme pool imbalances.
    /// @param market The current market state
    /// @param comp Pre-computed market values
    /// @return Maximum BT input maintaining market stability
    function calcMaxBtIn(MarketState memory market, MarketPreCompute memory comp) internal pure returns (uint256) {
        uint256 low = 0;
        uint256 hi = uint256(comp.totalAsset) - 1;

        while (low != hi) {
            uint256 mid = (low + hi + 1) / 2;
            if (calcSlope(comp, market.totalBt, int256(mid)) < 0) hi = mid - 1;
            else low = mid;
        }

        low = PMath.min(
            low,
            (MarketMathCore.MAX_MARKET_PROPORTION.mulDown(market.totalBt + comp.totalAsset) - market.totalBt).Uint()
        );

        return low;
    }

    /// @notice Calculates the slope of the AMM curve at a given BT input amount
    /// @dev Used to find the maximum valid BT input. Negative slope indicates
    ///      the trade would push the market past its stable operating range.
    /// @param comp Pre-computed market values
    /// @param totalBt Current total BT in the market
    /// @param btToMarket Amount of BT being added to the market
    /// @return The slope value; negative indicates invalid trade region
    function calcSlope(MarketPreCompute memory comp, int256 totalBt, int256 btToMarket) internal pure returns (int256) {
        int256 diffAssetBtToMarket = comp.totalAsset - btToMarket;
        int256 sumBt = btToMarket + totalBt;

        require(diffAssetBtToMarket > 0 && sumBt > 0, "invalid btToMarket");

        int256 part1 = (btToMarket * (totalBt + comp.totalAsset)).divDown(sumBt * diffAssetBtToMarket);

        int256 part2 = sumBt.divDown(diffAssetBtToMarket).ln();
        int256 part3 = PMath.IONE.divDown(comp.rateScalar);

        return comp.rateAnchor - (part1 - part2).mulDown(part3);
    }
}

/// @title MarketApproxBtOutLibV2
/// @notice V2 approximation library for swaps where BT flows out of the market
/// @dev Handles swaps like FW->BT and adding liquidity with FW. Supports both off-chain
///      pre-computed guesses and on-chain estimation with adaptive search strategies.
library MarketApproxBtOutLibV2 {
    using MarketMathCore for MarketState;
    using BCIndexLib for BCIndex;
    using PMath for uint256;
    using PMath for int256;
    using LogExpMath for int256;

    /// @notice Approximates swap of exact FW input for BT output with optional off-chain guess
    /// @dev When guessOffchain != 0, uses the pre-computed guess as starting point.
    ///      Uses scaled clamping for initial iterations, then binary search.
    /// @param market The current market state
    /// @param index BC index for conversions
    /// @param exactFwIn Exact amount of FW to spend
    /// @param blockTime Current block timestamp
    /// @param approx Approximation parameters
    /// @return netBtOut Amount of BT tokens received
    /// @return netFwFee Fee in FW tokens
    function approxSwapExactFwForBtV2(
        MarketState memory market,
        BCIndex index,
        uint256 exactFwIn,
        uint256 blockTime,
        ApproxParams memory approx
    )
        internal
        pure
        returns (
            uint256, /* netBtOut*/
            uint256 /* netFwFee*/
        )
    {
        MarketPreCompute memory comp = market.getMarketPreCompute(index, blockTime);
        if (approx.guessOffchain == 0) {
            // no limit on min
            approx.guessMax = PMath.min(approx.guessMax, calcMaxBtOut(comp, market.totalBt));
            validateApprox(approx);
        }
        uint256 guess = getFirstGuess(approx);

        for (uint256 iter = 0; iter < approx.maxIteration; ++iter) {
            (uint256 netFwIn, uint256 netFwFee,) = calcFwIn(market, comp, index, guess);

            if (netFwIn <= exactFwIn) {
                if (PMath.isASmallerApproxB(netFwIn, exactFwIn, approx.eps)) {
                    return (guess, netFwFee);
                }
                if (guess == approx.guessMin) {
                    break;
                }
                approx.guessMin = guess;
            } else {
                approx.guessMax = guess - 1;
            }

            if (iter <= CUT_OFF_SCALE_CLAMP) {
                guess = scaleClamp(guess, exactFwIn, netFwIn, approx);
            } else {
                guess = calcMidpoint(approx);
            }
        }

        revert("Slippage: APPROX_EXHAUSTED");
    }

    /// @notice Arguments struct for approxSwapFwToAddLiquidityV2 to avoid stack depth issues
    struct Args6 {
        MarketState market;
        BCIndex index;
        uint256 totalFw;
        uint256 netBtHolding;
        uint256 blockTime;
        ApproxParams approx;
    }

    /// @notice Approximates optimal FW swap amount for adding liquidity with optional off-chain guess
    /// @dev Finds the BT amount to receive from swapping FW such that the resulting ratio
    ///      matches the pool. Uses quickCalc optimization when close to solution.
    /// @param _market The current market state (must have existing liquidity)
    /// @param _index BC index for conversions
    /// @param _totalFwIn Total FW tokens available
    /// @param _netBtHolding BT tokens already held
    /// @param _blockTime Current block timestamp
    /// @param _approx Approximation parameters
    /// @return netBtFromSwap Amount of BT received
    /// @return netFwSwap Amount of FW spent on swap
    /// @return netFwFee Fee in FW tokens
    function approxSwapFwToAddLiquidityV2(
        MarketState memory _market,
        BCIndex _index,
        uint256 _totalFwIn,
        uint256 _netBtHolding,
        uint256 _blockTime,
        ApproxParams memory _approx
    )
        internal
        pure
        returns (
            uint256, /* netBtFromSwap*/
            uint256, /* netFwSwap*/
            uint256 /* netFwFee*/
        )
    {
        Args6 memory a = Args6(_market, _index, _totalFwIn, _netBtHolding, _blockTime, _approx);

        MarketPreCompute memory comp = a.market.getMarketPreCompute(a.index, a.blockTime);
        if (a.approx.guessOffchain == 0) {
            // no limit on min
            a.approx.guessMax = PMath.min(a.approx.guessMax, calcMaxBtOut(comp, a.market.totalBt));
            validateApprox(a.approx);
            require(a.market.totalLp != 0, "no existing lp");
        }

        uint256 guess = getFirstGuess(a.approx);

        bool quickCalcRan = false;
        for (uint256 iter = 0; iter < a.approx.maxIteration; ++iter) {
            (uint256 netFwIn, uint256 netFwFee, uint256 netFwToReserve) = calcFwIn(a.market, comp, a.index, guess);

            if (netFwIn > a.totalFw) {
                a.approx.guessMax = guess - 1;
                guess = calcMidpoint(a.approx);
                continue;
            }

            uint256 fwNumerator;
            uint256 btNumerator;

            {
                uint256 newTotalBt = uint256(a.market.totalBt) - guess;
                uint256 netTotalFw = uint256(a.market.totalFw) + netFwIn - netFwToReserve;

                // it is desired that
                // (netBtFromSwap + netBtHolding) / newTotalBt = netFwRemaining / netTotalFw
                // which is equivalent to
                // (netBtFromSwap + netBtHolding) * netTotalFw = netFwRemaining * newTotalBt

                btNumerator = (guess + a.netBtHolding) * netTotalFw;
                fwNumerator = (a.totalFw - netFwIn) * newTotalBt;
            }

            if (PMath.isAApproxB(fwNumerator, btNumerator, a.approx.eps)) {
                return (guess, netFwIn, netFwFee);
            }

            if (btNumerator <= fwNumerator) {
                if (a.approx.guessMin == guess) {
                    break;
                }
                a.approx.guessMin = guess;
            } else {
                a.approx.guessMax = guess - 1;
            }

            if (!quickCalcRan && PMath.isAApproxB(fwNumerator, btNumerator, QUICK_CALC_TRIGGER_EPS)) {
                quickCalcRan = true;
                guess = quickCalc(a, guess, netFwIn, netFwToReserve);
                if (guess <= a.approx.guessMin || guess >= a.approx.guessMax) {
                    guess = calcMidpoint(a.approx);
                }
            } else {
                guess = calcMidpoint(a.approx);
            }
        }
        revert("Slippage: APPROX_EXHAUSTED");
    }

    /// @notice Fast approximation using linear interpolation when close to the solution
    /// @dev Assumes netFwIn and netFwToReserve scale linearly with the guess amount.
    ///      Handles the case where netFwIn > totalFw by reducing the guess.
    /// @param a Arguments struct containing market state and parameters
    /// @param _guess Current guess that triggered quickCalc
    /// @param _netFwIn FW input at current guess (used for linear scaling)
    /// @param _netFwToReserve FW to reserve at current guess (used for linear scaling)
    /// @return Refined guess value closer to the optimal solution
    function quickCalc(Args6 memory a, uint256 _guess, uint256 _netFwIn, uint256 _netFwToReserve)
        internal
        pure
        returns (uint256)
    {
        uint256 low = a.approx.guessMin;
        uint256 high = a.approx.guessMax;

        unchecked {
            for (uint256 i = 0; i < QUICK_CALC_MAX_ITER; i++) {
                uint256 mid = (low + high) / 2;
                uint256 newTotalBt = uint256(a.market.totalBt) - mid;

                uint256 thisNetFwIn = (_netFwIn * mid) / _guess;
                uint256 thisNetFwToReserve = (_netFwToReserve * mid) / _guess;

                if (thisNetFwIn > a.totalFw) {
                    high = mid - 1;
                    if (low > high) return mid;
                    continue;
                }

                uint256 netTotalFw = uint256(a.market.totalFw) + thisNetFwIn - thisNetFwToReserve;

                uint256 btNumerator = (mid + a.netBtHolding) * netTotalFw;
                uint256 fwNumerator = (a.totalFw - thisNetFwIn) * newTotalBt;
                if (isAApproxBUnchecked(fwNumerator, btNumerator, a.approx.eps)) {
                    return mid;
                }

                if (btNumerator <= fwNumerator) {
                    low = mid;
                } else {
                    high = mid - 1;
                }

                if (low > high) return mid;
            }

            return (low + high) / 2;
        }
    }

    // //////////////////////////////////////////////////////////////////////////////

    /// @notice Calculates FW input required for a given BT output amount
    /// @dev Wrapper around market.calcTrade converting signed to unsigned results.
    ///      Safe casts since totalBt and totalFw are int128.
    /// @param market The current market state
    /// @param comp Pre-computed market values
    /// @param index BC index for conversions
    /// @param netBtOut Amount of BT to receive
    /// @return netFwIn FW tokens required
    /// @return netFwFee Swap fee in FW
    /// @return netFwToReserve FW directed to reserves
    function calcFwIn(MarketState memory market, MarketPreCompute memory comp, BCIndex index, uint256 netBtOut)
        internal
        pure
        returns (uint256 netFwIn, uint256 netFwFee, uint256 netFwToReserve)
    {
        (int256 _netFwIn, int256 _netFwFee, int256 _netFwToReserve) = market.calcTrade(comp, index, int256(netBtOut));

        // all safe since totalBt and totalFw is int128
        netFwIn = uint256(-_netFwIn);
        netFwFee = uint256(_netFwFee);
        netFwToReserve = uint256(_netFwToReserve);
    }

    /// @notice Calculates the maximum BT amount that can be swapped out of the market
    /// @dev Derived from AMM curve constraints using fee rate and rate anchor.
    ///      Returns 99.9% of theoretical max to accommodate precision issues.
    /// @param comp Pre-computed market values
    /// @param totalBt Current total BT in the market
    /// @return Maximum BT output maintaining market stability
    function calcMaxBtOut(MarketPreCompute memory comp, int256 totalBt) internal pure returns (uint256) {
        int256 logitP = (comp.feeRate - comp.rateAnchor).mulDown(comp.rateScalar).exp();
        int256 proportion = logitP.divDown(logitP + PMath.IONE);
        int256 numerator = proportion.mulDown(totalBt + comp.totalAsset);
        int256 maxBtOut = totalBt - numerator;
        // only get 99.9% of the theoretical max to accommodate some precision issues
        return (uint256(maxBtOut) * 999) / 1000;
    }

    /// @notice Validates approximation parameters for on-chain computation
    /// @dev Ensures guessMin <= guessMax and eps <= 1e18
    /// @param approx The approximation parameters to validate
    function validateApprox(ApproxParams memory approx) internal pure {
        if (approx.guessMin > approx.guessMax || approx.eps > PMath.ONE) {
            revert("Internal: INVALID_APPROX_PARAMS");
        }
    }
}

/// @notice Scales the current guess proportionally and clamps within bounds
/// @dev Used in early iterations for faster convergence. Falls back to midpoint if
///      scaled value would exceed bounds.
/// @param original The current guess value
/// @param target The target value we want to match
/// @param current The actual value achieved with the current guess
/// @param approx Approximation parameters containing bounds
/// @return The scaled and clamped next guess
function scaleClamp(uint256 original, uint256 target, uint256 current, ApproxParams memory approx)
    pure
    returns (uint256)
{
    uint256 scaled = (original * target) / current;
    if (scaled >= approx.guessMax) return calcMidpoint(approx);
    if (scaled <= approx.guessMin) return calcMidpoint(approx);

    return scaled;
}

/// @notice Returns the first guess to use in the approximation loop
/// @dev Uses off-chain guess if provided, otherwise falls back to midpoint
/// @param approx Approximation parameters
/// @return The starting guess value
function getFirstGuess(ApproxParams memory approx) pure returns (uint256) {
    return (approx.guessOffchain != 0) ? approx.guessOffchain : calcMidpoint(approx);
}

/// @notice Calculates the midpoint of the current search range
/// @dev Standard binary search midpoint: (min + max + 1) / 2 (rounds up)
/// @param approx Approximation parameters containing guessMin and guessMax
/// @return The midpoint value
function calcMidpoint(ApproxParams memory approx) pure returns (uint256) {
    return (approx.guessMin + approx.guessMax + 1) / 2;
}

/// @notice Checks if value a is approximately equal to value b within epsilon tolerance
/// @dev Unchecked arithmetic for gas optimization. Checks if a is in range [b*(1-eps), b*(1+eps)].
/// @param a First value to compare
/// @param b Second value to compare (reference)
/// @param eps Tolerance as a fraction of 1e18 (e.g., 1e16 = 1%)
/// @return True if a is within eps of b
function isAApproxBUnchecked(uint256 a, uint256 b, uint256 eps) pure returns (bool) {
    unchecked {
        uint256 bLow = (b * (1e18 - eps)) / 1e18;
        uint256 bHigh = (b * (1e18 + eps)) / 1e18;
        return bLow <= a && a <= bHigh;
    }
}

// ============================================================
// FILE: src/fira_bonding/router/swap-aggregator/IPSwapAggregator.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

struct SwapData {
    SwapType swapType;
    address extRouter;
    bytes extCalldata;
    bool needScale;
}

struct SwapDataExtra {
    address tokenIn;
    address tokenOut;
    uint256 minOut;
    SwapData swapData;
}

enum SwapType {
    NONE,
    KYBERSWAP,
    ODOS,
    // ETH_WETH not used in Aggregator
    ETH_WETH,
    OKX,
    ONE_INCH,
    RESERVE_1,
    RESERVE_2,
    RESERVE_3,
    RESERVE_4,
    RESERVE_5
}

interface IPSwapAggregator {
    event SwapSingle(SwapType indexed swapType, address indexed tokenIn, uint256 amountIn);

    function swap(address tokenIn, uint256 amountIn, SwapData calldata swapData) external payable;
}

// ============================================================
// FILE: src/fira_bonding/StandardizedYield/BCIndex.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

import "../../interfaces/IBCToken.sol";
import "../../interfaces/IBondToken.sol";

import "../libraries/math/PMath.sol";
import "./FWUtils.sol";

/// @notice Custom type representing the BC (Bond+Coupon) exchange rate index
/// @dev Wraps a uint256 representing the exchange rate between FW and BC assets
type BCIndex is uint256;

/// @title BCIndexLib
/// @notice Library for converting between FW amounts and BC asset amounts using the BC index
/// @dev The BC index represents how much underlying asset 1 FW token is worth.
///      Used for minting/redeeming Bond+Coupon token pairs.
library BCIndexLib {
    using PMath for uint256;
    using PMath for int256;

    /// @notice Creates a new BCIndex from a Coupon Token's current index
    /// @param CT The Coupon Token contract to get the index from
    /// @return The current BC index wrapped as BCIndex type
    function newIndex(IBCToken CT) internal returns (BCIndex) {
        return BCIndex.wrap(CT.bcIndexCurrent());
    }

    /// @notice Converts FW amount to underlying asset amount (rounds down)
    /// @param index The BC exchange rate index
    /// @param fwAmount Amount of FW tokens
    /// @return Equivalent amount of underlying assets
    function fwToAsset(BCIndex index, uint256 fwAmount) internal pure returns (uint256) {
        return FWUtils.fwToAsset(BCIndex.unwrap(index), fwAmount);
    }

    /// @notice Converts underlying asset amount to FW amount (rounds down)
    /// @param index The BC exchange rate index
    /// @param assetAmount Amount of underlying assets
    /// @return Equivalent amount of FW tokens
    function assetToFw(BCIndex index, uint256 assetAmount) internal pure returns (uint256) {
        return FWUtils.assetToFw(BCIndex.unwrap(index), assetAmount);
    }

    /// @notice Converts underlying asset amount to FW amount (rounds up)
    /// @param index The BC exchange rate index
    /// @param assetAmount Amount of underlying assets
    /// @return Equivalent amount of FW tokens, rounded up
    function assetToFwUp(BCIndex index, uint256 assetAmount) internal pure returns (uint256) {
        return FWUtils.assetToFwUp(BCIndex.unwrap(index), assetAmount);
    }

    /// @notice Converts FW amount to underlying asset amount (rounds up)
    /// @param index The BC exchange rate index
    /// @param fwAmount Amount of FW tokens
    /// @return Equivalent amount of underlying assets, rounded up
    function fwToAssetUp(BCIndex index, uint256 fwAmount) internal pure returns (uint256) {
        uint256 _index = BCIndex.unwrap(index);
        return FWUtils.fwToAssetUp(_index, fwAmount);
    }

    /// @notice Converts signed FW amount to signed asset amount (preserves sign, rounds down magnitude)
    /// @param index The BC exchange rate index
    /// @param fwAmount Signed amount of FW tokens
    /// @return Equivalent signed amount of underlying assets
    function fwToAsset(BCIndex index, int256 fwAmount) internal pure returns (int256) {
        int256 sign = fwAmount < 0 ? int256(-1) : int256(1);
        return sign * (FWUtils.fwToAsset(BCIndex.unwrap(index), fwAmount.abs())).Int();
    }

    /// @notice Converts signed asset amount to signed FW amount (preserves sign, rounds down magnitude)
    /// @param index The BC exchange rate index
    /// @param assetAmount Signed amount of underlying assets
    /// @return Equivalent signed amount of FW tokens
    function assetToFw(BCIndex index, int256 assetAmount) internal pure returns (int256) {
        int256 sign = assetAmount < 0 ? int256(-1) : int256(1);
        return sign * (FWUtils.assetToFw(BCIndex.unwrap(index), assetAmount.abs())).Int();
    }

    /// @notice Converts signed asset amount to signed FW amount (preserves sign, rounds up magnitude)
    /// @param index The BC exchange rate index
    /// @param assetAmount Signed amount of underlying assets
    /// @return Equivalent signed amount of FW tokens, magnitude rounded up
    function assetToFwUp(BCIndex index, int256 assetAmount) internal pure returns (int256) {
        int256 sign = assetAmount < 0 ? int256(-1) : int256(1);
        return sign * (FWUtils.assetToFwUp(BCIndex.unwrap(index), assetAmount.abs())).Int();
    }
}

// ============================================================
// FILE: src/fira_bonding/StandardizedYield/FWUtils.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

/// @title FWUtils
/// @notice Utility library for converting between FW token amounts and underlying asset amounts
/// @dev All conversions use 18-decimal fixed-point math with the exchange rate scaled by 1e18.
///      The exchange rate represents how much underlying asset 1 FW token is worth.
library FWUtils {
    /// @notice Scaling factor for fixed-point math (1e18)
    uint256 internal constant ONE = 1e18;

    /// @notice Converts FW token amount to underlying asset amount (rounds down)
    /// @param exchangeRate The exchange rate scaled by 1e18 (asset per FW)
    /// @param fwAmount Amount of FW tokens to convert
    /// @return Equivalent amount of underlying assets, rounded down
    function fwToAsset(uint256 exchangeRate, uint256 fwAmount) internal pure returns (uint256) {
        return (fwAmount * exchangeRate) / ONE;
    }

    /// @notice Converts FW token amount to underlying asset amount (rounds up)
    /// @param exchangeRate The exchange rate scaled by 1e18 (asset per FW)
    /// @param fwAmount Amount of FW tokens to convert
    /// @return Equivalent amount of underlying assets, rounded up
    function fwToAssetUp(uint256 exchangeRate, uint256 fwAmount) internal pure returns (uint256) {
        return (fwAmount * exchangeRate + ONE - 1) / ONE;
    }

    /// @notice Converts underlying asset amount to FW token amount (rounds down)
    /// @param exchangeRate The exchange rate scaled by 1e18 (asset per FW)
    /// @param assetAmount Amount of underlying assets to convert
    /// @return Equivalent amount of FW tokens, rounded down
    function assetToFw(uint256 exchangeRate, uint256 assetAmount) internal pure returns (uint256) {
        return (assetAmount * ONE) / exchangeRate;
    }

    /// @notice Converts underlying asset amount to FW token amount (rounds up)
    /// @param exchangeRate The exchange rate scaled by 1e18 (asset per FW)
    /// @param assetAmount Amount of underlying assets to convert
    /// @return Equivalent amount of FW tokens, rounded up
    function assetToFwUp(uint256 exchangeRate, uint256 assetAmount) internal pure returns (uint256) {
        return (assetAmount * ONE + exchangeRate - 1) / exchangeRate;
    }
}

// ============================================================
// FILE: src/interfaces/IBCToken.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "./IPInterestManagerCT.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

interface IBCToken is IERC20Metadata, IPInterestManagerCT {
    event NewInterestIndex(uint256 indexed newIndex);

    event Mint(
        address indexed caller,
        address indexed receiverBT,
        address indexed receiverCT,
        uint256 amountFwToMint,
        uint256 amountPYOut
    );

    event Burn(address indexed caller, address indexed receiver, uint256 amountBcToRedeem, uint256 amountFwOut);

    event RedeemRewards(address indexed user, uint256[] amountRewardsOut);

    event RedeemInterest(address indexed user, uint256 interestOut);

    event CollectRewardFee(address indexed rewardToken, uint256 amountRewardFee);

    function mintBC(address receiverBT, address receiverCT) external returns (uint256 amountBCOut);

    function redeemBC(address receiver) external returns (uint256 amountFwOut);

    function redeemBCMulti(address[] calldata receivers, uint256[] calldata amountBcToRedeems)
        external
        returns (uint256[] memory amountFwOuts);

    function redeemDueInterestAndRewards(address user, bool redeemInterest, bool redeemRewards)
        external
        returns (uint256 interestOut, uint256[] memory rewardsOut);

    function rewardIndexesCurrent() external returns (uint256[] memory);

    function bcIndexCurrent() external returns (uint256);

    function bcIndexStored() external view returns (uint256);

    function getRewardTokens() external view returns (address[] memory);

    function FW() external view returns (address);

    function BT() external view returns (address);

    function factory() external view returns (address);

    function expiry() external view returns (uint256);

    function isExpired() external view returns (bool);

    function doCacheIndexSameBlock() external view returns (bool);

    function bcIndexLastUpdatedBlock() external view returns (uint128);

    function postExpiry() external view returns (uint128 firstBCIndex, uint128 totalFwInterestForTreasury);
}

// ============================================================
// FILE: src/interfaces/IBondToken.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

interface IBondToken is IERC20Metadata {
    function burnByCT(address user, uint256 amount) external;

    function mintByCT(address user, uint256 amount) external;

    function mintByLI(address user, uint256 amount) external;

    function burnByLI(address user, uint256 amount) external;

    function initialize(address CT) external;

    function FW() external view returns (address);

    function CT() external view returns (address);

    function factory() external view returns (address);

    function expiry() external view returns (uint256);

    function isExpired() external view returns (bool);
}

// ============================================================
// FILE: src/interfaces/IFiraWrappedStandardized.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
/*
 * MIT License
 * ===========
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 */

pragma solidity 0.8.30;

import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

interface IFiraWrappedStandardized is IERC20Metadata {
    /// @dev Emitted when any base tokens is deposited to mint shares
    event Deposit(
        address indexed caller,
        address indexed receiver,
        address indexed tokenIn,
        uint256 amountDeposited,
        uint256 amountFwOut
    );

    /// @dev Emitted when any shares are redeemed for base tokens
    event Redeem(
        address indexed caller,
        address indexed receiver,
        address indexed tokenOut,
        uint256 amountFwToRedeem,
        uint256 amountTokenOut
    );

    /// @dev Emitted when deposits are paused or unpaused
    event DepositsPaused(bool paused);
    /// @dev Emitted when redemptions are paused or unpaused
    event RedemptionsPaused(bool paused);
    /// @dev Emitted when pauser is changed
    event PauserChanged(address indexed newPauser);

    /// @dev check `assetInfo()` for more information
    enum AssetType {
        TOKEN,
        LIQUIDITY
    }

    /// @dev Emitted when (`user`) claims their rewards
    event ClaimRewards(address indexed user, address[] rewardTokens, uint256[] rewardAmounts);

    /**
     * @notice mints an amount of shares by depositing a base token.
     * @param receiver shares recipient address
     * @param tokenIn address of the base tokens to mint shares
     * @param amountTokenToDeposit amount of base tokens to be transferred from (`msg.sender`)
     * @param minSharesOut reverts if amount of shares minted is lower than this
     * @return amountSharesOut amount of shares minted
     * @dev Emits a {Deposit} event
     *
     * Requirements:
     * - (`tokenIn`) must be a valid base token.
     */
    function deposit(address receiver, address tokenIn, uint256 amountTokenToDeposit, uint256 minSharesOut)
        external
        payable
        returns (uint256 amountSharesOut);

    /**
     * @notice redeems an amount of base tokens by burning some shares
     * @param receiver recipient address
     * @param amountSharesToRedeem amount of shares to be burned
     * @param tokenOut address of the base token to be redeemed
     * @param minTokenOut reverts if amount of base token redeemed is lower than this
     * @param burnFromInternalBalance if true, burns from balance of `address(this)`, otherwise
     * burns from `msg.sender`
     * @return amountTokenOut amount of base tokens redeemed
     * @dev Emits a {Redeem} event
     *
     * Requirements:
     * - (`tokenOut`) must be a valid base token.
     */
    function redeem(
        address receiver,
        uint256 amountSharesToRedeem,
        address tokenOut,
        uint256 minTokenOut,
        bool burnFromInternalBalance
    ) external returns (uint256 amountTokenOut);

    /**
     * @notice exchangeRate * fwBalance / 1e18 must return the asset balance of the account
     * @notice vice-versa, if a user uses some amount of tokens equivalent to X asset, the amount of
     * fw
     *  he can mint must be X * exchangeRate / 1e18
     * @dev FWUtils's assetToFw & fwToAsset should be used instead of raw multiplication
     *  & division
     */
    function exchangeRate() external view returns (uint256 res);

    /**
     * @notice claims reward for (`user`)
     * @param user the user receiving their rewards
     * @return rewardAmounts an array of reward amounts in the same order as `getRewardTokens`
     * @dev
     * Emits a `ClaimRewards` event
     * See {getRewardTokens} for list of reward tokens
     */
    function claimRewards(address user) external returns (uint256[] memory rewardAmounts);

    /**
     * @notice get the amount of unclaimed rewards for (`user`)
     * @param user the user to check for
     * @return rewardAmounts an array of reward amounts in the same order as `getRewardTokens`
     */
    function accruedRewards(address user) external view returns (uint256[] memory rewardAmounts);

    function rewardIndexesCurrent() external returns (uint256[] memory indexes);

    function rewardIndexesStored() external view returns (uint256[] memory indexes);

    /**
     * @notice returns the list of reward token addresses
     */
    function getRewardTokens() external view returns (address[] memory);

    /**
     * @notice returns the address of the underlying yield token
     */
    function yieldToken() external view returns (address);

    /**
     * @notice returns all tokens that can mint this FW
     */
    function getTokensIn() external view returns (address[] memory res);

    /**
     * @notice returns all tokens that can be redeemed by this FW
     */
    function getTokensOut() external view returns (address[] memory res);

    function isValidTokenIn(address token) external view returns (bool);

    function isValidTokenOut(address token) external view returns (bool);

    function previewDeposit(address tokenIn, uint256 amountTokenToDeposit)
        external
        view
        returns (uint256 amountSharesOut);

    function previewRedeem(address tokenOut, uint256 amountSharesToRedeem)
        external
        view
        returns (uint256 amountTokenOut);

    /**
     * @notice This function contains information to interpret what the asset is
     * @return assetType the type of the asset (0 for ERC20 tokens, 1 for AMM liquidity tokens,
     *     2 for bridged yield bearing tokens like wstETH, rETH on Arbi whose the underlying asset
     * doesn't exist on the
     * chain)
     * @return assetAddress the address of the asset
     * @return assetDecimals the decimals of the asset
     */
    function assetInfo() external view returns (AssetType assetType, address assetAddress, uint8 assetDecimals);
}

// ============================================================
// FILE: src/interfaces/IPActionSimple.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import {TokenInput} from "./IPAllActionTypeV3.sol";

import "./IPAllActionTypeV3.sol";
import {IPAllEventsV3} from "./IPAllEventsV3.sol";

/// All of these functions are for internal router use only and should not be called directly.
interface IPActionSimple is IPAllEventsV3 {
    function addLiquiditySingleBtSimple(address receiver, address market, uint256 netBtIn, uint256 minLpOut)
        external
        returns (uint256 netLpOut, uint256 netFwFee);

    function addLiquiditySingleTokenSimple(
        address receiver,
        address market,
        uint256 minLpOut,
        TokenInput calldata input
    ) external payable returns (uint256 netLpOut, uint256 netFwFee, uint256 netFwInterm);

    function addLiquiditySingleFwSimple(address receiver, address market, uint256 netFwIn, uint256 minLpOut)
        external
        returns (uint256 netLpOut, uint256 netFwFee);

    function removeLiquiditySingleBtSimple(address receiver, address market, uint256 netLpToRemove, uint256 minBtOut)
        external
        returns (uint256 netBtOut, uint256 netFwFee);

    function swapExactTokenForBtSimple(address receiver, address market, uint256 minBtOut, TokenInput calldata input)
        external
        payable
        returns (uint256 netBtOut, uint256 netFwFee, uint256 netFwInterm);

    function swapExactFwForBtSimple(address receiver, address market, uint256 exactFwIn, uint256 minBtOut)
        external
        returns (uint256 netBtOut, uint256 netFwFee);

    function swapExactTokenForCtSimple(address receiver, address market, uint256 minCtOut, TokenInput calldata input)
        external
        payable
        returns (uint256 netCtOut, uint256 netFwFee, uint256 netFwInterm);

    function swapExactFwForCtSimple(address receiver, address market, uint256 exactFwIn, uint256 minCtOut)
        external
        returns (uint256 netCtOut, uint256 netFwFee);
}

// ============================================================
// FILE: src/interfaces/IPActionSwapBTV3.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "../fira_bonding/router/math/MarketApproxLibV2.sol";
import "./IPAllActionTypeV3.sol";
import {IPAllEventsV3} from "./IPAllEventsV3.sol";

/// Refer to IPAllActionTypeV3.sol for details on the parameters
interface IPActionSwapBTV3 is IPAllEventsV3 {
    function swapExactTokenForBt(
        address receiver,
        address market,
        uint256 minBtOut,
        ApproxParams calldata guessBtOut,
        TokenInput calldata input,
        LimitOrderData calldata limit
    ) external payable returns (uint256 netBtOut, uint256 netFwFee, uint256 netFwInterm);

    function swapExactFwForBt(
        address receiver,
        address market,
        uint256 exactFwIn,
        uint256 minBtOut,
        ApproxParams calldata guessBtOut,
        LimitOrderData calldata limit
    ) external returns (uint256 netBtOut, uint256 netFwFee);

    function swapExactBtForToken(
        address receiver,
        address market,
        uint256 exactBtIn,
        TokenOutput calldata output,
        LimitOrderData calldata limit
    ) external returns (uint256 netTokenOut, uint256 netFwFee, uint256 netFwInterm);

    function swapExactBtForFw(
        address receiver,
        address market,
        uint256 exactBtIn,
        uint256 minFwOut,
        LimitOrderData calldata limit
    ) external returns (uint256 netFwOut, uint256 netFwFee);
}

// ============================================================
// FILE: src/interfaces/IPAllActionTypeV3.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "../fira_bonding/router/swap-aggregator/IPSwapAggregator.sol";
import "./IPLimitRouter.sol";

/*
 * NOTICE:
 * For detailed information on TokenInput, TokenOutput, ApproxParams, and LimitOrderData,
 * refer to https://docs.fira.finance/Developers/Contracts/FiraRouter
 *
 * It's recommended to use Fira's Hosted SDK to generate these parameters for:
 * 1. Optimal liquidity and gas efficiency
 * 2. Access to deeper liquidity via limit orders
 * 3. Zapping in/out using any ERC20 token
 *
 * Else, to generate these parameters fully onchain, use the following functions:
 * - For TokenInput: Use createTokenInputSimple
 * - For TokenOutput: Use createTokenOutputSimple
 * - For ApproxParams: Use createDefaultApproxParams
 * - For LimitOrderData: Use createEmptyLimitOrderData
 *
 * These generated parameters can be directly passed into the respective function calls.
 *
 * Examples:
 *
 * addLiquiditySingleToken(
 *     msg.sender,
 *     MARKET_ADDRESS,
 *     minLpOut,
 *     createDefaultApproxParams(),
 *     createTokenInputSimple(USDC_ADDRESS, 1000e6),
 *     createEmptyLimitOrderData()
 * )
 *
 * swapExactTokenForBt(
 *     msg.sender,
 *     MARKET_ADDRESS,
 *     minBtOut,
 *     createDefaultApproxParams(),
 *     createTokenInputSimple(USDC_ADDRESS, 1000e6),
 *     createEmptyLimitOrderData()
 * )
 */

/// @dev Creates a TokenInput struct without using any swap aggregator
/// @param tokenIn must be one of the FW's tokens in (obtain via `IFiraWrappedStandardized#getTokensIn`)
/// @param netTokenIn amount of token in
function createTokenInputSimple(address tokenIn, uint256 netTokenIn) pure returns (TokenInput memory) {
    return TokenInput({
        tokenIn: tokenIn,
        netTokenIn: netTokenIn,
        tokenMintFw: tokenIn,
        firaSwap: address(0),
        swapData: createSwapTypeNoAggregator()
    });
}

/// @dev Creates a TokenOutput struct without using any swap aggregator
/// @param tokenOut must be one of the FW's tokens out (obtain via
/// `IFiraWrappedStandardized#getTokensOut`)
/// @param minTokenOut minimum amount of token out
function createTokenOutputSimple(address tokenOut, uint256 minTokenOut) pure returns (TokenOutput memory) {
    return TokenOutput({
        tokenOut: tokenOut,
        minTokenOut: minTokenOut,
        tokenRedeemFw: tokenOut,
        firaSwap: address(0),
        swapData: createSwapTypeNoAggregator()
    });
}

function createEmptyLimitOrderData() pure returns (LimitOrderData memory) {}

/// @dev Creates default ApproxParams for on-chain approximation
function createDefaultApproxParams() pure returns (ApproxParams memory) {
    return ApproxParams({guessMin: 0, guessMax: type(uint256).max, guessOffchain: 0, maxIteration: 256, eps: 1e14});
}

function createSwapTypeNoAggregator() pure returns (SwapData memory) {}

struct TokenInput {
    address tokenIn;
    uint256 netTokenIn;
    address tokenMintFw;
    address firaSwap;
    SwapData swapData;
}

struct TokenOutput {
    address tokenOut;
    uint256 minTokenOut;
    address tokenRedeemFw;
    address firaSwap;
    SwapData swapData;
}

struct LimitOrderData {
    address limitRouter;
    uint256 epsSkipMarket;
    FillOrderParams[] normalFills;
    FillOrderParams[] flashFills;
    bytes optData;
}

struct ApproxParams {
    uint256 guessMin;
    uint256 guessMax;
    uint256 guessOffchain;
    uint256 maxIteration;
    uint256 eps;
}

struct ExitPreExpReturnParams {
    uint256 netBtFromRemove;
    uint256 netFwFromRemove;
    uint256 netBcRedeem;
    uint256 netFwFromRedeem;
    uint256 netBtSwap;
    uint256 netCtSwap;
    uint256 netFwFromSwap;
    uint256 netFwFee;
    uint256 totalFwOut;
}

struct ExitPostExpReturnParams {
    uint256 netBtFromRemove;
    uint256 netFwFromRemove;
    uint256 netBtRedeem;
    uint256 netFwFromRedeem;
    uint256 totalFwOut;
}

struct RedeemCtIncomeToTokenStruct {
    IBCToken ct;
    bool doRedeemInterest;
    bool doRedeemRewards;
    address tokenRedeemFw;
    uint256 minTokenRedeemOut;
}

// ============================================================
// FILE: src/interfaces/IPAllEventsV3.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import {ExitPostExpReturnParams, ExitPreExpReturnParams} from "./IPAllActionTypeV3.sol";

interface IPActionAddRemoveLiqV3Events {
    event AddLiquidityDualFwAndBt(
        address indexed caller,
        address indexed market,
        address indexed receiver,
        uint256 netFwUsed,
        uint256 netBtUsed,
        uint256 netLpOut
    );

    event AddLiquidityDualTokenAndBt(
        address indexed caller,
        address indexed market,
        address indexed tokenIn,
        address receiver,
        uint256 netTokenUsed,
        uint256 netBtUsed,
        uint256 netLpOut,
        uint256 netFwInterm
    );

    event AddLiquiditySingleBt(
        address indexed caller, address indexed market, address indexed receiver, uint256 netBtIn, uint256 netLpOut
    );

    event AddLiquiditySingleFw(
        address indexed caller, address indexed market, address indexed receiver, uint256 netFwIn, uint256 netLpOut
    );

    event AddLiquiditySingleToken(
        address indexed caller,
        address indexed market,
        address indexed token,
        address receiver,
        uint256 netTokenIn,
        uint256 netLpOut,
        uint256 netFwInterm
    );

    event AddLiquiditySingleFwKeepCt(
        address indexed caller,
        address indexed market,
        address indexed receiver,
        uint256 netFwIn,
        uint256 netFwMintBc,
        uint256 netLpOut,
        uint256 netCtOut
    );

    event AddLiquiditySingleTokenKeepCt(
        address indexed caller,
        address indexed market,
        address indexed token,
        address receiver,
        uint256 netTokenIn,
        uint256 netLpOut,
        uint256 netCtOut,
        uint256 netFwMintBc,
        uint256 netFwInterm
    );

    event RemoveLiquidityDualFwAndBt(
        address indexed caller,
        address indexed market,
        address indexed receiver,
        uint256 netLpToRemove,
        uint256 netBtOut,
        uint256 netFwOut
    );

    event RemoveLiquidityDualTokenAndBt(
        address indexed caller,
        address indexed market,
        address indexed tokenOut,
        address receiver,
        uint256 netLpToRemove,
        uint256 netBtOut,
        uint256 netTokenOut,
        uint256 netFwInterm
    );

    event RemoveLiquiditySingleBt(
        address indexed caller,
        address indexed market,
        address indexed receiver,
        uint256 netLpToRemove,
        uint256 netBtOut
    );

    event RemoveLiquiditySingleFw(
        address indexed caller,
        address indexed market,
        address indexed receiver,
        uint256 netLpToRemove,
        uint256 netFwOut
    );

    event RemoveLiquiditySingleToken(
        address indexed caller,
        address indexed market,
        address indexed token,
        address receiver,
        uint256 netLpToRemove,
        uint256 netTokenOut,
        uint256 netFwInterm
    );
}

interface IPActionSwapBTV3Events {
    event SwapBtAndFw(
        address indexed caller,
        address indexed market,
        address indexed receiver,
        int256 netBtToAccount,
        int256 netFwToAccount
    );

    event SwapBtAndToken(
        address indexed caller,
        address indexed market,
        address indexed token,
        address receiver,
        int256 netBtToAccount,
        int256 netTokenToAccount,
        uint256 netFwInterm
    );
}

interface IPActionSwapCTV3Events {
    event SwapCtAndFw(
        address indexed caller,
        address indexed market,
        address indexed receiver,
        int256 netCtToAccount,
        int256 netFwToAccount
    );

    event SwapCtAndToken(
        address indexed caller,
        address indexed market,
        address indexed token,
        address receiver,
        int256 netCtToAccount,
        int256 netTokenToAccount,
        uint256 netFwInterm
    );
}

interface IPActionMiscV3Events {
    event MintFwFromToken(
        address indexed caller,
        address indexed tokenIn,
        address indexed FW,
        address receiver,
        uint256 netTokenIn,
        uint256 netFwOut
    );

    event RedeemFwToToken(
        address indexed caller,
        address indexed tokenOut,
        address indexed FW,
        address receiver,
        uint256 netFwIn,
        uint256 netTokenOut
    );

    event MintBcFromFw(
        address indexed caller, address indexed receiver, address indexed CT, uint256 netFwIn, uint256 netBcOut
    );

    event RedeemBcToFw(
        address indexed caller, address indexed receiver, address indexed CT, uint256 netBcIn, uint256 netFwOut
    );

    event MintBcFromToken(
        address indexed caller,
        address indexed tokenIn,
        address indexed CT,
        address receiver,
        uint256 netTokenIn,
        uint256 netBcOut,
        uint256 netFwInterm
    );

    event RedeemBcToToken(
        address indexed caller,
        address indexed tokenOut,
        address indexed CT,
        address receiver,
        uint256 netBcIn,
        uint256 netTokenOut,
        uint256 netFwInterm
    );

    event ExitPreExpToToken(
        address indexed caller,
        address indexed market,
        address indexed token,
        address receiver,
        uint256 netLpIn,
        uint256 totalTokenOut,
        ExitPreExpReturnParams params
    );

    event ExitPreExpToFw(
        address indexed caller,
        address indexed market,
        address indexed receiver,
        uint256 netLpIn,
        ExitPreExpReturnParams params
    );

    event ExitPostExpToToken(
        address indexed caller,
        address indexed market,
        address indexed token,
        address receiver,
        uint256 netLpIn,
        uint256 totalTokenOut,
        ExitPostExpReturnParams params
    );

    event ExitPostExpToFw(
        address indexed caller,
        address indexed market,
        address indexed receiver,
        uint256 netLpIn,
        ExitPostExpReturnParams params
    );
}

interface IPActionStorageEvents {
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    event SelectorToFacetSet(bytes4 indexed selector, address indexed facet);
}

interface IPAllEventsV3 is
    IPActionAddRemoveLiqV3Events,
    IPActionSwapBTV3Events,
    IPActionSwapCTV3Events,
    IPActionMiscV3Events,
    IPActionStorageEvents
{}

// ============================================================
// FILE: src/interfaces/IPInterestManagerCT.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

interface IPInterestManagerCT {
    event CollectInterestFee(uint256 amountInterestFee);

    function userInterest(address user) external view returns (uint128 lastBCIndex, uint128 accruedInterest);
}

// ============================================================
// FILE: src/interfaces/IPLimitRouter.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "../fira_bonding/StandardizedYield/BCIndex.sol";

interface IPLimitOrderType {
    enum OrderType {
        FW_FOR_BT,
        BT_FOR_FW,
        FW_FOR_CT,
        CT_FOR_FW
    }

    // Fixed-size order part with core information
    struct StaticOrder {
        uint256 salt;
        uint256 expiry;
        uint256 nonce;
        OrderType orderType;
        address token;
        address CT;
        address maker;
        address receiver;
        uint256 makingAmount;
        uint256 lnImpliedRate;
        uint256 failSafeRate;
    }

    struct FillResults {
        uint256 totalMaking;
        uint256 totalTaking;
        uint256 totalFee;
        uint256 totalNotionalVolume;
        uint256[] netMakings;
        uint256[] netTakings;
        uint256[] netFees;
        uint256[] notionalVolumes;
    }
}

struct Order {
    uint256 salt;
    uint256 expiry;
    uint256 nonce;
    IPLimitOrderType.OrderType orderType;
    address token;
    address CT;
    address maker;
    address receiver;
    uint256 makingAmount;
    uint256 lnImpliedRate;
    uint256 failSafeRate;
    bytes permit;
}

struct FillOrderParams {
    Order order;
    bytes signature;
    uint256 makingAmount;
}

interface IPLimitRouterCallback is IPLimitOrderType {
    function limitRouterCallback(uint256 actualMaking, uint256 actualTaking, uint256 totalFee, bytes memory data)
        external
        returns (bytes memory);
}

interface IPLimitRouter is IPLimitOrderType {
    struct OrderStatus {
        uint128 filledAmount;
        uint128 remaining;
    }

    event OrderCanceled(address indexed maker, bytes32 indexed orderHash);

    event OrderFilledV2(
        bytes32 indexed orderHash,
        OrderType indexed orderType,
        address indexed CT,
        address token,
        uint256 netInputFromMaker,
        uint256 netOutputToMaker,
        uint256 feeAmount,
        uint256 notionalVolume,
        address maker,
        address taker
    );

    // event added on 2/1/2025
    event LnFeeRateRootsSet(address[] CTs, uint256[] lnFeeRateRoots);

    // @dev actualMaking, actualTaking are in the FW form
    function fill(
        FillOrderParams[] memory params,
        address receiver,
        uint256 maxTaking,
        bytes calldata optData,
        bytes calldata callback
    ) external returns (uint256 actualMaking, uint256 actualTaking, uint256 totalFee, bytes memory callbackReturn);

    function feeRecipient() external view returns (address);

    function hashOrder(Order memory order) external view returns (bytes32);

    function cancelSingle(Order calldata order) external;

    function cancelBatch(Order[] calldata orders) external;

    function orderStatusesRaw(bytes32[] memory orderHashes)
        external
        view
        returns (uint256[] memory remainingsRaw, uint256[] memory filledAmounts);

    function orderStatuses(bytes32[] memory orderHashes)
        external
        view
        returns (uint256[] memory remainings, uint256[] memory filledAmounts);

    function DOMAIN_SEPARATOR() external view returns (bytes32);

    function simulate(address target, bytes calldata data) external payable;

    function WNATIVE() external view returns (address);

    function _checkSig(Order memory order, bytes memory signature)
        external
        view
        returns (
            bytes32,
            /* orderHash*/
            uint256,
            /* remainingMakerAmount*/
            uint256
        ); /* filledMakerAmount*/

    /* --- Deprecated events --- */

    // deprecate on 7/1/2024, prior to official launch
    event OrderFilled(
        bytes32 indexed orderHash,
        OrderType indexed orderType,
        address indexed CT,
        address token,
        uint256 netInputFromMaker,
        uint256 netOutputToMaker,
        uint256 feeAmount,
        uint256 notionalVolume
    );
}

// ============================================================
// FILE: src/interfaces/IPMarket.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "../fira_bonding/core/Market/MarketMathCore.sol";

import "./IBondToken.sol";

import "./IBCToken.sol";
import "./IFiraWrappedStandardized.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

interface IPMarket is IERC20Metadata {
    event Mint(address indexed receiver, uint256 netLpMinted, uint256 netFwUsed, uint256 netBtUsed);

    event Burn(
        address indexed receiverFw, address indexed receiverBt, uint256 netLpBurned, uint256 netFwOut, uint256 netBtOut
    );

    event Swap(
        address indexed caller,
        address indexed receiver,
        int256 netBtOut,
        int256 netFwOut,
        uint256 netFwFee,
        uint256 netFwToReserve
    );

    event UpdateImpliedRate(uint256 indexed timestamp, uint256 lnLastImpliedRate);

    event IncreaseObservationCardinalityNext(
        uint16 observationCardinalityNextOld, uint16 observationCardinalityNextNew
    );

    function mint(address receiver, uint256 netFwDesired, uint256 netBtDesired)
        external
        returns (uint256 netLpOut, uint256 netFwUsed, uint256 netBtUsed);

    function burn(address receiverFw, address receiverBt, uint256 netLpToBurn)
        external
        returns (uint256 netFwOut, uint256 netBtOut);

    function swapExactBtForFw(address receiver, uint256 exactBtIn, bytes calldata data)
        external
        returns (uint256 netFwOut, uint256 netFwFee);

    function swapFwForExactBt(address receiver, uint256 exactBtOut, bytes calldata data)
        external
        returns (uint256 netFwIn, uint256 netFwFee);

    function redeemRewards(address user) external returns (uint256[] memory);

    function readState(address router) external view returns (MarketState memory market);

    function observe(uint32[] memory secondsAgos) external view returns (uint216[] memory lnImpliedRateCumulative);

    function increaseObservationsCardinalityNext(uint16 cardinalityNext) external;

    function readTokens() external view returns (IFiraWrappedStandardized _FW, IBondToken _BT, IBCToken _CT);

    function getRewardTokens() external view returns (address[] memory);

    function isExpired() external view returns (bool);

    function expiry() external view returns (uint256);

    function observations(uint256 index)
        external
        view
        returns (uint32 blockTimestamp, uint216 lnImpliedRateCumulative, bool initialized);

    function _storage()
        external
        view
        returns (
            int128 totalBt,
            int128 totalFw,
            uint96 lastLnImpliedRate,
            uint16 observationIndex,
            uint16 observationCardinality,
            uint16 observationCardinalityNext
        );
}

// ============================================================
// FILE: src/interfaces/IWETH.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
/*
 * MIT License
 * ===========
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 */
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IWETH is IERC20 {
    event Deposit(address indexed dst, uint256 wad);
    event Withdrawal(address indexed src, uint256 wad);

    function deposit() external payable;

    function withdraw(uint256 wad) external;
}
