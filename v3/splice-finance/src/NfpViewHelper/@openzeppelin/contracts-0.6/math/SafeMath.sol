// SPDX-License-Identifier: MIT

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
     * @dev Returns the addition of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    /**

    * @notice    * This function is used to add two unsigned integers and return a boolean value and the sum of the two integers. It is an internal function and can only be called within the contract it is defined in.
    * @dev    * The function takes in two parameters, both of type uint256, and assigns the sum of the two parameters to a new variable c. It then checks if the sum is less than the first parameter, which would indicate an overflow. If an overflow occurs, the function returns a boolean value of false and a sum of 0. Otherwise, it returns a boolean value of true and the sum of the two parameters. This function is useful for preventing overflows when adding two unsigned integers.
    
*/
function tryAdd(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        uint256 c = a + b;
        if (c < a) return (false, 0);
        return (true, c);
    }

    /**
     * @dev Returns the substraction of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    /**

    * @notice    * This function is used to subtract two unsigned integers and returns a boolean value and the result of the subtraction. It is an internal function and can only be called within the contract.
    * Parameters:
    * - a: The first unsigned integer to be subtracted from.
    * - b: The second unsigned integer to be subtracted.
    * Returns:
    * - bool: A boolean value indicating whether the subtraction was successful or not.
    * - uint256: The result of the subtraction.
    * Development:
    * - This function is pure, meaning it does not modify any state variables or emit any events.
    * - It is an internal function, so it can only be called within the contract.
    * - The function first checks if the second integer (b) is greater than the first integer (a). If this is the case, it will return a boolean value of false and a result of 0.
    * - If b is not greater than a, the function will return a boolean value of true and the result of the subtraction (a - b).
    * - This function can be used to prevent underflow when subtracting two unsigned integers.
    
*/
function trySub(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        if (b > a) return (false, 0);
        return (true, a - b);
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    /**

    * @notice    * This function is used for gas optimization and checks if the multiplication of two uint256 values will result in an overflow. It returns a boolean value indicating if the multiplication was successful and the result of the multiplication.
    * @dev    * The function takes in two uint256 values, 'a' and 'b', and performs the multiplication operation on them. It first checks if 'a' is equal to 0, and if so, it returns a boolean value of true and a result of 0. This is done to save gas costs by avoiding the requirement of 'a' not being zero.
    * Next, the function performs the multiplication operation and stores the result in a new uint256 variable 'c'. It then checks if the result of the division of 'c' by 'a' is equal to 'b'. If not, it means that an overflow has occurred and the function returns a boolean value of false and a result of 0.
    * If the multiplication is successful and no overflow occurs, the function returns a boolean value of true and the result of the multiplication stored in 'c'. 
    
*/
function tryMul(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
        // benefit is lost if 'b' is also tested.
        // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
        if (a == 0) return (true, 0);
        uint256 c = a * b;
        if (c / a != b) return (false, 0);
        return (true, c);
    }

    /**
     * @dev Returns the division of two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    /**

    * @notice    * This function is used to divide two unsigned integers and returns a boolean value and the result of the division. It is an internal function and can only be called within the contract.
    * @dev    * The function takes in two parameters, both of type uint256, and checks if the second parameter is equal to 0. If it is, the function returns a boolean value of false and a result of 0. If the second parameter is not equal to 0, the function returns a boolean value of true and the result of the division of the first parameter by the second parameter. This function is pure, meaning it does not modify any state variables and only returns a value. It is recommended to use this function for division operations to avoid potential errors or exceptions.
    
*/
function tryDiv(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        if (b == 0) return (false, 0);
        return (true, a / b);
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    /**

    * @notice    * This function is used to perform the modulo operation on two unsigned integers. It checks if the second integer is equal to 0 and returns false if it is, otherwise it returns true and the result of the modulo operation.
    * @dev    * The function takes in two parameters, both of type uint256, and is marked as internal, meaning it can only be called from within the contract. It is also marked as pure, indicating that it does not modify any state variables and only returns a value.
    * The first parameter, 'a', represents the dividend and the second parameter, 'b', represents the divisor. The function first checks if 'b' is equal to 0, which would result in an error if used as a divisor. If 'b' is indeed 0, the function returns false and 0 as the result.
    * If 'b' is not equal to 0, the function performs the modulo operation on 'a' and 'b' and returns true along with the result. This result is of type uint256, which is the same as the input parameters.
    * This function can be useful for performing calculations that require the remainder of a division, such as determining if a number is even or odd. It is important to note that this function does not handle negative numbers, as the modulo operation on negative numbers can produce unexpected results. 
    
*/
function tryMod(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        if (b == 0) return (false, 0);
        return (true, a % b);
    }

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
    /**

    * @notice    * This function, named "add", takes in two unsigned 256-bit integers, "a" and "b", and returns their sum as an unsigned 256-bit integer. It is an internal function, meaning it can only be called from within the contract it is defined in. This function does not modify any state variables and is therefore marked as "pure". 
    * @dev    * The function first declares a new unsigned 256-bit integer variable, "c", and assigns it the value of "a" plus "b". It then uses a require statement to check if the sum of "a" and "b" is greater than or equal to "a". If this condition is not met, the function will revert with the error message "SafeMath: addition overflow". Finally, the function returns the value of "c". 
    * This function is useful for preventing integer overflow when adding two large numbers. It is recommended to use this function instead of the "+" operator when dealing with unsigned integers in order to ensure safe addition.
    
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
    /**

    * @notice    * This function is used for subtracting two unsigned integers. It is an internal function, meaning it can only be called within the contract it is defined in. It is also marked as pure, meaning it does not modify any state variables and only returns a value. 
    * @dev    * The function takes in two parameters, a and b, both of type uint256. It first checks if b is less than or equal to a using the require statement. If this condition is not met, the function will revert with the error message "SafeMath: subtraction overflow". If the condition is met, the function will return the result of a - b. This ensures that the subtraction operation does not result in an overflow, which can lead to unexpected behavior in the contract. 
    
*/
function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a, "SafeMath: subtraction overflow");
        return a - b;
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
    /**

    * @notice    * This function is used for multiplying two unsigned integers and ensuring that there is no overflow. It is an internal function and cannot be accessed outside of the contract.
    * @dev    * The function takes in two parameters, a and b, both of type uint256. It then multiplies them and stores the result in a new variable c. The function then checks if the result of the multiplication is equal to the original value of a multiplied by b. If it is not equal, it will throw an error message stating "SafeMath: multiplication overflow". This ensures that there is no overflow in the multiplication process.
    * If the value of a is 0, the function will return 0 without performing any multiplication. This is to prevent any potential errors or unexpected results.
    * This function is marked as internal, meaning it can only be accessed within the contract and not by external contracts or accounts. It is also marked as pure, indicating that it does not modify any state variables and only returns a value.
    * It is important to use this function when performing multiplication in order to prevent any potential overflow errors and ensure the accuracy of the result. 
    
*/
function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        if (a == 0) return 0;
        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");
        return c;
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting on
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
    /**

    * @notice    * This function is used for dividing two unsigned integers and returns the result as an unsigned integer. It is important to note that the second input parameter (b) must be greater than 0, otherwise the function will throw an error. This function is part of the SafeMath library and is intended to prevent potential errors or vulnerabilities in the code.
    * @dev    * The div function is an internal function, meaning it can only be called within the contract it is defined in. It takes in two unsigned integers (a and b) as input parameters and returns an unsigned integer as the result of the division. The require statement ensures that the second input parameter (b) is greater than 0, otherwise the function will throw an error and the division will not be executed.
    * This function is part of the SafeMath library, which is a commonly used library in Solidity to prevent potential errors or vulnerabilities in mathematical operations. It is important to use this library when dealing with mathematical operations in order to avoid potential issues such as integer overflow or division by zero.
    * Overall, the div function is a crucial part of the SafeMath library and should be used whenever dividing two unsigned integers in Solidity. It is important to note the requirement for the second input parameter (b) to be greater than 0 in order for the function to execute successfully. 
    
*/
function div(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0, "SafeMath: division by zero");
        return a / b;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    /**

    * @notice    * This function is used to calculate the modulo of two unsigned integers. It is an internal function and can only be accessed within the contract. It is important to note that the second parameter (b) must be greater than 0, otherwise the function will revert with an error message.
    * @dev    * The function takes in two parameters, a and b, both of type uint256. It then checks if b is greater than 0 using the require statement. If b is not greater than 0, the function will revert with the error message "SafeMath: modulo by zero". If b is greater than 0, the function will return the modulo of a and b using the % operator. This function does not modify any state variables and is therefore marked as pure. It is an internal function and can only be accessed within the contract.
    
*/
function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0, "SafeMath: modulo by zero");
        return a % b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on
     * overflow (when the result is negative).
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {trySub}.
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    /**

    * @notice    * This function is used to subtract two unsigned integers and return the result. It takes in three parameters: a, b, and errorMessage. The function will throw an error if b is greater than a. Otherwise, it will return the result of a - b.
    * @dev    * The function is defined as internal, meaning it can only be called within the contract. It is also marked as pure, indicating that it does not modify the state of the contract.
    * Parameters:
    * - a: an unsigned integer representing the minuend
    * - b: an unsigned integer representing the subtrahend
    * - errorMessage: a string containing the error message to be thrown if b is greater than a
    * Returns:
    * - uint256: the result of a - b
    * Requirements:
    * - b must be less than or equal to a, otherwise an error will be thrown.
    * Usage:
    * This function can be used to subtract two unsigned integers and handle potential errors. It is recommended to use this function instead of the built-in subtraction operator (-) to ensure proper error handling.
    
*/
function sub(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b <= a, errorMessage);
        return a - b;
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting with custom message on
     * division by zero. The result is rounded towards zero.
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {tryDiv}.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    /**

    * @notice    * This function is used to divide two unsigned integers and return the result. It also includes an error message in case the second integer is equal to zero, preventing a potential division by zero error.
    * @dev    * The function "div" takes in three parameters: "a" and "b" which are both unsigned integers, and "errorMessage" which is a string. It is an internal function, meaning it can only be called within the contract it is defined in.
    * The first line of the function checks if the value of "b" is greater than zero, and if not, it will trigger the "require" statement and revert the transaction with the provided error message.
    * If the value of "b" is greater than zero, the function will return the result of dividing "a" by "b".
    * This function is pure, meaning it does not modify any state variables and only returns a value. It is commonly used for mathematical operations within a contract.
    
*/
function div(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b > 0, errorMessage);
        return a / b;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting with custom message when dividing by zero.
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {tryMod}.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    /**

    * @notice    * This function is used to calculate the modulus of two unsigned integers. It takes in three parameters: a, b, and errorMessage. The function will return the remainder of a divided by b. It is important to note that b must be greater than 0, otherwise an error message will be displayed.
    * @dev    * The function is defined as internal, meaning it can only be called within the contract it is defined in. It is also marked as pure, indicating that it does not modify any state variables and only returns a value. This function is useful for performing mathematical calculations within a smart contract. It is important to provide a descriptive errorMessage in case the b parameter is 0, as this would result in an error and the transaction would fail. 
    
*/
function mod(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b > 0, errorMessage);
        return a % b;
    }
}
