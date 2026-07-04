// SPDX-License-Identifier: MIT

pragma solidity >=0.6.2 <0.8.0;

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
     * ====
     */
    /**

    * @notice    * This function is used to check if the given address is a contract or not. It relies on the extcodesize method, which returns 0 for contracts that are still in the process of being created. This means that the code for the contract is not yet stored at the end of the constructor execution.
    * @dev    * The function takes in an address as a parameter and uses the assembly code to retrieve the size of the code at that address. If the size is greater than 0, it means that the address is a contract. Otherwise, it is not a contract.
    * It is important to note that this function is not foolproof and may not accurately determine if an address is a contract in all cases. It is recommended to use additional checks and precautions when dealing with contracts.
    
*/
function isContract(address account) internal view returns (bool) {
        // This method relies on extcodesize, which returns 0 for contracts in
        // construction, since the code is only stored at the end of the
        // constructor execution.

        uint256 size;
        // solhint-disable-next-line no-inline-assembly
        assembly { size := extcodesize(account) }
        return size > 0;
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
     * https://diligence.consensys.net/posts/2019/09/stop-using-soliditys-transfer-now/[Learn more].
     *
     * IMPORTANT: because control is transferred to `recipient`, care must be
     * taken to not create reentrancy vulnerabilities. Consider using
     * {ReentrancyGuard} or the
     * https://solidity.readthedocs.io/en/v0.5.11/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].
     */
    /**

    * @notice    * This function is used to send a specified amount of Ether to a specified recipient address. It is an internal function, meaning it can only be called from within the contract itself.
    * @dev    * The function takes two parameters: a payable address for the recipient and a uint256 value for the amount of Ether to be sent. The recipient address must be payable, meaning it can receive Ether.
    * Before sending the Ether, the function checks if the contract has enough balance to cover the specified amount. If there is not enough balance, the function will revert and the transaction will fail.
    * The function then uses a low-level call to send the specified amount of Ether to the recipient address. This call is wrapped in a bool variable to check if the call was successful. If the call was not successful, the function will revert and the transaction will fail.
    * It is important to note that this function does not have any access control, meaning anyone can call it and send Ether to any address. It is the responsibility of the contract developer to implement proper access control mechanisms to prevent unauthorized use of this function.
    
*/
function sendValue(address payable recipient, uint256 amount) internal {
        require(address(this).balance >= amount, "Address: insufficient balance");

        // solhint-disable-next-line avoid-low-level-calls, avoid-call-value
        (bool success, ) = recipient.call{ value: amount }("");
        require(success, "Address: unable to send value, recipient may have reverted");
    }

    /**
     * @dev Performs a Solidity function call using a low level `call`. A
     * plain`call` is an unsafe replacement for a function call: use this
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
    /**

    * @notice    * This function is used to call another function within a contract. It takes in the target address and the data to be passed as parameters. It also includes a default error message in case the call fails.
    * @dev    * The functionCall function is an internal function that is used to call another function within a contract. It takes in two parameters - the target address and the data to be passed to the function. The function then executes the call and returns the result as a bytes array. In case the call fails, it will return an error message stating "Address: low-level call failed". This function is commonly used in contract development to interact with other contracts and execute specific functions. It is important to note that this function should only be used within the contract and not externally, as it is marked as internal.
    
*/
function functionCall(address target, bytes memory data) internal returns (bytes memory) {
      return functionCall(target, data, "Address: low-level call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`], but with
     * `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    /**

    * @notice    * This function is used to call another function with the specified target address and data. It also handles any error messages that may occur during the function call.
    * @dev    * The functionCall function is an internal function that is used to call another function with the specified target address and data. It also handles any error messages that may occur during the function call. It uses the functionCallWithValue function, passing in a value of 0, to make the function call. This function is typically used within other functions in the contract to call external functions. It is important to note that this function is only accessible within the contract and cannot be called externally. 
    
*/
function functionCall(address target, bytes memory data, string memory errorMessage) internal returns (bytes memory) {
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
    /**

    * @notice    * This function is used to make a low-level call to a target address with a specified value. It is important to note that this function should only be used by experienced developers who understand the risks involved with low-level calls.
    * @dev    * The functionCallWithValue function takes in three parameters: the target address, the data to be passed in the call, and the value to be sent along with the call. It then returns the result of the call as a bytes array.
    * It is important to note that this function should only be used for low-level calls, as it does not perform any safety checks. This means that the target address could potentially be a malicious contract, and the data and value could be manipulated to cause unexpected behavior.
    * Additionally, the functionCallWithValue function has an internal modifier, meaning it can only be called from within the contract it is defined in. This is to prevent external contracts from calling this function and potentially causing unintended consequences.
    * Developers should also be aware that this function has a default error message of "Address: low-level call with value failed" if the call fails. This can be changed by passing in a custom error message as the fourth parameter.
    * In summary, the functionCallWithValue function should only be used by experienced developers who understand the risks involved with low-level calls and have thoroughly tested their code. It is important to carefully consider the target address, data, and value being passed in to avoid any potential vulnerabilities.
    
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
    /**

    * @notice    * This function is used to call a contract with a specified value and data. It checks if the contract has enough balance to make the call and if the target address is a contract. It then uses low-level call to execute the call and returns the result.
    * @dev    * The function takes in four parameters: the target address, the data to be passed, the value to be sent, and an error message in case the call fails. It first checks if the contract has enough balance to make the call and if the target address is a contract. It then uses low-level call to execute the call and returns the result. The function is internal, meaning it can only be called from within the contract.
    
*/
function functionCallWithValue(address target, bytes memory data, uint256 value, string memory errorMessage) internal returns (bytes memory) {
        require(address(this).balance >= value, "Address: insufficient balance for call");
        require(isContract(target), "Address: call to non-contract");

        // solhint-disable-next-line avoid-low-level-calls
        (bool success, bytes memory returndata) = target.call{ value: value }(data);
        return _verifyCallResult(success, returndata, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    /**

    * @notice    * This function is used to perform a low-level static call to the specified target address with the given data. It is intended to be used for read-only operations and does not modify the state of the contract.
    * @dev    * The function takes in two parameters: the target address and the data to be passed to the target contract. It then uses the "functionStaticCall" function to perform the static call and returns the result as a bytes array.
    * It is important to note that this function is marked as "internal", meaning it can only be called from within the contract or from contracts that inherit from it. This is to ensure that the function is not accessible to external contracts and can only be used internally.
    * The function also includes a third parameter, which is a string that serves as an error message in case the static call fails. This is to provide more information in case of an error and aid in debugging.
    * It is recommended to use this function for read-only operations as it does not modify the state of the contract. Modifying the state of the contract through a static call can lead to unexpected results and should be avoided.
    * Overall, this function is a useful tool for performing low-level static calls in a secure and controlled manner. 
    
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
    /**

    * @notice    * This function is used to make a static call to a contract at the specified address. It requires the target address to be a contract. The function will return the result of the call as a bytes array.
    * @dev    * The function first checks if the target address is a contract by using the isContract() function. If the target address is not a contract, the function will revert with the error message "Address: static call to non-contract".
    * Next, the function uses the staticcall() function to make the call to the target contract with the specified data. The result of the call is stored in the returndata variable.
    * Finally, the function uses the _verifyCallResult() function to verify the success of the call and return the result as a bytes array. If the call was not successful, the function will revert with the specified error message.
    
*/
function functionStaticCall(address target, bytes memory data, string memory errorMessage) internal view returns (bytes memory) {
        require(isContract(target), "Address: static call to non-contract");

        // solhint-disable-next-line avoid-low-level-calls
        (bool success, bytes memory returndata) = target.staticcall(data);
        return _verifyCallResult(success, returndata, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a delegate call.
     *
     * _Available since v3.4._
     */
    /**

    * @notice    * This function is used to perform a low-level delegate call to the specified target address with the given data. It is important to note that delegate calls are a low-level operation and should only be used by experienced developers who understand the potential risks and implications.
    * @dev    * The functionDelegateCall function takes in two parameters: the target address and the data to be passed to the delegate call. It then calls the functionDelegateCall function with an additional error message parameter, which will be returned if the delegate call fails.
    * It is important to note that delegate calls can be used to execute code from another contract, which can be useful for creating modular and upgradable contracts. However, this also means that the code being executed is not under the control of the calling contract, so it is crucial to carefully review and trust the target contract before making a delegate call.
    * Additionally, delegate calls do not have access to the calling contract's storage, so any state changes made during the delegate call will not be reflected in the calling contract. This can lead to unexpected behavior and should be taken into consideration when using delegate calls.
    * In summary, the functionDelegateCall function should only be used by experienced developers who understand the potential risks and implications of delegate calls. It is important to carefully review and trust the target contract before making a delegate call, and to keep in mind that any state changes made during the delegate call will not be reflected in the calling contract.
    
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
    /**

    * @notice    * This function allows for delegate calls to be made to a contract address. It first checks that the target address is a contract, and then executes the delegate call with the provided data. It then verifies the result of the call and returns any error message if necessary.
    * @dev    * The function takes in three parameters: the target address, the data to be used in the delegate call, and an error message. It uses the internal function _verifyCallResult to check the success of the delegate call and return any error message if needed. It is important to note that this function should only be used with trusted contracts, as delegate calls can be used to execute code from external contracts. Careful consideration should be taken when using this function to ensure the security of the contract.
    
*/
function functionDelegateCall(address target, bytes memory data, string memory errorMessage) internal returns (bytes memory) {
        require(isContract(target), "Address: delegate call to non-contract");

        // solhint-disable-next-line avoid-low-level-calls
        (bool success, bytes memory returndata) = target.delegatecall(data);
        return _verifyCallResult(success, returndata, errorMessage);
    }

    /**

    * Notice: This function is used to verify the result of a call to an external contract. It takes in three parameters: a boolean indicating the success of the call, the return data from the call, and an error message if the call was unsuccessful.
    * Dev: The function first checks if the call was successful. If it was, it simply returns the return data. If the call was unsuccessful, the function checks if there is a revert reason in the return data. If there is, it uses assembly to bubble up the revert reason. If there is no revert reason, the function reverts with the provided error message.
    
*/
function _verifyCallResult(bool success, bytes memory returndata, string memory errorMessage) private pure returns(bytes memory) {
        if (success) {
            return returndata;
        } else {
            // Look for revert reason and bubble it up if present
            if (returndata.length > 0) {
                // The easiest way to bubble the revert reason is using memory via assembly

                // solhint-disable-next-line no-inline-assembly
                assembly {
                    let returndata_size := mload(returndata)
                    revert(add(32, returndata), returndata_size)
                }
            } else {
                revert(errorMessage);
            }
        }
    }
}
