// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.8.0;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20 {
    /**
     * @dev Returns the amount of tokens in existence.
     */
    /**

    * @notice    * This function is used to retrieve the total supply of a specific token. It is an external function, meaning it can be called by other contracts or externally owned accounts. It does not modify the state of the contract and therefore does not require any gas to be executed. This function is useful for obtaining information about the total amount of tokens in circulation.
    * @dev    * The totalSupply() function is a built-in function in the Solidity programming language. It is used to retrieve the total supply of a specific token. The function is declared as external, which means it can be called by other contracts or externally owned accounts. The function does not modify the state of the contract, therefore it does not require any gas to be executed.
    * The function returns a uint256 value, which represents the total supply of the token. This value can be used for various purposes, such as displaying the total supply on a user interface or performing calculations.
    * It is important to note that this function does not have any input parameters, as it simply retrieves the total supply from the contract's state variables. Therefore, it is a read-only function and does not require any transaction to be executed.
    * Overall, the totalSupply() function is a useful tool for obtaining information about the total amount of tokens in circulation and can be used in various scenarios within a Solidity contract.
    
*/
function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    /**

    * @notice    * This function is used to retrieve the balance of a specific account in the contract. It takes in the address of the account as a parameter and returns the balance as a uint256 value. This function is a view function, meaning it does not modify the state of the contract and can be called without incurring any gas fees.
    * @dev    * The balanceOf function is a built-in function in the Solidity programming language. It is used to retrieve the balance of a specific account in the contract. The function takes in the address of the account as a parameter and returns the balance as a uint256 value. This function is useful for checking the balance of a particular account, such as a user's wallet or a smart contract's balance.
    * To use this function, the contract must be deployed on the blockchain and have a balance. The function can then be called by passing in the address of the account whose balance is to be retrieved. The function will return the balance of the account in the form of a uint256 value.
    * It is important to note that this function is a view function, meaning it does not modify the state of the contract. Therefore, it can be called without incurring any gas fees. This makes it a cost-effective way to retrieve the balance of an account in the contract.
    * Overall, the balanceOf function is a useful tool for developers to check the balance of specific accounts in their contracts. It can be used for various purposes, such as tracking user balances, managing funds
    
*/
function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `recipient`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    /**

    * @notice    * This function allows the transfer of a specified amount of tokens from the sender's address to the recipient's address. It returns a boolean value indicating the success of the transfer.
    * @dev    * The transfer function takes in two parameters - the recipient's address and the amount of tokens to be transferred. It is an external function, meaning it can be called by other contracts or externally owned accounts.
    * The function does not have any access restrictions, so anyone can call it as long as they have the necessary amount of tokens to transfer.
    * Upon successful execution, the function will update the balances of the sender and recipient accordingly. It will also emit a Transfer event to notify any listeners of the transfer.
    * If the transfer fails, either due to insufficient balance or other reasons, the function will return false.
    * It is important to note that this function does not handle any fees or charges associated with the transfer. It is the responsibility of the caller to ensure that the necessary fees are included in the amount parameter.
    * Overall, this function provides a simple and straightforward way to transfer tokens between addresses. 
    
*/
function transfer(address recipient, uint256 amount) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    /**

    * @notice    * This function allows users to view the amount of tokens that have been approved for transfer from one address to another. It does not actually transfer any tokens, but simply returns the allowance amount.
    * @dev    * The allowance function takes in two parameters, the owner address and the spender address. It then uses the view keyword to indicate that it is a read-only function and will not modify any state variables. The function returns a uint256 value, which represents the amount of tokens that have been approved for transfer from the owner address to the spender address.
    * This function can be useful for implementing token transfer functionality in a smart contract. For example, a user may want to check the allowance amount before initiating a transfer to ensure that they have enough tokens approved for the transaction.
    * It is important to note that this function does not actually transfer any tokens. It only returns the allowance amount and does not modify any state variables. Any token transfers must be done through the transfer or transferFrom functions.
    * Overall, the allowance function provides a convenient way for users to check the amount of tokens that have been approved for transfer between two addresses. 
    
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
    /**

    * @notice    * This function allows the contract owner to approve a specific address to spend a certain amount of tokens on their behalf. This function can only be called by the contract owner and is used to give permission to another address to transfer tokens from the owner's account.
    * @dev    * The function "approve" takes in two parameters: "spender" which is the address being approved and "amount" which is the number of tokens being approved for spending. This function is marked as "external" which means it can only be called from outside the contract.
    * The function returns a boolean value indicating whether the approval was successful or not. This function can only be called by the contract owner, as specified by the "external" modifier. This ensures that only the owner has the ability to give permission for token transfers.
    * Once the approval is granted, the approved address can then call the "transferFrom" function to transfer tokens from the owner's account. This allows for more flexibility in token transfers, as the owner does not have to manually initiate each transfer.
    * It is important to note that the approved amount can be changed by calling this function again with a different amount. This allows the owner to update the approved amount as needed.
    * Overall, the "approve" function is a crucial part of the token transfer process and provides a secure way for the contract owner to give permission for token transfers on their behalf. 
    
*/
function approve(address spender, uint256 amount) external returns (bool);

    /**
     * @dev Moves `amount` tokens from `sender` to `recipient` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    /**

    * @notice    * This function allows the transfer of a specified amount of tokens from the sender's address to the recipient's address. It is a part of the ERC-20 token standard and is used to transfer tokens between different addresses.
    * @dev    * The transferFrom function takes in three parameters - sender, recipient, and amount. The sender is the address from which the tokens will be transferred, while the recipient is the address that will receive the tokens. The amount parameter specifies the number of tokens to be transferred.
    * This function can only be called by the owner of the tokens or an approved spender. The owner must have previously approved the spender to transfer tokens on their behalf using the approve function.
    * Upon successful execution, this function will return a boolean value indicating whether the transfer was successful or not.
    * It is important to note that this function can only transfer tokens that have been approved by the owner. If the amount exceeds the approved limit, the transfer will fail.
    * This function is a crucial part of the ERC-20 token standard and is used in various token transactions, such as trading on exchanges or sending tokens to other addresses. It is important to ensure that the sender has enough tokens and has approved the spender before calling this function to avoid any errors.
    * It is recommended to thoroughly test this function before deploying it to a live network to ensure its proper functionality. Additionally, proper error handling should be implemented to handle any potential errors that may occur during the execution of this function.
    
*/
function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);

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
}
