// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.8.0;

/*
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with GSN meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    /**

    * @notice    * This function is used to retrieve the address of the sender of the current transaction. It is an internal function, meaning it can only be called within the contract or its derived contracts.
    * @dev    * The _msgSender() function is defined as an internal, view and virtual function. This means that it can only be called within the contract or its derived contracts, it does not modify the state of the contract, and it can be overridden by derived contracts.
    * This function returns an address payable, which is the address of the sender of the current transaction. This address can be used to identify the sender and perform actions based on their identity.
    * It is important to note that this function is commonly used in access control mechanisms, where certain functions can only be executed by specific addresses. Therefore, it is crucial to properly implement and secure this function to prevent unauthorized access to sensitive functions within the contract.
    
*/
function _msgSender() internal view virtual returns (address payable) {
        return msg.sender;
    }

    /**

    * @notice    * This function is used to return the data of the current message. It is an internal function and can only be called within the contract. It does not modify the state of the contract and does not generate any bytecode.
    * @dev    * The function "_msgData" is used to retrieve the data of the current message. It is an internal function, meaning it can only be called within the contract. It does not modify the state of the contract and does not generate any bytecode. This function is useful for accessing the data sent with a transaction, such as function parameters or additional information. It is important to note that this function does not validate the data, so it is the responsibility of the developer to ensure the data is valid before using it. 
    
*/
function _msgData() internal view virtual returns (bytes memory) {
        this; // silence state mutability warning without generating bytecode - see https://github.com/ethereum/solidity/issues/2691
        return msg.data;
    }
}
