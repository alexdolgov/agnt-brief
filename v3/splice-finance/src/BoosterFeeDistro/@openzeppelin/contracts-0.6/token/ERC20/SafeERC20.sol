// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.8.0;

import "./IERC20.sol";
import "../../math/SafeMath.sol";
import "../../utils/Address.sol";

/**
 * @title SafeERC20
 * @dev Wrappers around ERC20 operations that throw on failure (when the token
 * contract returns false). Tokens that return no value (and instead revert or
 * throw on failure) are also supported, non-reverting calls are assumed to be
 * successful.
 * To use this library you can add a `using SafeERC20 for IERC20;` statement to your contract,
 * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
 */
library SafeERC20 {
    using SafeMath for uint256;
    using Address for address;

    /**

    * @notice    * This function is used to safely transfer ERC20 tokens from one address to another. It takes in the token contract address, the recipient address, and the amount of tokens to be transferred as parameters.
    * @dev    * The function first calls the _callOptionalReturn function, passing in the token contract address and the encoded data for the transfer function. This function is used to handle any errors that may occur during the transfer process.
    * The transfer function is then called using the token contract's transfer selector and passing in the recipient address and the amount of tokens to be transferred.
    * It is important to note that this function is internal, meaning it can only be called from within the contract it is defined in. This ensures that the transfer can only be initiated by the contract itself, providing an extra layer of security.
    * Overall, this function is a safe and efficient way to transfer ERC20 tokens within a contract. 
    
*/
function safeTransfer(IERC20 token, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transfer.selector, to, value));
    }

    /**

    * @notice    * This function is used to transfer tokens from one address to another. It is an internal function, meaning it can only be called within the contract it is defined in. 
    * @dev    * The function takes in four parameters: 
    * 1. IERC20 token: This is the token contract address of the token being transferred.
    * 2. address from: This is the address from which the tokens will be transferred.
    * 3. address to: This is the address to which the tokens will be transferred.
    * 4. uint256 value: This is the amount of tokens to be transferred.
    * The function uses the _callOptionalReturn function to call the transferFrom function of the token contract. This function takes in three parameters: from, to, and value. These parameters are encoded using the abi.encodeWithSelector function and passed as the data parameter in the _callOptionalReturn function.
    * It is important to note that this function does not handle any errors that may occur during the token transfer. It is the responsibility of the calling function to handle any errors and revert the transaction if necessary. 
    
*/
function safeTransferFrom(IERC20 token, address from, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transferFrom.selector, from, to, value));
    }

    /**
     * @dev Deprecated. This function has issues similar to the ones found in
     * {IERC20-approve}, and its usage is discouraged.
     *
     * Whenever possible, use {safeIncreaseAllowance} and
     * {safeDecreaseAllowance} instead.
     */
    /**

    * @notice    * This function, safeApprove, is used to set or reset an allowance for a specific spender on a given token. It should only be called when setting an initial allowance or resetting it to zero. To increase or decrease the allowance, use the functions safeIncreaseAllowance and safeDecreaseAllowance.
    * @dev    * The function requires three parameters: the token contract address, the spender's address, and the value of the allowance. It checks if the value is either zero or if the current allowance for the spender is also zero. If neither of these conditions is met, the function will revert with an error message.
    * The function then calls the _callOptionalReturn function, passing in the token contract and the encoded function call to approve the spender for the specified value. This function will handle any potential errors or return values from the token contract.
    * It is important to note that this function should only be used for setting or resetting an allowance. To increase or decrease the allowance, use the safeIncreaseAllowance and safeDecreaseAllowance functions. This is to ensure that the allowance is not accidentally overwritten or set to an incorrect value.
    
*/
function safeApprove(IERC20 token, address spender, uint256 value) internal {
        // safeApprove should only be called when setting an initial allowance,
        // or when resetting it to zero. To increase and decrease it, use
        // 'safeIncreaseAllowance' and 'safeDecreaseAllowance'
        // solhint-disable-next-line max-line-length
        require((value == 0) || (token.allowance(address(this), spender) == 0),
            "SafeERC20: approve from non-zero to non-zero allowance"
        );
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, value));
    }

    /**

    * @notice    * This function is used to safely increase the allowance for a specific spender on a specific token. It takes in the token contract, the spender's address, and the amount to increase the allowance by as parameters.
    * @dev    * The function first calculates the new allowance by adding the current allowance for the spender to the value parameter. It then calls the _callOptionalReturn function, passing in the token contract and the encoded function call to approve the spender for the new allowance amount. This ensures that the allowance is increased safely and without any potential errors.
    
*/
function safeIncreaseAllowance(IERC20 token, address spender, uint256 value) internal {
        uint256 newAllowance = token.allowance(address(this), spender).add(value);
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, newAllowance));
    }

    /**

    * @notice    * This function is used to safely decrease the allowance of a specific spender for a given token. It is an internal function and should not be called directly by external users. 
    * @dev    * The function takes in three parameters: the token contract address, the spender's address, and the amount to decrease the allowance by. It first checks the current allowance of the contract for the spender and subtracts the given value from it. If the resulting allowance is below zero, an error message will be returned. Otherwise, the function will call the token's approve function with the updated allowance as the parameter. This ensures that the allowance is decreased safely without the risk of going below zero. 
    
*/
function safeDecreaseAllowance(IERC20 token, address spender, uint256 value) internal {
        uint256 newAllowance = token.allowance(address(this), spender).sub(value, "SafeERC20: decreased allowance below zero");
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, newAllowance));
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     */
    /**

    * @notice    * This function is used to perform a low level call to bypass Solidity's return data size checking mechanism. It is important to note that this function should only be used by experienced developers as it involves low level calls and can be risky if not implemented correctly.
    * @dev    * The function takes in two parameters, an IERC20 token and a bytes memory data. It then uses the {Address.functionCall} to perform a low level call to the target address, which must contain contract code. The function also verifies that the call was successful using the "SafeERC20: low-level call failed" error message.
    * If the return data from the call is not empty, the function decodes it using the abi.decode function and checks if the operation was successful. If the operation was not successful, the function will revert with the "SafeERC20: ERC20 operation did not succeed" error message.
    * It is important for developers to thoroughly test and understand the implications of using this function before implementing it in their code. It should only be used when necessary and with caution.
    
*/
function _callOptionalReturn(IERC20 token, bytes memory data) private {
        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since
        // we're implementing it ourselves. We use {Address.functionCall} to perform this call, which verifies that
        // the target address contains contract code and also asserts for success in the low-level call.

        bytes memory returndata = address(token).functionCall(data, "SafeERC20: low-level call failed");
        if (returndata.length > 0) { // Return data is optional
            // solhint-disable-next-line max-line-length
            require(abi.decode(returndata, (bool)), "SafeERC20: ERC20 operation did not succeed");
        }
    }
}
