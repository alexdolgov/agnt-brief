// ============================================================
// FILE: lib/@1inch/solidity-utils/contracts/interfaces/IDaiLikePermit.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IDaiLikePermit {
    function permit(
        address holder,
        address spender,
        uint256 nonce,
        uint256 expiry,
        bool allowed,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external;
}

// ============================================================
// FILE: lib/@1inch/solidity-utils/contracts/interfaces/IPermit2.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IPermit2 {
    struct PermitDetails {
        // ERC20 token address
        address token;
        // the maximum amount allowed to spend
        uint160 amount;
        // timestamp at which a spender's token allowances become invalid
        uint48 expiration;
        // an incrementing value indexed per owner,token,and spender for each signature
        uint48 nonce;
    }
    /// @notice The permit message signed for a single token allownce
    struct PermitSingle {
        // the permit data for a single token alownce
        PermitDetails details;
        // address permissioned on the allowed tokens
        address spender;
        // deadline on the permit signature
        uint256 sigDeadline;
    }
    /// @notice Packed allowance
    struct PackedAllowance {
        // amount allowed
        uint160 amount;
        // permission expiry
        uint48 expiration;
        // an incrementing value indexed per owner,token,and spender for each signature
        uint48 nonce;
    }

    function transferFrom(address user, address spender, uint160 amount, address token) external;

    function permit(address owner, PermitSingle memory permitSingle, bytes calldata signature) external;

    function allowance(address user, address token, address spender) external view returns (PackedAllowance memory);
}

// ============================================================
// FILE: lib/@1inch/solidity-utils/contracts/interfaces/IWETH.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IWETH is IERC20 {
    event Deposit(address indexed dst, uint wad);

    event Withdrawal(address indexed src, uint wad);

    function deposit() external payable;

    function withdraw(uint256 amount) external;
}

// ============================================================
// FILE: lib/@1inch/solidity-utils/contracts/libraries/RevertReasonForwarder.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/// @title Revert reason forwarder.
library RevertReasonForwarder {
    /// @dev Forwards latest externall call revert.
    function reRevert() internal pure {
        // bubble up revert reason from latest external call
        assembly ("memory-safe") { // solhint-disable-line no-inline-assembly
            let ptr := mload(0x40)
            returndatacopy(ptr, 0, returndatasize())
            revert(ptr, returndatasize())
        }
    }
}

// ============================================================
// FILE: lib/@1inch/solidity-utils/contracts/libraries/SafeERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/draft-IERC20Permit.sol";
import "../interfaces/IDaiLikePermit.sol";
import "../interfaces/IPermit2.sol";
import "../interfaces/IWETH.sol";
import "../libraries/RevertReasonForwarder.sol";

/**
 * @title Implements efficient safe methods for ERC20 interface.
 * @notice Compared to the standard ERC20, this implementation offers several enhancements:
 * 1. more gas-efficient, providing significant savings in transaction costs.
 * 2. support for different permit implementations
 * 3. forceApprove functionality
 * 4. support for WETH deposit and withdraw
 */
library SafeERC20 {
    error SafeTransferFailed();
    error SafeTransferFromFailed();
    error ForceApproveFailed();
    error SafeIncreaseAllowanceFailed();
    error SafeDecreaseAllowanceFailed();
    error SafePermitBadLength();
    error Permit2TransferAmountTooHigh();

    // Uniswap Permit2 address
    address private constant _PERMIT2 = 0x000000000022D473030F116dDEE9F6B43aC78BA3;
    bytes4 private constant _PERMIT_LENGTH_ERROR = 0x68275857;  // SafePermitBadLength.selector
    uint256 private constant _RAW_CALL_GAS_LIMIT = 5000;

    /**
     * @notice Fetches the balance of a specific ERC20 token held by an account.
     * Consumes less gas then regular `ERC20.balanceOf`.
     * @param token The IERC20 token contract for which the balance will be fetched.
     * @param account The address of the account whose token balance will be fetched.
     * @return tokenBalance The balance of the specified ERC20 token held by the account.
     */
    function safeBalanceOf(
        IERC20 token,
        address account
    ) internal view returns(uint256 tokenBalance) {
        bytes4 selector = IERC20.balanceOf.selector;
        assembly ("memory-safe") { // solhint-disable-line no-inline-assembly
            mstore(0x00, selector)
            mstore(0x04, account)
            let success := staticcall(gas(), token, 0x00, 0x24, 0x00, 0x20)
            tokenBalance := mload(0)

            if or(iszero(success), lt(returndatasize(), 0x20)) {
                let ptr := mload(0x40)
                returndatacopy(ptr, 0, returndatasize())
                revert(ptr, returndatasize())
            }
        }
    }

    /**
     * @notice Attempts to safely transfer tokens from one address to another.
     * @dev If permit2 is true, uses the Permit2 standard; otherwise uses the standard ERC20 transferFrom. 
     * Either requires `true` in return data, or requires target to be smart-contract and empty return data.
     * @param token The IERC20 token contract from which the tokens will be transferred.
     * @param from The address from which the tokens will be transferred.
     * @param to The address to which the tokens will be transferred.
     * @param amount The amount of tokens to transfer.
     * @param permit2 If true, uses the Permit2 standard for the transfer; otherwise uses the standard ERC20 transferFrom.
     */
    function safeTransferFromUniversal(
        IERC20 token,
        address from,
        address to,
        uint256 amount,
        bool permit2
    ) internal {
        if (permit2) {
            safeTransferFromPermit2(token, from, to, amount);
        } else {
            safeTransferFrom(token, from, to, amount);
        }
    }

    /**
     * @notice Attempts to safely transfer tokens from one address to another using the ERC20 standard.
     * @dev Either requires `true` in return data, or requires target to be smart-contract and empty return data.
     * @param token The IERC20 token contract from which the tokens will be transferred.
     * @param from The address from which the tokens will be transferred.
     * @param to The address to which the tokens will be transferred.
     * @param amount The amount of tokens to transfer.
     */
    function safeTransferFrom(
        IERC20 token,
        address from,
        address to,
        uint256 amount
    ) internal {
        bytes4 selector = token.transferFrom.selector;
        bool success;
        assembly ("memory-safe") { // solhint-disable-line no-inline-assembly
            let data := mload(0x40)

            mstore(data, selector)
            mstore(add(data, 0x04), from)
            mstore(add(data, 0x24), to)
            mstore(add(data, 0x44), amount)
            success := call(gas(), token, 0, data, 100, 0x0, 0x20)
            if success {
                switch returndatasize()
                case 0 {
                    success := gt(extcodesize(token), 0)
                }
                default {
                    success := and(gt(returndatasize(), 31), eq(mload(0), 1))
                }
            }
        }
        if (!success) revert SafeTransferFromFailed();
    }

    /**
     * @notice Attempts to safely transfer tokens from one address to another using the Permit2 standard.
     * @dev Either requires `true` in return data, or requires target to be smart-contract and empty return data.
     * @param token The IERC20 token contract from which the tokens will be transferred.
     * @param from The address from which the tokens will be transferred.
     * @param to The address to which the tokens will be transferred.
     * @param amount The amount of tokens to transfer.
     */
    function safeTransferFromPermit2(
        IERC20 token,
        address from,
        address to,
        uint256 amount
    ) internal {
        if (amount > type(uint160).max) revert Permit2TransferAmountTooHigh();
        bytes4 selector = IPermit2.transferFrom.selector;
        bool success;
        assembly ("memory-safe") { // solhint-disable-line no-inline-assembly
            let data := mload(0x40)

            mstore(data, selector)
            mstore(add(data, 0x04), from)
            mstore(add(data, 0x24), to)
            mstore(add(data, 0x44), amount)
            mstore(add(data, 0x64), token)
            success := call(gas(), _PERMIT2, 0, data, 0x84, 0x0, 0x0)
            if success {
                success := gt(extcodesize(_PERMIT2), 0)
            }
        }
        if (!success) revert SafeTransferFromFailed();
    }

    /**
     * @notice Attempts to safely transfer tokens to another address.
     * @dev Either requires `true` in return data, or requires target to be smart-contract and empty return data.
     * @param token The IERC20 token contract from which the tokens will be transferred.
     * @param to The address to which the tokens will be transferred.
     * @param value The amount of tokens to transfer.
     */
    function safeTransfer(
        IERC20 token,
        address to,
        uint256 value
    ) internal {
        if (!_makeCall(token, token.transfer.selector, to, value)) {
            revert SafeTransferFailed();
        }
    }

    /**
     * @notice Attempts to approve a spender to spend a certain amount of tokens.
     * @dev If `approve(from, to, amount)` fails, it tries to set the allowance to zero, and retries the `approve` call.
     * @param token The IERC20 token contract on which the call will be made.
     * @param spender The address which will spend the funds.
     * @param value The amount of tokens to be spent.
     */
    function forceApprove(
        IERC20 token,
        address spender,
        uint256 value
    ) internal {
        if (!_makeCall(token, token.approve.selector, spender, value)) {
            if (
                !_makeCall(token, token.approve.selector, spender, 0) ||
                !_makeCall(token, token.approve.selector, spender, value)
            ) {
                revert ForceApproveFailed();
            }
        }
    }

    /**
     * @notice Safely increases the allowance of a spender.
     * @dev Increases with safe math check. Checks if the increased allowance will overflow, if yes, then it reverts the transaction.
     * Then uses `forceApprove` to increase the allowance.
     * @param token The IERC20 token contract on which the call will be made.
     * @param spender The address which will spend the funds.
     * @param value The amount of tokens to increase the allowance by.
     */
    function safeIncreaseAllowance(
        IERC20 token,
        address spender,
        uint256 value
    ) internal {
        uint256 allowance = token.allowance(address(this), spender);
        if (value > type(uint256).max - allowance) revert SafeIncreaseAllowanceFailed();
        forceApprove(token, spender, allowance + value);
    }

    /**
     * @notice Safely decreases the allowance of a spender.
     * @dev Decreases with safe math check. Checks if the decreased allowance will underflow, if yes, then it reverts the transaction.
     * Then uses `forceApprove` to increase the allowance.
     * @param token The IERC20 token contract on which the call will be made.
     * @param spender The address which will spend the funds.
     * @param value The amount of tokens to decrease the allowance by.
     */
    function safeDecreaseAllowance(
        IERC20 token,
        address spender,
        uint256 value
    ) internal {
        uint256 allowance = token.allowance(address(this), spender);
        if (value > allowance) revert SafeDecreaseAllowanceFailed();
        forceApprove(token, spender, allowance - value);
    }

    /**
     * @notice Attempts to execute the `permit` function on the provided token with the sender and contract as parameters.
     * Permit type is determined automatically based on permit calldata (IERC20Permit, IDaiLikePermit, and IPermit2).
     * @dev Wraps `tryPermit` function and forwards revert reason if permit fails.
     * @param token The IERC20 token to execute the permit function on.
     * @param permit The permit data to be used in the function call.
     */
    function safePermit(IERC20 token, bytes calldata permit) internal {
        if (!tryPermit(token, msg.sender, address(this), permit)) RevertReasonForwarder.reRevert();
    }

    /**
     * @notice Attempts to execute the `permit` function on the provided token with custom owner and spender parameters. 
     * Permit type is determined automatically based on permit calldata (IERC20Permit, IDaiLikePermit, and IPermit2).
     * @dev Wraps `tryPermit` function and forwards revert reason if permit fails.
     * @param token The IERC20 token to execute the permit function on.
     * @param owner The owner of the tokens for which the permit is made.
     * @param spender The spender allowed to spend the tokens by the permit.
     * @param permit The permit data to be used in the function call.
     */
    function safePermit(IERC20 token, address owner, address spender, bytes calldata permit) internal {
        if (!tryPermit(token, owner, spender, permit)) RevertReasonForwarder.reRevert();
    }

    /**
     * @notice Attempts to execute the `permit` function on the provided token with the sender and contract as parameters.
     * @dev Invokes `tryPermit` with sender as owner and contract as spender.
     * @param token The IERC20 token to execute the permit function on.
     * @param permit The permit data to be used in the function call.
     * @return success Returns true if the permit function was successfully executed, false otherwise.
     */
    function tryPermit(IERC20 token, bytes calldata permit) internal returns(bool success) {
        return tryPermit(token, msg.sender, address(this), permit);
    }

    /**
     * @notice The function attempts to call the permit function on a given ERC20 token.
     * @dev The function is designed to support a variety of permit functions, namely: IERC20Permit, IDaiLikePermit, and IPermit2.
     * It accommodates both Compact and Full formats of these permit types.
     * Please note, it is expected that the `expiration` parameter for the compact Permit2 and the `deadline` parameter 
     * for the compact Permit are to be incremented by one before invoking this function. This approach is motivated by
     * gas efficiency considerations; as the unlimited expiration period is likely to be the most common scenario, and 
     * zeros are cheaper to pass in terms of gas cost. Thus, callers should increment the expiration or deadline by one
     * before invocation for optimized performance.
     * @param token The address of the ERC20 token on which to call the permit function.
     * @param owner The owner of the tokens. This address should have signed the off-chain permit.
     * @param spender The address which will be approved for transfer of tokens.
     * @param permit The off-chain permit data, containing different fields depending on the type of permit function.
     * @return success A boolean indicating whether the permit call was successful.
     */
    function tryPermit(IERC20 token, address owner, address spender, bytes calldata permit) internal returns(bool success) {
        // load function selectors for different permit standards
        bytes4 permitSelector = IERC20Permit.permit.selector;
        bytes4 daiPermitSelector = IDaiLikePermit.permit.selector;
        bytes4 permit2Selector = IPermit2.permit.selector;
        assembly ("memory-safe") { // solhint-disable-line no-inline-assembly
            let ptr := mload(0x40)

            // Switch case for different permit lengths, indicating different permit standards
            switch permit.length
            // Compact IERC20Permit
            case 100 {
                mstore(ptr, permitSelector)     // store selector
                mstore(add(ptr, 0x04), owner)   // store owner
                mstore(add(ptr, 0x24), spender) // store spender

                // Compact IERC20Permit.permit(uint256 value, uint32 deadline, uint256 r, uint256 vs)
                {  // stack too deep
                    let deadline := shr(224, calldataload(add(permit.offset, 0x20))) // loads permit.offset 0x20..0x23
                    let vs := calldataload(add(permit.offset, 0x44))                 // loads permit.offset 0x44..0x63

                    calldatacopy(add(ptr, 0x44), permit.offset, 0x20)            // store value     = copy permit.offset 0x00..0x19
                    mstore(add(ptr, 0x64), sub(deadline, 1))                     // store deadline  = deadline - 1
                    mstore(add(ptr, 0x84), add(27, shr(255, vs)))                // store v         = most significant bit of vs + 27 (27 or 28)
                    calldatacopy(add(ptr, 0xa4), add(permit.offset, 0x24), 0x20) // store r         = copy permit.offset 0x24..0x43
                    mstore(add(ptr, 0xc4), shr(1, shl(1, vs)))                   // store s         = vs without most significant bit
                }
                // IERC20Permit.permit(address owner, address spender, uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s)
                success := call(gas(), token, 0, ptr, 0xe4, 0, 0)
            }
            // Compact IDaiLikePermit
            case 72 {
                mstore(ptr, daiPermitSelector)  // store selector
                mstore(add(ptr, 0x04), owner)   // store owner
                mstore(add(ptr, 0x24), spender) // store spender

                // Compact IDaiLikePermit.permit(uint32 nonce, uint32 expiry, uint256 r, uint256 vs)
                {  // stack too deep
                    let expiry := shr(224, calldataload(add(permit.offset, 0x04))) // loads permit.offset 0x04..0x07
                    let vs := calldataload(add(permit.offset, 0x28))               // loads permit.offset 0x28..0x47

                    mstore(add(ptr, 0x44), shr(224, calldataload(permit.offset))) // store nonce   = copy permit.offset 0x00..0x03
                    mstore(add(ptr, 0x64), sub(expiry, 1))                        // store expiry  = expiry - 1
                    mstore(add(ptr, 0x84), true)                                  // store allowed = true
                    mstore(add(ptr, 0xa4), add(27, shr(255, vs)))                 // store v       = most significant bit of vs + 27 (27 or 28)
                    calldatacopy(add(ptr, 0xc4), add(permit.offset, 0x08), 0x20)  // store r       = copy permit.offset 0x08..0x27
                    mstore(add(ptr, 0xe4), shr(1, shl(1, vs)))                    // store s       = vs without most significant bit
                }
                // IDaiLikePermit.permit(address holder, address spender, uint256 nonce, uint256 expiry, bool allowed, uint8 v, bytes32 r, bytes32 s)
                success := call(gas(), token, 0, ptr, 0x104, 0, 0)
            }
            // IERC20Permit
            case 224 {
                mstore(ptr, permitSelector)
                calldatacopy(add(ptr, 0x04), permit.offset, permit.length) // copy permit calldata
                // IERC20Permit.permit(address owner, address spender, uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s)
                success := call(gas(), token, 0, ptr, 0xe4, 0, 0)
            }
            // IDaiLikePermit
            case 256 {
                mstore(ptr, daiPermitSelector)
                calldatacopy(add(ptr, 0x04), permit.offset, permit.length) // copy permit calldata
                // IDaiLikePermit.permit(address holder, address spender, uint256 nonce, uint256 expiry, bool allowed, uint8 v, bytes32 r, bytes32 s)
                success := call(gas(), token, 0, ptr, 0x104, 0, 0)
            }
            // Compact IPermit2
            case 96 {
                // Compact IPermit2.permit(uint160 amount, uint32 expiration, uint32 nonce, uint32 sigDeadline, uint256 r, uint256 vs)
                mstore(ptr, permit2Selector)  // store selector
                mstore(add(ptr, 0x04), owner) // store owner
                mstore(add(ptr, 0x24), token) // store token

                calldatacopy(add(ptr, 0x50), permit.offset, 0x14)             // store amount = copy permit.offset 0x00..0x13
                // and(0xffffffffffff, ...) - conversion to uint48 
                mstore(add(ptr, 0x64), and(0xffffffffffff, sub(shr(224, calldataload(add(permit.offset, 0x14))), 1))) // store expiration = ((permit.offset 0x14..0x17 - 1) & 0xffffffffffff)
                mstore(add(ptr, 0x84), shr(224, calldataload(add(permit.offset, 0x18)))) // store nonce = copy permit.offset 0x18..0x1b
                mstore(add(ptr, 0xa4), spender)                               // store spender
                // and(0xffffffffffff, ...) - conversion to uint48
                mstore(add(ptr, 0xc4), and(0xffffffffffff, sub(shr(224, calldataload(add(permit.offset, 0x1c))), 1))) // store sigDeadline = ((permit.offset 0x1c..0x1f - 1) & 0xffffffffffff)
                mstore(add(ptr, 0xe4), 0x100)                                 // store offset = 256
                mstore(add(ptr, 0x104), 0x40)                                 // store length = 64
                calldatacopy(add(ptr, 0x124), add(permit.offset, 0x20), 0x20) // store r      = copy permit.offset 0x20..0x3f
                calldatacopy(add(ptr, 0x144), add(permit.offset, 0x40), 0x20) // store vs     = copy permit.offset 0x40..0x5f
                // IPermit2.permit(address owner, PermitSingle calldata permitSingle, bytes calldata signature)
                success := call(gas(), _PERMIT2, 0, ptr, 0x164, 0, 0)
            }
            // IPermit2
            case 352 {
                mstore(ptr, permit2Selector)
                calldatacopy(add(ptr, 0x04), permit.offset, permit.length) // copy permit calldata
                // IPermit2.permit(address owner, PermitSingle calldata permitSingle, bytes calldata signature)
                success := call(gas(), _PERMIT2, 0, ptr, 0x164, 0, 0)
            }
            // Unknown
            default {
                mstore(ptr, _PERMIT_LENGTH_ERROR)
                revert(ptr, 4)
            }
        }
    }

    /**
     * @dev Executes a low level call to a token contract, making it resistant to reversion and erroneous boolean returns.
     * @param token The IERC20 token contract on which the call will be made.
     * @param selector The function signature that is to be called on the token contract.
     * @param to The address to which the token amount will be transferred.
     * @param amount The token amount to be transferred.
     * @return success A boolean indicating if the call was successful. Returns 'true' on success and 'false' on failure. 
     * In case of success but no returned data, validates that the contract code exists.
     * In case of returned data, ensures that it's a boolean `true`.
     */
    function _makeCall(
        IERC20 token,
        bytes4 selector,
        address to,
        uint256 amount
    ) private returns (bool success) {
        assembly ("memory-safe") { // solhint-disable-line no-inline-assembly
            let data := mload(0x40)

            mstore(data, selector)
            mstore(add(data, 0x04), to)
            mstore(add(data, 0x24), amount)
            success := call(gas(), token, 0, data, 0x44, 0x0, 0x20)
            if success {
                switch returndatasize()
                case 0 {
                    success := gt(extcodesize(token), 0)
                }
                default {
                    success := and(gt(returndatasize(), 31), eq(mload(0), 1))
                }
            }
        }
    }

    /**
     * @notice Safely deposits a specified amount of Ether into the IWETH contract. Consumes less gas then regular `IWETH.deposit`.
     * @param weth The IWETH token contract.
     * @param amount The amount of Ether to deposit into the IWETH contract.
     */
    function safeDeposit(IWETH weth, uint256 amount) internal {
        if (amount > 0) {
            bytes4 selector = IWETH.deposit.selector;
            assembly ("memory-safe") { // solhint-disable-line no-inline-assembly
                mstore(0, selector)
                if iszero(call(gas(), weth, amount, 0, 4, 0, 0)) {
                    returndatacopy(0, 0, returndatasize())
                    revert(0, returndatasize())
                }
            }
        }
    }

    /**
     * @notice Safely withdraws a specified amount of wrapped Ether from the IWETH contract. Consumes less gas then regular `IWETH.withdraw`.
     * @dev Uses inline assembly to interact with the IWETH contract.
     * @param weth The IWETH token contract.
     * @param amount The amount of wrapped Ether to withdraw from the IWETH contract.
     */
    function safeWithdraw(IWETH weth, uint256 amount) internal {
        bytes4 selector = IWETH.withdraw.selector;
        assembly ("memory-safe") {  // solhint-disable-line no-inline-assembly
            mstore(0, selector)
            mstore(4, amount)
            if iszero(call(gas(), weth, 0, 0, 0x24, 0, 0)) {
                let ptr := mload(0x40)
                returndatacopy(ptr, 0, returndatasize())
                revert(ptr, returndatasize())
            }
        }
    }

    /**
     * @notice Safely withdraws a specified amount of wrapped Ether from the IWETH contract to a specified recipient.
     * Consumes less gas then regular `IWETH.withdraw`.
     * @param weth The IWETH token contract.
     * @param amount The amount of wrapped Ether to withdraw from the IWETH contract.
     * @param to The recipient of the withdrawn Ether.
     */
    function safeWithdrawTo(IWETH weth, uint256 amount, address to) internal {
        safeWithdraw(weth, amount);
        if (to != address(this)) {
            assembly ("memory-safe") {  // solhint-disable-line no-inline-assembly
                if iszero(call(_RAW_CALL_GAS_LIMIT, to, amount, 0, 0, 0, 0)) {
                    let ptr := mload(0x40)
                    returndatacopy(ptr, 0, returndatasize())
                    revert(ptr, returndatasize())
                }
            }
        }
    }
}

// ============================================================
// FILE: lib/@gearbox-protocol/core-v3/contracts/interfaces/base/IACL.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2024.
pragma solidity ^0.8.17;

interface IACL {
    function isConfigurator(address account) external view returns (bool);
    function hasRole(bytes32 role, address account) external view returns (bool);
}

// ============================================================
// FILE: lib/@gearbox-protocol/core-v3/contracts/interfaces/base/IACLTrait.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2024.
pragma solidity ^0.8.17;

interface IACLTrait {
    function acl() external view returns (address);
}

// ============================================================
// FILE: lib/@gearbox-protocol/core-v3/contracts/interfaces/base/IAddressProvider.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2024.
pragma solidity ^0.8.17;

interface IAddressProvider {
    function getAddressOrRevert(bytes32 key, uint256 version) external view returns (address);
}

// ============================================================
// FILE: lib/@gearbox-protocol/core-v3/contracts/interfaces/base/IContractsRegister.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2024.
pragma solidity ^0.8.17;

interface IContractsRegister {
    function isPool(address) external view returns (bool);
    function getPools() external view returns (address[] memory);
    function isCreditManager(address) external view returns (bool);
    function getCreditManagers() external view returns (address[] memory);
}

// ============================================================
// FILE: lib/@gearbox-protocol/core-v3/contracts/interfaces/base/IContractsRegisterTrait.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2024.
pragma solidity ^0.8.17;

interface IContractsRegisterTrait {
    function contractsRegister() external view returns (address);
}

// ============================================================
// FILE: lib/@gearbox-protocol/core-v3/contracts/interfaces/base/ILossPolicy.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2024.
pragma solidity ^0.8.17;

import {IVersion} from "./IVersion.sol";
import {IStateSerializer} from "./IStateSerializer.sol";

/// @title Loss policy interface
/// @notice Generic interface for a loss policy that dictates conditions under which a bad debt liquidation can proceed.
/// @dev Loss policies must have type `LOSS_POLICY::{POSTFIX}`
interface ILossPolicy is IVersion, IStateSerializer {
    /// @notice Parameters passed to the loss policy
    /// @param totalDebtUSD Account's total debt in USD
    /// @param twvUSD Account's total weighted value in USD
    /// @param extraData Optional field that can be used to pass some off-chain data specific to implementation
    struct Params {
        uint256 totalDebtUSD;
        uint256 twvUSD;
        bytes extraData;
    }

    /// @notice Access mode for loss liquidations
    enum AccessMode {
        Permissionless,
        Permissioned,
        Forbidden
    }

    /// @notice Emitted when the loss policy access mode is set
    event SetAccessMode(AccessMode mode);

    /// @notice Emitted when the loss policy checks are enabled or disabled
    event SetChecksEnabled(bool enabled);

    /// @notice Whether `creditAccount` can be liquidated with loss by `caller`
    function isLiquidatableWithLoss(address creditAccount, address caller, Params calldata params)
        external
        returns (bool);

    /// @notice Returns current access mode
    function accessMode() external view returns (AccessMode);

    /// @notice Returns whether policy checks are enabled
    function checksEnabled() external view returns (bool);

    /// @notice Sets access mode for loss liquidations
    function setAccessMode(AccessMode mode) external;

    /// @notice Enables or disables policy checks
    function setChecksEnabled(bool enabled) external;
}

// ============================================================
// FILE: lib/@gearbox-protocol/core-v3/contracts/interfaces/base/IStateSerializer.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2024.
pragma solidity ^0.8.17;

/// @title State serializer interface
/// @notice Generic interface for a contract that can serialize its state into a bytes array
interface IStateSerializer {
    /// @notice Serializes the state of the contract into a bytes array `serializedData`
    function serialize() external view returns (bytes memory serializedData);
}

// ============================================================
// FILE: lib/@gearbox-protocol/core-v3/contracts/interfaces/base/IVersion.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2024.
pragma solidity ^0.8.17;

/// @title Version interface
/// @notice Defines contract version and type
interface IVersion {
    /// @notice Contract version
    function version() external view returns (uint256);

    /// @notice Contract type
    function contractType() external view returns (bytes32);
}

// ============================================================
// FILE: lib/@gearbox-protocol/core-v3/contracts/interfaces/ICreditManagerV3.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2024.
pragma solidity ^0.8.17;

import {IVersion} from "./base/IVersion.sol";

/// @notice Debt management type
///         - `INCREASE_DEBT` borrows additional funds from the pool, updates account's debt and cumulative interest index
///         - `DECREASE_DEBT` repays debt components (quota interest and fees -> base interest and fees -> debt principal)
///           and updates all corresponding state variables (base interest index, quota interest and fees, debt).
///           When repaying all the debt, ensures that account has no enabled quotas.
enum ManageDebtAction {
    INCREASE_DEBT,
    DECREASE_DEBT
}

/// @notice Collateral/debt calculation mode
///         - `GENERIC_PARAMS` returns generic data like account debt and cumulative indexes
///         - `DEBT_ONLY` is same as `GENERIC_PARAMS` but includes more detailed debt info, like accrued base/quota
///           interest and fees
///         - `FULL_COLLATERAL_CHECK_LAZY` checks whether account is sufficiently collateralized in a lazy fashion,
///           i.e. it stops iterating over collateral tokens once TWV reaches the desired target.
///           Since it may return underestimated TWV, it's only available for internal use.
///         - `DEBT_COLLATERAL` is same as `DEBT_ONLY` but also returns total value and total LT-weighted value of
///           account's tokens, this mode is used during account liquidation
///         - `DEBT_COLLATERAL_SAFE_PRICES` is same as `DEBT_COLLATERAL` but uses safe prices from price oracle
enum CollateralCalcTask {
    GENERIC_PARAMS,
    DEBT_ONLY,
    FULL_COLLATERAL_CHECK_LAZY,
    DEBT_COLLATERAL,
    DEBT_COLLATERAL_SAFE_PRICES
}

struct CreditAccountInfo {
    uint256 debt;
    uint256 cumulativeIndexLastUpdate;
    uint128 cumulativeQuotaInterest;
    uint128 quotaFees;
    uint256 enabledTokensMask;
    uint16 flags;
    uint64 lastDebtUpdate;
    address borrower;
}

struct CollateralDebtData {
    uint256 debt;
    uint256 cumulativeIndexNow;
    uint256 cumulativeIndexLastUpdate;
    uint128 cumulativeQuotaInterest;
    uint256 accruedInterest;
    uint256 accruedFees;
    uint256 totalDebtUSD;
    uint256 totalValue;
    uint256 totalValueUSD;
    uint256 twvUSD;
    uint256 enabledTokensMask;
    uint256 quotedTokensMask;
    address[] quotedTokens;
    address _poolQuotaKeeper;
}

struct CollateralTokenData {
    address token;
    uint16 ltInitial;
    uint16 ltFinal;
    uint40 timestampRampStart;
    uint24 rampDuration;
}

interface ICreditManagerV3Events {
    /// @notice Emitted when new credit configurator is set
    event SetCreditConfigurator(address indexed newConfigurator);
}

/// @title Credit manager V3 interface
interface ICreditManagerV3 is IVersion, ICreditManagerV3Events {
    function pool() external view returns (address);

    function underlying() external view returns (address);

    function creditFacade() external view returns (address);

    function creditConfigurator() external view returns (address);

    function accountFactory() external view returns (address);

    function name() external view returns (string memory);

    // ------------------ //
    // ACCOUNT MANAGEMENT //
    // ------------------ //

    function openCreditAccount(address onBehalfOf) external returns (address);

    function closeCreditAccount(address creditAccount) external;

    function liquidateCreditAccount(
        address creditAccount,
        CollateralDebtData calldata collateralDebtData,
        address to,
        bool isExpired
    ) external returns (uint256 remainingFunds, uint256 loss);

    function manageDebt(address creditAccount, uint256 amount, uint256 enabledTokensMask, ManageDebtAction action)
        external
        returns (uint256 newDebt, uint256, uint256);

    function addCollateral(address payer, address creditAccount, address token, uint256 amount)
        external
        returns (uint256);

    function withdrawCollateral(address creditAccount, address token, uint256 amount, address to)
        external
        returns (uint256);

    function externalCall(address creditAccount, address target, bytes calldata callData)
        external
        returns (bytes memory result);

    function approveToken(address creditAccount, address token, address spender, uint256 amount) external;

    // -------- //
    // ADAPTERS //
    // -------- //

    function adapterToContract(address adapter) external view returns (address targetContract);

    function contractToAdapter(address targetContract) external view returns (address adapter);

    function execute(bytes calldata data) external returns (bytes memory result);

    function approveCreditAccount(address token, uint256 amount) external;

    function setActiveCreditAccount(address creditAccount) external;

    function getActiveCreditAccountOrRevert() external view returns (address creditAccount);

    // ----------------- //
    // COLLATERAL CHECKS //
    // ----------------- //

    function priceOracle() external view returns (address);

    function fullCollateralCheck(
        address creditAccount,
        uint256 enabledTokensMask,
        uint256[] calldata collateralHints,
        uint16 minHealthFactor,
        bool useSafePrices
    ) external returns (uint256);

    function isLiquidatable(address creditAccount, uint16 minHealthFactor) external view returns (bool);

    function calcDebtAndCollateral(address creditAccount, CollateralCalcTask task)
        external
        view
        returns (CollateralDebtData memory cdd);

    // ------ //
    // QUOTAS //
    // ------ //

    function poolQuotaKeeper() external view returns (address);

    function quotedTokensMask() external view returns (uint256);

    function updateQuota(address creditAccount, address token, int96 quotaChange, uint96 minQuota, uint96 maxQuota)
        external
        returns (uint256 tokensToEnable, uint256 tokensToDisable);

    // --------------------- //
    // CREDIT MANAGER PARAMS //
    // --------------------- //

    function maxEnabledTokens() external view returns (uint8);

    function fees()
        external
        view
        returns (
            uint16 feeInterest,
            uint16 feeLiquidation,
            uint16 liquidationDiscount,
            uint16 feeLiquidationExpired,
            uint16 liquidationDiscountExpired
        );

    function collateralTokensCount() external view returns (uint8);

    function getTokenMaskOrRevert(address token) external view returns (uint256 tokenMask);

    function getTokenByMask(uint256 tokenMask) external view returns (address token);

    function liquidationThresholds(address token) external view returns (uint16 lt);

    function ltParams(address token)
        external
        view
        returns (uint16 ltInitial, uint16 ltFinal, uint40 timestampRampStart, uint24 rampDuration);

    function collateralTokenByMask(uint256 tokenMask)
        external
        view
        returns (address token, uint16 liquidationThreshold);

    // ------------ //
    // ACCOUNT INFO //
    // ------------ //

    function creditAccountInfo(address creditAccount)
        external
        view
        returns (
            uint256 debt,
            uint256 cumulativeIndexLastUpdate,
            uint128 cumulativeQuotaInterest,
            uint128 quotaFees,
            uint256 enabledTokensMask,
            uint16 flags,
            uint64 lastDebtUpdate,
            address borrower
        );

    function getBorrowerOrRevert(address creditAccount) external view returns (address borrower);

    function flagsOf(address creditAccount) external view returns (uint16);

    function setFlagFor(address creditAccount, uint16 flag, bool value) external;

    function enabledTokensMaskOf(address creditAccount) external view returns (uint256);

    function creditAccounts() external view returns (address[] memory);

    function creditAccounts(uint256 offset, uint256 limit) external view returns (address[] memory);

    function creditAccountsLen() external view returns (uint256);

    // ------------- //
    // CONFIGURATION //
    // ------------- //

    function addToken(address token) external;

    function setCollateralTokenData(
        address token,
        uint16 ltInitial,
        uint16 ltFinal,
        uint40 timestampRampStart,
        uint24 rampDuration
    ) external;

    function setFees(
        uint16 feeInterest,
        uint16 feeLiquidation,
        uint16 liquidationDiscount,
        uint16 feeLiquidationExpired,
        uint16 liquidationDiscountExpired
    ) external;

    function setContractAllowance(address adapter, address targetContract) external;

    function setCreditFacade(address creditFacade) external;

    function setPriceOracle(address priceOracle) external;

    function setCreditConfigurator(address creditConfigurator) external;
}

// ============================================================
// FILE: lib/@gearbox-protocol/core-v3/contracts/interfaces/IExceptions.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2024.
pragma solidity ^0.8.17;

// ------- //
// GENERAL //
// ------- //

/// @notice Thrown on attempting to set an important address to zero address
error ZeroAddressException();

/// @notice Thrown when attempting to pass a zero amount to a funding-related operation
error AmountCantBeZeroException();

/// @notice Thrown on incorrect input parameter
error IncorrectParameterException();

/// @notice Thrown when balance is insufficient to perform an operation
error InsufficientBalanceException();

/// @notice Thrown if parameter is out of range
error ValueOutOfRangeException();

/// @notice Thrown when trying to send ETH to a contract that is not allowed to receive ETH directly
error ReceiveIsNotAllowedException();

/// @notice Thrown on attempting to set an EOA as an important contract in the system
error AddressIsNotContractException(address);

/// @notice Thrown on attempting to receive a token that is not a collateral token or was forbidden
error TokenNotAllowedException();

/// @notice Thrown on attempting to add a token that is already in a collateral list
error TokenAlreadyAddedException();

/// @notice Thrown when attempting to use quota-related logic for a token that is not quoted in quota keeper
error TokenIsNotQuotedException();

/// @notice Thrown on attempting to interact with an address that is not a valid target contract
error TargetContractNotAllowedException();

/// @notice Thrown if function is not implemented
error NotImplementedException();

// ------------------ //
// CONTRACTS REGISTER //
// ------------------ //

/// @notice Thrown when an address is expected to be a registered credit manager, but is not
error RegisteredCreditManagerOnlyException();

/// @notice Thrown when an address is expected to be a registered pool, but is not
error RegisteredPoolOnlyException();

// ---------------- //
// ADDRESS PROVIDER //
// ---------------- //

/// @notice Reverts if address key isn't found in address provider
error AddressNotFoundException();

// ----------------- //
// POOL, PQK, GAUGES //
// ----------------- //

/// @notice Thrown by pool-adjacent contracts when a credit manager being connected has a wrong pool address
error IncompatibleCreditManagerException();

/// @notice Thrown when attempting to set an incompatible successor staking contract
error IncompatibleSuccessorException();

/// @notice Thrown when attempting to vote in a non-approved contract
error VotingContractNotAllowedException();

/// @notice Thrown when attempting to unvote more votes than there are
error InsufficientVotesException();

/// @notice Thrown when attempting to borrow more than the second point on a two-point curve
error BorrowingMoreThanU2ForbiddenException();

/// @notice Thrown when a credit manager attempts to borrow more than its limit in the current block, or in general
error CreditManagerCantBorrowException();

/// @notice Thrown when attempting to connect a quota keeper to an incompatible pool
error IncompatiblePoolQuotaKeeperException();

/// @notice Thrown when attempting to connect a gauge to an incompatible pool quota keeper
error IncompatibleGaugeException();

/// @notice Thrown when the quota is outside of min/max bounds
error QuotaIsOutOfBoundsException();

// -------------- //
// CREDIT MANAGER //
// -------------- //

/// @notice Thrown on failing a full collateral check after multicall
error NotEnoughCollateralException();

/// @notice Thrown if an attempt to approve a collateral token to adapter's target contract fails
error AllowanceFailedException();

/// @notice Thrown on attempting to perform an action for a credit account that does not exist
error CreditAccountDoesNotExistException();

/// @notice Thrown on configurator attempting to add more than 255 collateral tokens
error TooManyTokensException();

/// @notice Thrown if more than the maximum number of tokens were enabled on a credit account
error TooManyEnabledTokensException();

/// @notice Thrown when attempting to execute a protocol interaction without active credit account set
error ActiveCreditAccountNotSetException();

/// @notice Thrown when trying to update credit account's debt more than once in the same block
error DebtUpdatedTwiceInOneBlockException();

/// @notice Thrown when trying to repay all debt while having active quotas
error DebtToZeroWithActiveQuotasException();

/// @notice Thrown when a zero-debt account attempts to update quota
error UpdateQuotaOnZeroDebtAccountException();

/// @notice Thrown when attempting to close an account with non-zero debt
error CloseAccountWithNonZeroDebtException();

/// @notice Thrown when value of funds remaining on the account after liquidation is insufficient
error InsufficientRemainingFundsException();

/// @notice Thrown when Credit Facade tries to write over a non-zero active Credit Account
error ActiveCreditAccountOverridenException();

// ------------------- //
// CREDIT CONFIGURATOR //
// ------------------- //

/// @notice Thrown on attempting to use a non-ERC20 contract or an EOA as a token
error IncorrectTokenContractException();

/// @notice Thrown if the newly set LT if zero or greater than the underlying's LT
error IncorrectLiquidationThresholdException();

/// @notice Thrown if borrowing limits are incorrect: minLimit > maxLimit or maxLimit > blockLimit
error IncorrectLimitsException();

/// @notice Thrown if the new expiration date is less than the current expiration date or current timestamp
error IncorrectExpirationDateException();

/// @notice Thrown if a contract returns a wrong credit manager or reverts when trying to retrieve it
error IncompatibleContractException();

/// @notice Thrown if attempting to forbid an adapter that is not registered in the credit manager
error AdapterIsNotRegisteredException();

/// @notice Thrown if new credit configurator's set of allowed adapters differs from the current one
error IncorrectAdaptersSetException();

/// @notice Thrown if attempting to schedule a token's LT ramping that is too short in duration
error RampDurationTooShortException();

/// @notice Thrown if attempting to set liquidation fees such that the sum of premium and fee changes
error InconsistentLiquidationFeesException();

/// @notice Thrown if attempting to set expired liquidation fees such that the sum of premium and fee changes
error InconsistentExpiredLiquidationFeesException();

// ------------- //
// CREDIT FACADE //
// ------------- //

/// @notice Thrown when attempting to perform an action that is forbidden in whitelisted mode
error ForbiddenInWhitelistedModeException();

/// @notice Thrown if credit facade is not expirable, and attempted aciton requires expirability
error NotAllowedWhenNotExpirableException();

/// @notice Thrown if a selector that doesn't match any allowed function is passed to the credit facade in a multicall
error UnknownMethodException(bytes4 selector);

/// @notice Thrown if a liquidator tries to liquidate an account with a health factor above 1
error CreditAccountNotLiquidatableException();

/// @notice Thrown if a liquidator tries to liquidate an account with loss but violates the loss policy
error CreditAccountNotLiquidatableWithLossException();

/// @notice Thrown if too much new debt was taken within a single block
error BorrowedBlockLimitException();

/// @notice Thrown if the new debt principal for a credit account falls outside of borrowing limits
error BorrowAmountOutOfLimitsException();

/// @notice Thrown if a user attempts to open an account via an expired credit facade
error NotAllowedAfterExpirationException();

/// @notice Thrown if expected balances are attempted to be set twice without performing a slippage check
error ExpectedBalancesAlreadySetException();

/// @notice Thrown if attempting to perform a slippage check when excepted balances are not set
error ExpectedBalancesNotSetException();

/// @notice Thrown if balance of at least one token is less than expected during a slippage check
error BalanceLessThanExpectedException(address token);

/// @notice Thrown when trying to perform an action that is forbidden when credit account has enabled forbidden tokens
error ForbiddenTokensException(uint256 forbiddenTokensMask);

/// @notice Thrown when forbidden token quota is increased during the multicall
error ForbiddenTokenQuotaIncreasedException(address token);

/// @notice Thrown when enabled forbidden token balance is increased during the multicall
error ForbiddenTokenBalanceIncreasedException(address token);

/// @notice Thrown when the remaining token balance is increased during the liquidation
error RemainingTokenBalanceIncreasedException(address token);

/// @notice Thrown if `botMulticall` is called by an address that is not approved by account owner or is forbidden
error NotApprovedBotException(address bot);

/// @notice Thrown when attempting to perform a multicall action with no permission for it
error NoPermissionException(uint256 permission);

/// @notice Thrown when attempting to give a bot unexpected permissions
error UnexpectedPermissionsException(uint256 permissions);

/// @notice Thrown when a custom HF parameter lower than 10000 is passed into the full collateral check
error CustomHealthFactorTooLowException();

/// @notice Thrown when submitted collateral hint is not a valid token mask
error InvalidCollateralHintException(uint256 mask);

/// @notice Thrown when trying to seize underlying token during partial liquidation
error UnderlyingIsNotLiquidatableException();

/// @notice Thrown when amount of collateral seized during partial liquidation is less than required
error SeizedLessThanRequiredException(uint256 seizedAmount);

// ------ //
// ACCESS //
// ------ //

/// @notice Thrown on attempting to call an access restricted function not as credit account owner
error CallerNotCreditAccountOwnerException();

/// @notice Thrown on attempting to call an access restricted function not as configurator
error CallerNotConfiguratorException();

/// @notice Thrown on attempting to call an access-restructed function not as account factory
error CallerNotAccountFactoryException();

/// @notice Thrown on attempting to call an access restricted function not as credit manager
error CallerNotCreditManagerException();

/// @notice Thrown on attempting to call an access restricted function not as credit facade
error CallerNotCreditFacadeException();

/// @notice Thrown on attempting to pause a contract without pausable admin rights
error CallerNotPausableAdminException();

/// @notice Thrown on attempting to unpause a contract without unpausable admin rights
error CallerNotUnpausableAdminException();

/// @notice Thrown on attempting to call an access restricted function not as gauge
error CallerNotGaugeException();

/// @notice Thrown on attempting to call an access restricted function not as quota keeper
error CallerNotPoolQuotaKeeperException();

/// @notice Thrown on attempting to call an access restricted function not as voter
error CallerNotVoterException();

/// @notice Thrown on attempting to call an access restricted function not as allowed adapter
error CallerNotAdapterException();

/// @notice Thrown on attempting to call an access restricted function not as migrator
error CallerNotMigratorException();

/// @notice Thrown when an address that is not the designated executor attempts to execute a transaction
error CallerNotExecutorException();

/// @notice Thrown on attempting to call an access restricted function not as veto admin
error CallerNotVetoAdminException();

// -------- //
// BOT LIST //
// -------- //

/// @notice Thrown when attempting to set non-zero permissions for a forbidden bot
error InvalidBotException();

/// @notice Thrown when attempting to set permissions for a bot that don't meet its requirements
error IncorrectBotPermissionsException();

// --------------- //
// ACCOUNT FACTORY //
// --------------- //

/// @notice Thrown when trying to deploy second master credit account for a credit manager
error MasterCreditAccountAlreadyDeployedException();

/// @notice Thrown when trying to rescue funds from a credit account that is currently in use
error CreditAccountIsInUseException();

// ------------ //
// PRICE ORACLE //
// ------------ //

/// @notice Thrown on attempting to set a token price feed to an address that is not a correct price feed
error IncorrectPriceFeedException();

/// @notice Thrown on attempting to interact with a price feed for a token not added to the price oracle
error PriceFeedDoesNotExistException();

/// @notice Thrown when trying to apply an on-demand price update to a non-updatable price feed
error PriceFeedIsNotUpdatableException();

/// @notice Thrown when price feed returns incorrect price for a token
error IncorrectPriceException();

/// @notice Thrown when token's price feed becomes stale
error StalePriceException();

// ============================================================
// FILE: lib/@gearbox-protocol/core-v3/contracts/interfaces/IPoolQuotaKeeperV3.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2024.
pragma solidity ^0.8.17;

import {IACLTrait} from "./base/IACLTrait.sol";
import {IContractsRegisterTrait} from "./base/IContractsRegisterTrait.sol";
import {IVersion} from "./base/IVersion.sol";

struct TokenQuotaParams {
    uint16 rate;
    uint192 cumulativeIndexLU;
    uint16 quotaIncreaseFee;
    uint96 totalQuoted;
    uint96 limit;
}

struct AccountQuota {
    uint96 quota;
    uint192 cumulativeIndexLU;
}

interface IPoolQuotaKeeperV3Events {
    /// @notice Emitted when account's quota for a token is updated
    event UpdateQuota(address indexed creditAccount, address indexed token, int96 quotaChange);

    /// @notice Emitted when token's quota rate is updated
    event UpdateTokenQuotaRate(address indexed token, uint16 rate);

    /// @notice Emitted when the gauge is updated
    event SetGauge(address indexed newGauge);

    /// @notice Emitted when a new credit manager is allowed
    event AddCreditManager(address indexed creditManager);

    /// @notice Emitted when a new token is added as quoted
    event AddQuotaToken(address indexed token);

    /// @notice Emitted when a new total quota limit is set for a token
    event SetTokenLimit(address indexed token, uint96 limit);

    /// @notice Emitted when a new one-time quota increase fee is set for a token
    event SetQuotaIncreaseFee(address indexed token, uint16 fee);
}

/// @title Pool quota keeper V3 interface
interface IPoolQuotaKeeperV3 is IPoolQuotaKeeperV3Events, IVersion, IACLTrait, IContractsRegisterTrait {
    function pool() external view returns (address);

    function underlying() external view returns (address);

    // ----------------- //
    // QUOTAS MANAGEMENT //
    // ----------------- //

    function updateQuota(address creditAccount, address token, int96 requestedChange, uint96 minQuota, uint96 maxQuota)
        external
        returns (uint128 caQuotaInterestChange, uint128 fees, bool enableToken, bool disableToken);

    function removeQuotas(address creditAccount, address[] calldata tokens, bool setLimitsToZero) external;

    function accrueQuotaInterest(address creditAccount, address[] calldata tokens) external;

    function getQuotaRate(address) external view returns (uint16);

    function cumulativeIndex(address token) external view returns (uint192);

    function isQuotedToken(address token) external view returns (bool);

    function getQuota(address creditAccount, address token)
        external
        view
        returns (uint96 quota, uint192 cumulativeIndexLU);

    function getTokenQuotaParams(address token)
        external
        view
        returns (
            uint16 rate,
            uint192 cumulativeIndexLU,
            uint16 quotaIncreaseFee,
            uint96 totalQuoted,
            uint96 limit,
            bool isActive
        );

    function getQuotaAndOutstandingInterest(address creditAccount, address token)
        external
        view
        returns (uint96 quoted, uint128 outstandingInterest);

    function poolQuotaRevenue() external view returns (uint256);

    function lastQuotaRateUpdate() external view returns (uint40);

    // ------------- //
    // CONFIGURATION //
    // ------------- //

    function gauge() external view returns (address);

    function setGauge(address _gauge) external;

    function creditManagers() external view returns (address[] memory);

    function addCreditManager(address _creditManager) external;

    function quotedTokens() external view returns (address[] memory);

    function addQuotaToken(address token) external;

    function updateRates() external;

    function setTokenLimit(address token, uint96 limit) external;

    function setTokenQuotaIncreaseFee(address token, uint16 fee) external;
}

// ============================================================
// FILE: lib/@gearbox-protocol/core-v3/contracts/interfaces/IPoolV3.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2024.
pragma solidity ^0.8.17;
pragma abicoder v1;

import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {IERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Permit.sol";
import {IACLTrait} from "./base/IACLTrait.sol";
import {IContractsRegisterTrait} from "./base/IContractsRegisterTrait.sol";
import {IVersion} from "./base/IVersion.sol";

interface IPoolV3Events {
    /// @notice Emitted when depositing liquidity with referral code
    event Refer(address indexed onBehalfOf, uint256 indexed referralCode, uint256 amount);

    /// @notice Emitted when credit account borrows funds from the pool
    event Borrow(address indexed creditManager, address indexed creditAccount, uint256 amount);

    /// @notice Emitted when credit account's debt is repaid to the pool
    event Repay(address indexed creditManager, uint256 borrowedAmount, uint256 profit, uint256 loss);

    /// @notice Emitted when incurred loss can't be fully covered by burning treasury's shares
    event IncurUncoveredLoss(address indexed creditManager, uint256 loss);

    /// @notice Emitted when new interest rate model contract is set
    event SetInterestRateModel(address indexed newInterestRateModel);

    /// @notice Emitted when new pool quota keeper contract is set
    event SetPoolQuotaKeeper(address indexed newPoolQuotaKeeper);

    /// @notice Emitted when new total debt limit is set
    event SetTotalDebtLimit(uint256 limit);

    /// @notice Emitted when new credit manager is connected to the pool
    event AddCreditManager(address indexed creditManager);

    /// @notice Emitted when new debt limit is set for a credit manager
    event SetCreditManagerDebtLimit(address indexed creditManager, uint256 newLimit);

    /// @notice Emitted when new withdrawal fee is set
    event SetWithdrawFee(uint256 fee);
}

/// @title Pool V3 interface
interface IPoolV3 is IVersion, IACLTrait, IContractsRegisterTrait, IPoolV3Events, IERC4626, IERC20Permit {
    function underlyingToken() external view returns (address);

    function treasury() external view returns (address);

    function withdrawFee() external view returns (uint16);

    function creditManagers() external view returns (address[] memory);

    function availableLiquidity() external view returns (uint256);

    function expectedLiquidity() external view returns (uint256);

    function expectedLiquidityLU() external view returns (uint256);

    // ---------------- //
    // ERC-4626 LENDING //
    // ---------------- //

    function depositWithReferral(uint256 assets, address receiver, uint256 referralCode)
        external
        returns (uint256 shares);

    function mintWithReferral(uint256 shares, address receiver, uint256 referralCode)
        external
        returns (uint256 assets);

    // --------- //
    // BORROWING //
    // --------- //

    function totalBorrowed() external view returns (uint256);

    function totalDebtLimit() external view returns (uint256);

    function creditManagerBorrowed(address creditManager) external view returns (uint256);

    function creditManagerDebtLimit(address creditManager) external view returns (uint256);

    function creditManagerBorrowable(address creditManager) external view returns (uint256 borrowable);

    function lendCreditAccount(uint256 borrowedAmount, address creditAccount) external;

    function repayCreditAccount(uint256 repaidAmount, uint256 profit, uint256 loss) external;

    // ------------- //
    // INTEREST RATE //
    // ------------- //

    function interestRateModel() external view returns (address);

    function baseInterestRate() external view returns (uint256);

    function supplyRate() external view returns (uint256);

    function baseInterestIndex() external view returns (uint256);

    function baseInterestIndexLU() external view returns (uint256);

    function lastBaseInterestUpdate() external view returns (uint40);

    // ------ //
    // QUOTAS //
    // ------ //

    function poolQuotaKeeper() external view returns (address);

    function quotaRevenue() external view returns (uint256);

    function lastQuotaRevenueUpdate() external view returns (uint40);

    function updateQuotaRevenue(int256 quotaRevenueDelta) external;

    function setQuotaRevenue(uint256 newQuotaRevenue) external;

    // ------------- //
    // CONFIGURATION //
    // ------------- //

    function setInterestRateModel(address newInterestRateModel) external;

    function setPoolQuotaKeeper(address newPoolQuotaKeeper) external;

    function setTotalDebtLimit(uint256 newLimit) external;

    function setCreditManagerDebtLimit(address creditManager, uint256 newLimit) external;

    function setWithdrawFee(uint256 newWithdrawFee) external;

    function pause() external;

    function unpause() external;
}

// ============================================================
// FILE: lib/@gearbox-protocol/core-v3/contracts/traits/ACLTrait.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2024.
pragma solidity ^0.8.17;

import {Address} from "@openzeppelin/contracts/utils/Address.sol";

import {IACL} from "../interfaces/base/IACL.sol";
import {IACLTrait} from "../interfaces/base/IACLTrait.sol";
import {
    AddressIsNotContractException,
    CallerNotConfiguratorException,
    CallerNotPausableAdminException,
    CallerNotUnpausableAdminException,
    ZeroAddressException
} from "../interfaces/IExceptions.sol";

/// @title ACL trait
/// @notice Utility class for ACL (access-control list) consumers
abstract contract ACLTrait is IACLTrait {
    using Address for address;

    /// @notice ACL contract address
    address public immutable override acl;

    /// @dev Ensures that function caller has configurator role
    modifier configuratorOnly() {
        _ensureCallerIsConfigurator();
        _;
    }

    /// @dev Ensures that function caller has pausable admin role
    modifier pausableAdminsOnly() {
        _ensureCallerIsPausableAdmin();
        _;
    }

    /// @dev Ensures that function caller has unpausable admin role
    modifier unpausableAdminsOnly() {
        _ensureCallerIsUnpausableAdmin();
        _;
    }

    /// @notice Constructor
    /// @param _acl ACL contract address
    constructor(address _acl) {
        if (_acl == address(0)) revert ZeroAddressException();
        if (!_acl.isContract()) revert AddressIsNotContractException(_acl);
        acl = _acl;
    }

    /// @dev Reverts if the caller is not the configurator
    /// @dev Used to cut contract size on modifiers
    function _ensureCallerIsConfigurator() internal view {
        if (!_isConfigurator(msg.sender)) revert CallerNotConfiguratorException();
    }

    /// @dev Checks whether given account has configurator role
    function _isConfigurator(address account) internal view returns (bool) {
        return IACL(acl).isConfigurator(account);
    }

    /// @dev Reverts if the caller is not pausable admin
    /// @dev Used to cut contract size on modifiers
    function _ensureCallerIsPausableAdmin() internal view {
        if (!_hasRole("PAUSABLE_ADMIN", msg.sender)) revert CallerNotPausableAdminException();
    }

    /// @dev Reverts if the caller is not unpausable admin
    /// @dev Used to cut contract size on modifiers
    function _ensureCallerIsUnpausableAdmin() internal view {
        if (!_hasRole("UNPAUSABLE_ADMIN", msg.sender)) revert CallerNotUnpausableAdminException();
    }

    /// @dev Whether account `account` has role `role`
    /// @dev Used to cut contract size on external calls
    function _hasRole(bytes32 role, address account) internal view returns (bool) {
        return IACL(acl).hasRole(role, account);
    }
}

// ============================================================
// FILE: lib/@gearbox-protocol/permissionless/contracts/helpers/DefaultLossPolicy.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2024.
pragma solidity ^0.8.23;

import {ILossPolicy} from "@gearbox-protocol/core-v3/contracts/interfaces/base/ILossPolicy.sol";
import {ACLTrait} from "@gearbox-protocol/core-v3/contracts/traits/ACLTrait.sol";
import {AP_LOSS_POLICY_DEFAULT} from "../libraries/ContractLiterals.sol";

contract DefaultLossPolicy is ILossPolicy, ACLTrait {
    uint256 public constant override version = 3_10;
    bytes32 public constant override contractType = AP_LOSS_POLICY_DEFAULT;
    AccessMode public override accessMode = AccessMode.Permissioned;
    bool public override checksEnabled = false;

    constructor(address acl_) ACLTrait(acl_) {}

    function serialize() external view override returns (bytes memory) {
        return abi.encode(accessMode, checksEnabled);
    }

    function isLiquidatableWithLoss(address, address caller, Params calldata) external view override returns (bool) {
        AccessMode accessMode_ = accessMode;
        if (accessMode_ == AccessMode.Forbidden) return false;
        if (accessMode_ == AccessMode.Permissioned && !_hasRole("LOSS_LIQUIDATOR", caller)) return false;
        return !checksEnabled;
    }

    function setAccessMode(AccessMode mode) external override configuratorOnly {
        if (accessMode == mode) return;
        accessMode = mode;
        emit SetAccessMode(mode);
    }

    function setChecksEnabled(bool enabled) external override configuratorOnly {
        if (checksEnabled == enabled) return;
        checksEnabled = enabled;
        emit SetChecksEnabled(enabled);
    }
}

// ============================================================
// FILE: lib/@gearbox-protocol/permissionless/contracts/interfaces/base/IDeployerTrait.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2024.
pragma solidity ^0.8.23;

/// @title Deployer trait interface
interface IDeployerTrait {
    function addressProvider() external view returns (address);

    function bytecodeRepository() external view returns (address);
}

// ============================================================
// FILE: lib/@gearbox-protocol/permissionless/contracts/interfaces/base/IImmutableOwnableTrait.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2024.
pragma solidity ^0.8.23;

/// @title Immutable ownable trait interface
/// @notice Interface for contracts with immutable owner functionality
interface IImmutableOwnableTrait {
    error CallerIsNotOwnerException(address caller);

    /// @notice Returns the immutable owner address
    function owner() external view returns (address);
}

// ============================================================
// FILE: lib/@gearbox-protocol/permissionless/contracts/interfaces/factories/ICreditFactory.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2024.
pragma solidity ^0.8.23;

import {Call, DeployResult} from "../Types.sol";
import {IFactory} from "./IFactory.sol";

interface ICreditFactory is IFactory {
    function deployCreditSuite(address pool, bytes calldata encodedParams) external returns (DeployResult memory);

    function computeCreditManagerAddress(
        address marketConfigurator,
        address pool,
        address underlying,
        address priceOracle,
        bytes calldata encodedParams
    ) external view returns (address);

    // ------------ //
    // CREDIT HOOKS //
    // ------------ //

    function onUpdatePriceOracle(address creditManager, address newPriceOracle, address oldPriceOracle)
        external
        returns (Call[] memory calls);

    function onUpdateLossPolicy(address creditManager, address newLossPolicy, address oldLossPolicy)
        external
        returns (Call[] memory calls);
}

// ============================================================
// FILE: lib/@gearbox-protocol/permissionless/contracts/interfaces/factories/IFactory.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2024.
pragma solidity ^0.8.23;

import {IVersion} from "@gearbox-protocol/core-v3/contracts/interfaces/base/IVersion.sol";
import {IDeployerTrait} from "../base/IDeployerTrait.sol";
import {Call} from "../Types.sol";

interface IFactory is IVersion, IDeployerTrait {
    // ------ //
    // ERRORS //
    // ------ //

    error CallerIsNotMarketConfiguratorException(address caller);
    error ForbiddenConfigurationCallException(bytes4 selector);
    error ForbiddenEmergencyConfigurationCallException(bytes4 selector);
    error InvalidConstructorParamsException();

    // --------------- //
    // STATE VARIABLES //
    // --------------- //

    function marketConfiguratorFactory() external view returns (address);

    // ------------- //
    // CONFIGURATION //
    // ------------- //

    function configure(address target, bytes calldata callData) external returns (Call[] memory calls);

    function emergencyConfigure(address target, bytes calldata callData) external returns (Call[] memory calls);
}

// ============================================================
// FILE: lib/@gearbox-protocol/permissionless/contracts/interfaces/factories/IInterestRateModelFactory.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2024.
pragma solidity ^0.8.23;

import {DeployParams, DeployResult} from "../Types.sol";
import {IMarketFactory} from "./IMarketFactory.sol";

interface IInterestRateModelFactory is IMarketFactory {
    function deployInterestRateModel(address pool, DeployParams calldata params)
        external
        returns (DeployResult memory);
}

// ============================================================
// FILE: lib/@gearbox-protocol/permissionless/contracts/interfaces/factories/ILossPolicyFactory.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2024.
pragma solidity ^0.8.23;

import {DeployParams, DeployResult} from "../Types.sol";
import {IMarketFactory} from "./IMarketFactory.sol";

interface ILossPolicyFactory is IMarketFactory {
    function deployLossPolicy(address pool, DeployParams calldata params) external returns (DeployResult memory);
}

// ============================================================
// FILE: lib/@gearbox-protocol/permissionless/contracts/interfaces/factories/IMarketFactory.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2024.
pragma solidity ^0.8.23;

import {Call} from "../Types.sol";
import {IFactory} from "./IFactory.sol";

interface IMarketFactory is IFactory {
    // ------------ //
    // MARKET HOOKS //
    // ------------ //

    function onCreateMarket(
        address pool,
        address priceOracle,
        address interestRateModel,
        address rateKeeper,
        address lossPolicy,
        address underlyingPriceFeed
    ) external returns (Call[] memory calls);

    function onShutdownMarket(address pool) external returns (Call[] memory calls);

    function onCreateCreditSuite(address creditManager) external returns (Call[] memory calls);

    function onShutdownCreditSuite(address creditManager) external returns (Call[] memory calls);

    function onUpdatePriceOracle(address pool, address newPriceOracle, address oldPriceOracle)
        external
        returns (Call[] memory calls);

    function onUpdateInterestRateModel(address pool, address newInterestRateModel, address oldInterestRateModel)
        external
        returns (Call[] memory calls);

    function onUpdateRateKeeper(address pool, address newRateKeeper, address oldRateKeeper)
        external
        returns (Call[] memory calls);

    function onUpdateLossPolicy(address pool, address newLossPolicy, address oldLossPolicy)
        external
        returns (Call[] memory calls);

    function onAddToken(address pool, address token, address priceFeed) external returns (Call[] memory calls);
}

// ============================================================
// FILE: lib/@gearbox-protocol/permissionless/contracts/interfaces/factories/IPoolFactory.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2024.
pragma solidity ^0.8.23;

import {DeployResult} from "../Types.sol";
import {IMarketFactory} from "./IMarketFactory.sol";

interface IPoolFactory is IMarketFactory {
    function deployPool(address underlying, string calldata name, string calldata symbol)
        external
        returns (DeployResult memory);

    function computePoolAddress(
        address marketConfigurator,
        address underlying,
        string calldata name,
        string calldata symbol
    ) external view returns (address);
}

// ============================================================
// FILE: lib/@gearbox-protocol/permissionless/contracts/interfaces/factories/IPriceOracleFactory.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2024.
pragma solidity ^0.8.23;

import {DeployResult} from "../Types.sol";
import {IMarketFactory} from "./IMarketFactory.sol";

interface IPriceOracleFactory is IMarketFactory {
    function deployPriceOracle(address pool) external returns (DeployResult memory);

    function computePriceOracleAddress(address marketConfigurator, address pool) external view returns (address);
}

// ============================================================
// FILE: lib/@gearbox-protocol/permissionless/contracts/interfaces/factories/IRateKeeperFactory.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2024.
pragma solidity ^0.8.23;

import {DeployParams, DeployResult} from "../Types.sol";
import {IMarketFactory} from "./IMarketFactory.sol";

interface IRateKeeperFactory is IMarketFactory {
    function deployRateKeeper(address pool, DeployParams calldata params) external returns (DeployResult memory);
}

// ============================================================
// FILE: lib/@gearbox-protocol/permissionless/contracts/interfaces/IACL.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2024.
pragma solidity ^0.8.23;

import {IACL as IACLBase} from "@gearbox-protocol/core-v3/contracts/interfaces/base/IACL.sol";
import {IVersion} from "@gearbox-protocol/core-v3/contracts/interfaces/base/IVersion.sol";

interface IACL is IACLBase, IVersion {
    event CreateRole(bytes32 indexed role);
    event GrantRole(bytes32 indexed role, address indexed account);
    event RevokeRole(bytes32 indexed role, address indexed account);

    function getConfigurator() external view returns (address);
    function getRoles() external view returns (bytes32[] memory);
    function getRoleHolders(bytes32 role) external view returns (address[] memory);
    function hasRole(bytes32 role, address account) external view returns (bool);
    function grantRole(bytes32 role, address account) external;
    function revokeRole(bytes32 role, address account) external;
}

// ============================================================
// FILE: lib/@gearbox-protocol/permissionless/contracts/interfaces/IAddressProvider.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2024.
pragma solidity ^0.8.23;

import {IAddressProvider as IAddressProviderBase} from
    "@gearbox-protocol/core-v3/contracts/interfaces/base/IAddressProvider.sol";
import {IVersion} from "@gearbox-protocol/core-v3/contracts/interfaces/base/IVersion.sol";
import {IImmutableOwnableTrait} from "./base/IImmutableOwnableTrait.sol";
import {AddressProviderEntry} from "./Types.sol";

/// @title Address provider interface
interface IAddressProvider is IAddressProviderBase, IVersion, IImmutableOwnableTrait {
    // ------ //
    // EVENTS //
    // ------ //

    event SetAddress(bytes32 indexed key, uint256 indexed ver, address indexed value);

    // ------ //
    // ERRORS //
    // ------ //

    error AddressNotFoundException(bytes32 key, uint256 ver);
    error InvalidVersionException(bytes32 key, uint256 ver);
    error VersionNotFoundException(bytes32 key);
    error ZeroAddressException(bytes32 key);

    // ------- //
    // GETTERS //
    // ------- //

    function getAddress(bytes32 key, uint256 ver) external view returns (address);
    function getAddressOrRevert(bytes32 key, uint256 ver) external view override returns (address);
    function getKeys() external view returns (bytes32[] memory);
    function getVersions(bytes32 key) external view returns (uint256[] memory);
    function getAllEntries() external view returns (AddressProviderEntry[] memory);
    function getLatestVersion(bytes32 key) external view returns (uint256);
    function getLatestMinorVersion(bytes32 key, uint256 majorVersion) external view returns (uint256);
    function getLatestPatchVersion(bytes32 key, uint256 minorVersion) external view returns (uint256);

    // ------------- //
    // CONFIGURATION //
    // ------------- //

    function setAddress(bytes32 key, address value, bool saveVersion) external;
}

// ============================================================
// FILE: lib/@gearbox-protocol/permissionless/contracts/interfaces/IBytecodeRepository.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2024.
pragma solidity ^0.8.23;

import {IVersion} from "@gearbox-protocol/core-v3/contracts/interfaces/base/IVersion.sol";
import {IImmutableOwnableTrait} from "./base/IImmutableOwnableTrait.sol";
import {AuditReport, Bytecode} from "./Types.sol";

/// @title Bytecode repository interface
interface IBytecodeRepository is IVersion, IImmutableOwnableTrait {
    // ------ //
    // EVENTS //
    // ------ //

    event AddAuditor(address indexed auditor, string name);
    event AddPublicDomain(bytes32 indexed domain);
    event AddSystemDomain(bytes32 indexed domain);
    event AllowContract(bytes32 indexed bytecodeHash, bytes32 indexed contractType, uint256 indexed version);
    event AuditBytecode(bytes32 indexed bytecodeHash, address indexed auditor, string reportUrl, bytes signature);
    event DeployContract(
        bytes32 indexed bytecodeHash, bytes32 indexed contractType, uint256 indexed version, address contractAddress
    );
    event ForbidContract(bytes32 indexed bytecodeHash, bytes32 indexed contractType, uint256 indexed version);
    event ForbidInitCode(bytes32 indexed initCodeHash);
    event RemoveAuditor(address indexed auditor);
    event RemoveContractTypeOwner(bytes32 indexed contractType);
    event SetContractTypeOwner(bytes32 indexed contractType, address indexed owner);
    event SetTokenSpecificPostfix(address indexed token, bytes32 indexed postfix);
    event UploadBytecode(
        bytes32 indexed bytecodeHash,
        bytes32 indexed contractType,
        uint256 indexed version,
        address author,
        string source,
        bytes signature
    );

    // ------ //
    // ERRORS //
    // ------ //

    error AuditorIsNotApprovedException(address auditor);
    error AuthorIsNotContractTypeOwnerException(bytes32 contractType, address author);
    error BytecodeIsAlreadyAllowedException(bytes32 contractType, uint256 version);
    error BytecodeIsAlreadySignedByAuditorException(bytes32 bytecodeHash, address auditor);
    error BytecodeIsNotAllowedException(bytes32 contractType, uint256 version);
    error BytecodeIsNotAuditedException(bytes32 bytecodeHash);
    error BytecodeIsNotUploadedException(bytes32 bytecodeHash);
    error CallerIsNotBytecodeAuthorException(address caller);
    error ContractIsAlreadyDeployedException(address deployedContract);
    error ContractTypeIsNotInPublicDomainException(bytes32 contractType);
    error DomainIsAlreadyMarketAsPublicException(bytes32 domain);
    error DomainIsAlreadyMarketAsSystemException(bytes32 domain);
    error InitCodeIsForbiddenException(bytes32 initCodeHash);
    error InvalidAuditorSignatureException(address auditor);
    error InvalidAuthorSignatureException(address author);
    error InvalidBytecodeException(bytes32 bytecodeHash);
    error InvalidContractTypeException(bytes32 contractType);
    error InvalidDomainException(bytes32 domain);
    error InvalidVersionException(bytes32 contractType, uint256 version);
    error VersionNotFoundException(bytes32 contractType);

    // --------------- //
    // EIP-712 GETTERS //
    // --------------- //

    function BYTECODE_TYPEHASH() external view returns (bytes32);
    function AUDIT_REPORT_TYPEHASH() external view returns (bytes32);
    function domainSeparatorV4() external view returns (bytes32);
    function computeBytecodeHash(Bytecode calldata bytecode) external view returns (bytes32);
    function computeAuditReportHash(bytes32 bytecodeHash, address auditor, string calldata reportUrl)
        external
        view
        returns (bytes32);

    // ------------------- //
    // DEPLOYING CONTRACTS //
    // ------------------- //

    function isDeployedFromRepository(address deployedContract) external view returns (bool);
    function getDeployedContractBytecodeHash(address deployedContract) external view returns (bytes32);
    function computeAddress(
        bytes32 contractType,
        uint256 version,
        bytes calldata constructorParams,
        bytes32 salt,
        address deployer
    ) external view returns (address);
    function deploy(bytes32 contractType, uint256 version, bytes calldata constructorParams, bytes32 salt)
        external
        returns (address);

    // ------------------ //
    // UPLOADING BYTECODE //
    // ------------------ //

    function getBytecode(bytes32 bytecodeHash) external view returns (Bytecode memory);
    function isBytecodeUploaded(bytes32 bytecodeHash) external view returns (bool);
    function uploadBytecode(Bytecode calldata bytecode) external;

    // ----------------- //
    // AUDITING BYTECODE //
    // ----------------- //

    function isBytecodeAudited(bytes32 bytecodeHash) external view returns (bool);
    function getAuditReports(bytes32 bytecodeHash) external view returns (AuditReport[] memory);
    function getAuditReport(bytes32 bytecodeHash, uint256 index) external view returns (AuditReport memory);
    function getNumAuditReports(bytes32 bytecodeHash) external view returns (uint256);
    function submitAuditReport(bytes32 bytecodeHash, AuditReport calldata auditReport) external;

    // ----------------- //
    // ALLOWING BYTECODE //
    // ----------------- //

    function getAllowedBytecodeHash(bytes32 contractType, uint256 version) external view returns (bytes32);
    function getContractTypeOwner(bytes32 contractType) external view returns (address);
    function allowSystemContract(bytes32 bytecodeHash) external;
    function allowPublicContract(bytes32 bytecodeHash) external;
    function removePublicContractType(bytes32 contractType) external;

    // ------------------ //
    // DOMAINS MANAGEMENT //
    // ------------------ //

    function isSystemDomain(bytes32 domain) external view returns (bool);
    function getSystemDomains() external view returns (bytes32[] memory);
    function isPublicDomain(bytes32 domain) external view returns (bool);
    function getPublicDomains() external view returns (bytes32[] memory);
    function addPublicDomain(bytes32 domain) external;

    // ------------------- //
    // AUDITORS MANAGEMENT //
    // ------------------- //

    function isAuditor(address auditor) external view returns (bool);
    function getAuditors() external view returns (address[] memory);
    function getAuditorName(address auditor) external view returns (string memory);
    function addAuditor(address auditor, string calldata name) external;
    function removeAuditor(address auditor) external;

    // -------------------- //
    // FORBIDDING INIT CODE //
    // -------------------- //

    function isInitCodeForbidden(bytes32 initCodeHash) external view returns (bool);
    function forbidInitCode(bytes32 initCodeHash) external;

    // ------------------------ //
    // TOKENS WITH CUSTOM LOGIC //
    // ------------------------ //

    function getTokenSpecificPostfix(address token) external view returns (bytes32);
    function setTokenSpecificPostfix(address token, bytes32 postfix) external;

    // --------------- //
    // VERSION CONTROL //
    // --------------- //

    function getVersions(bytes32 contractType) external view returns (uint256[] memory);
    function getLatestVersion(bytes32 contractType) external view returns (uint256);
    function getLatestMinorVersion(bytes32 contractType, uint256 majorVersion) external view returns (uint256);
    function getLatestPatchVersion(bytes32 contractType, uint256 minorVersion) external view returns (uint256);
}

// ============================================================
// FILE: lib/@gearbox-protocol/permissionless/contracts/interfaces/IContractsRegister.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2024.
pragma solidity ^0.8.23;

import {IACLTrait} from "@gearbox-protocol/core-v3/contracts/interfaces/base/IACLTrait.sol";
import {IContractsRegister as IContractsRegisterBase} from
    "@gearbox-protocol/core-v3/contracts/interfaces/base/IContractsRegister.sol";
import {IVersion} from "@gearbox-protocol/core-v3/contracts/interfaces/base/IVersion.sol";

interface IContractsRegister is IContractsRegisterBase, IVersion, IACLTrait {
    // ------ //
    // EVENTS //
    // ------ //

    event RegisterMarket(address indexed pool, address indexed priceOracle, address indexed lossPolicy);
    event ShutdownMarket(address indexed pool);
    event RegisterCreditSuite(address indexed pool, address indexed creditManager);
    event ShutdownCreditSuite(address indexed pool, address indexed creditManager);
    event SetPriceOracle(address indexed pool, address indexed priceOracle);
    event SetLossPolicy(address indexed pool, address indexed lossPolicy);

    // ------ //
    // ERRORS //
    // ------ //

    error MarketNotRegisteredException(address pool);
    error MarketShutDownException(address pool);
    error MarketNotEmptyException(address pool);
    error CreditSuiteNotRegisteredException(address creditManager);
    error CreditSuiteShutDownException(address creditManager);

    // ------- //
    // MARKETS //
    // ------- //

    function getShutdownPools() external view returns (address[] memory);
    function getPriceOracle(address pool) external view returns (address);
    function getLossPolicy(address pool) external view returns (address);

    function registerMarket(address pool, address priceOracle, address lossPolicy) external;
    function shutdownMarket(address pool) external;
    function setPriceOracle(address pool, address priceOracle) external;
    function setLossPolicy(address pool, address lossPolicy) external;

    // ------------- //
    // CREDIT SUITES //
    // ------------- //

    function getCreditManagers(address pool) external view returns (address[] memory);
    function getShutdownCreditManagers() external view returns (address[] memory);
    function getShutdownCreditManagers(address pool) external view returns (address[] memory);

    function registerCreditSuite(address creditManager) external;
    function shutdownCreditSuite(address creditManager) external;
}

// ============================================================
// FILE: lib/@gearbox-protocol/permissionless/contracts/interfaces/IGovernor.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2024.
pragma solidity ^0.8.23;

import {IVersion} from "@gearbox-protocol/core-v3/contracts/interfaces/base/IVersion.sol";

/// @title Governor interface
interface IGovernor is IVersion {
    // ----- //
    // TYPES //
    // ----- //

    /// @notice Timelock contract transaction params packed in a struct
    /// @param target Target contract to call
    /// @param value Value to send in the call
    /// @param signature Signature of the target contract's function to call
    /// @param data ABI-encoded parameters to call the function with
    /// @param eta Transaction ETA (timestamp after which it can be executed)
    struct TxParams {
        address target;
        uint256 value;
        string signature;
        bytes data;
        uint256 eta;
    }

    /// @notice Batch information
    /// @param initiator Queue admin that initiated the batch
    /// @param length Number of transactions in the batch
    /// @param eta ETA of transactions in the batch
    struct BatchInfo {
        address initiator;
        uint16 length;
        uint80 eta;
    }

    /// @notice Batched transaction information
    /// @param batchBlock Block the batch was initiated in
    /// @param index Index of transaction within the batch
    struct BatchedTxInfo {
        uint64 batchBlock;
        uint16 index;
    }

    /// @notice Action that can be performed with a queued transaction
    enum TxAction {
        Execute,
        Cancel
    }

    // ------ //
    // EVENTS //
    // ------ //

    /// @notice Emitted when `caller` initiates a batch in `batchBlock`
    event QueueBatch(address indexed caller, uint256 indexed batchBlock);

    /// @notice Emitted when `caller` executes a batch initiated in `batchBlock`
    event ExecuteBatch(address indexed caller, uint256 indexed batchBlock);

    /// @notice Emitted when `caller` cancels a batch initiated in `batchBlock`
    event CancelBatch(address indexed caller, uint256 indexed batchBlock);

    /// @notice Emitted when `admin` is added to the list of queue admins
    event AddQueueAdmin(address indexed admin);

    /// @notice Emitted when `admin` is removed from the list of queue admins
    event RemoveQueueAdmin(address indexed admin);

    /// @notice Emitted when `admin` is added to the list of execution admins
    event AddExecutionAdmin(address indexed admin);

    /// @notice Emitted when `admin` is removed from the list of execution admins
    event RemoveExecutionAdmin(address indexed admin);

    /// @notice Emitted when `admin` is set as the new veto admin
    event UpdateVetoAdmin(address indexed admin);

    /// @notice Emitted when permissionless transaction/batch execution is allowed
    event AllowPermissionlessExecution();

    /// @notice Emitted when permissionless transaction/batch execution is forbidden
    event ForbidPermissionlessExecution();

    // ------ //
    // ERRORS //
    // ------ //

    /// @notice Thrown when an account that is not one of queue admins tries to queue a transaction or initiate a batch
    error CallerNotQueueAdminException();

    /// @notice Thrown when an account that is not one of execution admins tries to execute a transaction or a batch
    error CallerNotExecutionAdminException();

    /// @notice Thrown when an account that is not the timelock contract tries to configure the governor
    error CallerNotTimelockException();

    /// @notice Thrown when an account that is not the veto admin tries to cancel a transaction or a batch
    error CallerNotVetoAdminException();

    /// @notice Thrown when a queue admin tries to add transactions to the batch not initiated by themselves
    error CallerNotBatchInitiatorException();

    /// @notice Thrown when trying to renounce ownership
    error CannotRenounceOwnershipException();

    /// @notice Thrown when trying to queue a transaction that is already queued
    error TransactionAlreadyQueuedException();

    /// @notice Thrown when batched transaction's ETA differs from the batch ETA
    error ETAMistmatchException();

    /// @notice Thrown when trying to initiate a batch more than once in a block
    error BatchAlreadyStartedException();

    /// @notice Thrown when trying to execute or cancel a transaction individually while it's part of some batch
    error CantPerformActionOutsideBatchException();

    /// @notice Thrown when a passed list of transactions doesn't represent a valid queued batch
    error IncorrectBatchException();

    /// @notice Thrown when a passed list of transactions contains a transaction different from those in the queued batch
    error UnexpectedTransactionException(bytes32 txHash);

    /// @notice Thrown when trying to set zero address as a queue, execution or veto admin
    error AdminCantBeZeroAddressException();

    // ----- //
    // STATE //
    // ----- //

    /// @notice Returns an address of the timelock contract
    function timeLock() external view returns (address);

    /// @notice Returns an array of addresses of queue admins
    function queueAdmins() external view returns (address[] memory);

    /// @notice Returns an array of addresses of execution admins
    function executionAdmins() external view returns (address[] memory);

    /// @notice Returns an address of the veto admin
    function vetoAdmin() external view returns (address);

    /// @notice Whether permissionless transaction/batch execution is allowed
    function isPermissionlessExecutionAllowed() external view returns (bool);

    /// @notice Returns info for the batch initiated in `batchBlock`
    /// @dev `initiator == address(0)` means that there was no batch initiated in that block
    function batchInfo(uint256 batchBlock) external view returns (address initiator, uint16 length, uint80 eta);

    /// @notice Returns batch info for the transaction with given `txHash`
    /// @dev `batchBlock == 0` means that transaction is not part of any batch
    function batchedTxInfo(bytes32 txHash) external view returns (uint64 batchBlock, uint16 index);

    // ------- //
    // ACTIONS //
    // ------- //

    /// @notice Queues a transaction in the timelock. Ensures that it's not already queued. When no batch is initiated,
    ///         simply forwards the call to the timelock contract. Otherwise, appends the transaction to the batch after
    ///         checking that caller is the account that initiated the batch and ETAs of all transactions are the same.
    /// @dev See `TxParams` for params description
    /// @dev Can only be called by queue admins
    function queueTransaction(
        address target,
        uint256 value,
        string calldata signature,
        bytes calldata data,
        uint256 eta
    ) external returns (bytes32 txHash);

    /// @notice Initiates a batch of transactions. All the transactions that are queued after this call in the same block
    ///         will form a batch that can only be executed/cancelled as a whole. Typically, this will be the first call
    ///         in a multicall that queues a batch, followed by multiple `queueTransaction` calls.
    /// @param eta ETA of transactions in the batch
    /// @dev Can only be called by queue admins
    function startBatch(uint80 eta) external;

    /// @notice Executes a queued transaction. Ensures that it is not part of any batch and forwards the call to the
    ///         timelock contract.
    /// @dev See `TxParams` for params description
    /// @dev Can only be called by execution admins unless permissionless execution is allowed
    function executeTransaction(
        address target,
        uint256 value,
        string calldata signature,
        bytes calldata data,
        uint256 eta
    ) external payable returns (bytes memory result);

    /// @notice Executes a queued batch of transactions. Ensures that `txs` is the same ordered list of transactions as
    ///         the one that was queued, and forwards all calls to the timelock contract.
    /// @dev Can only be called by execution admins unless permissionless execution is allowed
    function executeBatch(TxParams[] calldata txs) external payable;

    /// @notice Cancels a queued transaction. Ensures that it is not part of any batch and forwards the call to the
    ///         timelock contract.
    /// @dev See `TxParams` for params description
    /// @dev Can only be called by the veto admin
    function cancelTransaction(
        address target,
        uint256 value,
        string calldata signature,
        bytes calldata data,
        uint256 eta
    ) external;

    /// @notice Cancels a queued batch of transactions. Ensures that `txs` is the same ordered list of transactions as
    ///         the one that was queued, and forwards all calls to the timelock contract.
    /// @dev Can only be called by the veto admin
    function cancelBatch(TxParams[] calldata txs) external;

    // ------------- //
    // CONFIGURATION //
    // ------------- //

    /// @notice Adds `admin` to the list of queue admins, ensures that it's not zero address
    /// @dev Can only be called by the timelock contract
    function addQueueAdmin(address admin) external;

    /// @notice Removes `admin` from the list of queue admins
    /// @dev Can only be called by the timelock contract
    function removeQueueAdmin(address admin) external;

    /// @notice Adds `admin` to the list of execution admins, ensures that it's not zero address
    /// @dev Can only be called by the timelock contract
    function addExecutionAdmin(address admin) external;

    /// @notice Removes `admin` from the list of execution admins
    /// @dev Can only be called by the timelock contract
    function removeExecutionAdmin(address admin) external;

    /// @notice Sets `admin` as the new veto admin, ensures that it's not zero address
    /// @dev Can only be called by the timelock contract
    /// @dev It's assumed that veto admin is a contract that has means to prevent it from blocking its' own update,
    ///      for example, it might be a multisig that can remove malicious signers
    function updateVetoAdmin(address admin) external;

    /// @notice Allows permissionless transactions/batches execution
    /// @dev Can only be called by the timelock contract
    function allowPermissionlessExecution() external;

    /// @notice Forbids permissionless transactions/batches execution
    /// @dev Can only be called by the timelock contract
    function forbidPermissionlessExecution() external;
}

// ============================================================
// FILE: lib/@gearbox-protocol/permissionless/contracts/interfaces/IMarketConfigurator.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2024.
pragma solidity ^0.8.23;

import {IVersion} from "@gearbox-protocol/core-v3/contracts/interfaces/base/IVersion.sol";
import {IDeployerTrait} from "./base/IDeployerTrait.sol";
import {Call, DeployParams, MarketFactories} from "./Types.sol";

interface IMarketConfigurator is IVersion, IDeployerTrait {
    // ------ //
    // EVENTS //
    // ------ //

    event SetEmergencyAdmin(address indexed newEmergencyAdmin);

    event GrantRole(bytes32 indexed role, address indexed account);

    event RevokeRole(bytes32 indexed role, address indexed account);

    event EmergencyRevokeRole(bytes32 indexed role, address indexed account);

    event CreateMarket(
        address indexed pool,
        address priceOracle,
        address interestRateModel,
        address rateKeeper,
        address lossPolicy,
        MarketFactories factories
    );

    event ShutdownMarket(address indexed pool);

    event AddToken(address indexed pool, address indexed token);

    event ConfigurePool(address indexed pool, bytes data);

    event EmergencyConfigurePool(address indexed pool, bytes data);

    event CreateCreditSuite(address indexed creditManager, address factory);

    event ShutdownCreditSuite(address indexed creditManager);

    event ConfigureCreditSuite(address indexed creditManager, bytes data);

    event EmergencyConfigureCreditSuite(address indexed creditManager, bytes data);

    event UpdatePriceOracle(address indexed pool, address priceOracle);

    event ConfigurePriceOracle(address indexed pool, bytes data);

    event EmergencyConfigurePriceOracle(address indexed pool, bytes data);

    event UpdateInterestRateModel(address indexed pool, address interestRateModel);

    event ConfigureInterestRateModel(address indexed pool, bytes data);

    event EmergencyConfigureInterestRateModel(address indexed pool, bytes data);

    event UpdateRateKeeper(address indexed pool, address rateKeeper);

    event ConfigureRateKeeper(address indexed pool, bytes data);

    event EmergencyConfigureRateKeeper(address indexed pool, bytes data);

    event UpdateLossPolicy(address indexed pool, address lossPolicy);

    event ConfigureLossPolicy(address indexed pool, bytes data);

    event EmergencyConfigureLossPolicy(address indexed pool, bytes data);

    event AddPeripheryContract(bytes32 indexed domain, address indexed peripheryContract);

    event RemovePeripheryContract(bytes32 indexed domain, address indexed peripheryContract);

    event AuthorizeFactory(address indexed factory, address indexed suite, address indexed target);

    event UnauthorizeFactory(address indexed factory, address indexed suite, address indexed target);

    event UpgradePoolFactory(address indexed pool, address factory);

    event UpgradePriceOracleFactory(address indexed pool, address factory);

    event UpgradeInterestRateModelFactory(address indexed pool, address factory);

    event UpgradeRateKeeperFactory(address indexed pool, address factory);

    event UpgradeLossPolicyFactory(address indexed pool, address factory);

    event UpgradeCreditFactory(address indexed creditManager, address factory);

    event ExecuteHook(address indexed target, bytes callData);

    // ------ //
    // ERRORS //
    // ------ //

    error CallerIsNotAdminException(address caller);

    error CallerIsNotEmergencyAdminException(address caller);

    error CallerIsNotSelfException(address caller);

    error CreditSuiteNotRegisteredException(address creditManager);

    error IncorrectMinorVersionException(uint256 version);

    error IncorrectPeripheryContractException(address peripheryContract);

    error MarketNotRegisteredException(address pool);

    error UnauthorizedFactoryException(address factory, address target);

    // --------------- //
    // STATE VARIABLES //
    // --------------- //

    function admin() external view returns (address);
    function emergencyAdmin() external view returns (address);
    function curatorName() external view returns (string memory);

    function acl() external view returns (address);
    function contractsRegister() external view returns (address);
    function treasury() external view returns (address);

    // ---------------- //
    // ROLES MANAGEMENT //
    // ---------------- //

    function setEmergencyAdmin(address newEmergencyAdmin) external;

    function grantRole(bytes32 role, address account) external;

    function revokeRole(bytes32 role, address account) external;

    function emergencyRevokeRole(bytes32 role, address account) external;

    // ----------------- //
    // MARKET MANAGEMENT //
    // ----------------- //

    function previewCreateMarket(uint256 minorVersion, address underlying, string calldata name, string calldata symbol)
        external
        view
        returns (address pool);

    function createMarket(
        uint256 minorVersion,
        address underlying,
        string calldata name,
        string calldata symbol,
        DeployParams calldata interestRateModelParams,
        DeployParams calldata rateKeeperParams,
        DeployParams calldata lossPolicyParams,
        address underlyingPriceFeed
    ) external returns (address pool);

    function shutdownMarket(address pool) external;

    function addToken(address pool, address token, address priceFeed) external;

    function configurePool(address pool, bytes calldata data) external;

    function emergencyConfigurePool(address pool, bytes calldata data) external;

    // ----------------------- //
    // CREDIT SUITE MANAGEMENT //
    // ----------------------- //

    function previewCreateCreditSuite(uint256 minorVersion, address pool, bytes calldata encodedParams)
        external
        view
        returns (address creditManager);

    function previewCreateCreditSuite(
        uint256 marketMinorVersion,
        uint256 creditSuiteMinorVersion,
        address underlying,
        string calldata name,
        string calldata symbol,
        bytes calldata encodedParams
    ) external view returns (address creditManager);

    function createCreditSuite(uint256 minorVersion, address pool, bytes calldata encdodedParams)
        external
        returns (address creditManager);

    function shutdownCreditSuite(address creditManager) external;

    function configureCreditSuite(address creditManager, bytes calldata data) external;

    function emergencyConfigureCreditSuite(address creditManager, bytes calldata data) external;

    // ----------------------- //
    // PRICE ORACLE MANAGEMENT //
    // ----------------------- //

    function updatePriceOracle(address pool) external returns (address priceOracle);

    function configurePriceOracle(address pool, bytes calldata data) external;

    function emergencyConfigurePriceOracle(address pool, bytes calldata data) external;

    // -------------- //
    // IRM MANAGEMENT //
    // -------------- //

    function updateInterestRateModel(address pool, DeployParams calldata params) external returns (address irm);

    function configureInterestRateModel(address pool, bytes calldata data) external;

    function emergencyConfigureInterestRateModel(address pool, bytes calldata data) external;

    // ---------------------- //
    // RATE KEEPER MANAGEMENT //
    // ---------------------- //

    function updateRateKeeper(address pool, DeployParams calldata params) external returns (address rateKeeper);

    function configureRateKeeper(address pool, bytes calldata data) external;

    function emergencyConfigureRateKeeper(address pool, bytes calldata data) external;

    // -–-------------------- //
    // LOSS POLICY MANAGEMENT //
    // -–-------------------- //

    function updateLossPolicy(address pool, DeployParams calldata params) external returns (address lossPolicy);

    function configureLossPolicy(address pool, bytes calldata data) external;

    function emergencyConfigureLossPolicy(address pool, bytes calldata data) external;

    // --------- //
    // PERIPHERY //
    // --------- //

    function getPeripheryContracts(bytes32 domain) external view returns (address[] memory);

    function isPeripheryContract(bytes32 domain, address peripheryContract) external view returns (bool);

    function addPeripheryContract(address peripheryContract) external;

    function removePeripheryContract(address peripheryContract) external;

    // --------- //
    // FACTORIES //
    // --------- //

    function getMarketFactories(address pool) external view returns (MarketFactories memory);

    function getCreditFactory(address creditManager) external view returns (address);

    function getAuthorizedFactory(address target) external view returns (address);

    function getFactoryTargets(address factory, address suite) external view returns (address[] memory);

    function authorizeFactory(address factory, address suite, address target) external;

    function unauthorizeFactory(address factory, address suite, address target) external;

    function upgradePoolFactory(address pool) external;

    function upgradePriceOracleFactory(address pool) external;

    function upgradeInterestRateModelFactory(address pool) external;

    function upgradeRateKeeperFactory(address pool) external;

    function upgradeLossPolicyFactory(address pool) external;

    function upgradeCreditFactory(address creditManager) external;
}

// ============================================================
// FILE: lib/@gearbox-protocol/permissionless/contracts/interfaces/Types.sol
// ============================================================

// SPDX-License-Identifier: MIT
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2024.
pragma solidity ^0.8.23;

struct AddressProviderEntry {
    bytes32 key;
    uint256 ver;
    address value;
}

struct AuditReport {
    address auditor;
    string reportUrl;
    bytes signature;
}

struct Bytecode {
    bytes32 contractType;
    uint256 version;
    bytes initCode;
    address author;
    string source;
    bytes authorSignature;
}

struct BytecodePointer {
    bytes32 contractType;
    uint256 version;
    address initCodePointer;
    address author;
    string source;
    bytes authorSignature;
}

struct Call {
    address target;
    bytes callData;
}

struct ConnectedPriceFeed {
    address token;
    address[] priceFeeds;
}

struct CrossChainCall {
    uint256 chainId; // 0 means to be executed on all chains
    address target;
    bytes callData;
}

struct DeployParams {
    bytes32 postfix;
    bytes32 salt;
    bytes constructorParams;
}

struct DeployResult {
    address newContract;
    Call[] onInstallOps;
}

struct MarketFactories {
    address poolFactory;
    address priceOracleFactory;
    address interestRateModelFactory;
    address rateKeeperFactory;
    address lossPolicyFactory;
}

struct PriceFeedInfo {
    string name;
    uint32 stalenessPeriod;
    bytes32 priceFeedType;
    uint256 version;
}

struct SignedBatch {
    string name;
    bytes32 prevHash;
    CrossChainCall[] calls;
    bytes[] signatures;
}

struct SignedRecoveryModeMessage {
    uint256 chainId;
    bytes32 startingBatchHash;
    bytes[] signatures;
}

struct Split {
    bool initialized;
    address[] receivers;
    uint16[] proportions;
}

struct TwoAdminProposal {
    bytes callData;
    bool confirmedByAdmin;
    bool confirmedByTreasuryProxy;
}

// ============================================================
// FILE: lib/@gearbox-protocol/permissionless/contracts/libraries/ContractLiterals.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2024.
pragma solidity ^0.8.23;

uint256 constant NO_VERSION_CONTROL = 0;

// Contract types and prefixes
bytes32 constant AP_ACCOUNT_FACTORY_DEFAULT = "ACCOUNT_FACTORY::DEFAULT";
bytes32 constant AP_ACL = "ACL";
bytes32 constant AP_ADDRESS_PROVIDER = "ADDRESS_PROVIDER";
bytes32 constant AP_BOT_LIST = "BOT_LIST";
bytes32 constant AP_BYTECODE_REPOSITORY = "BYTECODE_REPOSITORY";
bytes32 constant AP_CONTRACTS_REGISTER = "CONTRACTS_REGISTER";
bytes32 constant AP_CREDIT_CONFIGURATOR = "CREDIT_CONFIGURATOR";
bytes32 constant AP_CREDIT_FACADE = "CREDIT_FACADE";
bytes32 constant AP_CREDIT_FACTORY = "CREDIT_FACTORY";
bytes32 constant AP_CREDIT_MANAGER = "CREDIT_MANAGER";
bytes32 constant AP_CROSS_CHAIN_GOVERNANCE = "CROSS_CHAIN_GOVERNANCE";
bytes32 constant AP_CROSS_CHAIN_GOVERNANCE_PROXY = "CROSS_CHAIN_GOVERNANCE_PROXY";
bytes32 constant AP_CROSS_CHAIN_MULTISIG = "CROSS_CHAIN_MULTISIG";
bytes32 constant AP_GEAR_STAKING = "GEAR_STAKING";
bytes32 constant AP_GEAR_TOKEN = "GEAR_TOKEN";
bytes32 constant AP_GOVERNOR = "GOVERNOR";
bytes32 constant AP_INSTANCE_MANAGER = "INSTANCE_MANAGER";
bytes32 constant AP_INSTANCE_MANAGER_PROXY = "INSTANCE_MANAGER_PROXY";
bytes32 constant AP_INTEREST_RATE_MODEL_DEFAULT = "IRM::DEFAULT";
bytes32 constant AP_INTEREST_RATE_MODEL_FACTORY = "INTEREST_RATE_MODEL_FACTORY";
bytes32 constant AP_INTEREST_RATE_MODEL_LINEAR = "IRM::LINEAR";
bytes32 constant AP_LOSS_POLICY_ALIASED = "LOSS_POLICY::ALIASED";
bytes32 constant AP_LOSS_POLICY_DEFAULT = "LOSS_POLICY::DEFAULT";
bytes32 constant AP_LOSS_POLICY_FACTORY = "LOSS_POLICY_FACTORY";
bytes32 constant AP_MARKET_CONFIGURATOR = "MARKET_CONFIGURATOR";
bytes32 constant AP_MARKET_CONFIGURATOR_FACTORY = "MARKET_CONFIGURATOR_FACTORY";
bytes32 constant AP_MARKET_CONFIGURATOR_LEGACY = "MARKET_CONFIGURATOR::LEGACY";
bytes32 constant AP_POOL = "POOL";
bytes32 constant AP_POOL_FACTORY = "POOL_FACTORY";
bytes32 constant AP_POOL_QUOTA_KEEPER = "POOL_QUOTA_KEEPER";
bytes32 constant AP_PRICE_FEED_STORE = "PRICE_FEED_STORE";
bytes32 constant AP_PRICE_ORACLE = "PRICE_ORACLE";
bytes32 constant AP_PRICE_ORACLE_FACTORY = "PRICE_ORACLE_FACTORY";
bytes32 constant AP_RATE_KEEPER_FACTORY = "RATE_KEEPER_FACTORY";
bytes32 constant AP_RATE_KEEPER_GAUGE = "RATE_KEEPER::GAUGE";
bytes32 constant AP_RATE_KEEPER_TUMBLER = "RATE_KEEPER::TUMBLER";
bytes32 constant AP_TREASURY = "TREASURY";
bytes32 constant AP_TREASURY_PROXY = "TREASURY_PROXY";
bytes32 constant AP_TREASURY_SPLITTER = "TREASURY_SPLITTER";
bytes32 constant AP_WETH_TOKEN = "WETH_TOKEN";
bytes32 constant AP_ZERO_PRICE_FEED = "PRICE_FEED::ZERO";

// Common domains
bytes32 constant DOMAIN_ACCOUNT_FACTORY = "ACCOUNT_FACTORY";
bytes32 constant DOMAIN_ADAPTER = "ADAPTER";
bytes32 constant DOMAIN_BOT = "BOT";
bytes32 constant DOMAIN_CREDIT_MANAGER = "CREDIT_MANAGER";
bytes32 constant DOMAIN_DEGEN_NFT = "DEGEN_NFT";
bytes32 constant DOMAIN_IRM = "IRM";
bytes32 constant DOMAIN_LOSS_POLICY = "LOSS_POLICY";
bytes32 constant DOMAIN_POOL = "POOL";
bytes32 constant DOMAIN_PRICE_FEED = "PRICE_FEED";
bytes32 constant DOMAIN_RATE_KEEPER = "RATE_KEEPER";
bytes32 constant DOMAIN_ZAPPER = "ZAPPER";

// Roles
bytes32 constant ROLE_EMERGENCY_LIQUIDATOR = "EMERGENCY_LIQUIDATOR";
bytes32 constant ROLE_PAUSABLE_ADMIN = "PAUSABLE_ADMIN";
bytes32 constant ROLE_UNPAUSABLE_ADMIN = "UNPAUSABLE_ADMIN";

// ============================================================
// FILE: lib/@gearbox-protocol/permissionless/contracts/libraries/Domain.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2024.
pragma solidity ^0.8.23;

import {LibString} from "@solady/utils/LibString.sol";

library Domain {
    using LibString for string;
    using LibString for bytes32;

    uint128 internal constant UNDERSCORE = 1 << 95;

    function getContractType(bytes32 domain, bytes32 postfix) internal pure returns (bytes32) {
        if (postfix == 0) return domain;
        return string.concat(domain.fromSmallString(), "::", postfix.fromSmallString()).toSmallString();
    }

    function extractDomain(bytes32 contractType) internal pure returns (bytes32) {
        string memory str = contractType.fromSmallString();
        uint256 separatorIndex = str.indexOf("::");

        // If no separator found, treat the whole type as domain
        if (separatorIndex == LibString.NOT_FOUND) return str.toSmallString();

        return str.slice(0, separatorIndex).toSmallString();
    }

    function extractPostfix(bytes32 contractType) internal pure returns (bytes32) {
        string memory str = contractType.fromSmallString();
        uint256 separatorIndex = str.indexOf("::");

        // if no separator found, return empty postfix
        if (separatorIndex == LibString.NOT_FOUND) return bytes32(0);

        return str.slice(separatorIndex + 2).toSmallString();
    }

    function isValidContractType(bytes32 contractType) internal pure returns (bool) {
        bytes32 domain = extractDomain(contractType);
        if (!isValidDomain(domain)) return false;

        bytes32 postfix = extractPostfix(contractType);
        if (!isValidPostfix(postfix)) return false;

        // avoid the "DOMAIN::" case
        return contractType == getContractType(domain, postfix);
    }

    function isValidDomain(bytes32 domain) internal pure returns (bool) {
        return domain != 0 && _isValidString(domain.fromSmallString());
    }

    function isValidPostfix(bytes32 postfix) internal pure returns (bool) {
        return _isValidString(postfix.fromSmallString());
    }

    function _isValidString(string memory str) internal pure returns (bool) {
        return str.is7BitASCII(LibString.ALPHANUMERIC_7_BIT_ASCII | UNDERSCORE);
    }
}

// ============================================================
// FILE: lib/@gearbox-protocol/permissionless/contracts/market/legacy/MarketConfiguratorLegacy.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2024.
pragma solidity ^0.8.23;

import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

import {IVersion} from "@gearbox-protocol/core-v3/contracts/interfaces/base/IVersion.sol";
import {ICreditManagerV3} from "@gearbox-protocol/core-v3/contracts/interfaces/ICreditManagerV3.sol";
import {IPoolQuotaKeeperV3} from "@gearbox-protocol/core-v3/contracts/interfaces/IPoolQuotaKeeperV3.sol";
import {IPoolV3} from "@gearbox-protocol/core-v3/contracts/interfaces/IPoolV3.sol";

import {DefaultLossPolicy} from "../../helpers/DefaultLossPolicy.sol";

import {IACL} from "../../interfaces/IACL.sol";
import {IContractsRegister} from "../../interfaces/IContractsRegister.sol";
import {Call, MarketFactories} from "../../interfaces/Types.sol";

import {
    AP_MARKET_CONFIGURATOR_LEGACY,
    AP_CROSS_CHAIN_GOVERNANCE_PROXY,
    DOMAIN_ZAPPER,
    NO_VERSION_CONTROL,
    ROLE_EMERGENCY_LIQUIDATOR,
    ROLE_PAUSABLE_ADMIN,
    ROLE_UNPAUSABLE_ADMIN
} from "../../libraries/ContractLiterals.sol";

import {MarketConfigurator} from "../MarketConfigurator.sol";

interface IACLLegacy {
    function owner() external view returns (address);
    function pendingOwner() external view returns (address);
    function transferOwnership(address newOwner) external;
    function claimOwnership() external;

    function isPausableAdmin(address account) external view returns (bool);
    function addPausableAdmin(address account) external;
    function removePausableAdmin(address account) external;

    function isUnpausableAdmin(address account) external view returns (bool);
    function addUnpausableAdmin(address account) external;
    function removeUnpausableAdmin(address account) external;
}

interface IContractsRegisterLegacy {
    function getPools() external view returns (address[] memory);
    function addPool(address pool) external;
    function getCreditManagers() external view returns (address[] memory);
    function addCreditManager(address creditManager) external;
}

interface IZapperRegisterLegacy {
    function zappers(address pool) external view returns (address[] memory);
}

struct PeripheryContract {
    bytes32 domain;
    address addr;
}

struct LegacyParams {
    address acl;
    address contractsRegister;
    address gearStaking;
    address priceOracle;
    address zapperRegister;
    address[] pausableAdmins;
    address[] unpausableAdmins;
    address[] emergencyLiquidators;
    PeripheryContract[] peripheryContracts;
}

contract MarketConfiguratorLegacy is MarketConfigurator {
    using Address for address;
    using EnumerableSet for EnumerableSet.AddressSet;

    uint256 public constant override version = 3_10;
    bytes32 public constant override contractType = AP_MARKET_CONFIGURATOR_LEGACY;

    address public immutable crossChainGovernanceProxy;

    address public immutable aclLegacy;
    address public immutable contractsRegisterLegacy;
    address public immutable gearStakingLegacy;

    error ACLOwnershipNotTransferredException();
    error AddressIsNotPausableAdminException(address admin);
    error AddressIsNotUnpausableAdminException(address admin);
    error CallerIsNotCrossChainGovernanceProxyException(address caller);
    error CallsToLegacyContractsAreForbiddenException();
    error CollateralTokenIsNotQuotedException(address creditManager, address token);
    error CreditSuiteAlreadyInitializedException(address creditManager);
    error CreditSuiteIsNotInitializedException(address creditManager);
    error InconsistentPriceOracleException(address creditManager);
    error MarketAlreadyInitializedException(address pool);
    error MarketIsNotInitializedException(address pool);

    modifier onlyCrossChainGovernanceProxy() {
        _ensureCallerIsCrossChainGovernanceProxy();
        _;
    }

    constructor(
        address addressProvider_,
        address admin_,
        address emergencyAdmin_,
        string memory curatorName_,
        bool deployGovernor_,
        LegacyParams memory legacyParams_
    ) MarketConfigurator(addressProvider_, admin_, emergencyAdmin_, address(0), curatorName_, deployGovernor_) {
        crossChainGovernanceProxy = _getAddressOrRevert(AP_CROSS_CHAIN_GOVERNANCE_PROXY, NO_VERSION_CONTROL);

        aclLegacy = legacyParams_.acl;
        contractsRegisterLegacy = legacyParams_.contractsRegister;
        gearStakingLegacy = legacyParams_.gearStaking;

        // NOTE: there's no way to validate that `legacyParams_.pausableAdmins` and `legacyParams_.unpausableAdmins`
        // are exhaustive because the legacy ACL contract doesn't provide needed getters, so don't screw up :)
        uint256 num = legacyParams_.pausableAdmins.length;
        for (uint256 i; i < num; ++i) {
            address pausableAdmin = legacyParams_.pausableAdmins[i];
            if (!IACLLegacy(aclLegacy).isPausableAdmin(pausableAdmin)) {
                revert AddressIsNotPausableAdminException(pausableAdmin);
            }
            IACL(acl).grantRole(ROLE_PAUSABLE_ADMIN, pausableAdmin);
            emit GrantRole(ROLE_PAUSABLE_ADMIN, pausableAdmin);
        }
        num = legacyParams_.unpausableAdmins.length;
        for (uint256 i; i < num; ++i) {
            address unpausableAdmin = legacyParams_.unpausableAdmins[i];
            if (!IACLLegacy(aclLegacy).isUnpausableAdmin(unpausableAdmin)) {
                revert AddressIsNotUnpausableAdminException(unpausableAdmin);
            }
            IACL(acl).grantRole(ROLE_UNPAUSABLE_ADMIN, unpausableAdmin);
            emit GrantRole(ROLE_UNPAUSABLE_ADMIN, unpausableAdmin);
        }
        num = legacyParams_.emergencyLiquidators.length;
        for (uint256 i; i < num; ++i) {
            address liquidator = legacyParams_.emergencyLiquidators[i];
            IACL(acl).grantRole(ROLE_EMERGENCY_LIQUIDATOR, liquidator);
            emit GrantRole(ROLE_EMERGENCY_LIQUIDATOR, liquidator);
        }

        address[] memory pools = IContractsRegisterLegacy(contractsRegisterLegacy).getPools();
        uint256 numPools = pools.length;
        for (uint256 i; i < numPools; ++i) {
            address pool = pools[i];
            if (!_isV3Contract(pool)) continue;

            address[] memory creditManagers = IPoolV3(pool).creditManagers();
            uint256 numCreditManagers = creditManagers.length;
            if (numCreditManagers == 0) continue;

            address quotaKeeper = _quotaKeeper(pool);
            address lossPolicy = address(new DefaultLossPolicy(acl));
            IContractsRegister(contractsRegister).registerMarket(pool, legacyParams_.priceOracle, lossPolicy);

            for (uint256 j; j < numCreditManagers; ++j) {
                address creditManager = creditManagers[j];
                if (!_isV3Contract(creditManager)) continue;

                if (ICreditManagerV3(creditManager).priceOracle() != legacyParams_.priceOracle) {
                    revert InconsistentPriceOracleException(creditManager);
                }

                uint256 numTokens = ICreditManagerV3(creditManager).collateralTokensCount();
                uint256 quotedTokensMask = ICreditManagerV3(creditManager).quotedTokensMask();
                for (uint256 k = 1; k < numTokens; ++k) {
                    uint256 tokenMask = 1 << k;
                    address token = ICreditManagerV3(creditManager).getTokenByMask(tokenMask);
                    if (!IPoolQuotaKeeperV3(quotaKeeper).isQuotedToken(token) || quotedTokensMask & tokenMask == 0) {
                        revert CollateralTokenIsNotQuotedException(creditManager, token);
                    }
                }

                IContractsRegister(contractsRegister).registerCreditSuite(creditManager);
            }

            address[] memory zappers = IZapperRegisterLegacy(legacyParams_.zapperRegister).zappers(pool);
            uint256 numZappers = zappers.length;
            for (uint256 j; j < numZappers; ++j) {
                _peripheryContracts[DOMAIN_ZAPPER].add(zappers[j]);
                emit AddPeripheryContract(DOMAIN_ZAPPER, zappers[j]);
            }
        }

        uint256 numPeripheryContracts = legacyParams_.peripheryContracts.length;
        for (uint256 i; i < numPeripheryContracts; ++i) {
            PeripheryContract memory pc = legacyParams_.peripheryContracts[i];
            _peripheryContracts[pc.domain].add(pc.addr);
            emit AddPeripheryContract(pc.domain, pc.addr);
        }
    }

    function initializeMarket(address pool) external {
        _ensureRegisteredMarket(pool);
        if (_marketFactories[pool].poolFactory != address(0)) revert MarketAlreadyInitializedException(pool);

        MarketFactories memory factories = _getLatestMarketFactories(3_10);
        _marketFactories[pool] = factories;
        address quotaKeeper = _quotaKeeper(pool);
        address priceOracle = IContractsRegister(contractsRegister).getPriceOracle(pool);
        address interestRateModel = _interestRateModel(pool);
        address rateKeeper = _rateKeeper(quotaKeeper);
        address lossPolicy = IContractsRegister(contractsRegister).getLossPolicy(pool);

        // NOTE: authorize factories for contracts that might still be used after the migration; legacy price oracle
        // is left unauthorized since it's not gonna be used, IRM is unauthorized since it's not configurable
        _authorizeFactory(factories.poolFactory, pool, pool);
        _authorizeFactory(factories.poolFactory, pool, quotaKeeper);
        _authorizeFactory(factories.rateKeeperFactory, pool, rateKeeper);
        _authorizeFactory(factories.lossPolicyFactory, pool, lossPolicy);

        emit CreateMarket(pool, priceOracle, interestRateModel, rateKeeper, lossPolicy, factories);
    }

    function initializeCreditSuite(address creditManager) external {
        _ensureRegisteredCreditSuite(creditManager);
        if (_creditFactories[creditManager] != address(0)) revert CreditSuiteAlreadyInitializedException(creditManager);

        address factory = _getLatestCreditFactory(3_10);
        _creditFactories[creditManager] = factory;

        // NOTE: authorizing credit factory for legacy configurator is required since it's used to update to the new one;
        // legacy facade and adapters are left unauthorized since they're not gonna be used after the migration
        _authorizeFactory(factory, creditManager, ICreditManagerV3(creditManager).creditConfigurator());

        emit CreateCreditSuite(creditManager, factory);
    }

    // ------------- //
    // CONFIGURATION //
    // ------------- //

    function finalizeMigration() external onlyCrossChainGovernanceProxy {
        address[] memory pools = IContractsRegister(contractsRegister).getPools();
        uint256 numPools = pools.length;
        for (uint256 i; i < numPools; ++i) {
            if (_marketFactories[pools[i]].poolFactory == address(0)) {
                revert MarketIsNotInitializedException(pools[i]);
            }
        }
        address[] memory creditManagers = IContractsRegister(contractsRegister).getCreditManagers();
        uint256 numCreditManagers = creditManagers.length;
        for (uint256 i; i < numCreditManagers; ++i) {
            if (_creditFactories[creditManagers[i]] == address(0)) {
                revert CreditSuiteIsNotInitializedException(creditManagers[i]);
            }
        }

        // NOTE: on some chains, legacy ACL implements a 2-step ownership transfer
        try IACLLegacy(aclLegacy).pendingOwner() returns (address pendingOwner) {
            if (pendingOwner != address(this)) revert ACLOwnershipNotTransferredException();
            IACLLegacy(aclLegacy).claimOwnership();
        } catch {
            if (IACLLegacy(aclLegacy).owner() != address(this)) revert ACLOwnershipNotTransferredException();
        }

        IACLLegacy(aclLegacy).addPausableAdmin(address(this));
        IACLLegacy(aclLegacy).addUnpausableAdmin(address(this));
    }

    function configureGearStaking(bytes calldata data) external onlyCrossChainGovernanceProxy {
        gearStakingLegacy.functionCall(data);
    }

    function removeLegacyPeripheryContract(bytes32 domain, address peripheryContract) external onlyAdmin {
        if (_peripheryContracts[domain].remove(peripheryContract)) {
            emit RemovePeripheryContract(domain, peripheryContract);
        }
    }

    // --------- //
    // INTERNALS //
    // --------- //

    function _ensureCallerIsCrossChainGovernanceProxy() internal view {
        if (msg.sender != crossChainGovernanceProxy) revert CallerIsNotCrossChainGovernanceProxyException(msg.sender);
    }

    function _grantRole(bytes32 role, address account) internal override {
        super._grantRole(role, account);
        if (role == ROLE_PAUSABLE_ADMIN) IACLLegacy(aclLegacy).addPausableAdmin(account);
        else if (role == ROLE_UNPAUSABLE_ADMIN) IACLLegacy(aclLegacy).addUnpausableAdmin(account);
    }

    function _revokeRole(bytes32 role, address account) internal override {
        super._revokeRole(role, account);
        if (role == ROLE_PAUSABLE_ADMIN) IACLLegacy(aclLegacy).removePausableAdmin(account);
        else if (role == ROLE_UNPAUSABLE_ADMIN) IACLLegacy(aclLegacy).removeUnpausableAdmin(account);
    }

    function _registerMarket(address pool, address priceOracle, address lossPolicy) internal override {
        super._registerMarket(pool, priceOracle, lossPolicy);
        IContractsRegisterLegacy(contractsRegisterLegacy).addPool(pool);
    }

    function _registerCreditSuite(address creditManager) internal override {
        super._registerCreditSuite(creditManager);
        IContractsRegisterLegacy(contractsRegisterLegacy).addCreditManager(creditManager);
    }

    function _validateCallTarget(address target, address factory) internal override {
        super._validateCallTarget(target, factory);
        if (target == aclLegacy || target == contractsRegisterLegacy || target == gearStakingLegacy) {
            revert CallsToLegacyContractsAreForbiddenException();
        }
    }

    function _isV3Contract(address contract_) internal view returns (bool) {
        try IVersion(contract_).version() returns (uint256 version_) {
            return version_ >= 300 && version_ < 400;
        } catch {
            return false;
        }
    }
}

// ============================================================
// FILE: lib/@gearbox-protocol/permissionless/contracts/market/MarketConfigurator.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2024.
pragma solidity ^0.8.23;

import {SafeERC20} from "@1inch/solidity-utils/contracts/libraries/SafeERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {LibString} from "@solady/utils/LibString.sol";

import {IVersion} from "@gearbox-protocol/core-v3/contracts/interfaces/base/IVersion.sol";
import {ICreditManagerV3} from "@gearbox-protocol/core-v3/contracts/interfaces/ICreditManagerV3.sol";
import {IPoolQuotaKeeperV3} from "@gearbox-protocol/core-v3/contracts/interfaces/IPoolQuotaKeeperV3.sol";
import {IPoolV3} from "@gearbox-protocol/core-v3/contracts/interfaces/IPoolV3.sol";

import {ICreditFactory} from "../interfaces/factories/ICreditFactory.sol";
import {IFactory} from "../interfaces/factories/IFactory.sol";
import {IInterestRateModelFactory} from "../interfaces/factories/IInterestRateModelFactory.sol";
import {ILossPolicyFactory} from "../interfaces/factories/ILossPolicyFactory.sol";
import {IMarketFactory} from "../interfaces/factories/IMarketFactory.sol";
import {IPoolFactory} from "../interfaces/factories/IPoolFactory.sol";
import {IPriceOracleFactory} from "../interfaces/factories/IPriceOracleFactory.sol";
import {IRateKeeperFactory} from "../interfaces/factories/IRateKeeperFactory.sol";

import {IACL} from "../interfaces/IACL.sol";
import {IAddressProvider} from "../interfaces/IAddressProvider.sol";
import {IBytecodeRepository} from "../interfaces/IBytecodeRepository.sol";
import {IContractsRegister} from "../interfaces/IContractsRegister.sol";
import {IGovernor} from "../interfaces/IGovernor.sol";
import {IMarketConfigurator} from "../interfaces/IMarketConfigurator.sol";
import {Call, DeployParams, DeployResult, MarketFactories} from "../interfaces/Types.sol";

import {
    AP_ACL,
    AP_CONTRACTS_REGISTER,
    AP_CREDIT_FACTORY,
    AP_GOVERNOR,
    AP_INTEREST_RATE_MODEL_FACTORY,
    AP_LOSS_POLICY_FACTORY,
    AP_MARKET_CONFIGURATOR,
    AP_POOL_FACTORY,
    AP_PRICE_ORACLE_FACTORY,
    AP_RATE_KEEPER_FACTORY,
    AP_TREASURY,
    AP_TREASURY_SPLITTER,
    NO_VERSION_CONTROL,
    ROLE_PAUSABLE_ADMIN,
    ROLE_UNPAUSABLE_ADMIN
} from "../libraries/ContractLiterals.sol";
import {Domain} from "../libraries/Domain.sol";

import {DeployerTrait} from "../traits/DeployerTrait.sol";

/// @title Market configurator
/// @notice Allows risk curator to deploy and configure market and credit suites
contract MarketConfigurator is DeployerTrait, IMarketConfigurator {
    using Address for address;
    using EnumerableSet for EnumerableSet.AddressSet;
    using LibString for string;
    using LibString for bytes32;
    using SafeERC20 for IERC20;

    // --------------- //
    // STATE VARIABLES //
    // --------------- //

    /// @notice Admin address
    address public immutable override admin;

    /// @notice Emergency admin address
    address public override emergencyAdmin;

    /// @dev Risk curator name as small string
    bytes32 internal immutable _curatorName;

    /// @notice ACL contract address
    address public immutable override acl;

    /// @notice Contracts register contract address
    address public immutable override contractsRegister;

    /// @notice Treasury address
    address public immutable override treasury;

    /// @dev Mapping from `domain` to set of periphery contracts
    mapping(bytes32 domain => EnumerableSet.AddressSet) internal _peripheryContracts;

    /// @dev Mapping from `pool` to market factories
    mapping(address pool => MarketFactories) internal _marketFactories;

    /// @dev Mapping from `creditManager` to credit factory
    mapping(address creditManager => address) internal _creditFactories;

    /// @dev Mapping from `target` to factory authorized to configure it
    mapping(address target => address) internal _authorizedFactories;

    /// @dev Mapping from `factory` and market/credit `suite` to set of contracts in this suite
    ///      that factory is authorized to configure
    mapping(address factory => mapping(address suite => EnumerableSet.AddressSet)) internal _factoryTargets;

    // --------- //
    // MODIFIERS //
    // --------- //

    /// @dev Reverts if caller is not the contract itself
    modifier onlySelf() {
        _ensureCallerIsSelf();
        _;
    }

    /// @dev Reverts if caller is not the admin
    modifier onlyAdmin() {
        _ensureCallerIsAdmin();
        _;
    }

    /// @dev Reverts if caller is not the emergency admin
    modifier onlyEmergencyAdmin() {
        _ensureCallerIsEmergencyAdmin();
        _;
    }

    /// @dev Reverts if `pool` is not registered
    modifier onlyRegisteredMarket(address pool) {
        _ensureRegisteredMarket(pool);
        _;
    }

    /// @dev Reverts if `creditManager` is not registered
    modifier onlyRegisteredCreditSuite(address creditManager) {
        _ensureRegisteredCreditSuite(creditManager);
        _;
    }

    // ----------- //
    // CONSTRUCTOR //
    // ----------- //

    /// @notice Constructor
    /// @param addressProvider_ Address provider contract address
    /// @param admin_ Address to set as market configurator's admin or governor's owner, depending on `deployGovernor_`
    /// @param emergencyAdmin_ Address to set as emergency admin
    /// @param adminFeeTreasury_ Address to set as the second admin of the fee splitter, with the first one being the
    ///        DAO treasury. If `address(0)`, the splitter is not deployed and all fees will be sent to the treasury.
    /// @param curatorName_ Risk curator name
    /// @param deployGovernor_ If true, a governor contract is deployed and set as market configurator's admin.
    ///        `admin_` is set as its owner, queue and execution admin, while `emergencyAdmin_` is set as veto admin.
    ///        Otherwise, `admin_` is set as the admin of the market configurator.
    /// @dev Market configurator is granted pausable and unpausable admin roles in ACL
    constructor(
        address addressProvider_,
        address admin_,
        address emergencyAdmin_,
        address adminFeeTreasury_,
        string memory curatorName_,
        bool deployGovernor_
    ) DeployerTrait(addressProvider_) {
        if (deployGovernor_) {
            address governor = _deployLatestPatch({
                contractType: AP_GOVERNOR,
                minorVersion: 3_10,
                constructorParams: abi.encode(admin_, emergencyAdmin_, 1 days, false),
                salt: 0
            });
            admin = IGovernor(governor).timeLock();
        } else {
            admin = admin_;
        }
        emergencyAdmin = emergencyAdmin_;
        _curatorName = curatorName_.toSmallString();

        acl = _deployLatestPatch({
            contractType: AP_ACL,
            minorVersion: 3_10,
            constructorParams: abi.encode(address(this)),
            salt: 0
        });
        contractsRegister = _deployLatestPatch({
            contractType: AP_CONTRACTS_REGISTER,
            minorVersion: 3_10,
            constructorParams: abi.encode(acl),
            salt: 0
        });
        if (adminFeeTreasury_ != address(0)) {
            treasury = _deployLatestPatch({
                contractType: AP_TREASURY_SPLITTER,
                minorVersion: 3_10,
                constructorParams: abi.encode(addressProvider, admin, adminFeeTreasury_),
                salt: 0
            });
        } else {
            treasury = _getAddressOrRevert(AP_TREASURY, NO_VERSION_CONTROL);
        }

        IACL(acl).grantRole(ROLE_PAUSABLE_ADMIN, address(this));
        IACL(acl).grantRole(ROLE_UNPAUSABLE_ADMIN, address(this));

        emit SetEmergencyAdmin(emergencyAdmin_);
        emit GrantRole(ROLE_PAUSABLE_ADMIN, address(this));
        emit GrantRole(ROLE_UNPAUSABLE_ADMIN, address(this));
    }

    // -------- //
    // METADATA //
    // -------- //

    /// @notice Contract version
    /// @dev `MarketConfiguratorLegacy` might have different version, hence the `virtual` modifier
    function version() external view virtual override returns (uint256) {
        return 3_10;
    }

    /// @notice Contract type
    /// @dev `MarketConfiguratorLegacy` has different type, hence the `virtual` modifier
    function contractType() external view virtual override returns (bytes32) {
        return AP_MARKET_CONFIGURATOR;
    }

    /// @notice Curator name
    function curatorName() external view override returns (string memory) {
        return _curatorName.fromSmallString();
    }

    // ---------------- //
    // ROLES MANAGEMENT //
    // ---------------- //

    /// @notice Sets `newEmergencyAdmin` as emergency admin
    /// @dev Reverts if caller is not the admin
    function setEmergencyAdmin(address newEmergencyAdmin) external override onlyAdmin {
        if (newEmergencyAdmin == emergencyAdmin) return;
        emergencyAdmin = newEmergencyAdmin;
        emit SetEmergencyAdmin(newEmergencyAdmin);
    }

    /// @notice Grants role `role` to account `account`
    /// @dev Reverts if caller is not the admin
    function grantRole(bytes32 role, address account) external override onlyAdmin {
        _grantRole(role, account);
        emit GrantRole(role, account);
    }

    /// @notice Revokes role `role` from account `account`
    /// @dev Reverts if caller is not the admin
    function revokeRole(bytes32 role, address account) external override onlyAdmin {
        _revokeRole(role, account);
        emit RevokeRole(role, account);
    }

    /// @notice Emergency revokes role `role` from account `account`
    /// @dev Reverts if caller is not the emergency admin
    function emergencyRevokeRole(bytes32 role, address account) external override onlyEmergencyAdmin {
        _revokeRole(role, account);
        emit EmergencyRevokeRole(role, account);
    }

    // ----------------- //
    // MARKET MANAGEMENT //
    // ----------------- //

    /// @notice Returns the address of a pool that would be created with given parameters
    /// @param minorVersion Minor version to use for deployment
    /// @param underlying Market's underlying token
    /// @param name Market's name
    /// @param symbol Market's symbol
    function previewCreateMarket(uint256 minorVersion, address underlying, string calldata name, string calldata symbol)
        external
        view
        override
        returns (address)
    {
        MarketFactories memory factories = _getLatestMarketFactories(minorVersion);
        return IPoolFactory(factories.poolFactory).computePoolAddress(address(this), underlying, name, symbol);
    }

    /// @notice Creates and registers new market with given parameters.
    ///         Executes `onCreateMarket` hook of all market factories.
    /// @param minorVersion Minor version to use for deployment
    /// @param underlying Market's underlying token
    /// @param name Market's name
    /// @param symbol Market's symbol
    /// @param interestRateModelParams Parameters for interest rate model deployment
    /// @param rateKeeperParams Parameters for rate keeper deployment
    /// @param lossPolicyParams Parameters for loss policy deployment
    /// @param underlyingPriceFeed Price feed for underlying token
    /// @return pool Address of the created pool
    /// @dev Reverts if caller is not the admin
    function createMarket(
        uint256 minorVersion,
        address underlying,
        string calldata name,
        string calldata symbol,
        DeployParams calldata interestRateModelParams,
        DeployParams calldata rateKeeperParams,
        DeployParams calldata lossPolicyParams,
        address underlyingPriceFeed
    ) external override onlyAdmin returns (address pool) {
        MarketFactories memory factories = _getLatestMarketFactories(minorVersion);

        // NOTE: some implementations of pool factory might need underlying to mint dead shares
        IERC20(underlying).forceApprove(factories.poolFactory, type(uint256).max);
        pool = _deployPool(factories.poolFactory, underlying, name, symbol);
        IERC20(underlying).forceApprove(factories.poolFactory, 0);

        address priceOracle = _deployPriceOracle(factories.priceOracleFactory, pool);
        address interestRateModel =
            _deployInterestRateModel(factories.interestRateModelFactory, pool, interestRateModelParams);
        address rateKeeper = _deployRateKeeper(factories.rateKeeperFactory, pool, rateKeeperParams);
        address lossPolicy = _deployLossPolicy(factories.lossPolicyFactory, pool, lossPolicyParams);
        _marketFactories[pool] = factories;

        _registerMarket(pool, priceOracle, lossPolicy);
        _executeMarketHooks(
            pool,
            abi.encodeCall(
                IMarketFactory.onCreateMarket,
                (pool, priceOracle, interestRateModel, rateKeeper, lossPolicy, underlyingPriceFeed)
            )
        );
        emit CreateMarket(pool, priceOracle, interestRateModel, rateKeeper, lossPolicy, factories);
    }

    /// @notice Shuts down market for `pool`.
    ///         Executes `onShutdownMarket` hook of all market factories.
    /// @dev Reverts if caller is not the admin
    /// @dev Reverts if pool is not registered
    function shutdownMarket(address pool) external override onlyAdmin onlyRegisteredMarket(pool) {
        _executeMarketHooks(pool, abi.encodeCall(IMarketFactory.onShutdownMarket, (pool)));
        IContractsRegister(contractsRegister).shutdownMarket(pool);
        emit ShutdownMarket(pool);
    }

    /// @notice Adds token `token` with price feed `priceFeed` to market for `pool`.
    ///         Executes `onAddToken` hook of all market factories.
    /// @dev Reverts if caller is not the admin
    /// @dev Reverts if pool is not registered
    function addToken(address pool, address token, address priceFeed)
        external
        override
        onlyAdmin
        onlyRegisteredMarket(pool)
    {
        _executeMarketHooks(pool, abi.encodeCall(IMarketFactory.onAddToken, (pool, token, priceFeed)));
        emit AddToken(pool, token);
    }

    /// @notice Configures `pool` by executing `configure` hook of market's pool factory
    /// @dev Reverts if caller is not the admin
    /// @dev Reverts if pool is not registered
    function configurePool(address pool, bytes calldata data) external override onlyAdmin onlyRegisteredMarket(pool) {
        _configure(_marketFactories[pool].poolFactory, pool, data);
        emit ConfigurePool(pool, data);
    }

    /// @notice Configures `pool` by executing `emergencyConfigure` hook of market's pool factory
    /// @dev Reverts if caller is not the emergency admin
    /// @dev Reverts if pool is not registered
    function emergencyConfigurePool(address pool, bytes calldata data)
        external
        override
        onlyEmergencyAdmin
        onlyRegisteredMarket(pool)
    {
        _emergencyConfigure(_marketFactories[pool].poolFactory, pool, data);
        emit EmergencyConfigurePool(pool, data);
    }

    /// @dev Deploys pool via factory and executes installation hooks
    function _deployPool(address factory, address underlying, string calldata name, string calldata symbol)
        internal
        returns (address)
    {
        DeployResult memory deployResult = IPoolFactory(factory).deployPool(underlying, name, symbol);
        _executeHook(factory, deployResult.onInstallOps);
        return deployResult.newContract;
    }

    // ----------------------- //
    // CREDIT SUITE MANAGEMENT //
    // ----------------------- //

    /// @notice Returns the address of a credit manager that would be created in existing market
    /// @param minorVersion Minor version to use for deployment
    /// @param pool Pool to create credit suite for
    /// @param encodedParams Encoded parameters for credit suite deployment
    function previewCreateCreditSuite(uint256 minorVersion, address pool, bytes calldata encodedParams)
        external
        view
        override
        returns (address)
    {
        address factory = _getLatestCreditFactory(minorVersion);
        return ICreditFactory(factory).computeCreditManagerAddress(
            address(this),
            pool,
            IPoolV3(pool).asset(),
            IContractsRegister(contractsRegister).getPriceOracle(pool),
            encodedParams
        );
    }

    /// @notice Returns the address of a credit manager that would be created in a new market
    /// @param marketMinorVersion Minor version to use for market deployment
    /// @param creditSuiteMinorVersion Minor version to use for credit manager deployment
    /// @param underlying Market's underlying token
    /// @param name Market's name
    /// @param symbol Market's symbol
    /// @param encodedParams Encoded parameters for credit manager deployment
    function previewCreateCreditSuite(
        uint256 marketMinorVersion,
        uint256 creditSuiteMinorVersion,
        address underlying,
        string calldata name,
        string calldata symbol,
        bytes calldata encodedParams
    ) external view override returns (address) {
        MarketFactories memory factories = _getLatestMarketFactories(marketMinorVersion);
        address pool = IPoolFactory(factories.poolFactory).computePoolAddress(address(this), underlying, name, symbol);
        address priceOracle =
            IPriceOracleFactory(factories.priceOracleFactory).computePriceOracleAddress(address(this), pool);

        address factory = _getLatestCreditFactory(creditSuiteMinorVersion);
        return ICreditFactory(factory).computeCreditManagerAddress(
            address(this), pool, underlying, priceOracle, encodedParams
        );
    }

    /// @notice Creates and registers new credit suite in a market for `pool`.
    ///         Executes `onCreateCreditSuite` hook of all market factories.
    /// @param minorVersion Minor version to use for deployment
    /// @param pool Pool to create credit suite for
    /// @param encodedParams Encoded parameters for credit suite deployment
    /// @return creditManager Address of the created credit manager
    /// @dev Reverts if caller is not the admin
    /// @dev Reverts if pool is not registered
    function createCreditSuite(uint256 minorVersion, address pool, bytes calldata encodedParams)
        external
        override
        onlyAdmin
        onlyRegisteredMarket(pool)
        returns (address creditManager)
    {
        address factory = _getLatestCreditFactory(minorVersion);
        creditManager = _deployCreditSuite(factory, pool, encodedParams);
        _creditFactories[creditManager] = factory;

        _registerCreditSuite(creditManager);
        _executeMarketHooks(pool, abi.encodeCall(IMarketFactory.onCreateCreditSuite, (creditManager)));
        emit CreateCreditSuite(creditManager, factory);
    }

    /// @notice Shuts down credit suite for `creditManager`.
    ///         Executes `onShutdownCreditSuite` hook of all market factories.
    /// @dev Reverts if caller is not the admin
    /// @dev Reverts if credit suite is not registered
    function shutdownCreditSuite(address creditManager)
        external
        override
        onlyAdmin
        onlyRegisteredCreditSuite(creditManager)
    {
        address pool = ICreditManagerV3(creditManager).pool();
        _executeMarketHooks(pool, abi.encodeCall(IMarketFactory.onShutdownCreditSuite, (creditManager)));
        IContractsRegister(contractsRegister).shutdownCreditSuite(creditManager);
        emit ShutdownCreditSuite(creditManager);
    }

    /// @notice Configures credit suite for `creditManager` by executing `configure` hook of its factory
    /// @dev Reverts if caller is not the admin
    /// @dev Reverts if credit suite is not registered
    function configureCreditSuite(address creditManager, bytes calldata data)
        external
        override
        onlyAdmin
        onlyRegisteredCreditSuite(creditManager)
    {
        _configure(_creditFactories[creditManager], creditManager, data);
        emit ConfigureCreditSuite(creditManager, data);
    }

    /// @notice Configures credit suite for `creditManager` by executing `emergencyConfigure` hook of its factory
    /// @dev Reverts if caller is not the emergency admin
    /// @dev Reverts if credit manager is not registered
    function emergencyConfigureCreditSuite(address creditManager, bytes calldata data)
        external
        override
        onlyEmergencyAdmin
        onlyRegisteredCreditSuite(creditManager)
    {
        _emergencyConfigure(_creditFactories[creditManager], creditManager, data);
        emit EmergencyConfigureCreditSuite(creditManager, data);
    }

    /// @dev Deploys credit suite via factory and executes installation hooks
    function _deployCreditSuite(address factory, address pool, bytes calldata encodedParams)
        internal
        returns (address)
    {
        DeployResult memory deployResult = ICreditFactory(factory).deployCreditSuite(pool, encodedParams);
        _executeHook(factory, deployResult.onInstallOps);
        return deployResult.newContract;
    }

    // ----------------------- //
    // PRICE ORACLE MANAGEMENT //
    // ----------------------- //

    /// @notice Updates price oracle in market for `pool`.
    ///         Executes `onUpdatePriceOracle` hook of all market and credit factories.
    /// @param pool Pool to update price oracle for
    /// @dev Reverts if caller is not the admin
    /// @dev Reverts if pool is not registered
    function updatePriceOracle(address pool)
        external
        override
        onlyAdmin
        onlyRegisteredMarket(pool)
        returns (address priceOracle)
    {
        address oldPriceOracle = IContractsRegister(contractsRegister).getPriceOracle(pool);
        priceOracle = _deployPriceOracle(_marketFactories[pool].priceOracleFactory, pool);

        IContractsRegister(contractsRegister).setPriceOracle(pool, priceOracle);
        _executeMarketHooks(
            pool, abi.encodeCall(IMarketFactory.onUpdatePriceOracle, (pool, priceOracle, oldPriceOracle))
        );

        address[] memory creditManagers = _registeredCreditManagers(pool);
        uint256 numManagers = creditManagers.length;
        for (uint256 i; i < numManagers; ++i) {
            address creditManager = creditManagers[i];
            _executeHook(
                _creditFactories[creditManager],
                abi.encodeCall(ICreditFactory.onUpdatePriceOracle, (creditManager, priceOracle, oldPriceOracle))
            );
        }
        emit UpdatePriceOracle(pool, priceOracle);
    }

    /// @notice Configures price oracle in market for `pool` by executing
    ///         `configure` hook of market's price oracle factory
    /// @dev Reverts if caller is not the admin
    /// @dev Reverts if pool is not registered
    function configurePriceOracle(address pool, bytes calldata data)
        external
        override
        onlyAdmin
        onlyRegisteredMarket(pool)
    {
        _configure(_marketFactories[pool].priceOracleFactory, pool, data);
        emit ConfigurePriceOracle(pool, data);
    }

    /// @notice Emergency configures price oracle in market for `pool` by executing
    ///         `emergencyConfigure` hook of market's price oracle factory
    /// @dev Reverts if caller is not the emergency admin
    /// @dev Reverts if pool is not registered
    function emergencyConfigurePriceOracle(address pool, bytes calldata data)
        external
        override
        onlyEmergencyAdmin
        onlyRegisteredMarket(pool)
    {
        _emergencyConfigure(_marketFactories[pool].priceOracleFactory, pool, data);
        emit EmergencyConfigurePriceOracle(pool, data);
    }

    /// @dev Deploys price oracle via factory and executes installation hooks
    function _deployPriceOracle(address factory, address pool) internal returns (address) {
        DeployResult memory deployResult = IPriceOracleFactory(factory).deployPriceOracle(pool);
        _executeHook(factory, deployResult.onInstallOps);
        return deployResult.newContract;
    }

    // -------------- //
    // IRM MANAGEMENT //
    // -------------- //

    /// @notice Updates interest rate model in market for `pool`.
    ///         Executes `onUpdateInterestRateModel` hook of all market factories.
    /// @param pool Pool to update interest rate model for
    /// @param params Parameters for interest rate model deployment
    /// @dev Reverts if caller is not the admin
    /// @dev Reverts if pool is not registered
    function updateInterestRateModel(address pool, DeployParams calldata params)
        external
        override
        onlyAdmin
        onlyRegisteredMarket(pool)
        returns (address interestRateModel)
    {
        address oldInterestRateModel = _interestRateModel(pool);
        interestRateModel = _deployInterestRateModel(_marketFactories[pool].interestRateModelFactory, pool, params);

        _executeMarketHooks(
            pool,
            abi.encodeCall(IMarketFactory.onUpdateInterestRateModel, (pool, interestRateModel, oldInterestRateModel))
        );
        emit UpdateInterestRateModel(pool, interestRateModel);
    }

    /// @notice Configures interest rate model in market for `pool` by executing
    ///         `configure` hook of market's interest rate model factory
    /// @dev Reverts if caller is not the admin
    /// @dev Reverts if pool is not registered
    function configureInterestRateModel(address pool, bytes calldata data)
        external
        override
        onlyAdmin
        onlyRegisteredMarket(pool)
    {
        _configure(_marketFactories[pool].interestRateModelFactory, pool, data);
        emit ConfigureInterestRateModel(pool, data);
    }

    /// @notice Emergency configures interest rate model in market for `pool` by executing
    ///         `emergencyConfigure` hook of market's interest rate model factory
    /// @dev Reverts if caller is not the emergency admin
    /// @dev Reverts if pool is not registered
    function emergencyConfigureInterestRateModel(address pool, bytes calldata data)
        external
        override
        onlyEmergencyAdmin
        onlyRegisteredMarket(pool)
    {
        _emergencyConfigure(_marketFactories[pool].interestRateModelFactory, pool, data);
        emit EmergencyConfigureInterestRateModel(pool, data);
    }

    /// @dev Deploys interest rate model via factory and executes installation hooks
    function _deployInterestRateModel(address factory, address pool, DeployParams calldata params)
        internal
        returns (address)
    {
        DeployResult memory deployResult = IInterestRateModelFactory(factory).deployInterestRateModel(pool, params);
        _executeHook(factory, deployResult.onInstallOps);
        return deployResult.newContract;
    }

    // ---------------------- //
    // RATE KEEPER MANAGEMENT //
    // ---------------------- //

    /// @notice Updates rate keeper in market for `pool`.
    ///         Executes `onUpdateRateKeeper` hook of all market factories.
    /// @param pool Pool to update rate keeper for
    /// @param params Parameters for rate keeper deployment
    /// @dev Reverts if caller is not the admin
    /// @dev Reverts if pool is not registered
    function updateRateKeeper(address pool, DeployParams calldata params)
        external
        override
        onlyAdmin
        onlyRegisteredMarket(pool)
        returns (address rateKeeper)
    {
        address oldRateKeeper = _rateKeeper(_quotaKeeper(pool));
        rateKeeper = _deployRateKeeper(_marketFactories[pool].rateKeeperFactory, pool, params);

        _executeMarketHooks(pool, abi.encodeCall(IMarketFactory.onUpdateRateKeeper, (pool, rateKeeper, oldRateKeeper)));
        emit UpdateRateKeeper(pool, rateKeeper);
    }

    /// @notice Configures rate keeper in market for `pool` by executing
    ///         `configure` hook of market's rate keeper factory
    /// @dev Reverts if caller is not the admin
    /// @dev Reverts if pool is not registered
    function configureRateKeeper(address pool, bytes calldata data)
        external
        override
        onlyAdmin
        onlyRegisteredMarket(pool)
    {
        _configure(_marketFactories[pool].rateKeeperFactory, pool, data);
        emit ConfigureRateKeeper(pool, data);
    }

    /// @notice Emergency configures rate keeper in market for `pool` by executing
    ///         `emergencyConfigure` hook of market's rate keeper factory
    /// @dev Reverts if caller is not the emergency admin
    /// @dev Reverts if pool is not registered
    function emergencyConfigureRateKeeper(address pool, bytes calldata data)
        external
        override
        onlyEmergencyAdmin
        onlyRegisteredMarket(pool)
    {
        _emergencyConfigure(_marketFactories[pool].rateKeeperFactory, pool, data);
        emit EmergencyConfigureRateKeeper(pool, data);
    }

    /// @dev Deploys rate keeper via factory and executes installation hooks
    function _deployRateKeeper(address factory, address pool, DeployParams calldata params)
        internal
        returns (address)
    {
        DeployResult memory deployResult = IRateKeeperFactory(factory).deployRateKeeper(pool, params);
        _executeHook(factory, deployResult.onInstallOps);
        return deployResult.newContract;
    }

    // ---------------------- //
    // LOSS POLICY MANAGEMENT //
    // ---------------------- //

    /// @notice Updates loss policy in market for `pool`.
    ///         Executes `onUpdateLossPolicy` hook of all market and credit factories.
    /// @param pool Pool to update loss policy for
    /// @param params Parameters for loss policy deployment
    /// @dev Reverts if caller is not the admin
    /// @dev Reverts if pool is not registered
    function updateLossPolicy(address pool, DeployParams calldata params)
        external
        override
        onlyAdmin
        onlyRegisteredMarket(pool)
        returns (address lossPolicy)
    {
        address oldLossPolicy = IContractsRegister(contractsRegister).getLossPolicy(pool);
        lossPolicy = _deployLossPolicy(_marketFactories[pool].lossPolicyFactory, pool, params);

        IContractsRegister(contractsRegister).setLossPolicy(pool, lossPolicy);
        _executeMarketHooks(pool, abi.encodeCall(IMarketFactory.onUpdateLossPolicy, (pool, lossPolicy, oldLossPolicy)));

        address[] memory creditManagers = _registeredCreditManagers(pool);
        uint256 numManagers = creditManagers.length;
        for (uint256 i; i < numManagers; ++i) {
            address creditManager = creditManagers[i];
            _executeHook(
                _creditFactories[creditManager],
                abi.encodeCall(ICreditFactory.onUpdateLossPolicy, (creditManager, lossPolicy, oldLossPolicy))
            );
        }
        emit UpdateLossPolicy(pool, lossPolicy);
    }

    /// @notice Configures loss policy in market for `pool` by executing
    ///         `configure` hook of market's loss policy factory
    /// @dev Reverts if caller is not the admin
    /// @dev Reverts if pool is not registered
    function configureLossPolicy(address pool, bytes calldata data)
        external
        override
        onlyAdmin
        onlyRegisteredMarket(pool)
    {
        _configure(_marketFactories[pool].lossPolicyFactory, pool, data);
        emit ConfigureLossPolicy(pool, data);
    }

    /// @notice Emergency configures loss policy in market for `pool` by executing
    ///         `emergencyConfigure` hook of market's loss policy factory
    /// @dev Reverts if caller is not the emergency admin
    /// @dev Reverts if pool is not registered
    function emergencyConfigureLossPolicy(address pool, bytes calldata data)
        external
        override
        onlyEmergencyAdmin
        onlyRegisteredMarket(pool)
    {
        _emergencyConfigure(_marketFactories[pool].lossPolicyFactory, pool, data);
        emit EmergencyConfigureLossPolicy(pool, data);
    }

    /// @dev Deploys loss policy for a pool via factory and executes installation hooks
    function _deployLossPolicy(address factory, address pool, DeployParams calldata params)
        internal
        returns (address)
    {
        DeployResult memory deployResult = ILossPolicyFactory(factory).deployLossPolicy(pool, params);
        _executeHook(factory, deployResult.onInstallOps);
        return deployResult.newContract;
    }

    // --------- //
    // FACTORIES //
    // --------- //

    /// @notice Returns factories in market for `pool`
    function getMarketFactories(address pool) external view override returns (MarketFactories memory) {
        return _marketFactories[pool];
    }

    /// @notice Returns credit factory of credit suite for `creditManager`
    function getCreditFactory(address creditManager) external view override returns (address) {
        return _creditFactories[creditManager];
    }

    /// @notice Returns factory authorized to configure given `target`
    function getAuthorizedFactory(address target) external view override returns (address) {
        return _authorizedFactories[target];
    }

    /// @notice Returns all targets `factory` is authorized to configure in a given market/credit `suite`
    function getFactoryTargets(address factory, address suite) external view override returns (address[] memory) {
        return _factoryTargets[factory][suite].values();
    }

    /// @notice Authorizes `factory` to configure `target` in a given market/credit `suite`
    /// @dev Reverts if caller is not the contract itself
    /// @dev Reverts if other factory is already authorized to configure `target`
    function authorizeFactory(address factory, address suite, address target) external override onlySelf {
        if (_authorizedFactories[target] == factory) return;
        if (_authorizedFactories[target] != address(0)) revert UnauthorizedFactoryException(factory, target);
        _authorizeFactory(factory, suite, target);
    }

    /// @notice Unauthorizes `factory` to configure `target` in a given market/credit `suite`
    /// @dev Reverts if caller is not the contract itself
    /// @dev Reverts if `factory` is not authorized to configure `target`
    function unauthorizeFactory(address factory, address suite, address target) external override onlySelf {
        if (_authorizedFactories[target] == address(0)) return;
        if (_authorizedFactories[target] != factory) revert UnauthorizedFactoryException(factory, target);
        _unauthorizeFactory(factory, suite, target);
    }

    /// @notice Upgrades pool factory of market for `pool` to latest patch
    /// @dev Reverts if caller is not the admin
    function upgradePoolFactory(address pool) external override onlyAdmin {
        address oldFactory = _marketFactories[pool].poolFactory;
        address newFactory = _getLatestPatch(oldFactory);
        if (newFactory == oldFactory) return;
        _marketFactories[pool].poolFactory = newFactory;
        _migrateFactoryTargets(oldFactory, newFactory, pool);
        emit UpgradePoolFactory(pool, newFactory);
    }

    /// @notice Upgrades price oracle factory of market for `pool` to latest patch
    /// @dev Reverts if caller is not the admin
    function upgradePriceOracleFactory(address pool) external override onlyAdmin {
        address oldFactory = _marketFactories[pool].priceOracleFactory;
        address newFactory = _getLatestPatch(oldFactory);
        if (newFactory == oldFactory) return;
        _marketFactories[pool].priceOracleFactory = newFactory;
        _migrateFactoryTargets(oldFactory, newFactory, pool);
        emit UpgradePriceOracleFactory(pool, newFactory);
    }

    /// @notice Upgrades interest rate model factory of market for `pool` to latest patch
    /// @dev Reverts if caller is not the admin
    function upgradeInterestRateModelFactory(address pool) external override onlyAdmin {
        address oldFactory = _marketFactories[pool].interestRateModelFactory;
        address newFactory = _getLatestPatch(oldFactory);
        if (newFactory == oldFactory) return;
        _marketFactories[pool].interestRateModelFactory = newFactory;
        _migrateFactoryTargets(oldFactory, newFactory, pool);
        emit UpgradeInterestRateModelFactory(pool, newFactory);
    }

    /// @notice Upgrades rate keeper factory of market for `pool` to latest patch
    /// @dev Reverts if caller is not the admin
    function upgradeRateKeeperFactory(address pool) external override onlyAdmin {
        address oldFactory = _marketFactories[pool].rateKeeperFactory;
        address newFactory = _getLatestPatch(oldFactory);
        if (newFactory == oldFactory) return;
        _marketFactories[pool].rateKeeperFactory = newFactory;
        _migrateFactoryTargets(oldFactory, newFactory, pool);
        emit UpgradeRateKeeperFactory(pool, newFactory);
    }

    /// @notice Upgrades loss policy factory of market for `pool` to latest patch
    /// @dev Reverts if caller is not the admin
    function upgradeLossPolicyFactory(address pool) external override onlyAdmin {
        address oldFactory = _marketFactories[pool].lossPolicyFactory;
        address newFactory = _getLatestPatch(oldFactory);
        if (newFactory == oldFactory) return;
        _marketFactories[pool].lossPolicyFactory = newFactory;
        _migrateFactoryTargets(oldFactory, newFactory, pool);
        emit UpgradeLossPolicyFactory(pool, newFactory);
    }

    /// @notice Upgrades credit factory of credit suite for `creditManager` to latest patch
    /// @dev Reverts if caller is not the admin
    function upgradeCreditFactory(address creditManager) external override onlyAdmin {
        address oldFactory = _creditFactories[creditManager];
        address newFactory = _getLatestPatch(oldFactory);
        if (newFactory == oldFactory) return;
        _creditFactories[creditManager] = newFactory;
        _migrateFactoryTargets(oldFactory, newFactory, creditManager);
        emit UpgradeCreditFactory(creditManager, newFactory);
    }

    // --------- //
    // PERIPHERY //
    // --------- //

    /// @notice Returns all periphery contracts registered in a given `domain`
    function getPeripheryContracts(bytes32 domain) external view override returns (address[] memory) {
        return _peripheryContracts[domain].values();
    }

    /// @notice Whether `peripheryContract` is registered in `domain`
    function isPeripheryContract(bytes32 domain, address peripheryContract) external view override returns (bool) {
        return _peripheryContracts[domain].contains(peripheryContract);
    }

    /// @notice Adds `peripheryContract` to a list of registered periphery contracts in its domain
    /// @dev Reverts if caller is not the admin
    /// @dev Reverts if contract is not deployed via bytecode repository
    function addPeripheryContract(address peripheryContract) external override onlyAdmin {
        if (!IBytecodeRepository(bytecodeRepository).isDeployedFromRepository(peripheryContract)) {
            revert IncorrectPeripheryContractException(peripheryContract);
        }
        bytes32 domain = _getDomain(peripheryContract);
        if (_peripheryContracts[domain].add(peripheryContract)) {
            emit AddPeripheryContract(domain, peripheryContract);
        }
    }

    /// @notice Removes `peripheryContract` from a list of registered periphery contracts in its domain
    /// @dev Reverts if caller is not the admin
    function removePeripheryContract(address peripheryContract) external override onlyAdmin {
        bytes32 domain = _getDomain(peripheryContract);
        if (_peripheryContracts[domain].remove(peripheryContract)) {
            emit RemovePeripheryContract(domain, peripheryContract);
        }
    }

    /// @dev Returns domain of a `peripheryContract`
    function _getDomain(address peripheryContract) internal view returns (bytes32) {
        try IVersion(peripheryContract).contractType() returns (bytes32 type_) {
            return Domain.extractDomain(type_);
        } catch {
            revert IncorrectPeripheryContractException(peripheryContract);
        }
    }

    // --------- //
    // INTERNALS //
    // --------- //

    /// @dev Ensures caller is the contract itself
    function _ensureCallerIsSelf() internal view {
        if (msg.sender != address(this)) revert CallerIsNotSelfException(msg.sender);
    }

    /// @dev Ensures caller is the admin
    function _ensureCallerIsAdmin() internal view {
        if (msg.sender != admin) revert CallerIsNotAdminException(msg.sender);
    }

    /// @dev Ensures caller is the emergency admin
    function _ensureCallerIsEmergencyAdmin() internal view {
        if (msg.sender != emergencyAdmin) revert CallerIsNotEmergencyAdminException(msg.sender);
    }

    /// @dev Ensures pool is registered
    function _ensureRegisteredMarket(address pool) internal view {
        if (!IContractsRegister(contractsRegister).isPool(pool)) {
            revert MarketNotRegisteredException(pool);
        }
    }

    /// @dev Ensures credit manager is registered
    function _ensureRegisteredCreditSuite(address creditManager) internal view {
        if (!IContractsRegister(contractsRegister).isCreditManager(creditManager)) {
            revert CreditSuiteNotRegisteredException(creditManager);
        }
    }

    /// @dev Grants role to account in ACL
    /// @dev `MarketConfiguratorLegacy` performs additional actions, hence the `virtual` modifier
    function _grantRole(bytes32 role, address account) internal virtual {
        IACL(acl).grantRole(role, account);
    }

    /// @dev Revokes role from account in ACL
    /// @dev `MarketConfiguratorLegacy` performs additional actions, hence the `virtual` modifier
    function _revokeRole(bytes32 role, address account) internal virtual {
        IACL(acl).revokeRole(role, account);
    }

    /// @dev Registers market in contracts register
    /// @dev `MarketConfiguratorLegacy` performs additional actions, hence the `virtual` modifier
    function _registerMarket(address pool, address priceOracle, address lossPolicy) internal virtual {
        IContractsRegister(contractsRegister).registerMarket(pool, priceOracle, lossPolicy);
    }

    /// @dev Registers credit suite in contracts register
    /// @dev `MarketConfiguratorLegacy` performs additional actions, hence the `virtual` modifier
    function _registerCreditSuite(address creditManager) internal virtual {
        IContractsRegister(contractsRegister).registerCreditSuite(creditManager);
    }

    /// @dev Validates that `factory` is authorized to configure `target`
    /// @dev `MarketConfiguratorLegacy` performs additional checks, hence the `virtual` modifier
    function _validateCallTarget(address target, address factory) internal virtual {
        if (target != address(this) && _authorizedFactories[target] != factory) {
            revert UnauthorizedFactoryException(factory, target);
        }
    }

    /// @dev Returns latest patch in the address provider for given contract type with matching minor version
    function _getLatestPatch(bytes32 key, uint256 minorVersion) internal view returns (address) {
        return _getAddressOrRevert(key, IAddressProvider(addressProvider).getLatestPatchVersion(key, minorVersion));
    }

    /// @dev Returns latest patch for given `factory`
    function _getLatestPatch(address factory) internal view returns (address) {
        return _getLatestPatch(IVersion(factory).contractType(), IVersion(factory).version());
    }

    /// @dev Returns latest market factories for given `minorVersion`
    function _getLatestMarketFactories(uint256 minorVersion) internal view returns (MarketFactories memory) {
        if (minorVersion / 100 != 3) revert IncorrectMinorVersionException(minorVersion);
        return MarketFactories({
            poolFactory: _getLatestPatch(AP_POOL_FACTORY, minorVersion),
            priceOracleFactory: _getLatestPatch(AP_PRICE_ORACLE_FACTORY, minorVersion),
            interestRateModelFactory: _getLatestPatch(AP_INTEREST_RATE_MODEL_FACTORY, minorVersion),
            rateKeeperFactory: _getLatestPatch(AP_RATE_KEEPER_FACTORY, minorVersion),
            lossPolicyFactory: _getLatestPatch(AP_LOSS_POLICY_FACTORY, minorVersion)
        });
    }

    /// @dev Returns latest credit factory for given `minorVersion`
    function _getLatestCreditFactory(uint256 minorVersion) internal view returns (address) {
        if (minorVersion / 100 != 3) revert IncorrectMinorVersionException(minorVersion);
        return _getLatestPatch(AP_CREDIT_FACTORY, minorVersion);
    }

    /// @dev Authorizes `factory` to configure `target` in a market/credit `suite`
    function _authorizeFactory(address factory, address suite, address target) internal {
        _authorizedFactories[target] = factory;
        _factoryTargets[factory][suite].add(target);
        emit AuthorizeFactory(factory, suite, target);
    }

    /// @dev Unauthorizes `factory` to configure `target` in a market/credit `suite`
    function _unauthorizeFactory(address factory, address suite, address target) internal {
        _authorizedFactories[target] = address(0);
        _factoryTargets[factory][suite].remove(target);
        emit UnauthorizeFactory(factory, suite, target);
    }

    /// @dev Migrates all targets from old factory to new factory in a market or credit suite
    function _migrateFactoryTargets(address oldFactory, address newFactory, address suite) internal {
        address[] memory targets = _factoryTargets[oldFactory][suite].values();
        uint256 numTargets = targets.length;
        for (uint256 i; i < numTargets; ++i) {
            address target = targets[i];
            _factoryTargets[oldFactory][suite].remove(target);
            _factoryTargets[newFactory][suite].add(target);
            _authorizedFactories[target] = newFactory;
            emit UnauthorizeFactory(oldFactory, suite, target);
            emit AuthorizeFactory(newFactory, suite, target);
        }
    }

    /// @dev Executes calls returned by a hook in all market factories
    function _executeMarketHooks(address pool, bytes memory data) internal {
        MarketFactories memory factories = _marketFactories[pool];
        _executeHook(factories.poolFactory, data);
        _executeHook(factories.priceOracleFactory, data);
        _executeHook(factories.interestRateModelFactory, data);
        _executeHook(factories.rateKeeperFactory, data);
        _executeHook(factories.lossPolicyFactory, data);
    }

    /// @dev Executes calls returned by factory hook
    function _executeHook(address factory, bytes memory data) internal {
        _executeHook(factory, abi.decode(factory.functionCall(data), (Call[])));
    }

    /// @dev Executes calls returned by factory configuration hook
    function _configure(address factory, address target, bytes calldata callData) internal {
        _executeHook(factory, IFactory(factory).configure(target, callData));
    }

    /// @dev Executes calls returned by factory emergency configuration hook
    function _emergencyConfigure(address factory, address target, bytes calldata callData) internal {
        _executeHook(factory, IFactory(factory).emergencyConfigure(target, callData));
    }

    /// @dev Executes array of calls after validating targets
    function _executeHook(address factory, Call[] memory calls) internal {
        uint256 len = calls.length;
        for (uint256 i; i < len; ++i) {
            address target = calls[i].target;
            bytes memory callData = calls[i].callData;
            _validateCallTarget(target, factory);
            target.functionCall(callData);
            emit ExecuteHook(target, callData);
        }
    }

    /// @dev Returns all registered credit managers
    function _registeredCreditManagers() internal view returns (address[] memory) {
        return IContractsRegister(contractsRegister).getCreditManagers();
    }

    /// @dev Returns all registered credit managers for `pool`
    function _registeredCreditManagers(address pool) internal view returns (address[] memory creditManagers) {
        return IContractsRegister(contractsRegister).getCreditManagers(pool);
    }

    /// @dev Returns quota keeper of `pool`
    function _quotaKeeper(address pool) internal view returns (address) {
        return IPoolV3(pool).poolQuotaKeeper();
    }

    /// @dev Returns interest rate model if `pool`
    function _interestRateModel(address pool) internal view returns (address) {
        return IPoolV3(pool).interestRateModel();
    }

    /// @dev Returns rate keeper of `quotaKeeper`
    function _rateKeeper(address quotaKeeper) internal view returns (address) {
        return IPoolQuotaKeeperV3(quotaKeeper).gauge();
    }
}

// ============================================================
// FILE: lib/@gearbox-protocol/permissionless/contracts/traits/DeployerTrait.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2024.
pragma solidity ^0.8.23;

import {LibString} from "@solady/utils/LibString.sol";

import {IAddressProvider} from "../interfaces/IAddressProvider.sol";
import {IBytecodeRepository} from "../interfaces/IBytecodeRepository.sol";
import {IDeployerTrait} from "../interfaces/base/IDeployerTrait.sol";

import {AP_BYTECODE_REPOSITORY, NO_VERSION_CONTROL} from "../libraries/ContractLiterals.sol";
import {Domain} from "../libraries/Domain.sol";

abstract contract DeployerTrait is IDeployerTrait {
    using LibString for string;
    using LibString for bytes32;

    address public immutable override addressProvider;
    address public immutable override bytecodeRepository;

    constructor(address addressProvider_) {
        addressProvider = addressProvider_;
        bytecodeRepository = _getAddressOrRevert(AP_BYTECODE_REPOSITORY, NO_VERSION_CONTROL);
    }

    function _getAddress(bytes32 key, uint256 version) internal view returns (address) {
        return IAddressProvider(addressProvider).getAddress(key, version);
    }

    function _getAddressOrRevert(bytes32 key, uint256 version) internal view returns (address) {
        return IAddressProvider(addressProvider).getAddressOrRevert(key, version);
    }

    function _getContractType(bytes32 domain, bytes32 postfix) internal pure returns (bytes32) {
        return Domain.getContractType(domain, postfix);
    }

    function _deploy(bytes32 contractType, uint256 version, bytes memory constructorParams, bytes32 salt)
        internal
        returns (address)
    {
        return IBytecodeRepository(bytecodeRepository).deploy(contractType, version, constructorParams, salt);
    }

    function _computeAddress(
        bytes32 contractType,
        uint256 version,
        bytes memory constructorParams,
        bytes32 salt,
        address deployer
    ) internal view returns (address) {
        return IBytecodeRepository(bytecodeRepository).computeAddress(
            contractType, version, constructorParams, salt, deployer
        );
    }

    function _deployLatestPatch(
        bytes32 contractType,
        uint256 minorVersion,
        bytes memory constructorParams,
        bytes32 salt
    ) internal returns (address) {
        // NOTE: it's best to add a check that deployed contract's version matches the expected one in the governor
        return _deploy(contractType, _getLatestPatchVersion(contractType, minorVersion), constructorParams, salt);
    }

    function _computeAddressLatestPatch(
        bytes32 contractType,
        uint256 minorVersion,
        bytes memory constructorParams,
        bytes32 salt,
        address deployer
    ) internal view returns (address) {
        return _computeAddress(
            contractType, _getLatestPatchVersion(contractType, minorVersion), constructorParams, salt, deployer
        );
    }

    function _getLatestPatchVersion(bytes32 contractType, uint256 minorVersion) internal view returns (uint256) {
        return IBytecodeRepository(bytecodeRepository).getLatestPatchVersion(contractType, minorVersion);
    }

    function _getTokenSpecificPostfix(address token) internal view returns (bytes32) {
        return IBytecodeRepository(bytecodeRepository).getTokenSpecificPostfix(token);
    }
}

// ============================================================
// FILE: lib/@openzeppelin/contracts/interfaces/IERC4626.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (interfaces/IERC4626.sol)

pragma solidity ^0.8.0;

import "../token/ERC20/IERC20.sol";
import "../token/ERC20/extensions/IERC20Metadata.sol";

/**
 * @dev Interface of the ERC4626 "Tokenized Vault Standard", as defined in
 * https://eips.ethereum.org/EIPS/eip-4626[ERC-4626].
 *
 * _Available since v4.7._
 */
interface IERC4626 is IERC20, IERC20Metadata {
    event Deposit(address indexed sender, address indexed owner, uint256 assets, uint256 shares);

    event Withdraw(
        address indexed sender,
        address indexed receiver,
        address indexed owner,
        uint256 assets,
        uint256 shares
    );

    /**
     * @dev Returns the address of the underlying token used for the Vault for accounting, depositing, and withdrawing.
     *
     * - MUST be an ERC-20 token contract.
     * - MUST NOT revert.
     */
    function asset() external view returns (address assetTokenAddress);

    /**
     * @dev Returns the total amount of the underlying asset that is “managed” by Vault.
     *
     * - SHOULD include any compounding that occurs from yield.
     * - MUST be inclusive of any fees that are charged against assets in the Vault.
     * - MUST NOT revert.
     */
    function totalAssets() external view returns (uint256 totalManagedAssets);

    /**
     * @dev Returns the amount of shares that the Vault would exchange for the amount of assets provided, in an ideal
     * scenario where all the conditions are met.
     *
     * - MUST NOT be inclusive of any fees that are charged against assets in the Vault.
     * - MUST NOT show any variations depending on the caller.
     * - MUST NOT reflect slippage or other on-chain conditions, when performing the actual exchange.
     * - MUST NOT revert.
     *
     * NOTE: This calculation MAY NOT reflect the “per-user” price-per-share, and instead should reflect the
     * “average-user’s” price-per-share, meaning what the average user should expect to see when exchanging to and
     * from.
     */
    function convertToShares(uint256 assets) external view returns (uint256 shares);

    /**
     * @dev Returns the amount of assets that the Vault would exchange for the amount of shares provided, in an ideal
     * scenario where all the conditions are met.
     *
     * - MUST NOT be inclusive of any fees that are charged against assets in the Vault.
     * - MUST NOT show any variations depending on the caller.
     * - MUST NOT reflect slippage or other on-chain conditions, when performing the actual exchange.
     * - MUST NOT revert.
     *
     * NOTE: This calculation MAY NOT reflect the “per-user” price-per-share, and instead should reflect the
     * “average-user’s” price-per-share, meaning what the average user should expect to see when exchanging to and
     * from.
     */
    function convertToAssets(uint256 shares) external view returns (uint256 assets);

    /**
     * @dev Returns the maximum amount of the underlying asset that can be deposited into the Vault for the receiver,
     * through a deposit call.
     *
     * - MUST return a limited value if receiver is subject to some deposit limit.
     * - MUST return 2 ** 256 - 1 if there is no limit on the maximum amount of assets that may be deposited.
     * - MUST NOT revert.
     */
    function maxDeposit(address receiver) external view returns (uint256 maxAssets);

    /**
     * @dev Allows an on-chain or off-chain user to simulate the effects of their deposit at the current block, given
     * current on-chain conditions.
     *
     * - MUST return as close to and no more than the exact amount of Vault shares that would be minted in a deposit
     *   call in the same transaction. I.e. deposit should return the same or more shares as previewDeposit if called
     *   in the same transaction.
     * - MUST NOT account for deposit limits like those returned from maxDeposit and should always act as though the
     *   deposit would be accepted, regardless if the user has enough tokens approved, etc.
     * - MUST be inclusive of deposit fees. Integrators should be aware of the existence of deposit fees.
     * - MUST NOT revert.
     *
     * NOTE: any unfavorable discrepancy between convertToShares and previewDeposit SHOULD be considered slippage in
     * share price or some other type of condition, meaning the depositor will lose assets by depositing.
     */
    function previewDeposit(uint256 assets) external view returns (uint256 shares);

    /**
     * @dev Mints shares Vault shares to receiver by depositing exactly amount of underlying tokens.
     *
     * - MUST emit the Deposit event.
     * - MAY support an additional flow in which the underlying tokens are owned by the Vault contract before the
     *   deposit execution, and are accounted for during deposit.
     * - MUST revert if all of assets cannot be deposited (due to deposit limit being reached, slippage, the user not
     *   approving enough underlying tokens to the Vault contract, etc).
     *
     * NOTE: most implementations will require pre-approval of the Vault with the Vault’s underlying asset token.
     */
    function deposit(uint256 assets, address receiver) external returns (uint256 shares);

    /**
     * @dev Returns the maximum amount of the Vault shares that can be minted for the receiver, through a mint call.
     * - MUST return a limited value if receiver is subject to some mint limit.
     * - MUST return 2 ** 256 - 1 if there is no limit on the maximum amount of shares that may be minted.
     * - MUST NOT revert.
     */
    function maxMint(address receiver) external view returns (uint256 maxShares);

    /**
     * @dev Allows an on-chain or off-chain user to simulate the effects of their mint at the current block, given
     * current on-chain conditions.
     *
     * - MUST return as close to and no fewer than the exact amount of assets that would be deposited in a mint call
     *   in the same transaction. I.e. mint should return the same or fewer assets as previewMint if called in the
     *   same transaction.
     * - MUST NOT account for mint limits like those returned from maxMint and should always act as though the mint
     *   would be accepted, regardless if the user has enough tokens approved, etc.
     * - MUST be inclusive of deposit fees. Integrators should be aware of the existence of deposit fees.
     * - MUST NOT revert.
     *
     * NOTE: any unfavorable discrepancy between convertToAssets and previewMint SHOULD be considered slippage in
     * share price or some other type of condition, meaning the depositor will lose assets by minting.
     */
    function previewMint(uint256 shares) external view returns (uint256 assets);

    /**
     * @dev Mints exactly shares Vault shares to receiver by depositing amount of underlying tokens.
     *
     * - MUST emit the Deposit event.
     * - MAY support an additional flow in which the underlying tokens are owned by the Vault contract before the mint
     *   execution, and are accounted for during mint.
     * - MUST revert if all of shares cannot be minted (due to deposit limit being reached, slippage, the user not
     *   approving enough underlying tokens to the Vault contract, etc).
     *
     * NOTE: most implementations will require pre-approval of the Vault with the Vault’s underlying asset token.
     */
    function mint(uint256 shares, address receiver) external returns (uint256 assets);

    /**
     * @dev Returns the maximum amount of the underlying asset that can be withdrawn from the owner balance in the
     * Vault, through a withdraw call.
     *
     * - MUST return a limited value if owner is subject to some withdrawal limit or timelock.
     * - MUST NOT revert.
     */
    function maxWithdraw(address owner) external view returns (uint256 maxAssets);

    /**
     * @dev Allows an on-chain or off-chain user to simulate the effects of their withdrawal at the current block,
     * given current on-chain conditions.
     *
     * - MUST return as close to and no fewer than the exact amount of Vault shares that would be burned in a withdraw
     *   call in the same transaction. I.e. withdraw should return the same or fewer shares as previewWithdraw if
     *   called
     *   in the same transaction.
     * - MUST NOT account for withdrawal limits like those returned from maxWithdraw and should always act as though
     *   the withdrawal would be accepted, regardless if the user has enough shares, etc.
     * - MUST be inclusive of withdrawal fees. Integrators should be aware of the existence of withdrawal fees.
     * - MUST NOT revert.
     *
     * NOTE: any unfavorable discrepancy between convertToShares and previewWithdraw SHOULD be considered slippage in
     * share price or some other type of condition, meaning the depositor will lose assets by depositing.
     */
    function previewWithdraw(uint256 assets) external view returns (uint256 shares);

    /**
     * @dev Burns shares from owner and sends exactly assets of underlying tokens to receiver.
     *
     * - MUST emit the Withdraw event.
     * - MAY support an additional flow in which the underlying tokens are owned by the Vault contract before the
     *   withdraw execution, and are accounted for during withdraw.
     * - MUST revert if all of assets cannot be withdrawn (due to withdrawal limit being reached, slippage, the owner
     *   not having enough shares, etc).
     *
     * Note that some implementations will require pre-requesting to the Vault before a withdrawal may be performed.
     * Those methods should be performed separately.
     */
    function withdraw(uint256 assets, address receiver, address owner) external returns (uint256 shares);

    /**
     * @dev Returns the maximum amount of Vault shares that can be redeemed from the owner balance in the Vault,
     * through a redeem call.
     *
     * - MUST return a limited value if owner is subject to some withdrawal limit or timelock.
     * - MUST return balanceOf(owner) if owner is not subject to any withdrawal limit or timelock.
     * - MUST NOT revert.
     */
    function maxRedeem(address owner) external view returns (uint256 maxShares);

    /**
     * @dev Allows an on-chain or off-chain user to simulate the effects of their redeemption at the current block,
     * given current on-chain conditions.
     *
     * - MUST return as close to and no more than the exact amount of assets that would be withdrawn in a redeem call
     *   in the same transaction. I.e. redeem should return the same or more assets as previewRedeem if called in the
     *   same transaction.
     * - MUST NOT account for redemption limits like those returned from maxRedeem and should always act as though the
     *   redemption would be accepted, regardless if the user has enough shares, etc.
     * - MUST be inclusive of withdrawal fees. Integrators should be aware of the existence of withdrawal fees.
     * - MUST NOT revert.
     *
     * NOTE: any unfavorable discrepancy between convertToAssets and previewRedeem SHOULD be considered slippage in
     * share price or some other type of condition, meaning the depositor will lose assets by redeeming.
     */
    function previewRedeem(uint256 shares) external view returns (uint256 assets);

    /**
     * @dev Burns exactly shares from owner and sends assets of underlying tokens to receiver.
     *
     * - MUST emit the Withdraw event.
     * - MAY support an additional flow in which the underlying tokens are owned by the Vault contract before the
     *   redeem execution, and are accounted for during redeem.
     * - MUST revert if all of shares cannot be redeemed (due to withdrawal limit being reached, slippage, the owner
     *   not having enough shares, etc).
     *
     * NOTE: some implementations will require pre-requesting to the Vault before a withdrawal may be performed.
     * Those methods should be performed separately.
     */
    function redeem(uint256 shares, address receiver, address owner) external returns (uint256 assets);
}

// ============================================================
// FILE: lib/@openzeppelin/contracts/token/ERC20/extensions/draft-IERC20Permit.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC20/extensions/draft-IERC20Permit.sol)

pragma solidity ^0.8.0;

// EIP-2612 is Final as of 2022-11-01. This file is deprecated.

import "./IERC20Permit.sol";

// ============================================================
// FILE: lib/@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol
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
// FILE: lib/@openzeppelin/contracts/token/ERC20/extensions/IERC20Permit.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.4) (token/ERC20/extensions/IERC20Permit.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC20 Permit extension allowing approvals to be made via signatures, as defined in
 * https://eips.ethereum.org/EIPS/eip-2612[EIP-2612].
 *
 * Adds the {permit} method, which can be used to change an account's ERC20 allowance (see {IERC20-allowance}) by
 * presenting a message signed by the account. By not relying on {IERC20-approve}, the token holder account doesn't
 * need to send a transaction, and thus is not required to hold Ether at all.
 *
 * ==== Security Considerations
 *
 * There are two important considerations concerning the use of `permit`. The first is that a valid permit signature
 * expresses an allowance, and it should not be assumed to convey additional meaning. In particular, it should not be
 * considered as an intention to spend the allowance in any specific way. The second is that because permits have
 * built-in replay protection and can be submitted by anyone, they can be frontrun. A protocol that uses permits should
 * take this into consideration and allow a `permit` call to fail. Combining these two aspects, a pattern that may be
 * generally recommended is:
 *
 * ```solidity
 * function doThingWithPermit(..., uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s) public {
 *     try token.permit(msg.sender, address(this), value, deadline, v, r, s) {} catch {}
 *     doThing(..., value);
 * }
 *
 * function doThing(..., uint256 value) public {
 *     token.safeTransferFrom(msg.sender, address(this), value);
 *     ...
 * }
 * ```
 *
 * Observe that: 1) `msg.sender` is used as the owner, leaving no ambiguity as to the signer intent, and 2) the use of
 * `try/catch` allows the permit to fail and makes the code tolerant to frontrunning. (See also
 * {SafeERC20-safeTransferFrom}).
 *
 * Additionally, note that smart contract wallets (such as Argent or Safe) are not able to produce permit signatures, so
 * contracts should have entry points that don't rely on permit.
 */
interface IERC20Permit {
    /**
     * @dev Sets `value` as the allowance of `spender` over ``owner``'s tokens,
     * given ``owner``'s signed approval.
     *
     * IMPORTANT: The same issues {IERC20-approve} has related to transaction
     * ordering also apply here.
     *
     * Emits an {Approval} event.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     * - `deadline` must be a timestamp in the future.
     * - `v`, `r` and `s` must be a valid `secp256k1` signature from `owner`
     * over the EIP712-formatted function arguments.
     * - the signature must use ``owner``'s current nonce (see {nonces}).
     *
     * For more information on the signature format, see the
     * https://eips.ethereum.org/EIPS/eip-2612#specification[relevant EIP
     * section].
     *
     * CAUTION: See Security Considerations above.
     */
    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external;

    /**
     * @dev Returns the current nonce for `owner`. This value must be
     * included whenever a signature is generated for {permit}.
     *
     * Every successful call to {permit} increases ``owner``'s nonce by one. This
     * prevents a signature from being used multiple times.
     */
    function nonces(address owner) external view returns (uint256);

    /**
     * @dev Returns the domain separator used in the encoding of the signature for {permit}, as defined by {EIP712}.
     */
    // solhint-disable-next-line func-name-mixedcase
    function DOMAIN_SEPARATOR() external view returns (bytes32);
}

// ============================================================
// FILE: lib/@openzeppelin/contracts/token/ERC20/IERC20.sol
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
// FILE: lib/@openzeppelin/contracts/utils/Address.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/Address.sol)

pragma solidity ^0.8.1;

/**
 * @dev Collection of functions related to the address type
 */
library Address {
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
     *
     * Furthermore, `isContract` will also return true if the target contract within
     * the same transaction is already scheduled for destruction by `SELFDESTRUCT`,
     * which only has an effect at the end of a transaction.
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
     * https://consensys.net/diligence/blog/2019/09/stop-using-soliditys-transfer-now/[Learn more].
     *
     * IMPORTANT: because control is transferred to `recipient`, care must be
     * taken to not create reentrancy vulnerabilities. Consider using
     * {ReentrancyGuard} or the
     * https://solidity.readthedocs.io/en/v0.8.0/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].
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
        return functionCallWithValue(target, data, 0, "Address: low-level call failed");
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
    function functionCallWithValue(address target, bytes memory data, uint256 value) internal returns (bytes memory) {
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
        (bool success, bytes memory returndata) = target.call{value: value}(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
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
        (bool success, bytes memory returndata) = target.staticcall(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a delegate call.
     *
     * _Available since v3.4._
     */
    function functionDelegateCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionDelegateCall(target, data, "Address: low-level delegate call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a delegate call.
     *
     * _Available since v3.4._
     */
    function functionDelegateCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal returns (bytes memory) {
        (bool success, bytes memory returndata) = target.delegatecall(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
    }

    /**
     * @dev Tool to verify that a low level call to smart-contract was successful, and revert (either by bubbling
     * the revert reason or using the provided one) in case of unsuccessful call or if target was not a contract.
     *
     * _Available since v4.8._
     */
    function verifyCallResultFromTarget(
        address target,
        bool success,
        bytes memory returndata,
        string memory errorMessage
    ) internal view returns (bytes memory) {
        if (success) {
            if (returndata.length == 0) {
                // only check isContract if the call was successful and the return data is empty
                // otherwise we already know that it was a contract
                require(isContract(target), "Address: call to non-contract");
            }
            return returndata;
        } else {
            _revert(returndata, errorMessage);
        }
    }

    /**
     * @dev Tool to verify that a low level call was successful, and revert if it wasn't, either by bubbling the
     * revert reason or using the provided one.
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
            _revert(returndata, errorMessage);
        }
    }

    function _revert(bytes memory returndata, string memory errorMessage) private pure {
        // Look for revert reason and bubble it up if present
        if (returndata.length > 0) {
            // The easiest way to bubble the revert reason is using memory via assembly
            /// @solidity memory-safe-assembly
            assembly {
                let returndata_size := mload(returndata)
                revert(add(32, returndata), returndata_size)
            }
        } else {
            revert(errorMessage);
        }
    }
}

// ============================================================
// FILE: lib/@openzeppelin/contracts/utils/structs/EnumerableSet.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/structs/EnumerableSet.sol)
// This file was procedurally generated from scripts/generate/templates/EnumerableSet.js.

pragma solidity ^0.8.0;

/**
 * @dev Library for managing
 * https://en.wikipedia.org/wiki/Set_(abstract_data_type)[sets] of primitive
 * types.
 *
 * Sets have the following properties:
 *
 * - Elements are added, removed, and checked for existence in constant time
 * (O(1)).
 * - Elements are enumerated in O(n). No guarantees are made on the ordering.
 *
 * ```solidity
 * contract Example {
 *     // Add the library methods
 *     using EnumerableSet for EnumerableSet.AddressSet;
 *
 *     // Declare a set state variable
 *     EnumerableSet.AddressSet private mySet;
 * }
 * ```
 *
 * As of v3.3.0, sets of type `bytes32` (`Bytes32Set`), `address` (`AddressSet`)
 * and `uint256` (`UintSet`) are supported.
 *
 * [WARNING]
 * ====
 * Trying to delete such a structure from storage will likely result in data corruption, rendering the structure
 * unusable.
 * See https://github.com/ethereum/solidity/pull/11843[ethereum/solidity#11843] for more info.
 *
 * In order to clean an EnumerableSet, you can either remove all elements one by one or create a fresh instance using an
 * array of EnumerableSet.
 * ====
 */
library EnumerableSet {
    // To implement this library for multiple types with as little code
    // repetition as possible, we write it in terms of a generic Set type with
    // bytes32 values.
    // The Set implementation uses private functions, and user-facing
    // implementations (such as AddressSet) are just wrappers around the
    // underlying Set.
    // This means that we can only create new EnumerableSets for types that fit
    // in bytes32.

    struct Set {
        // Storage of set values
        bytes32[] _values;
        // Position of the value in the `values` array, plus 1 because index 0
        // means a value is not in the set.
        mapping(bytes32 => uint256) _indexes;
    }

    /**
     * @dev Add a value to a set. O(1).
     *
     * Returns true if the value was added to the set, that is if it was not
     * already present.
     */
    function _add(Set storage set, bytes32 value) private returns (bool) {
        if (!_contains(set, value)) {
            set._values.push(value);
            // The value is stored at length-1, but we add 1 to all indexes
            // and use 0 as a sentinel value
            set._indexes[value] = set._values.length;
            return true;
        } else {
            return false;
        }
    }

    /**
     * @dev Removes a value from a set. O(1).
     *
     * Returns true if the value was removed from the set, that is if it was
     * present.
     */
    function _remove(Set storage set, bytes32 value) private returns (bool) {
        // We read and store the value's index to prevent multiple reads from the same storage slot
        uint256 valueIndex = set._indexes[value];

        if (valueIndex != 0) {
            // Equivalent to contains(set, value)
            // To delete an element from the _values array in O(1), we swap the element to delete with the last one in
            // the array, and then remove the last element (sometimes called as 'swap and pop').
            // This modifies the order of the array, as noted in {at}.

            uint256 toDeleteIndex = valueIndex - 1;
            uint256 lastIndex = set._values.length - 1;

            if (lastIndex != toDeleteIndex) {
                bytes32 lastValue = set._values[lastIndex];

                // Move the last value to the index where the value to delete is
                set._values[toDeleteIndex] = lastValue;
                // Update the index for the moved value
                set._indexes[lastValue] = valueIndex; // Replace lastValue's index to valueIndex
            }

            // Delete the slot where the moved value was stored
            set._values.pop();

            // Delete the index for the deleted slot
            delete set._indexes[value];

            return true;
        } else {
            return false;
        }
    }

    /**
     * @dev Returns true if the value is in the set. O(1).
     */
    function _contains(Set storage set, bytes32 value) private view returns (bool) {
        return set._indexes[value] != 0;
    }

    /**
     * @dev Returns the number of values on the set. O(1).
     */
    function _length(Set storage set) private view returns (uint256) {
        return set._values.length;
    }

    /**
     * @dev Returns the value stored at position `index` in the set. O(1).
     *
     * Note that there are no guarantees on the ordering of values inside the
     * array, and it may change when more values are added or removed.
     *
     * Requirements:
     *
     * - `index` must be strictly less than {length}.
     */
    function _at(Set storage set, uint256 index) private view returns (bytes32) {
        return set._values[index];
    }

    /**
     * @dev Return the entire set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function _values(Set storage set) private view returns (bytes32[] memory) {
        return set._values;
    }

    // Bytes32Set

    struct Bytes32Set {
        Set _inner;
    }

    /**
     * @dev Add a value to a set. O(1).
     *
     * Returns true if the value was added to the set, that is if it was not
     * already present.
     */
    function add(Bytes32Set storage set, bytes32 value) internal returns (bool) {
        return _add(set._inner, value);
    }

    /**
     * @dev Removes a value from a set. O(1).
     *
     * Returns true if the value was removed from the set, that is if it was
     * present.
     */
    function remove(Bytes32Set storage set, bytes32 value) internal returns (bool) {
        return _remove(set._inner, value);
    }

    /**
     * @dev Returns true if the value is in the set. O(1).
     */
    function contains(Bytes32Set storage set, bytes32 value) internal view returns (bool) {
        return _contains(set._inner, value);
    }

    /**
     * @dev Returns the number of values in the set. O(1).
     */
    function length(Bytes32Set storage set) internal view returns (uint256) {
        return _length(set._inner);
    }

    /**
     * @dev Returns the value stored at position `index` in the set. O(1).
     *
     * Note that there are no guarantees on the ordering of values inside the
     * array, and it may change when more values are added or removed.
     *
     * Requirements:
     *
     * - `index` must be strictly less than {length}.
     */
    function at(Bytes32Set storage set, uint256 index) internal view returns (bytes32) {
        return _at(set._inner, index);
    }

    /**
     * @dev Return the entire set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function values(Bytes32Set storage set) internal view returns (bytes32[] memory) {
        bytes32[] memory store = _values(set._inner);
        bytes32[] memory result;

        /// @solidity memory-safe-assembly
        assembly {
            result := store
        }

        return result;
    }

    // AddressSet

    struct AddressSet {
        Set _inner;
    }

    /**
     * @dev Add a value to a set. O(1).
     *
     * Returns true if the value was added to the set, that is if it was not
     * already present.
     */
    function add(AddressSet storage set, address value) internal returns (bool) {
        return _add(set._inner, bytes32(uint256(uint160(value))));
    }

    /**
     * @dev Removes a value from a set. O(1).
     *
     * Returns true if the value was removed from the set, that is if it was
     * present.
     */
    function remove(AddressSet storage set, address value) internal returns (bool) {
        return _remove(set._inner, bytes32(uint256(uint160(value))));
    }

    /**
     * @dev Returns true if the value is in the set. O(1).
     */
    function contains(AddressSet storage set, address value) internal view returns (bool) {
        return _contains(set._inner, bytes32(uint256(uint160(value))));
    }

    /**
     * @dev Returns the number of values in the set. O(1).
     */
    function length(AddressSet storage set) internal view returns (uint256) {
        return _length(set._inner);
    }

    /**
     * @dev Returns the value stored at position `index` in the set. O(1).
     *
     * Note that there are no guarantees on the ordering of values inside the
     * array, and it may change when more values are added or removed.
     *
     * Requirements:
     *
     * - `index` must be strictly less than {length}.
     */
    function at(AddressSet storage set, uint256 index) internal view returns (address) {
        return address(uint160(uint256(_at(set._inner, index))));
    }

    /**
     * @dev Return the entire set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function values(AddressSet storage set) internal view returns (address[] memory) {
        bytes32[] memory store = _values(set._inner);
        address[] memory result;

        /// @solidity memory-safe-assembly
        assembly {
            result := store
        }

        return result;
    }

    // UintSet

    struct UintSet {
        Set _inner;
    }

    /**
     * @dev Add a value to a set. O(1).
     *
     * Returns true if the value was added to the set, that is if it was not
     * already present.
     */
    function add(UintSet storage set, uint256 value) internal returns (bool) {
        return _add(set._inner, bytes32(value));
    }

    /**
     * @dev Removes a value from a set. O(1).
     *
     * Returns true if the value was removed from the set, that is if it was
     * present.
     */
    function remove(UintSet storage set, uint256 value) internal returns (bool) {
        return _remove(set._inner, bytes32(value));
    }

    /**
     * @dev Returns true if the value is in the set. O(1).
     */
    function contains(UintSet storage set, uint256 value) internal view returns (bool) {
        return _contains(set._inner, bytes32(value));
    }

    /**
     * @dev Returns the number of values in the set. O(1).
     */
    function length(UintSet storage set) internal view returns (uint256) {
        return _length(set._inner);
    }

    /**
     * @dev Returns the value stored at position `index` in the set. O(1).
     *
     * Note that there are no guarantees on the ordering of values inside the
     * array, and it may change when more values are added or removed.
     *
     * Requirements:
     *
     * - `index` must be strictly less than {length}.
     */
    function at(UintSet storage set, uint256 index) internal view returns (uint256) {
        return uint256(_at(set._inner, index));
    }

    /**
     * @dev Return the entire set in an array
     *
     * WARNING: This operation will copy the entire storage to memory, which can be quite expensive. This is designed
     * to mostly be used by view accessors that are queried without any gas fees. Developers should keep in mind that
     * this function has an unbounded cost, and using it as part of a state-changing function may render the function
     * uncallable if the set grows to a point where copying to memory consumes too much gas to fit in a block.
     */
    function values(UintSet storage set) internal view returns (uint256[] memory) {
        bytes32[] memory store = _values(set._inner);
        uint256[] memory result;

        /// @solidity memory-safe-assembly
        assembly {
            result := store
        }

        return result;
    }
}

// ============================================================
// FILE: lib/@solady/src/utils/LibString.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

/// @notice Library for converting numbers into strings and other string operations.
/// @author Solady (https://github.com/vectorized/solady/blob/main/src/utils/LibString.sol)
/// @author Modified from Solmate (https://github.com/transmissions11/solmate/blob/main/src/utils/LibString.sol)
///
/// @dev Note:
/// For performance and bytecode compactness, most of the string operations are restricted to
/// byte strings (7-bit ASCII), except where otherwise specified.
/// Usage of byte string operations on charsets with runes spanning two or more bytes
/// can lead to undefined behavior.
library LibString {
    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                        CUSTOM ERRORS                       */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @dev The length of the output is too small to contain all the hex digits.
    error HexLengthInsufficient();

    /// @dev The length of the string is more than 32 bytes.
    error TooBigForSmallString();

    /// @dev The input string must be a 7-bit ASCII.
    error StringNot7BitASCII();

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                         CONSTANTS                          */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @dev The constant returned when the `search` is not found in the string.
    uint256 internal constant NOT_FOUND = type(uint256).max;

    /// @dev Lookup for '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'.
    uint128 internal constant ALPHANUMERIC_7_BIT_ASCII = 0x7fffffe07fffffe03ff000000000000;

    /// @dev Lookup for 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'.
    uint128 internal constant LETTERS_7_BIT_ASCII = 0x7fffffe07fffffe0000000000000000;

    /// @dev Lookup for 'abcdefghijklmnopqrstuvwxyz'.
    uint128 internal constant LOWERCASE_7_BIT_ASCII = 0x7fffffe000000000000000000000000;

    /// @dev Lookup for 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.
    uint128 internal constant UPPERCASE_7_BIT_ASCII = 0x7fffffe0000000000000000;

    /// @dev Lookup for '0123456789'.
    uint128 internal constant DIGITS_7_BIT_ASCII = 0x3ff000000000000;

    /// @dev Lookup for '0123456789abcdefABCDEF'.
    uint128 internal constant HEXDIGITS_7_BIT_ASCII = 0x7e0000007e03ff000000000000;

    /// @dev Lookup for '01234567'.
    uint128 internal constant OCTDIGITS_7_BIT_ASCII = 0xff000000000000;

    /// @dev Lookup for '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!"#$%&\'()*+,-./:;<=>?@[\\]^_`{|}~ \t\n\r\x0b\x0c'.
    uint128 internal constant PRINTABLE_7_BIT_ASCII = 0x7fffffffffffffffffffffff00003e00;

    /// @dev Lookup for '!"#$%&\'()*+,-./:;<=>?@[\\]^_`{|}~'.
    uint128 internal constant PUNCTUATION_7_BIT_ASCII = 0x78000001f8000001fc00fffe00000000;

    /// @dev Lookup for ' \t\n\r\x0b\x0c'.
    uint128 internal constant WHITESPACE_7_BIT_ASCII = 0x100003e00;

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                     DECIMAL OPERATIONS                     */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @dev Returns the base 10 decimal representation of `value`.
    function toString(uint256 value) internal pure returns (string memory str) {
        /// @solidity memory-safe-assembly
        assembly {
            // The maximum value of a uint256 contains 78 digits (1 byte per digit), but
            // we allocate 0xa0 bytes to keep the free memory pointer 32-byte word aligned.
            // We will need 1 word for the trailing zeros padding, 1 word for the length,
            // and 3 words for a maximum of 78 digits.
            str := add(mload(0x40), 0x80)
            // Update the free memory pointer to allocate.
            mstore(0x40, add(str, 0x20))
            // Zeroize the slot after the string.
            mstore(str, 0)

            // Cache the end of the memory to calculate the length later.
            let end := str

            let w := not(0) // Tsk.
            // We write the string from rightmost digit to leftmost digit.
            // The following is essentially a do-while loop that also handles the zero case.
            for { let temp := value } 1 {} {
                str := add(str, w) // `sub(str, 1)`.
                // Write the character to the pointer.
                // The ASCII index of the '0' character is 48.
                mstore8(str, add(48, mod(temp, 10)))
                // Keep dividing `temp` until zero.
                temp := div(temp, 10)
                if iszero(temp) { break }
            }

            let length := sub(end, str)
            // Move the pointer 32 bytes leftwards to make room for the length.
            str := sub(str, 0x20)
            // Store the length.
            mstore(str, length)
        }
    }

    /// @dev Returns the base 10 decimal representation of `value`.
    function toString(int256 value) internal pure returns (string memory str) {
        if (value >= 0) {
            return toString(uint256(value));
        }
        unchecked {
            str = toString(~uint256(value) + 1);
        }
        /// @solidity memory-safe-assembly
        assembly {
            // We still have some spare memory space on the left,
            // as we have allocated 3 words (96 bytes) for up to 78 digits.
            let length := mload(str) // Load the string length.
            mstore(str, 0x2d) // Store the '-' character.
            str := sub(str, 1) // Move back the string pointer by a byte.
            mstore(str, add(length, 1)) // Update the string length.
        }
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                   HEXADECIMAL OPERATIONS                   */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @dev Returns the hexadecimal representation of `value`,
    /// left-padded to an input length of `length` bytes.
    /// The output is prefixed with "0x" encoded using 2 hexadecimal digits per byte,
    /// giving a total length of `length * 2 + 2` bytes.
    /// Reverts if `length` is too small for the output to contain all the digits.
    function toHexString(uint256 value, uint256 length) internal pure returns (string memory str) {
        str = toHexStringNoPrefix(value, length);
        /// @solidity memory-safe-assembly
        assembly {
            let strLength := add(mload(str), 2) // Compute the length.
            mstore(str, 0x3078) // Write the "0x" prefix.
            str := sub(str, 2) // Move the pointer.
            mstore(str, strLength) // Write the length.
        }
    }

    /// @dev Returns the hexadecimal representation of `value`,
    /// left-padded to an input length of `length` bytes.
    /// The output is prefixed with "0x" encoded using 2 hexadecimal digits per byte,
    /// giving a total length of `length * 2` bytes.
    /// Reverts if `length` is too small for the output to contain all the digits.
    function toHexStringNoPrefix(uint256 value, uint256 length)
        internal
        pure
        returns (string memory str)
    {
        /// @solidity memory-safe-assembly
        assembly {
            // We need 0x20 bytes for the trailing zeros padding, `length * 2` bytes
            // for the digits, 0x02 bytes for the prefix, and 0x20 bytes for the length.
            // We add 0x20 to the total and round down to a multiple of 0x20.
            // (0x20 + 0x20 + 0x02 + 0x20) = 0x62.
            str := add(mload(0x40), and(add(shl(1, length), 0x42), not(0x1f)))
            // Allocate the memory.
            mstore(0x40, add(str, 0x20))
            // Zeroize the slot after the string.
            mstore(str, 0)

            // Cache the end to calculate the length later.
            let end := str
            // Store "0123456789abcdef" in scratch space.
            mstore(0x0f, 0x30313233343536373839616263646566)

            let start := sub(str, add(length, length))
            let w := not(1) // Tsk.
            let temp := value
            // We write the string from rightmost digit to leftmost digit.
            // The following is essentially a do-while loop that also handles the zero case.
            for {} 1 {} {
                str := add(str, w) // `sub(str, 2)`.
                mstore8(add(str, 1), mload(and(temp, 15)))
                mstore8(str, mload(and(shr(4, temp), 15)))
                temp := shr(8, temp)
                if iszero(xor(str, start)) { break }
            }

            if temp {
                mstore(0x00, 0x2194895a) // `HexLengthInsufficient()`.
                revert(0x1c, 0x04)
            }

            // Compute the string's length.
            let strLength := sub(end, str)
            // Move the pointer and write the length.
            str := sub(str, 0x20)
            mstore(str, strLength)
        }
    }

    /// @dev Returns the hexadecimal representation of `value`.
    /// The output is prefixed with "0x" and encoded using 2 hexadecimal digits per byte.
    /// As address are 20 bytes long, the output will left-padded to have
    /// a length of `20 * 2 + 2` bytes.
    function toHexString(uint256 value) internal pure returns (string memory str) {
        str = toHexStringNoPrefix(value);
        /// @solidity memory-safe-assembly
        assembly {
            let strLength := add(mload(str), 2) // Compute the length.
            mstore(str, 0x3078) // Write the "0x" prefix.
            str := sub(str, 2) // Move the pointer.
            mstore(str, strLength) // Write the length.
        }
    }

    /// @dev Returns the hexadecimal representation of `value`.
    /// The output is prefixed with "0x".
    /// The output excludes leading "0" from the `toHexString` output.
    /// `0x00: "0x0", 0x01: "0x1", 0x12: "0x12", 0x123: "0x123"`.
    function toMinimalHexString(uint256 value) internal pure returns (string memory str) {
        str = toHexStringNoPrefix(value);
        /// @solidity memory-safe-assembly
        assembly {
            let o := eq(byte(0, mload(add(str, 0x20))), 0x30) // Whether leading zero is present.
            let strLength := add(mload(str), 2) // Compute the length.
            mstore(add(str, o), 0x3078) // Write the "0x" prefix, accounting for leading zero.
            str := sub(add(str, o), 2) // Move the pointer, accounting for leading zero.
            mstore(str, sub(strLength, o)) // Write the length, accounting for leading zero.
        }
    }

    /// @dev Returns the hexadecimal representation of `value`.
    /// The output excludes leading "0" from the `toHexStringNoPrefix` output.
    /// `0x00: "0", 0x01: "1", 0x12: "12", 0x123: "123"`.
    function toMinimalHexStringNoPrefix(uint256 value) internal pure returns (string memory str) {
        str = toHexStringNoPrefix(value);
        /// @solidity memory-safe-assembly
        assembly {
            let o := eq(byte(0, mload(add(str, 0x20))), 0x30) // Whether leading zero is present.
            let strLength := mload(str) // Get the length.
            str := add(str, o) // Move the pointer, accounting for leading zero.
            mstore(str, sub(strLength, o)) // Write the length, accounting for leading zero.
        }
    }

    /// @dev Returns the hexadecimal representation of `value`.
    /// The output is encoded using 2 hexadecimal digits per byte.
    /// As address are 20 bytes long, the output will left-padded to have
    /// a length of `20 * 2` bytes.
    function toHexStringNoPrefix(uint256 value) internal pure returns (string memory str) {
        /// @solidity memory-safe-assembly
        assembly {
            // We need 0x20 bytes for the trailing zeros padding, 0x20 bytes for the length,
            // 0x02 bytes for the prefix, and 0x40 bytes for the digits.
            // The next multiple of 0x20 above (0x20 + 0x20 + 0x02 + 0x40) is 0xa0.
            str := add(mload(0x40), 0x80)
            // Allocate the memory.
            mstore(0x40, add(str, 0x20))
            // Zeroize the slot after the string.
            mstore(str, 0)

            // Cache the end to calculate the length later.
            let end := str
            // Store "0123456789abcdef" in scratch space.
            mstore(0x0f, 0x30313233343536373839616263646566)

            let w := not(1) // Tsk.
            // We write the string from rightmost digit to leftmost digit.
            // The following is essentially a do-while loop that also handles the zero case.
            for { let temp := value } 1 {} {
                str := add(str, w) // `sub(str, 2)`.
                mstore8(add(str, 1), mload(and(temp, 15)))
                mstore8(str, mload(and(shr(4, temp), 15)))
                temp := shr(8, temp)
                if iszero(temp) { break }
            }

            // Compute the string's length.
            let strLength := sub(end, str)
            // Move the pointer and write the length.
            str := sub(str, 0x20)
            mstore(str, strLength)
        }
    }

    /// @dev Returns the hexadecimal representation of `value`.
    /// The output is prefixed with "0x", encoded using 2 hexadecimal digits per byte,
    /// and the alphabets are capitalized conditionally according to
    /// https://eips.ethereum.org/EIPS/eip-55
    function toHexStringChecksummed(address value) internal pure returns (string memory str) {
        str = toHexString(value);
        /// @solidity memory-safe-assembly
        assembly {
            let mask := shl(6, div(not(0), 255)) // `0b010000000100000000 ...`
            let o := add(str, 0x22)
            let hashed := and(keccak256(o, 40), mul(34, mask)) // `0b10001000 ... `
            let t := shl(240, 136) // `0b10001000 << 240`
            for { let i := 0 } 1 {} {
                mstore(add(i, i), mul(t, byte(i, hashed)))
                i := add(i, 1)
                if eq(i, 20) { break }
            }
            mstore(o, xor(mload(o), shr(1, and(mload(0x00), and(mload(o), mask)))))
            o := add(o, 0x20)
            mstore(o, xor(mload(o), shr(1, and(mload(0x20), and(mload(o), mask)))))
        }
    }

    /// @dev Returns the hexadecimal representation of `value`.
    /// The output is prefixed with "0x" and encoded using 2 hexadecimal digits per byte.
    function toHexString(address value) internal pure returns (string memory str) {
        str = toHexStringNoPrefix(value);
        /// @solidity memory-safe-assembly
        assembly {
            let strLength := add(mload(str), 2) // Compute the length.
            mstore(str, 0x3078) // Write the "0x" prefix.
            str := sub(str, 2) // Move the pointer.
            mstore(str, strLength) // Write the length.
        }
    }

    /// @dev Returns the hexadecimal representation of `value`.
    /// The output is encoded using 2 hexadecimal digits per byte.
    function toHexStringNoPrefix(address value) internal pure returns (string memory str) {
        /// @solidity memory-safe-assembly
        assembly {
            str := mload(0x40)

            // Allocate the memory.
            // We need 0x20 bytes for the trailing zeros padding, 0x20 bytes for the length,
            // 0x02 bytes for the prefix, and 0x28 bytes for the digits.
            // The next multiple of 0x20 above (0x20 + 0x20 + 0x02 + 0x28) is 0x80.
            mstore(0x40, add(str, 0x80))

            // Store "0123456789abcdef" in scratch space.
            mstore(0x0f, 0x30313233343536373839616263646566)

            str := add(str, 2)
            mstore(str, 40)

            let o := add(str, 0x20)
            mstore(add(o, 40), 0)

            value := shl(96, value)

            // We write the string from rightmost digit to leftmost digit.
            // The following is essentially a do-while loop that also handles the zero case.
            for { let i := 0 } 1 {} {
                let p := add(o, add(i, i))
                let temp := byte(i, value)
                mstore8(add(p, 1), mload(and(temp, 15)))
                mstore8(p, mload(shr(4, temp)))
                i := add(i, 1)
                if eq(i, 20) { break }
            }
        }
    }

    /// @dev Returns the hex encoded string from the raw bytes.
    /// The output is encoded using 2 hexadecimal digits per byte.
    function toHexString(bytes memory raw) internal pure returns (string memory str) {
        str = toHexStringNoPrefix(raw);
        /// @solidity memory-safe-assembly
        assembly {
            let strLength := add(mload(str), 2) // Compute the length.
            mstore(str, 0x3078) // Write the "0x" prefix.
            str := sub(str, 2) // Move the pointer.
            mstore(str, strLength) // Write the length.
        }
    }

    /// @dev Returns the hex encoded string from the raw bytes.
    /// The output is encoded using 2 hexadecimal digits per byte.
    function toHexStringNoPrefix(bytes memory raw) internal pure returns (string memory str) {
        /// @solidity memory-safe-assembly
        assembly {
            let length := mload(raw)
            str := add(mload(0x40), 2) // Skip 2 bytes for the optional prefix.
            mstore(str, add(length, length)) // Store the length of the output.

            // Store "0123456789abcdef" in scratch space.
            mstore(0x0f, 0x30313233343536373839616263646566)

            let o := add(str, 0x20)
            let end := add(raw, length)

            for {} iszero(eq(raw, end)) {} {
                raw := add(raw, 1)
                mstore8(add(o, 1), mload(and(mload(raw), 15)))
                mstore8(o, mload(and(shr(4, mload(raw)), 15)))
                o := add(o, 2)
            }
            mstore(o, 0) // Zeroize the slot after the string.
            mstore(0x40, add(o, 0x20)) // Allocate the memory.
        }
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                   RUNE STRING OPERATIONS                   */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @dev Returns the number of UTF characters in the string.
    function runeCount(string memory s) internal pure returns (uint256 result) {
        /// @solidity memory-safe-assembly
        assembly {
            if mload(s) {
                mstore(0x00, div(not(0), 255))
                mstore(0x20, 0x0202020202020202020202020202020202020202020202020303030304040506)
                let o := add(s, 0x20)
                let end := add(o, mload(s))
                for { result := 1 } 1 { result := add(result, 1) } {
                    o := add(o, byte(0, mload(shr(250, mload(o)))))
                    if iszero(lt(o, end)) { break }
                }
            }
        }
    }

    /// @dev Returns if this string is a 7-bit ASCII string.
    /// (i.e. all characters codes are in [0..127])
    function is7BitASCII(string memory s) internal pure returns (bool result) {
        /// @solidity memory-safe-assembly
        assembly {
            let mask := shl(7, div(not(0), 255))
            result := 1
            let n := mload(s)
            if n {
                let o := add(s, 0x20)
                let end := add(o, n)
                let last := mload(end)
                mstore(end, 0)
                for {} 1 {} {
                    if and(mask, mload(o)) {
                        result := 0
                        break
                    }
                    o := add(o, 0x20)
                    if iszero(lt(o, end)) { break }
                }
                mstore(end, last)
            }
        }
    }

    /// @dev Returns if this string is a 7-bit ASCII string,
    /// AND all characters are in the `allowed` lookup.
    /// Note: If `s` is empty, returns true regardless of `allowed`.
    function is7BitASCII(string memory s, uint128 allowed) internal pure returns (bool result) {
        /// @solidity memory-safe-assembly
        assembly {
            result := 1
            if mload(s) {
                let allowed_ := shr(128, shl(128, allowed))
                let o := add(s, 0x20)
                let end := add(o, mload(s))
                for {} 1 {} {
                    result := and(result, shr(byte(0, mload(o)), allowed_))
                    o := add(o, 1)
                    if iszero(and(result, lt(o, end))) { break }
                }
            }
        }
    }

    /// @dev Converts the bytes in the 7-bit ASCII string `s` to
    /// an allowed lookup for use in `is7BitASCII(s, allowed)`.
    /// To save runtime gas, you can cache the result in an immutable variable.
    function to7BitASCIIAllowedLookup(string memory s) internal pure returns (uint128 result) {
        /// @solidity memory-safe-assembly
        assembly {
            if mload(s) {
                let o := add(s, 0x20)
                let end := add(o, mload(s))
                for {} 1 {} {
                    result := or(result, shl(byte(0, mload(o)), 1))
                    o := add(o, 1)
                    if iszero(lt(o, end)) { break }
                }
                if shr(128, result) {
                    mstore(0x00, 0xc9807e0d) // `StringNot7BitASCII()`.
                    revert(0x1c, 0x04)
                }
            }
        }
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                   BYTE STRING OPERATIONS                   */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    // For performance and bytecode compactness, byte string operations are restricted
    // to 7-bit ASCII strings. All offsets are byte offsets, not UTF character offsets.
    // Usage of byte string operations on charsets with runes spanning two or more bytes
    // can lead to undefined behavior.

    /// @dev Returns `subject` all occurrences of `search` replaced with `replacement`.
    function replace(string memory subject, string memory search, string memory replacement)
        internal
        pure
        returns (string memory result)
    {
        /// @solidity memory-safe-assembly
        assembly {
            let subjectLength := mload(subject)
            let searchLength := mload(search)
            let replacementLength := mload(replacement)

            subject := add(subject, 0x20)
            search := add(search, 0x20)
            replacement := add(replacement, 0x20)
            result := add(mload(0x40), 0x20)

            let subjectEnd := add(subject, subjectLength)
            if iszero(gt(searchLength, subjectLength)) {
                let subjectSearchEnd := add(sub(subjectEnd, searchLength), 1)
                let h := 0
                if iszero(lt(searchLength, 0x20)) { h := keccak256(search, searchLength) }
                let m := shl(3, sub(0x20, and(searchLength, 0x1f)))
                let s := mload(search)
                for {} 1 {} {
                    let t := mload(subject)
                    // Whether the first `searchLength % 32` bytes of
                    // `subject` and `search` matches.
                    if iszero(shr(m, xor(t, s))) {
                        if h {
                            if iszero(eq(keccak256(subject, searchLength), h)) {
                                mstore(result, t)
                                result := add(result, 1)
                                subject := add(subject, 1)
                                if iszero(lt(subject, subjectSearchEnd)) { break }
                                continue
                            }
                        }
                        // Copy the `replacement` one word at a time.
                        for { let o := 0 } 1 {} {
                            mstore(add(result, o), mload(add(replacement, o)))
                            o := add(o, 0x20)
                            if iszero(lt(o, replacementLength)) { break }
                        }
                        result := add(result, replacementLength)
                        subject := add(subject, searchLength)
                        if searchLength {
                            if iszero(lt(subject, subjectSearchEnd)) { break }
                            continue
                        }
                    }
                    mstore(result, t)
                    result := add(result, 1)
                    subject := add(subject, 1)
                    if iszero(lt(subject, subjectSearchEnd)) { break }
                }
            }

            let resultRemainder := result
            result := add(mload(0x40), 0x20)
            let k := add(sub(resultRemainder, result), sub(subjectEnd, subject))
            // Copy the rest of the string one word at a time.
            for {} lt(subject, subjectEnd) {} {
                mstore(resultRemainder, mload(subject))
                resultRemainder := add(resultRemainder, 0x20)
                subject := add(subject, 0x20)
            }
            result := sub(result, 0x20)
            let last := add(add(result, 0x20), k) // Zeroize the slot after the string.
            mstore(last, 0)
            mstore(0x40, add(last, 0x20)) // Allocate the memory.
            mstore(result, k) // Store the length.
        }
    }

    /// @dev Returns the byte index of the first location of `search` in `subject`,
    /// searching from left to right, starting from `from`.
    /// Returns `NOT_FOUND` (i.e. `type(uint256).max`) if the `search` is not found.
    function indexOf(string memory subject, string memory search, uint256 from)
        internal
        pure
        returns (uint256 result)
    {
        /// @solidity memory-safe-assembly
        assembly {
            for { let subjectLength := mload(subject) } 1 {} {
                if iszero(mload(search)) {
                    if iszero(gt(from, subjectLength)) {
                        result := from
                        break
                    }
                    result := subjectLength
                    break
                }
                let searchLength := mload(search)
                let subjectStart := add(subject, 0x20)

                result := not(0) // Initialize to `NOT_FOUND`.

                subject := add(subjectStart, from)
                let end := add(sub(add(subjectStart, subjectLength), searchLength), 1)

                let m := shl(3, sub(0x20, and(searchLength, 0x1f)))
                let s := mload(add(search, 0x20))

                if iszero(and(lt(subject, end), lt(from, subjectLength))) { break }

                if iszero(lt(searchLength, 0x20)) {
                    for { let h := keccak256(add(search, 0x20), searchLength) } 1 {} {
                        if iszero(shr(m, xor(mload(subject), s))) {
                            if eq(keccak256(subject, searchLength), h) {
                                result := sub(subject, subjectStart)
                                break
                            }
                        }
                        subject := add(subject, 1)
                        if iszero(lt(subject, end)) { break }
                    }
                    break
                }
                for {} 1 {} {
                    if iszero(shr(m, xor(mload(subject), s))) {
                        result := sub(subject, subjectStart)
                        break
                    }
                    subject := add(subject, 1)
                    if iszero(lt(subject, end)) { break }
                }
                break
            }
        }
    }

    /// @dev Returns the byte index of the first location of `search` in `subject`,
    /// searching from left to right.
    /// Returns `NOT_FOUND` (i.e. `type(uint256).max`) if the `search` is not found.
    function indexOf(string memory subject, string memory search)
        internal
        pure
        returns (uint256 result)
    {
        result = indexOf(subject, search, 0);
    }

    /// @dev Returns the byte index of the first location of `search` in `subject`,
    /// searching from right to left, starting from `from`.
    /// Returns `NOT_FOUND` (i.e. `type(uint256).max`) if the `search` is not found.
    function lastIndexOf(string memory subject, string memory search, uint256 from)
        internal
        pure
        returns (uint256 result)
    {
        /// @solidity memory-safe-assembly
        assembly {
            for {} 1 {} {
                result := not(0) // Initialize to `NOT_FOUND`.
                let searchLength := mload(search)
                if gt(searchLength, mload(subject)) { break }
                let w := result

                let fromMax := sub(mload(subject), searchLength)
                if iszero(gt(fromMax, from)) { from := fromMax }

                let end := add(add(subject, 0x20), w)
                subject := add(add(subject, 0x20), from)
                if iszero(gt(subject, end)) { break }
                // As this function is not too often used,
                // we shall simply use keccak256 for smaller bytecode size.
                for { let h := keccak256(add(search, 0x20), searchLength) } 1 {} {
                    if eq(keccak256(subject, searchLength), h) {
                        result := sub(subject, add(end, 1))
                        break
                    }
                    subject := add(subject, w) // `sub(subject, 1)`.
                    if iszero(gt(subject, end)) { break }
                }
                break
            }
        }
    }

    /// @dev Returns the byte index of the first location of `search` in `subject`,
    /// searching from right to left.
    /// Returns `NOT_FOUND` (i.e. `type(uint256).max`) if the `search` is not found.
    function lastIndexOf(string memory subject, string memory search)
        internal
        pure
        returns (uint256 result)
    {
        result = lastIndexOf(subject, search, uint256(int256(-1)));
    }

    /// @dev Returns true if `search` is found in `subject`, false otherwise.
    function contains(string memory subject, string memory search) internal pure returns (bool) {
        return indexOf(subject, search) != NOT_FOUND;
    }

    /// @dev Returns whether `subject` starts with `search`.
    function startsWith(string memory subject, string memory search)
        internal
        pure
        returns (bool result)
    {
        /// @solidity memory-safe-assembly
        assembly {
            let searchLength := mload(search)
            // Just using keccak256 directly is actually cheaper.
            // forgefmt: disable-next-item
            result := and(
                iszero(gt(searchLength, mload(subject))),
                eq(
                    keccak256(add(subject, 0x20), searchLength),
                    keccak256(add(search, 0x20), searchLength)
                )
            )
        }
    }

    /// @dev Returns whether `subject` ends with `search`.
    function endsWith(string memory subject, string memory search)
        internal
        pure
        returns (bool result)
    {
        /// @solidity memory-safe-assembly
        assembly {
            let searchLength := mload(search)
            let subjectLength := mload(subject)
            // Whether `search` is not longer than `subject`.
            let withinRange := iszero(gt(searchLength, subjectLength))
            // Just using keccak256 directly is actually cheaper.
            // forgefmt: disable-next-item
            result := and(
                withinRange,
                eq(
                    keccak256(
                        // `subject + 0x20 + max(subjectLength - searchLength, 0)`.
                        add(add(subject, 0x20), mul(withinRange, sub(subjectLength, searchLength))),
                        searchLength
                    ),
                    keccak256(add(search, 0x20), searchLength)
                )
            )
        }
    }

    /// @dev Returns `subject` repeated `times`.
    function repeat(string memory subject, uint256 times)
        internal
        pure
        returns (string memory result)
    {
        /// @solidity memory-safe-assembly
        assembly {
            let subjectLength := mload(subject)
            if iszero(or(iszero(times), iszero(subjectLength))) {
                subject := add(subject, 0x20)
                result := mload(0x40)
                let output := add(result, 0x20)
                for {} 1 {} {
                    // Copy the `subject` one word at a time.
                    for { let o := 0 } 1 {} {
                        mstore(add(output, o), mload(add(subject, o)))
                        o := add(o, 0x20)
                        if iszero(lt(o, subjectLength)) { break }
                    }
                    output := add(output, subjectLength)
                    times := sub(times, 1)
                    if iszero(times) { break }
                }
                mstore(output, 0) // Zeroize the slot after the string.
                let resultLength := sub(output, add(result, 0x20))
                mstore(result, resultLength) // Store the length.
                // Allocate the memory.
                mstore(0x40, add(result, add(resultLength, 0x20)))
            }
        }
    }

    /// @dev Returns a copy of `subject` sliced from `start` to `end` (exclusive).
    /// `start` and `end` are byte offsets.
    function slice(string memory subject, uint256 start, uint256 end)
        internal
        pure
        returns (string memory result)
    {
        /// @solidity memory-safe-assembly
        assembly {
            let subjectLength := mload(subject)
            if iszero(gt(subjectLength, end)) { end := subjectLength }
            if iszero(gt(subjectLength, start)) { start := subjectLength }
            if lt(start, end) {
                result := mload(0x40)
                let resultLength := sub(end, start)
                mstore(result, resultLength)
                subject := add(subject, start)
                let w := not(0x1f)
                // Copy the `subject` one word at a time, backwards.
                for { let o := and(add(resultLength, 0x1f), w) } 1 {} {
                    mstore(add(result, o), mload(add(subject, o)))
                    o := add(o, w) // `sub(o, 0x20)`.
                    if iszero(o) { break }
                }
                // Zeroize the slot after the string.
                mstore(add(add(result, 0x20), resultLength), 0)
                // Allocate memory for the length and the bytes,
                // rounded up to a multiple of 32.
                mstore(0x40, add(result, and(add(resultLength, 0x3f), w)))
            }
        }
    }

    /// @dev Returns a copy of `subject` sliced from `start` to the end of the string.
    /// `start` is a byte offset.
    function slice(string memory subject, uint256 start)
        internal
        pure
        returns (string memory result)
    {
        result = slice(subject, start, uint256(int256(-1)));
    }

    /// @dev Returns all the indices of `search` in `subject`.
    /// The indices are byte offsets.
    function indicesOf(string memory subject, string memory search)
        internal
        pure
        returns (uint256[] memory result)
    {
        /// @solidity memory-safe-assembly
        assembly {
            let subjectLength := mload(subject)
            let searchLength := mload(search)

            if iszero(gt(searchLength, subjectLength)) {
                subject := add(subject, 0x20)
                search := add(search, 0x20)
                result := add(mload(0x40), 0x20)

                let subjectStart := subject
                let subjectSearchEnd := add(sub(add(subject, subjectLength), searchLength), 1)
                let h := 0
                if iszero(lt(searchLength, 0x20)) { h := keccak256(search, searchLength) }
                let m := shl(3, sub(0x20, and(searchLength, 0x1f)))
                let s := mload(search)
                for {} 1 {} {
                    let t := mload(subject)
                    // Whether the first `searchLength % 32` bytes of
                    // `subject` and `search` matches.
                    if iszero(shr(m, xor(t, s))) {
                        if h {
                            if iszero(eq(keccak256(subject, searchLength), h)) {
                                subject := add(subject, 1)
                                if iszero(lt(subject, subjectSearchEnd)) { break }
                                continue
                            }
                        }
                        // Append to `result`.
                        mstore(result, sub(subject, subjectStart))
                        result := add(result, 0x20)
                        // Advance `subject` by `searchLength`.
                        subject := add(subject, searchLength)
                        if searchLength {
                            if iszero(lt(subject, subjectSearchEnd)) { break }
                            continue
                        }
                    }
                    subject := add(subject, 1)
                    if iszero(lt(subject, subjectSearchEnd)) { break }
                }
                let resultEnd := result
                // Assign `result` to the free memory pointer.
                result := mload(0x40)
                // Store the length of `result`.
                mstore(result, shr(5, sub(resultEnd, add(result, 0x20))))
                // Allocate memory for result.
                // We allocate one more word, so this array can be recycled for {split}.
                mstore(0x40, add(resultEnd, 0x20))
            }
        }
    }

    /// @dev Returns a arrays of strings based on the `delimiter` inside of the `subject` string.
    function split(string memory subject, string memory delimiter)
        internal
        pure
        returns (string[] memory result)
    {
        uint256[] memory indices = indicesOf(subject, delimiter);
        /// @solidity memory-safe-assembly
        assembly {
            let w := not(0x1f)
            let indexPtr := add(indices, 0x20)
            let indicesEnd := add(indexPtr, shl(5, add(mload(indices), 1)))
            mstore(add(indicesEnd, w), mload(subject))
            mstore(indices, add(mload(indices), 1))
            let prevIndex := 0
            for {} 1 {} {
                let index := mload(indexPtr)
                mstore(indexPtr, 0x60)
                if iszero(eq(index, prevIndex)) {
                    let element := mload(0x40)
                    let elementLength := sub(index, prevIndex)
                    mstore(element, elementLength)
                    // Copy the `subject` one word at a time, backwards.
                    for { let o := and(add(elementLength, 0x1f), w) } 1 {} {
                        mstore(add(element, o), mload(add(add(subject, prevIndex), o)))
                        o := add(o, w) // `sub(o, 0x20)`.
                        if iszero(o) { break }
                    }
                    // Zeroize the slot after the string.
                    mstore(add(add(element, 0x20), elementLength), 0)
                    // Allocate memory for the length and the bytes,
                    // rounded up to a multiple of 32.
                    mstore(0x40, add(element, and(add(elementLength, 0x3f), w)))
                    // Store the `element` into the array.
                    mstore(indexPtr, element)
                }
                prevIndex := add(index, mload(delimiter))
                indexPtr := add(indexPtr, 0x20)
                if iszero(lt(indexPtr, indicesEnd)) { break }
            }
            result := indices
            if iszero(mload(delimiter)) {
                result := add(indices, 0x20)
                mstore(result, sub(mload(indices), 2))
            }
        }
    }

    /// @dev Returns a concatenated string of `a` and `b`.
    /// Cheaper than `string.concat()` and does not de-align the free memory pointer.
    function concat(string memory a, string memory b)
        internal
        pure
        returns (string memory result)
    {
        /// @solidity memory-safe-assembly
        assembly {
            let w := not(0x1f)
            result := mload(0x40)
            let aLength := mload(a)
            // Copy `a` one word at a time, backwards.
            for { let o := and(add(aLength, 0x20), w) } 1 {} {
                mstore(add(result, o), mload(add(a, o)))
                o := add(o, w) // `sub(o, 0x20)`.
                if iszero(o) { break }
            }
            let bLength := mload(b)
            let output := add(result, aLength)
            // Copy `b` one word at a time, backwards.
            for { let o := and(add(bLength, 0x20), w) } 1 {} {
                mstore(add(output, o), mload(add(b, o)))
                o := add(o, w) // `sub(o, 0x20)`.
                if iszero(o) { break }
            }
            let totalLength := add(aLength, bLength)
            let last := add(add(result, 0x20), totalLength)
            // Zeroize the slot after the string.
            mstore(last, 0)
            // Stores the length.
            mstore(result, totalLength)
            // Allocate memory for the length and the bytes,
            // rounded up to a multiple of 32.
            mstore(0x40, and(add(last, 0x1f), w))
        }
    }

    /// @dev Returns a copy of the string in either lowercase or UPPERCASE.
    /// WARNING! This function is only compatible with 7-bit ASCII strings.
    function toCase(string memory subject, bool toUpper)
        internal
        pure
        returns (string memory result)
    {
        /// @solidity memory-safe-assembly
        assembly {
            let length := mload(subject)
            if length {
                result := add(mload(0x40), 0x20)
                subject := add(subject, 1)
                let flags := shl(add(70, shl(5, toUpper)), 0x3ffffff)
                let w := not(0)
                for { let o := length } 1 {} {
                    o := add(o, w)
                    let b := and(0xff, mload(add(subject, o)))
                    mstore8(add(result, o), xor(b, and(shr(b, flags), 0x20)))
                    if iszero(o) { break }
                }
                result := mload(0x40)
                mstore(result, length) // Store the length.
                let last := add(add(result, 0x20), length)
                mstore(last, 0) // Zeroize the slot after the string.
                mstore(0x40, add(last, 0x20)) // Allocate the memory.
            }
        }
    }

    /// @dev Returns a string from a small bytes32 string.
    /// `s` must be null-terminated, or behavior will be undefined.
    function fromSmallString(bytes32 s) internal pure returns (string memory result) {
        /// @solidity memory-safe-assembly
        assembly {
            result := mload(0x40)
            let n := 0
            for {} byte(n, s) { n := add(n, 1) } {} // Scan for '\0'.
            mstore(result, n)
            let o := add(result, 0x20)
            mstore(o, s)
            mstore(add(o, n), 0)
            mstore(0x40, add(result, 0x40))
        }
    }

    /// @dev Returns the small string, with all bytes after the first null byte zeroized.
    function normalizeSmallString(bytes32 s) internal pure returns (bytes32 result) {
        /// @solidity memory-safe-assembly
        assembly {
            for {} byte(result, s) { result := add(result, 1) } {} // Scan for '\0'.
            mstore(0x00, s)
            mstore(result, 0x00)
            result := mload(0x00)
        }
    }

    /// @dev Returns the string as a normalized null-terminated small string.
    function toSmallString(string memory s) internal pure returns (bytes32 result) {
        /// @solidity memory-safe-assembly
        assembly {
            result := mload(s)
            if iszero(lt(result, 33)) {
                mstore(0x00, 0xec92f9a3) // `TooBigForSmallString()`.
                revert(0x1c, 0x04)
            }
            result := shl(shl(3, sub(32, result)), mload(add(s, result)))
        }
    }

    /// @dev Returns a lowercased copy of the string.
    /// WARNING! This function is only compatible with 7-bit ASCII strings.
    function lower(string memory subject) internal pure returns (string memory result) {
        result = toCase(subject, false);
    }

    /// @dev Returns an UPPERCASED copy of the string.
    /// WARNING! This function is only compatible with 7-bit ASCII strings.
    function upper(string memory subject) internal pure returns (string memory result) {
        result = toCase(subject, true);
    }

    /// @dev Escapes the string to be used within HTML tags.
    function escapeHTML(string memory s) internal pure returns (string memory result) {
        /// @solidity memory-safe-assembly
        assembly {
            let end := add(s, mload(s))
            result := add(mload(0x40), 0x20)
            // Store the bytes of the packed offsets and strides into the scratch space.
            // `packed = (stride << 5) | offset`. Max offset is 20. Max stride is 6.
            mstore(0x1f, 0x900094)
            mstore(0x08, 0xc0000000a6ab)
            // Store "&quot;&amp;&#39;&lt;&gt;" into the scratch space.
            mstore(0x00, shl(64, 0x2671756f743b26616d703b262333393b266c743b2667743b))
            for {} iszero(eq(s, end)) {} {
                s := add(s, 1)
                let c := and(mload(s), 0xff)
                // Not in `["\"","'","&","<",">"]`.
                if iszero(and(shl(c, 1), 0x500000c400000000)) {
                    mstore8(result, c)
                    result := add(result, 1)
                    continue
                }
                let t := shr(248, mload(c))
                mstore(result, mload(and(t, 0x1f)))
                result := add(result, shr(5, t))
            }
            let last := result
            mstore(last, 0) // Zeroize the slot after the string.
            result := mload(0x40)
            mstore(result, sub(last, add(result, 0x20))) // Store the length.
            mstore(0x40, add(last, 0x20)) // Allocate the memory.
        }
    }

    /// @dev Escapes the string to be used within double-quotes in a JSON.
    /// If `addDoubleQuotes` is true, the result will be enclosed in double-quotes.
    function escapeJSON(string memory s, bool addDoubleQuotes)
        internal
        pure
        returns (string memory result)
    {
        /// @solidity memory-safe-assembly
        assembly {
            let end := add(s, mload(s))
            result := add(mload(0x40), 0x20)
            if addDoubleQuotes {
                mstore8(result, 34)
                result := add(1, result)
            }
            // Store "\\u0000" in scratch space.
            // Store "0123456789abcdef" in scratch space.
            // Also, store `{0x08:"b", 0x09:"t", 0x0a:"n", 0x0c:"f", 0x0d:"r"}`.
            // into the scratch space.
            mstore(0x15, 0x5c75303030303031323334353637383961626364656662746e006672)
            // Bitmask for detecting `["\"","\\"]`.
            let e := or(shl(0x22, 1), shl(0x5c, 1))
            for {} iszero(eq(s, end)) {} {
                s := add(s, 1)
                let c := and(mload(s), 0xff)
                if iszero(lt(c, 0x20)) {
                    if iszero(and(shl(c, 1), e)) {
                        // Not in `["\"","\\"]`.
                        mstore8(result, c)
                        result := add(result, 1)
                        continue
                    }
                    mstore8(result, 0x5c) // "\\".
                    mstore8(add(result, 1), c)
                    result := add(result, 2)
                    continue
                }
                if iszero(and(shl(c, 1), 0x3700)) {
                    // Not in `["\b","\t","\n","\f","\d"]`.
                    mstore8(0x1d, mload(shr(4, c))) // Hex value.
                    mstore8(0x1e, mload(and(c, 15))) // Hex value.
                    mstore(result, mload(0x19)) // "\\u00XX".
                    result := add(result, 6)
                    continue
                }
                mstore8(result, 0x5c) // "\\".
                mstore8(add(result, 1), mload(add(c, 8)))
                result := add(result, 2)
            }
            if addDoubleQuotes {
                mstore8(result, 34)
                result := add(1, result)
            }
            let last := result
            mstore(last, 0) // Zeroize the slot after the string.
            result := mload(0x40)
            mstore(result, sub(last, add(result, 0x20))) // Store the length.
            mstore(0x40, add(last, 0x20)) // Allocate the memory.
        }
    }

    /// @dev Escapes the string to be used within double-quotes in a JSON.
    function escapeJSON(string memory s) internal pure returns (string memory result) {
        result = escapeJSON(s, false);
    }

    /// @dev Returns whether `a` equals `b`.
    function eq(string memory a, string memory b) internal pure returns (bool result) {
        /// @solidity memory-safe-assembly
        assembly {
            result := eq(keccak256(add(a, 0x20), mload(a)), keccak256(add(b, 0x20), mload(b)))
        }
    }

    /// @dev Returns whether `a` equals `b`, where `b` is a null-terminated small string.
    function eqs(string memory a, bytes32 b) internal pure returns (bool result) {
        /// @solidity memory-safe-assembly
        assembly {
            // These should be evaluated on compile time, as far as possible.
            let m := not(shl(7, div(not(iszero(b)), 255))) // `0x7f7f ...`.
            let x := not(or(m, or(b, add(m, and(b, m)))))
            let r := shl(7, iszero(iszero(shr(128, x))))
            r := or(r, shl(6, iszero(iszero(shr(64, shr(r, x))))))
            r := or(r, shl(5, lt(0xffffffff, shr(r, x))))
            r := or(r, shl(4, lt(0xffff, shr(r, x))))
            r := or(r, shl(3, lt(0xff, shr(r, x))))
            // forgefmt: disable-next-item
            result := gt(eq(mload(a), add(iszero(x), xor(31, shr(3, r)))),
                xor(shr(add(8, r), b), shr(add(8, r), mload(add(a, 0x20)))))
        }
    }

    /// @dev Packs a single string with its length into a single word.
    /// Returns `bytes32(0)` if the length is zero or greater than 31.
    function packOne(string memory a) internal pure returns (bytes32 result) {
        /// @solidity memory-safe-assembly
        assembly {
            // We don't need to zero right pad the string,
            // since this is our own custom non-standard packing scheme.
            result :=
                mul(
                    // Load the length and the bytes.
                    mload(add(a, 0x1f)),
                    // `length != 0 && length < 32`. Abuses underflow.
                    // Assumes that the length is valid and within the block gas limit.
                    lt(sub(mload(a), 1), 0x1f)
                )
        }
    }

    /// @dev Unpacks a string packed using {packOne}.
    /// Returns the empty string if `packed` is `bytes32(0)`.
    /// If `packed` is not an output of {packOne}, the output behavior is undefined.
    function unpackOne(bytes32 packed) internal pure returns (string memory result) {
        /// @solidity memory-safe-assembly
        assembly {
            // Grab the free memory pointer.
            result := mload(0x40)
            // Allocate 2 words (1 for the length, 1 for the bytes).
            mstore(0x40, add(result, 0x40))
            // Zeroize the length slot.
            mstore(result, 0)
            // Store the length and bytes.
            mstore(add(result, 0x1f), packed)
            // Right pad with zeroes.
            mstore(add(add(result, 0x20), mload(result)), 0)
        }
    }

    /// @dev Packs two strings with their lengths into a single word.
    /// Returns `bytes32(0)` if combined length is zero or greater than 30.
    function packTwo(string memory a, string memory b) internal pure returns (bytes32 result) {
        /// @solidity memory-safe-assembly
        assembly {
            let aLength := mload(a)
            // We don't need to zero right pad the strings,
            // since this is our own custom non-standard packing scheme.
            result :=
                mul(
                    // Load the length and the bytes of `a` and `b`.
                    or(
                        shl(shl(3, sub(0x1f, aLength)), mload(add(a, aLength))),
                        mload(sub(add(b, 0x1e), aLength))
                    ),
                    // `totalLength != 0 && totalLength < 31`. Abuses underflow.
                    // Assumes that the lengths are valid and within the block gas limit.
                    lt(sub(add(aLength, mload(b)), 1), 0x1e)
                )
        }
    }

    /// @dev Unpacks strings packed using {packTwo}.
    /// Returns the empty strings if `packed` is `bytes32(0)`.
    /// If `packed` is not an output of {packTwo}, the output behavior is undefined.
    function unpackTwo(bytes32 packed)
        internal
        pure
        returns (string memory resultA, string memory resultB)
    {
        /// @solidity memory-safe-assembly
        assembly {
            // Grab the free memory pointer.
            resultA := mload(0x40)
            resultB := add(resultA, 0x40)
            // Allocate 2 words for each string (1 for the length, 1 for the byte). Total 4 words.
            mstore(0x40, add(resultB, 0x40))
            // Zeroize the length slots.
            mstore(resultA, 0)
            mstore(resultB, 0)
            // Store the lengths and bytes.
            mstore(add(resultA, 0x1f), packed)
            mstore(add(resultB, 0x1f), mload(add(add(resultA, 0x20), mload(resultA))))
            // Right pad with zeroes.
            mstore(add(add(resultA, 0x20), mload(resultA)), 0)
            mstore(add(add(resultB, 0x20), mload(resultB)), 0)
        }
    }

    /// @dev Directly returns `a` without copying.
    function directReturn(string memory a) internal pure {
        assembly {
            // Assumes that the string does not start from the scratch space.
            let retStart := sub(a, 0x20)
            let retUnpaddedSize := add(mload(a), 0x40)
            // Right pad with zeroes. Just in case the string is produced
            // by a method that doesn't zero right pad.
            mstore(add(retStart, retUnpaddedSize), 0)
            // Store the return offset.
            mstore(retStart, 0x20)
            // End the transaction, returning the string.
            return(retStart, and(not(0x1f), add(0x1f, retUnpaddedSize)))
        }
    }
}
