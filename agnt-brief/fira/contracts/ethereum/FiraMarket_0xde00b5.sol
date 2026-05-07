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
// FILE: lib/openzeppelin-contracts/contracts/utils/Context.sol
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
// FILE: src/fira_bonding/core/Market/OracleLib.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "../../libraries/Errors.sol";

/// @title OracleLib
/// @notice Time-weighted average price (TWAP) oracle library for implied rate tracking
/// @dev Adapted from UniswapV3's Oracle. Stores cumulative ln(impliedRate) observations that can be
///      queried for TWAP calculations over arbitrary time windows. Uses a circular buffer of
///      observations with configurable cardinality.
library OracleLib {
    /// @notice Single observation storing cumulative ln(impliedRate) at a point in time
    /// @dev Packed into a single 256-bit storage slot
    /// @param blockTimestamp The block timestamp of this observation
    /// @param lnImpliedRateCumulative Cumulative sum of ln(impliedRate) * time elapsed
    /// @param initialized Whether this observation slot has been written to
    struct Observation {
        uint32 blockTimestamp;
        uint216 lnImpliedRateCumulative;
        bool initialized;
    }

    // 1 SLOT = 256 bits

    /// @notice Creates a new observation by extending the cumulative rate from a previous observation
    /// @param last The previous observation to extend from
    /// @param blockTimestamp The timestamp for the new observation
    /// @param lnImpliedRate The current ln(impliedRate) to accumulate
    /// @return A new Observation with updated cumulative values
    function transform(Observation memory last, uint32 blockTimestamp, uint96 lnImpliedRate)
        public
        pure
        returns (Observation memory)
    {
        return Observation({
            blockTimestamp: blockTimestamp,
            lnImpliedRateCumulative: last.lnImpliedRateCumulative + uint216(lnImpliedRate)
                * (blockTimestamp - last.blockTimestamp),
            initialized: true
        });
    }

    /// @notice Initializes the oracle with the first observation
    /// @param self The observation array to initialize
    /// @param time The current block timestamp
    /// @return cardinality The initial cardinality (1)
    /// @return cardinalityNext The next cardinality target (1)
    function initialize(Observation[65535] storage self, uint32 time)
        public
        returns (uint16 cardinality, uint16 cardinalityNext)
    {
        self[0] = Observation({blockTimestamp: time, lnImpliedRateCumulative: 0, initialized: true});
        return (1, 1);
    }

    /// @notice Writes a new observation to the oracle's circular buffer
    /// @dev Only writes if the block timestamp differs from the last observation
    /// @param self The observation array to write to
    /// @param index The current observation index
    /// @param blockTimestamp The current block timestamp
    /// @param lnImpliedRate The current ln(impliedRate) to record
    /// @param cardinality The current buffer size
    /// @param cardinalityNext The target buffer size after growth
    /// @return indexUpdated The new observation index
    /// @return cardinalityUpdated The new cardinality (may increase if buffer grew)
    function write(
        Observation[65535] storage self,
        uint16 index,
        uint32 blockTimestamp,
        uint96 lnImpliedRate,
        uint16 cardinality,
        uint16 cardinalityNext
    ) public returns (uint16 indexUpdated, uint16 cardinalityUpdated) {
        Observation memory last = self[index];

        // early return if we've already written an observation this block
        if (last.blockTimestamp == blockTimestamp) return (index, cardinality);

        // if the conditions are right, we can bump the cardinality
        if (cardinalityNext > cardinality && index == (cardinality - 1)) {
            cardinalityUpdated = cardinalityNext;
        } else {
            cardinalityUpdated = cardinality;
        }

        indexUpdated = (index + 1) % cardinalityUpdated;
        self[indexUpdated] = transform(last, blockTimestamp, lnImpliedRate);
    }

    /// @notice Expands the oracle's observation buffer capacity
    /// @dev Pre-initializes storage slots to reduce gas costs during swaps
    /// @param self The observation array to grow
    /// @param current The current cardinality
    /// @param next The target cardinality to grow to
    /// @return The new cardinality (unchanged if next <= current)
    function grow(Observation[65535] storage self, uint16 current, uint16 next) public returns (uint16) {
        if (current == 0) revert Errors.OracleUninitialized();
        // no-op if the passed next value isn't greater than the current next value
        if (next <= current) return current;
        // store in each slot to prevent fresh SSTOREs in swaps
        // this data will not be used because the initialized boolean is still false
        for (uint16 i = current; i != next;) {
            self[i].blockTimestamp = 1;
            unchecked {
                ++i;
            }
        }
        return next;
    }

    /// @notice Performs binary search to find observations surrounding a target timestamp
    /// @param self The observation array to search
    /// @param target The target timestamp to find
    /// @param index The current observation index
    /// @param cardinality The current buffer size
    /// @return beforeOrAt The observation at or before the target
    /// @return atOrAfter The observation at or after the target
    function binarySearch(Observation[65535] storage self, uint32 target, uint16 index, uint16 cardinality)
        public
        view
        returns (Observation memory beforeOrAt, Observation memory atOrAfter)
    {
        uint256 l = (index + 1) % cardinality; // oldest observation
        uint256 r = l + cardinality - 1; // newest observation
        uint256 i;
        while (true) {
            i = (l + r) / 2;

            beforeOrAt = self[i % cardinality];

            // we've landed on an uninitialized observation, keep searching higher (more recently)
            if (!beforeOrAt.initialized) {
                l = i + 1;
                continue;
            }

            atOrAfter = self[(i + 1) % cardinality];

            bool targetAtOrAfter = beforeOrAt.blockTimestamp <= target;

            // check if we've found the answer!
            if (targetAtOrAfter && target <= atOrAfter.blockTimestamp) break;

            if (!targetAtOrAfter) r = i - 1;
            else l = i + 1;
        }
    }

    /// @notice Finds the two observations that bound a target timestamp
    /// @dev Optimistically checks newest observation first, then oldest, then binary searches
    /// @param self The observation array to search
    /// @param target The target timestamp to find bounds for
    /// @param lnImpliedRate The current ln(impliedRate) for interpolation if needed
    /// @param index The current observation index
    /// @param cardinality The current buffer size
    /// @return beforeOrAt The observation at or before the target
    /// @return atOrAfter The observation at or after the target
    function getSurroundingObservations(
        Observation[65535] storage self,
        uint32 target,
        uint96 lnImpliedRate,
        uint16 index,
        uint16 cardinality
    ) public view returns (Observation memory beforeOrAt, Observation memory atOrAfter) {
        // optimistically set before to the newest observation
        beforeOrAt = self[index];

        // if the target is chronologically at or after the newest observation, we can early return
        if (beforeOrAt.blockTimestamp <= target) {
            if (beforeOrAt.blockTimestamp == target) {
                // if newest observation equals target, we're in the same block, so we can ignore
                // atOrAfter
                return (beforeOrAt, atOrAfter);
            } else {
                // otherwise, we need to transform
                return (beforeOrAt, transform(beforeOrAt, target, lnImpliedRate));
            }
        }

        // now, set beforeOrAt to the oldest observation
        beforeOrAt = self[(index + 1) % cardinality];
        if (!beforeOrAt.initialized) beforeOrAt = self[0];

        // ensure that the target is chronologically at or after the oldest observation
        if (target < beforeOrAt.blockTimestamp) {
            revert Errors.OracleTargetTooOld(target, beforeOrAt.blockTimestamp);
        }

        // if we've reached this point, we have to binary search
        return binarySearch(self, target, index, cardinality);
    }

    /// @notice Returns the cumulative ln(impliedRate) at a single point in time
    /// @dev Interpolates between surrounding observations if target is between them
    /// @param self The observation array to query
    /// @param time The current block timestamp
    /// @param secondsAgo How many seconds in the past to query (0 = current)
    /// @param lnImpliedRate The current ln(impliedRate) for interpolation
    /// @param index The current observation index
    /// @param cardinality The current buffer size
    /// @return lnImpliedRateCumulative The cumulative ln(impliedRate) at the target time
    function observeSingle(
        Observation[65535] storage self,
        uint32 time,
        uint32 secondsAgo,
        uint96 lnImpliedRate,
        uint16 index,
        uint16 cardinality
    ) public view returns (uint216 lnImpliedRateCumulative) {
        if (secondsAgo == 0) {
            Observation memory last = self[index];
            if (last.blockTimestamp != time) {
                return transform(last, time, lnImpliedRate).lnImpliedRateCumulative;
            }
            return last.lnImpliedRateCumulative;
        }

        uint32 target = time - secondsAgo;

        (Observation memory beforeOrAt, Observation memory atOrAfter) =
            getSurroundingObservations(self, target, lnImpliedRate, index, cardinality);

        if (target == beforeOrAt.blockTimestamp) {
            // we're at the left boundary
            return beforeOrAt.lnImpliedRateCumulative;
        } else if (target == atOrAfter.blockTimestamp) {
            // we're at the right boundary
            return atOrAfter.lnImpliedRateCumulative;
        } else {
            // we're in the middle
            return (beforeOrAt.lnImpliedRateCumulative
                    + uint216(
                        (uint256(atOrAfter.lnImpliedRateCumulative - beforeOrAt.lnImpliedRateCumulative)
                                * (target - beforeOrAt.blockTimestamp))
                            / (atOrAfter.blockTimestamp - beforeOrAt.blockTimestamp)
                    ));
        }
    }

    /// @notice Returns cumulative ln(impliedRate) values at multiple points in time
    /// @param self The observation array to query
    /// @param time The current block timestamp
    /// @param secondsAgos Array of seconds in the past to query
    /// @param lnImpliedRate The current ln(impliedRate) for interpolation
    /// @param index The current observation index
    /// @param cardinality The current buffer size
    /// @return lnImpliedRateCumulative Array of cumulative values, one per secondsAgo entry
    function observe(
        Observation[65535] storage self,
        uint32 time,
        uint32[] memory secondsAgos,
        uint96 lnImpliedRate,
        uint16 index,
        uint16 cardinality
    ) public view returns (uint216[] memory lnImpliedRateCumulative) {
        if (cardinality == 0) revert Errors.OracleZeroCardinality();

        lnImpliedRateCumulative = new uint216[](secondsAgos.length);
        for (uint256 i = 0; i < lnImpliedRateCumulative.length; ++i) {
            lnImpliedRateCumulative[i] = observeSingle(self, time, secondsAgos[i], lnImpliedRate, index, cardinality);
        }
    }
}

// ============================================================
// FILE: src/fira_bonding/core/Market/v3/FiraMarket.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "../../../../interfaces/IPMarketFactoryV3.sol";
import "../../../../interfaces/IPMarketSwapCallback.sol";
import "../../../../interfaces/IPMarketV3.sol";

import "../../../erc20/FiraERC20.sol";

import {StringLib} from "../../../libraries/StringLib.sol";
import {TokenHelper} from "../../../libraries/TokenHelper.sol";
import "../OracleLib.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/**
 * @title FiraMarket
 * @notice AMM market for trading between Bond Tokens (BT) and Fira Wrapped tokens (FW)
 * @dev Implements a time-decaying pricing curve based on implied interest rates.
 *      LP tokens represent proportional ownership of the BT and FW reserves.
 *
 *      Invariants to maintain:
 *      - Internal balances totalBt & totalFw not interfered by people transferring tokens in directly
 *      - address(0) & address(this) should never have any rewards & activeBalance accounting done
 *        (guaranteed by address(0) & address(this) check in each updateForTwo function)
 */
contract FiraMarket is FiraERC20, TokenHelper, IPMarketV3 {
    using PMath for uint256;
    using PMath for int256;
    using MarketMathCore for MarketState;
    using SafeERC20 for IERC20;
    using BCIndexLib for IBCToken;
    using OracleLib for OracleLib.Observation[65535];
    using StringLib for string;
    using StringLib for StringLib.slice;

    /**
     * @notice Packed storage struct for market state variables
     * @dev Optimized for gas efficiency by packing into minimal slots
     * @param totalBt Total Bond Token reserves in the market
     * @param totalFw Total Fira Wrapped token reserves in the market
     * @param lastLnImpliedRate Last recorded natural log of implied interest rate
     * @param observationIndex Current index in the TWAP observation array
     * @param observationCardinality Current number of populated observations
     * @param observationCardinalityNext Target observation cardinality after next expansion
     */
    struct MarketStorage {
        int128 totalBt;
        int128 totalFw;
        uint96 lastLnImpliedRate;
        uint16 observationIndex;
        uint16 observationCardinality;
        uint16 observationCardinalityNext;
    }

    string private constant LP_NAME_PREF = "Fira Market LP ";
    string private constant LP_SYMBOL_PREF = "FIRA-LPT-";
    string private constant BT_NAME_PREF = "BT ";
    string private constant BT_SYMBOL_PREF = "BT-";

    /// @notice The Bond Token traded in this market
    IBondToken internal immutable BT;

    /// @notice The Fira Wrapped token traded in this market
    IFiraWrappedStandardized internal immutable FW;

    /// @notice The Coupon Token corresponding to the BT
    IBCToken internal immutable CT;

    /// @notice The FiraMarketFactory that deployed this market
    address public immutable factory;

    /// @notice Unix timestamp when the BT expires and trading stops
    uint256 public immutable expiry;

    /// @notice Scaling parameter for the pricing curve (affects rate sensitivity)
    int256 internal immutable scalarRoot;

    /// @notice Initial anchor point for the pricing curve
    int256 internal immutable initialAnchor;

    /// @notice Natural log of the fee rate root (determines swap fees)
    uint80 internal immutable lnFeeRateRoot;

    /// @notice Packed market state storage
    MarketStorage public _storage;

    /// @notice TWAP oracle observations for implied rate tracking
    OracleLib.Observation[65535] public observations;

    modifier notExpired() {
        if (isExpired()) revert Errors.MarketExpired();
        _;
    }

    /**
     * @notice Constructs a new FiraMarket for trading BT/FW pairs
     * @param _BT Address of the Bond Token to trade
     * @param _scalarRoot Scaling parameter for the pricing curve
     * @param _initialAnchor Initial anchor for pricing curve (determines initial implied rate)
     * @param _lnFeeRateRoot Natural log of fee rate root (determines trading fees)
     */
    constructor(address _BT, int256 _scalarRoot, int256 _initialAnchor, uint80 _lnFeeRateRoot)
        FiraERC20(_getLPName(_BT), _getLPSymbol(_BT), 18)
    {
        BT = IBondToken(_BT);
        FW = IFiraWrappedStandardized(BT.FW());
        CT = IBCToken(BT.CT());

        (_storage.observationCardinality, _storage.observationCardinalityNext) =
            observations.initialize(uint32(block.timestamp));

        if (_scalarRoot <= 0) revert Errors.MarketScalarRootBelowZero(_scalarRoot);

        scalarRoot = _scalarRoot;
        initialAnchor = _initialAnchor;
        lnFeeRateRoot = _lnFeeRateRoot;
        expiry = IBondToken(_BT).expiry();
        factory = msg.sender;
    }

    /**
     * @notice Generates the LP token name from the BT name
     * @param _BT Address of the Bond Token
     * @return The formatted LP token name
     */
    function _getLPName(address _BT) internal view returns (string memory) {
        return LP_NAME_PREF.toSlice().concat(IBondToken(_BT).name().stripPrefixSlice(BT_NAME_PREF));
    }

    /**
     * @notice Generates the LP token symbol from the BT symbol
     * @param _BT Address of the Bond Token
     * @return The formatted LP token symbol
     */
    function _getLPSymbol(address _BT) internal view returns (string memory) {
        return LP_SYMBOL_PREF.toSlice().concat(IBondToken(_BT).symbol().stripPrefixSlice(BT_SYMBOL_PREF));
    }

    /**
     * @notice FiraMarket allows users to provide in BT & FW in exchange for LPs, which
     * will grant LP holders more exchange fee over time
     * @dev will mint as much LP as possible such that the corresponding FW and BT used do
     * not exceed `netFWDesired` and `netBtDesired`, respectively
     * @dev BT and FW should be transferred to this contract prior to calling
     * @dev will revert if BT is expired
     * @param receiver Address to receive the minted LP tokens
     * @param netFwDesired Maximum amount of FW the user is willing to provide
     * @param netBtDesired Maximum amount of BT the user is willing to provide
     * @return netLpOut Amount of LP tokens minted to the receiver
     * @return netFwUsed Amount of FW tokens actually used from the user
     * @return netBtUsed Amount of BT tokens actually used from the user
     */
    function mint(address receiver, uint256 netFwDesired, uint256 netBtDesired)
        external
        nonReentrant
        notExpired
        returns (uint256 netLpOut, uint256 netFwUsed, uint256 netBtUsed)
    {
        MarketState memory market = readState(msg.sender);
        BCIndex index = CT.newIndex();

        uint256 lpToReserve;

        (lpToReserve, netLpOut, netFwUsed, netBtUsed) = market.addLiquidity(netFwDesired, netBtDesired, block.timestamp);

        // initializing the market
        if (lpToReserve != 0) {
            market.setInitialLnImpliedRate(index, initialAnchor, block.timestamp);
            _mint(address(1), lpToReserve);
        }

        _mint(receiver, netLpOut);

        _writeState(market);

        if (_selfBalance(FW) < market.totalFw.Uint()) {
            revert Errors.MarketInsufficientFwReceived(_selfBalance(FW), market.totalFw.Uint());
        }
        if (_selfBalance(BT) < market.totalBt.Uint()) {
            revert Errors.MarketInsufficientBtReceived(_selfBalance(BT), market.totalBt.Uint());
        }

        emit Mint(receiver, netLpOut, netFwUsed, netBtUsed);
    }

    /**
     * @notice LP Holders can burn their LP to receive back FW & BT proportionally
     * to their share of the market
     * @param receiverFw Address to receive the FW output
     * @param receiverBt Address to receive the BT output
     * @param netLpToBurn Amount of LP tokens to burn
     * @return netFwOut Amount of FW tokens sent to receiverFw
     * @return netBtOut Amount of BT tokens sent to receiverBt
     */
    function burn(address receiverFw, address receiverBt, uint256 netLpToBurn)
        external
        nonReentrant
        returns (uint256 netFwOut, uint256 netBtOut)
    {
        MarketState memory market = readState(msg.sender);

        _burn(address(this), netLpToBurn);

        (netFwOut, netBtOut) = market.removeLiquidity(netLpToBurn);

        if (receiverFw != address(this)) IERC20(FW).safeTransfer(receiverFw, netFwOut);
        if (receiverBt != address(this)) IERC20(BT).safeTransfer(receiverBt, netBtOut);

        _writeState(market);

        emit Burn(receiverFw, receiverBt, netLpToBurn, netFwOut, netBtOut);
    }

    /**
     * @notice Fira Market allows swaps between BT & FW it is holding. This function
     * aims to swap an exact amount of BT to FW.
     * @dev steps working of this contract
     *    - The outcome amount of FW will be precomputed by MarketMathLib
     *    - Release the calculated amount of FW to receiver
     *    - Callback to msg.sender if data.length > 0
     *    - Ensure exactBTIn amount of BT has been transferred to this address
     * @dev will revert if BT is expired
     * @param receiver Address to receive the FW output
     * @param exactBtIn Exact amount of BT the user wants to swap in
     * @param data bytes data to be sent in the callback (if any)
     * @return netFwOut Amount of FW tokens sent to receiver
     * @return netFWFee Amount of FW tokens charged as fee
     */
    function swapExactBtForFw(address receiver, uint256 exactBtIn, bytes calldata data)
        external
        nonReentrant
        notExpired
        returns (uint256 netFwOut, uint256 netFWFee)
    {
        MarketState memory market = readState(msg.sender);

        uint256 netFwToReserve;
        (netFwOut, netFWFee, netFwToReserve) = market.swapExactBtForFw(CT.newIndex(), exactBtIn, block.timestamp);

        if (receiver != address(this)) IERC20(FW).safeTransfer(receiver, netFwOut);
        IERC20(FW).safeTransfer(market.treasury, netFwToReserve);

        _writeState(market);

        if (data.length > 0) {
            IPMarketSwapCallback(msg.sender).swapCallback(exactBtIn.neg(), netFwOut.Int(), data);
        }

        if (_selfBalance(BT) < market.totalBt.Uint()) {
            revert Errors.MarketInsufficientBtReceived(_selfBalance(BT), market.totalBt.Uint());
        }

        emit Swap(msg.sender, receiver, exactBtIn.neg(), netFwOut.Int(), netFWFee, netFwToReserve);
    }

    /**
     * @notice Fira Market allows swaps between BT & FW it is holding. This function
     * aims to swap FW for an exact amount of BT.
     * @dev steps working of this function
     *    - The exact outcome amount of BT will be transferred to receiver
     *    - Callback to msg.sender if data.length > 0
     *    - Ensure the calculated required amount of FW is transferred to this address
     * @dev will revert if BT is expired
     * @param receiver Address to receive the BT output
     * @param exactBtOut Exact amount of BT the user wants to receive
     * @param data bytes data to be sent in the callback (if any)
     * @return netFwIn Amount of FW tokens sent in by the user
     * @return netFwFee Amount of FW tokens charged as fee
     */
    function swapFwForExactBt(address receiver, uint256 exactBtOut, bytes calldata data)
        external
        nonReentrant
        notExpired
        returns (uint256 netFwIn, uint256 netFwFee)
    {
        MarketState memory market = readState(msg.sender);

        uint256 netFwToReserve;
        (netFwIn, netFwFee, netFwToReserve) = market.swapFwForExactBt(CT.newIndex(), exactBtOut, block.timestamp);

        if (receiver != address(this)) IERC20(BT).safeTransfer(receiver, exactBtOut);
        IERC20(FW).safeTransfer(market.treasury, netFwToReserve);

        _writeState(market);

        if (data.length > 0) {
            IPMarketSwapCallback(msg.sender).swapCallback(exactBtOut.Int(), netFwIn.neg(), data);
        }

        // have received enough FW
        if (_selfBalance(FW) < market.totalFw.Uint()) {
            revert Errors.MarketInsufficientFwReceived(_selfBalance(FW), market.totalFw.Uint());
        }

        emit Swap(msg.sender, receiver, exactBtOut.Int(), netFwIn.neg(), netFwFee, netFwToReserve);
    }

    /**
     * @notice Sends excess BT and FW balances (above reserves) to the treasury
     * @dev Used to recover tokens accidentally sent directly to the market contract
     */
    function skim() external nonReentrant {
        MarketState memory market = readState(msg.sender);
        uint256 excessBt = _selfBalance(BT) - market.totalBt.Uint();
        uint256 excessFw = _selfBalance(FW) - market.totalFw.Uint();
        if (excessBt != 0) IERC20(BT).safeTransfer(market.treasury, excessBt);
        if (excessFw != 0) IERC20(FW).safeTransfer(market.treasury, excessFw);
    }

    /**
     * @notice redeems the user's reward
     * @param user address of the user to redeem rewards for
     * @return amount of reward token redeemed, in the same order as `getRewardTokens()`
     */
    function redeemRewards(address user) external nonReentrant returns (uint256[] memory) {
        // Return empty array:
        uint256[] memory arr = new uint256[](0);
        return arr;
    }

    /// @notice returns the list of reward tokens
    function getRewardTokens() external view returns (address[] memory) {
        // Return empty array:
        address[] memory arr = new address[](0);
        return arr;
    }

    /* ///////////////////////////////////////////////////////////////
                                ORACLE
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Returns TWAP observations for the implied rate oracle
     * @param secondsAgos Array of time offsets from current timestamp to query
     * @return lnImpliedRateCumulative Cumulative ln(impliedRate) values at each requested time
     */
    function observe(uint32[] memory secondsAgos) external view returns (uint216[] memory lnImpliedRateCumulative) {
        return observations.observe(
            uint32(block.timestamp),
            secondsAgos,
            _storage.lastLnImpliedRate,
            _storage.observationIndex,
            _storage.observationCardinality
        );
    }

    /**
     * @notice Increases the maximum number of TWAP observations that can be stored
     * @dev Call this to enable longer TWAP windows for the oracle
     * @param cardinalityNext The desired new observation cardinality
     */
    function increaseObservationsCardinalityNext(uint16 cardinalityNext) external nonReentrant {
        uint16 cardinalityNextOld = _storage.observationCardinalityNext;
        uint16 cardinalityNextNew = observations.grow(cardinalityNextOld, cardinalityNext);
        if (cardinalityNextOld != cardinalityNextNew) {
            _storage.observationCardinalityNext = cardinalityNextNew;
            emit IncreaseObservationCardinalityNext(cardinalityNextOld, cardinalityNextNew);
        }
    }

    /* ///////////////////////////////////////////////////////////////
                                READ/WRITE STATES
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Reads the market state from storage into memory for gas-efficient manipulation
     * @dev Loads all market parameters including router-specific fee overrides
     * @param router Address of the router (used to check for fee overrides)
     * @return market The complete market state in memory
     */
    function readState(address router) public view returns (MarketState memory market) {
        market.totalBt = _storage.totalBt;
        market.totalFw = _storage.totalFw;
        market.totalLp = totalSupply().Int();

        uint80 overriddenFee;

        (market.treasury, overriddenFee, market.reserveFeePercent) =
            IPMarketFactoryV3(factory).getMarketConfig(address(this), router);

        market.lnFeeRateRoot = overriddenFee == 0 ? lnFeeRateRoot : overriddenFee;
        market.scalarRoot = scalarRoot;
        market.expiry = expiry;

        market.lastLnImpliedRate = _storage.lastLnImpliedRate;
    }

    /**
     * @notice Writes the market state from memory back to storage
     * @dev Also updates the TWAP oracle with the new implied rate
     * @param market The market state to persist
     */
    function _writeState(MarketState memory market) internal {
        uint96 lastLnImpliedRate96 = market.lastLnImpliedRate.Uint96();
        int128 totalBt128 = market.totalBt.Int128();
        int128 totalFw128 = market.totalFw.Int128();

        (uint16 observationIndex, uint16 observationCardinality) = observations.write(
            _storage.observationIndex,
            uint32(block.timestamp),
            _storage.lastLnImpliedRate,
            _storage.observationCardinality,
            _storage.observationCardinalityNext
        );

        _storage.totalBt = totalBt128;
        _storage.totalFw = totalFw128;
        _storage.lastLnImpliedRate = lastLnImpliedRate96;
        _storage.observationIndex = observationIndex;
        _storage.observationCardinality = observationCardinality;

        emit UpdateImpliedRate(block.timestamp, market.lastLnImpliedRate);
    }

    /**
     * @notice Returns the base fee rate root before any router-specific overrides
     * @return The immutable lnFeeRateRoot set at market creation
     */
    function getNonOverrideLnFeeRateRoot() external view returns (uint80) {
        return lnFeeRateRoot;
    }

    /* ///////////////////////////////////////////////////////////////
                            TRIVIAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Returns the addresses of the tokens traded in this market
     * @return _FW The Fira Wrapped token address
     * @return _BT The Bond Token address
     * @return _CT The Coupon Token address
     */
    function readTokens() external view returns (IFiraWrappedStandardized _FW, IBondToken _BT, IBCToken _CT) {
        _FW = FW;
        _BT = BT;
        _CT = CT;
    }

    /**
     * @notice Checks if the market's Bond Token has expired
     * @return True if the current timestamp is past expiry, false otherwise
     */
    function isExpired() public view returns (bool) {
        return MiniHelpers.isCurrentlyExpired(expiry);
    }

    /* ///////////////////////////////////////////////////////////////
                    Hooks
    //////////////////////////////////////////////////////////////*/
    function _beforeTokenTransfer(address from, address to, uint256 amount) internal override(FiraERC20) {
        // Do nothing
    }

    function _afterTokenTransfer(address from, address to, uint256 amount) internal override(FiraERC20) {
        // Do nothing
    }
}

// ============================================================
// FILE: src/fira_bonding/erc20/FiraERC20.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
// OpenZeppelin Contracts (last updated v4.6.0) (token/ERC20/ERC20.sol)

pragma solidity 0.8.30;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/utils/Context.sol";

/// @title FiraERC20
/// @notice Fira's ERC20 implementation with built-in reentrancy protection
/// @dev Modified from OpenZeppelin ERC20 implementation with the following changes:
///      - Built-in reentrancy protection, storage-packed with totalSupply variable
///      - Removed increaseAllowance/decreaseAllowance functions
///      - Added nonReentrant modifier to transfer/transferFrom functions
///      - Configurable decimals passed in constructor
///      - Blocks self-transfer by default
// solhint-disable
contract FiraERC20 is Context, IERC20, IERC20Metadata {
    uint8 private constant _NOT_ENTERED = 1;
    uint8 private constant _ENTERED = 2;

    mapping(address => uint256) private _balances;

    mapping(address => mapping(address => uint256)) private _allowances;

    uint248 private _totalSupply;
    uint8 private _status;

    string private _name;
    string private _symbol;
    uint8 public immutable decimals;

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
     * @dev Sets the values for {name}, {symbol} and {decimals}.
     *
     * All three of these values are immutable: they can only be set once during
     * construction.
     */
    constructor(string memory name_, string memory symbol_, uint8 decimals_) {
        _name = name_;
        _symbol = symbol_;
        decimals = decimals_;
        _status = _NOT_ENTERED;
    }

    /**
     * @dev Returns the name of the token.
     */
    function name() public view virtual override returns (string memory) {
        return _name;
    }

    /**
     * @dev Returns the symbol of the token, usually a shorter version of the
     * name.
     */
    function symbol() public view virtual override returns (string memory) {
        return _symbol;
    }

    /**
     * @dev See {IERC20-totalSupply}.
     */
    function totalSupply() public view virtual override returns (uint256) {
        return _totalSupply;
    }

    /**
     * @dev See {IERC20-balanceOf}.
     */
    function balanceOf(address account) public view virtual override returns (uint256) {
        return _balances[account];
    }

    /**
     * @dev See {IERC20-transfer}.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     * - the caller must have a balance of at least `amount`.
     */
    function transfer(address to, uint256 amount) external virtual override nonReentrant returns (bool) {
        address owner = _msgSender();
        _transfer(owner, to, amount);
        return true;
    }

    /**
     * @dev See {IERC20-allowance}.
     */
    function allowance(address owner, address spender) public view virtual override returns (uint256) {
        return _allowances[owner][spender];
    }

    /**
     * @dev See {IERC20-approve}.
     *
     * NOTE: If `amount` is the maximum `uint256`, the allowance is not updated on
     * `transferFrom`. This is semantically equivalent to an infinite approval.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function approve(address spender, uint256 amount) external virtual override returns (bool) {
        address owner = _msgSender();
        _approve(owner, spender, amount);
        return true;
    }

    /**
     * @dev See {IERC20-transferFrom}.
     *
     * Emits an {Approval} event indicating the updated allowance. This is not
     * required by the EIP. See the note at the beginning of {ERC20}.
     *
     * NOTE: Does not update the allowance if the current allowance
     * is the maximum `uint256`.
     *
     * Requirements:
     *
     * - `from` and `to` cannot be the zero address.
     * - `from` must have a balance of at least `amount`.
     * - the caller must have allowance for ``from``'s tokens of at least
     * `amount`.
     */
    function transferFrom(address from, address to, uint256 amount)
        external
        virtual
        override
        nonReentrant
        returns (bool)
    {
        address spender = _msgSender();
        _spendAllowance(from, spender, amount);
        _transfer(from, to, amount);
        return true;
    }

    /**
     * @dev Moves `amount` of tokens from `sender` to `recipient`.
     *
     * This internal function is equivalent to {transfer}, and can be used to
     * e.g. implement automatic token fees, slashing mechanisms, etc.
     *
     * Emits a {Transfer} event.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `from` must have a balance of at least `amount`.
     */
    function _transfer(address from, address to, uint256 amount) internal virtual {
        require(from != address(0), "ERC20: transfer from the zero address");
        require(to != address(0), "ERC20: transfer to the zero address");
        require(from != to, "ERC20: transfer to self");

        _beforeTokenTransfer(from, to, amount);

        uint256 fromBalance = _balances[from];
        require(fromBalance >= amount, "ERC20: transfer amount exceeds balance");
        unchecked {
            _balances[from] = fromBalance - amount;
        }
        _balances[to] += amount;

        emit Transfer(from, to, amount);

        _afterTokenTransfer(from, to, amount);
    }

    /**
     * @dev Creates `amount` tokens and assigns them to `account`, increasing
     * the total supply.
     *
     * Emits a {Transfer} event with `from` set to the zero address.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     */
    function _mint(address account, uint256 amount) internal virtual {
        require(account != address(0), "ERC20: mint to the zero address");

        _beforeTokenTransfer(address(0), account, amount);

        _totalSupply += toUint248(amount);
        _balances[account] += amount;
        emit Transfer(address(0), account, amount);

        _afterTokenTransfer(address(0), account, amount);
    }

    /**
     * @dev Destroys `amount` tokens from `account`, reducing the
     * total supply.
     *
     * Emits a {Transfer} event with `to` set to the zero address.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     * - `account` must have at least `amount` tokens.
     */
    function _burn(address account, uint256 amount) internal virtual {
        require(account != address(0), "ERC20: burn from the zero address");

        _beforeTokenTransfer(account, address(0), amount);

        uint256 accountBalance = _balances[account];
        require(accountBalance >= amount, "ERC20: burn amount exceeds balance");
        unchecked {
            _balances[account] = accountBalance - amount;
        }
        _totalSupply -= toUint248(amount);

        emit Transfer(account, address(0), amount);

        _afterTokenTransfer(account, address(0), amount);
    }

    /**
     * @dev Sets `amount` as the allowance of `spender` over the `owner` s tokens.
     *
     * This internal function is equivalent to `approve`, and can be used to
     * e.g. set automatic allowances for certain subsystems, etc.
     *
     * Emits an {Approval} event.
     *
     * Requirements:
     *
     * - `owner` cannot be the zero address.
     * - `spender` cannot be the zero address.
     */
    function _approve(address owner, address spender, uint256 amount) internal virtual {
        require(owner != address(0), "ERC20: approve from the zero address");
        require(spender != address(0), "ERC20: approve to the zero address");

        _allowances[owner][spender] = amount;
        emit Approval(owner, spender, amount);
    }

    /**
     * @dev Updates `owner` s allowance for `spender` based on spent `amount`.
     *
     * Does not update the allowance amount in case of infinite allowance.
     * Revert if not enough allowance is available.
     *
     * Might emit an {Approval} event.
     */
    function _spendAllowance(address owner, address spender, uint256 amount) internal virtual {
        uint256 currentAllowance = allowance(owner, spender);
        if (currentAllowance != type(uint256).max) {
            require(currentAllowance >= amount, "ERC20: insufficient allowance");
            unchecked {
                _approve(owner, spender, currentAllowance - amount);
            }
        }
    }

    /**
     * @dev Hook that is called before any transfer of tokens. This includes
     * minting and burning.
     *
     * Calling conditions:
     *
     * - when `from` and `to` are both non-zero, `amount` of ``from``'s tokens
     * will be transferred to `to`.
     * - when `from` is zero, `amount` tokens will be minted for `to`.
     * - when `to` is zero, `amount` of ``from``'s tokens will be burned.
     * - `from` and `to` are never both zero.
     *
     * To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using
     * Hooks].
     */
    function _beforeTokenTransfer(address from, address to, uint256 amount) internal virtual {}

    /**
     * @dev Hook that is called after any transfer of tokens. This includes
     * minting and burning.
     *
     * Calling conditions:
     *
     * - when `from` and `to` are both non-zero, `amount` of ``from``'s tokens
     * has been transferred to `to`.
     * - when `from` is zero, `amount` tokens have been minted for `to`.
     * - when `to` is zero, `amount` of ``from``'s tokens have been burned.
     * - `from` and `to` are never both zero.
     *
     * To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using
     * Hooks].
     */
    function _afterTokenTransfer(address from, address to, uint256 amount) internal virtual {}

    function toUint248(uint256 x) internal virtual returns (uint248) {
        require(x <= type(uint248).max); // signed, lim = bit-1
        return uint248(x);
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
// FILE: src/fira_bonding/libraries/StringLib.sol
// ============================================================

/*
 * @title String & slice utility library for Solidity contracts.
 * @author Nick Johnson <arachnid@notdot.net>
 *
 * @dev Functionality in this library is largely implemented using an
 *      abstraction called a 'slice'. A slice represents a part of a string -
 *      anything from the entire string to a single character, or even no
 *      characters at all (a 0-length slice). Since a slice only has to specify
 *      an offset and a length, copying and manipulating slices is a lot less
 *      expensive than copying and manipulating the strings they reference.
 *
 *      To further reduce gas costs, most functions on slice that need to return
 *      a slice modify the original one instead of allocating a new one; for
 *      instance, `s.split(".")` will return the text up to the first '.',
 *      modifying s to only contain the remainder of the string after the '.'.
 *      In situations where you do not want to modify the original slice, you
 *      can make a copy first with `.copy()`, for example:
 *      `s.copy().split(".")`. Try and avoid using this idiom in loops; since
 *      Solidity has no memory management, it will result in allocating many
 *      short-lived slices that are later discarded.
 *
 *      Functions that return two slices come in two versions: a non-allocating
 *      version that takes the second slice as an argument, modifying it in
 *      place, and an allocating version that allocates and returns the second
 *      slice; see `nextRune` for example.
 *
 *      Functions that have to copy string data will return strings rather than
 *      slices; these can be cast back to slices for further processing if
 *      required.
 *
 *      For convenience, some functions are provided with non-modifying
 *      variants that create a new slice and return both; for instance,
 *      `s.splitNew('.')` leaves s unmodified, and returns two values
 *      corresponding to the left and right parts of the string.
 */

pragma solidity 0.8.30;

library StringLib {
    struct slice {
        uint256 _len;
        uint256 _ptr;
    }

    function memcpy(uint256 dest, uint256 src, uint256 len) private pure {
        // Copy word-length chunks while possible
        for (; len >= 32; len -= 32) {
            assembly {
                mstore(dest, mload(src))
            }
            dest += 32;
            src += 32;
        }

        // Copy remaining bytes
        uint256 mask = type(uint256).max;
        if (len > 0) {
            mask = 256 ** (32 - len) - 1;
        }
        assembly {
            let srcpart := and(mload(src), not(mask))
            let destpart := and(mload(dest), mask)
            mstore(dest, or(destpart, srcpart))
        }
    }

    /*
     * @dev Returns a slice containing the entire string.
     * @param self The string to make a slice from.
     * @return A newly allocated slice containing the entire string.
     */
    function toSlice(string memory self) internal pure returns (slice memory) {
        uint256 ptr;
        assembly {
            ptr := add(self, 0x20)
        }
        return slice(bytes(self).length, ptr);
    }

    /*
     * @dev Returns the length of a null-terminated bytes32 string.
     * @param self The value to find the length of.
     * @return The length of the string, from 0 to 32.
     */
    function len(bytes32 self) internal pure returns (uint256) {
        uint256 ret;
        if (self == 0) return 0;
        if (uint256(self) & type(uint128).max == 0) {
            ret += 16;
            self = bytes32(uint256(self) / 0x100000000000000000000000000000000);
        }
        if (uint256(self) & type(uint64).max == 0) {
            ret += 8;
            self = bytes32(uint256(self) / 0x10000000000000000);
        }
        if (uint256(self) & type(uint32).max == 0) {
            ret += 4;
            self = bytes32(uint256(self) / 0x100000000);
        }
        if (uint256(self) & type(uint16).max == 0) {
            ret += 2;
            self = bytes32(uint256(self) / 0x10000);
        }
        if (uint256(self) & type(uint8).max == 0) {
            ret += 1;
        }
        return 32 - ret;
    }

    /*
     * @dev Returns a slice containing the entire bytes32, interpreted as a
     *      null-terminated utf-8 string.
     * @param self The bytes32 value to convert to a slice.
     * @return A new slice containing the value of the input argument up to the
     *         first null.
     */
    function toSliceB32(bytes32 self) internal pure returns (slice memory ret) {
        // Allocate space for `self` in memory, copy it there, and point ret at it
        assembly {
            let ptr := mload(0x40)
            mstore(0x40, add(ptr, 0x20))
            mstore(ptr, self)
            mstore(add(ret, 0x20), ptr)
        }
        ret._len = len(self);
    }

    /*
     * @dev Returns a new slice containing the same data as the current slice.
     * @param self The slice to copy.
     * @return A new slice containing the same data as `self`.
     */
    function copy(slice memory self) internal pure returns (slice memory) {
        return slice(self._len, self._ptr);
    }

    /*
     * @dev Copies a slice to a new string.
     * @param self The slice to copy.
     * @return A newly allocated string containing the slice's text.
     */
    function toString(slice memory self) internal pure returns (string memory) {
        string memory ret = new string(self._len);
        uint256 retptr;
        assembly {
            retptr := add(ret, 32)
        }

        memcpy(retptr, self._ptr, self._len);
        return ret;
    }

    /*
     * @dev Returns the length in runes of the slice. Note that this operation
     *      takes time proportional to the length of the slice; avoid using it
     *      in loops, and call `slice.empty()` if you only need to know whether
     *      the slice is empty or not.
     * @param self The slice to operate on.
     * @return The length of the slice in runes.
     */
    function len(slice memory self) internal pure returns (uint256 l) {
        // Starting at ptr-31 means the LSB will be the byte we care about
        uint256 ptr = self._ptr - 31;
        uint256 end = ptr + self._len;
        for (l = 0; ptr < end; l++) {
            uint8 b;
            assembly {
                b := and(mload(ptr), 0xFF)
            }
            if (b < 0x80) {
                ptr += 1;
            } else if (b < 0xE0) {
                ptr += 2;
            } else if (b < 0xF0) {
                ptr += 3;
            } else if (b < 0xF8) {
                ptr += 4;
            } else if (b < 0xFC) {
                ptr += 5;
            } else {
                ptr += 6;
            }
        }
    }

    /*
     * @dev Returns true if the slice is empty (has a length of 0).
     * @param self The slice to operate on.
     * @return True if the slice is empty, False otherwise.
     */
    function empty(slice memory self) internal pure returns (bool) {
        return self._len == 0;
    }

    /*
     * @dev Returns a positive number if `other` comes lexicographically after
     *      `self`, a negative number if it comes before, or zero if the
     *      contents of the two slices are equal. Comparison is done per-rune,
     *      on unicode codepoints.
     * @param self The first slice to compare.
     * @param other The second slice to compare.
     * @return The result of the comparison.
     */
    function compare(slice memory self, slice memory other) internal pure returns (int256) {
        uint256 shortest = self._len;
        if (other._len < self._len) shortest = other._len;

        uint256 selfptr = self._ptr;
        uint256 otherptr = other._ptr;
        for (uint256 idx = 0; idx < shortest; idx += 32) {
            uint256 a;
            uint256 b;
            assembly {
                a := mload(selfptr)
                b := mload(otherptr)
            }
            if (a != b) {
                // Mask out irrelevant bytes and check again
                uint256 mask = type(uint256).max; // 0xffff...
                if (shortest < 32) {
                    mask = ~(2 ** (8 * (32 - shortest + idx)) - 1);
                }
                unchecked {
                    uint256 diff = (a & mask) - (b & mask);
                    if (diff != 0) return int256(diff);
                }
            }
            selfptr += 32;
            otherptr += 32;
        }
        return int256(self._len) - int256(other._len);
    }

    /*
     * @dev Returns true if the two slices contain the same text.
     * @param self The first slice to compare.
     * @param self The second slice to compare.
     * @return True if the slices are equal, false otherwise.
     */
    function equals(slice memory self, slice memory other) internal pure returns (bool) {
        return compare(self, other) == 0;
    }

    /*
     * @dev Extracts the first rune in the slice into `rune`, advancing the
     *      slice to point to the next rune and returning `self`.
     * @param self The slice to operate on.
     * @param rune The slice that will contain the first rune.
     * @return `rune`.
     */
    function nextRune(slice memory self, slice memory rune) internal pure returns (slice memory) {
        rune._ptr = self._ptr;

        if (self._len == 0) {
            rune._len = 0;
            return rune;
        }

        uint256 l;
        uint256 b;
        // Load the first byte of the rune into the LSBs of b
        assembly {
            b := and(mload(sub(mload(add(self, 32)), 31)), 0xFF)
        }
        if (b < 0x80) {
            l = 1;
        } else if (b < 0xE0) {
            l = 2;
        } else if (b < 0xF0) {
            l = 3;
        } else {
            l = 4;
        }

        // Check for truncated codepoints
        if (l > self._len) {
            rune._len = self._len;
            self._ptr += self._len;
            self._len = 0;
            return rune;
        }

        self._ptr += l;
        self._len -= l;
        rune._len = l;
        return rune;
    }

    /*
     * @dev Returns the first rune in the slice, advancing the slice to point
     *      to the next rune.
     * @param self The slice to operate on.
     * @return A slice containing only the first rune from `self`.
     */
    function nextRune(slice memory self) internal pure returns (slice memory ret) {
        nextRune(self, ret);
    }

    /*
     * @dev Returns the number of the first codepoint in the slice.
     * @param self The slice to operate on.
     * @return The number of the first codepoint in the slice.
     */
    function ord(slice memory self) internal pure returns (uint256 ret) {
        if (self._len == 0) {
            return 0;
        }

        uint256 word;
        uint256 length;
        uint256 divisor = 2 ** 248;

        // Load the rune into the MSBs of b
        assembly {
            word := mload(mload(add(self, 32)))
        }
        uint256 b = word / divisor;
        if (b < 0x80) {
            ret = b;
            length = 1;
        } else if (b < 0xE0) {
            ret = b & 0x1F;
            length = 2;
        } else if (b < 0xF0) {
            ret = b & 0x0F;
            length = 3;
        } else {
            ret = b & 0x07;
            length = 4;
        }

        // Check for truncated codepoints
        if (length > self._len) {
            return 0;
        }

        for (uint256 i = 1; i < length; i++) {
            divisor = divisor / 256;
            b = (word / divisor) & 0xFF;
            if (b & 0xC0 != 0x80) {
                // Invalid UTF-8 sequence
                return 0;
            }
            ret = (ret * 64) | (b & 0x3F);
        }

        return ret;
    }

    /*
     * @dev Returns the keccak-256 hash of the slice.
     * @param self The slice to hash.
     * @return The hash of the slice.
     */
    function keccak(slice memory self) internal pure returns (bytes32 ret) {
        assembly {
            ret := keccak256(mload(add(self, 32)), mload(self))
        }
    }

    /*
     * @dev Returns true if `self` starts with `needle`.
     * @param self The slice to operate on.
     * @param needle The slice to search for.
     * @return True if the slice starts with the provided text, false otherwise.
     */
    function startsWith(slice memory self, slice memory needle) internal pure returns (bool) {
        if (self._len < needle._len) {
            return false;
        }

        if (self._ptr == needle._ptr) {
            return true;
        }

        bool equal;
        assembly {
            let length := mload(needle)
            let selfptr := mload(add(self, 0x20))
            let needleptr := mload(add(needle, 0x20))
            equal := eq(keccak256(selfptr, length), keccak256(needleptr, length))
        }
        return equal;
    }

    /*
     * @dev If `self` starts with `needle`, `needle` is removed from the
     *      beginning of `self`. Otherwise, `self` is unmodified.
     * @param self The slice to operate on.
     * @param needle The slice to search for.
     * @return `self`
     */
    function beyond(slice memory self, slice memory needle) internal pure returns (slice memory) {
        if (self._len < needle._len) {
            return self;
        }

        bool equal = true;
        if (self._ptr != needle._ptr) {
            assembly {
                let length := mload(needle)
                let selfptr := mload(add(self, 0x20))
                let needleptr := mload(add(needle, 0x20))
                equal := eq(keccak256(selfptr, length), keccak256(needleptr, length))
            }
        }

        if (equal) {
            self._len -= needle._len;
            self._ptr += needle._len;
        }

        return self;
    }

    /*
     * @dev Returns true if the slice ends with `needle`.
     * @param self The slice to operate on.
     * @param needle The slice to search for.
     * @return True if the slice starts with the provided text, false otherwise.
     */
    function endsWith(slice memory self, slice memory needle) internal pure returns (bool) {
        if (self._len < needle._len) {
            return false;
        }

        uint256 selfptr = self._ptr + self._len - needle._len;

        if (selfptr == needle._ptr) {
            return true;
        }

        bool equal;
        assembly {
            let length := mload(needle)
            let needleptr := mload(add(needle, 0x20))
            equal := eq(keccak256(selfptr, length), keccak256(needleptr, length))
        }

        return equal;
    }

    /*
     * @dev If `self` ends with `needle`, `needle` is removed from the
     *      end of `self`. Otherwise, `self` is unmodified.
     * @param self The slice to operate on.
     * @param needle The slice to search for.
     * @return `self`
     */
    function until(slice memory self, slice memory needle) internal pure returns (slice memory) {
        if (self._len < needle._len) {
            return self;
        }

        uint256 selfptr = self._ptr + self._len - needle._len;
        bool equal = true;
        if (selfptr != needle._ptr) {
            assembly {
                let length := mload(needle)
                let needleptr := mload(add(needle, 0x20))
                equal := eq(keccak256(selfptr, length), keccak256(needleptr, length))
            }
        }

        if (equal) {
            self._len -= needle._len;
        }

        return self;
    }

    // Returns the memory address of the first byte of the first occurrence of
    // `needle` in `self`, or the first byte after `self` if not found.
    function findPtr(uint256 selflen, uint256 selfptr, uint256 needlelen, uint256 needleptr)
        private
        pure
        returns (uint256)
    {
        uint256 ptr = selfptr;
        uint256 idx;

        if (needlelen <= selflen) {
            if (needlelen <= 32) {
                bytes32 mask;
                if (needlelen > 0) {
                    mask = bytes32(~(2 ** (8 * (32 - needlelen)) - 1));
                }

                bytes32 needledata;
                assembly {
                    needledata := and(mload(needleptr), mask)
                }

                uint256 end = selfptr + selflen - needlelen;
                bytes32 ptrdata;
                assembly {
                    ptrdata := and(mload(ptr), mask)
                }

                while (ptrdata != needledata) {
                    if (ptr >= end) return selfptr + selflen;
                    ptr++;
                    assembly {
                        ptrdata := and(mload(ptr), mask)
                    }
                }
                return ptr;
            } else {
                // For long needles, use hashing
                bytes32 hash;
                assembly {
                    hash := keccak256(needleptr, needlelen)
                }

                for (idx = 0; idx <= selflen - needlelen; idx++) {
                    bytes32 testHash;
                    assembly {
                        testHash := keccak256(ptr, needlelen)
                    }
                    if (hash == testHash) return ptr;
                    ptr += 1;
                }
            }
        }
        return selfptr + selflen;
    }

    // Returns the memory address of the first byte after the last occurrence of
    // `needle` in `self`, or the address of `self` if not found.
    function rfindPtr(uint256 selflen, uint256 selfptr, uint256 needlelen, uint256 needleptr)
        private
        pure
        returns (uint256)
    {
        uint256 ptr;

        if (needlelen <= selflen) {
            if (needlelen <= 32) {
                bytes32 mask;
                if (needlelen > 0) {
                    mask = bytes32(~(2 ** (8 * (32 - needlelen)) - 1));
                }

                bytes32 needledata;
                assembly {
                    needledata := and(mload(needleptr), mask)
                }

                ptr = selfptr + selflen - needlelen;
                bytes32 ptrdata;
                assembly {
                    ptrdata := and(mload(ptr), mask)
                }

                while (ptrdata != needledata) {
                    if (ptr <= selfptr) return selfptr;
                    ptr--;
                    assembly {
                        ptrdata := and(mload(ptr), mask)
                    }
                }
                return ptr + needlelen;
            } else {
                // For long needles, use hashing
                bytes32 hash;
                assembly {
                    hash := keccak256(needleptr, needlelen)
                }
                ptr = selfptr + (selflen - needlelen);
                while (ptr >= selfptr) {
                    bytes32 testHash;
                    assembly {
                        testHash := keccak256(ptr, needlelen)
                    }
                    if (hash == testHash) return ptr + needlelen;
                    ptr -= 1;
                }
            }
        }
        return selfptr;
    }

    /*
     * @dev Modifies `self` to contain everything from the first occurrence of
     *      `needle` to the end of the slice. `self` is set to the empty slice
     *      if `needle` is not found.
     * @param self The slice to search and modify.
     * @param needle The text to search for.
     * @return `self`.
     */
    function find(slice memory self, slice memory needle) internal pure returns (slice memory) {
        uint256 ptr = findPtr(self._len, self._ptr, needle._len, needle._ptr);
        self._len -= ptr - self._ptr;
        self._ptr = ptr;
        return self;
    }

    /*
     * @dev Modifies `self` to contain the part of the string from the start of
     *      `self` to the end of the first occurrence of `needle`. If `needle`
     *      is not found, `self` is set to the empty slice.
     * @param self The slice to search and modify.
     * @param needle The text to search for.
     * @return `self`.
     */
    function rfind(slice memory self, slice memory needle) internal pure returns (slice memory) {
        uint256 ptr = rfindPtr(self._len, self._ptr, needle._len, needle._ptr);
        self._len = ptr - self._ptr;
        return self;
    }

    /*
     * @dev Splits the slice, setting `self` to everything after the first
     *      occurrence of `needle`, and `token` to everything before it. If
     *      `needle` does not occur in `self`, `self` is set to the empty slice,
     *      and `token` is set to the entirety of `self`.
     * @param self The slice to split.
     * @param needle The text to search for in `self`.
     * @param token An output parameter to which the first token is written.
     * @return `token`.
     */
    function split(slice memory self, slice memory needle, slice memory token) internal pure returns (slice memory) {
        uint256 ptr = findPtr(self._len, self._ptr, needle._len, needle._ptr);
        token._ptr = self._ptr;
        token._len = ptr - self._ptr;
        if (ptr == self._ptr + self._len) {
            // Not found
            self._len = 0;
        } else {
            self._len -= token._len + needle._len;
            self._ptr = ptr + needle._len;
        }
        return token;
    }

    /*
     * @dev Splits the slice, setting `self` to everything after the first
     *      occurrence of `needle`, and returning everything before it. If
     *      `needle` does not occur in `self`, `self` is set to the empty slice,
     *      and the entirety of `self` is returned.
     * @param self The slice to split.
     * @param needle The text to search for in `self`.
     * @return The part of `self` up to the first occurrence of `delim`.
     */
    function split(slice memory self, slice memory needle) internal pure returns (slice memory token) {
        split(self, needle, token);
    }

    /*
     * @dev Splits the slice, setting `self` to everything before the last
     *      occurrence of `needle`, and `token` to everything after it. If
     *      `needle` does not occur in `self`, `self` is set to the empty slice,
     *      and `token` is set to the entirety of `self`.
     * @param self The slice to split.
     * @param needle The text to search for in `self`.
     * @param token An output parameter to which the first token is written.
     * @return `token`.
     */
    function rsplit(slice memory self, slice memory needle, slice memory token) internal pure returns (slice memory) {
        uint256 ptr = rfindPtr(self._len, self._ptr, needle._len, needle._ptr);
        token._ptr = ptr;
        token._len = self._len - (ptr - self._ptr);
        if (ptr == self._ptr) {
            // Not found
            self._len = 0;
        } else {
            self._len -= token._len + needle._len;
        }
        return token;
    }

    /*
     * @dev Splits the slice, setting `self` to everything before the last
     *      occurrence of `needle`, and returning everything after it. If
     *      `needle` does not occur in `self`, `self` is set to the empty slice,
     *      and the entirety of `self` is returned.
     * @param self The slice to split.
     * @param needle The text to search for in `self`.
     * @return The part of `self` after the last occurrence of `delim`.
     */
    function rsplit(slice memory self, slice memory needle) internal pure returns (slice memory token) {
        rsplit(self, needle, token);
    }

    /*
     * @dev Counts the number of nonoverlapping occurrences of `needle` in `self`.
     * @param self The slice to search.
     * @param needle The text to search for in `self`.
     * @return The number of occurrences of `needle` found in `self`.
     */
    function count(slice memory self, slice memory needle) internal pure returns (uint256 cnt) {
        uint256 ptr = findPtr(self._len, self._ptr, needle._len, needle._ptr) + needle._len;
        while (ptr <= self._ptr + self._len) {
            cnt++;
            ptr = findPtr(self._len - (ptr - self._ptr), ptr, needle._len, needle._ptr) + needle._len;
        }
    }

    /*
     * @dev Returns True if `self` contains `needle`.
     * @param self The slice to search.
     * @param needle The text to search for in `self`.
     * @return True if `needle` is found in `self`, false otherwise.
     */
    function contains(slice memory self, slice memory needle) internal pure returns (bool) {
        return rfindPtr(self._len, self._ptr, needle._len, needle._ptr) != self._ptr;
    }

    /*
     * @dev Returns a newly allocated string containing the concatenation of
     *      `self` and `other`.
     * @param self The first slice to concatenate.
     * @param other The second slice to concatenate.
     * @return The concatenation of the two strings.
     */
    function concat(slice memory self, slice memory other) internal pure returns (string memory) {
        string memory ret = new string(self._len + other._len);
        uint256 retptr;
        assembly {
            retptr := add(ret, 32)
        }
        memcpy(retptr, self._ptr, self._len);
        memcpy(retptr + self._len, other._ptr, other._len);
        return ret;
    }

    /*
     * @dev Joins an array of slices, using `self` as a delimiter, returning a
     *      newly allocated string.
     * @param self The delimiter to use.
     * @param parts A list of slices to join.
     * @return A newly allocated string containing all the slices in `parts`,
     *         joined with `self`.
     */
    function join(slice memory self, slice[] memory parts) internal pure returns (string memory) {
        if (parts.length == 0) return "";

        uint256 length = self._len * (parts.length - 1);
        for (uint256 i = 0; i < parts.length; i++) {
            length += parts[i]._len;
        }

        string memory ret = new string(length);
        uint256 retptr;
        assembly {
            retptr := add(ret, 32)
        }

        for (uint256 i = 0; i < parts.length; i++) {
            memcpy(retptr, parts[i]._ptr, parts[i]._len);
            retptr += parts[i]._len;
            if (i < parts.length - 1) {
                memcpy(retptr, self._ptr, self._len);
                retptr += self._len;
            }
        }

        return ret;
    }

    function stripPrefix(string memory _str, string memory _prefix) internal pure returns (string memory) {
        slice memory s = toSlice(_str);
        slice memory d = toSlice(_prefix);
        return toString(beyond(s, d));
    }

    function stripPrefixSlice(string memory _str, string memory _delim) internal pure returns (slice memory) {
        slice memory s = toSlice(_str);
        slice memory d = toSlice(_delim);
        return beyond(s, d);
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
// FILE: src/interfaces/IPInterestManagerCT.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

interface IPInterestManagerCT {
    event CollectInterestFee(uint256 amountInterestFee);

    function userInterest(address user) external view returns (uint128 lastBCIndex, uint128 accruedInterest);
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
// FILE: src/interfaces/IPMarketFactoryV3.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

interface IPMarketFactoryV3 {
    event SetOverriddenFee(address indexed router, address indexed market, uint80 lnFeeRateRoot);

    event CreateNewMarket(
        address indexed market, address indexed BT, int256 scalarRoot, int256 initialAnchor, uint256 lnFeeRateRoot
    );

    event NewTreasuryAndFeeReserve(address indexed treasury, uint8 reserveFeePercent);

    function isValidMarket(address market) external view returns (bool);

    // If this is changed, change the readState function in market as well
    function getMarketConfig(address market, address router)
        external
        view
        returns (address treasury, uint80 overriddenFee, uint8 reserveFeePercent);

    function createNewMarket(address BT, int256 scalarRoot, int256 initialAnchor, uint80 lnFeeRateRoot)
        external
        returns (address market);

    function setOverriddenFee(address router, address market, uint80 newFee) external;
}

// ============================================================
// FILE: src/interfaces/IPMarketSwapCallback.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

interface IPMarketSwapCallback {
    // Renamed params for clarity; signature unchanged for ABI compatibility
    function swapCallback(int256 btToAccount, int256 fwToAccount, bytes calldata data) external;
}

// ============================================================
// FILE: src/interfaces/IPMarketV3.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "./IPMarket.sol";

interface IPMarketV3 is IPMarket {
    function getNonOverrideLnFeeRateRoot() external view returns (uint80);
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
