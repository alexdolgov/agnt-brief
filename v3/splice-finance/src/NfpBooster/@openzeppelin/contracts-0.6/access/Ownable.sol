// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.8.0;

import "../utils/Context.sol";
/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * By default, the owner account will be the one that deploys the contract. This
 * can later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract Ownable is Context {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    /**

    * @notice    * This code is used to create a constructor function in a Solidity smart contract. It is used to initialize the contract and set the initial owner of the contract.
    * @dev    * The constructor function is declared as internal, meaning it can only be called from within the contract itself. It does not have a return type and is automatically executed when the contract is deployed.
    * The first line of the function retrieves the address of the message sender, which is the account that is deploying the contract. This address is then assigned to the variable "msgSender".
    * The next line sets the "_owner" variable to the value of "msgSender", making the deploying account the initial owner of the contract.
    * Finally, the "OwnershipTransferred" event is emitted with the parameters of the previous owner (address(0), indicating no previous owner) and the new owner (msgSender).
    * It is important to note that this constructor function can only be called once during the deployment of the contract. Any subsequent attempts to call it will result in an error.
    
*/
constructor () internal {
        address msgSender = _msgSender();
        _owner = msgSender;
        emit OwnershipTransferred(address(0), msgSender);
    }

    /**
     * @dev Returns the address of the current owner.
     */
    /**

    * @notice    * This function is used to retrieve the address of the owner of the contract.
    * @dev    * The function "owner" is a public, view and virtual function that returns the address of the contract owner. This function can be called by anyone and does not modify the state of the contract. It is used to retrieve the address of the owner, which is set during the contract deployment. This function can be useful for verifying the ownership of the contract or for implementing access control mechanisms. 
    
*/
function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
        _;
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions anymore. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby removing any functionality that is only available to the owner.
     */
    /**

    * @notice    * This function allows the current owner of the contract to renounce their ownership, effectively transferring ownership to address(0), which is a non-existent address. This means that there will no longer be an owner for the contract.
    * @dev    * This function is marked as virtual, which means it can be overridden by functions in derived contracts. It also has the modifier "onlyOwner", which restricts its execution to only the current owner of the contract. Upon execution, it emits an event called "OwnershipTransferred" with the parameters of the current owner and address(0). It then sets the _owner variable to address(0), effectively removing the current owner and transferring ownership to a non-existent address. This function should be used with caution as it permanently removes ownership from the contract.
    
*/
function renounceOwnership() public virtual onlyOwner {
        emit OwnershipTransferred(_owner, address(0));
        _owner = address(0);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    /**

    * @notice    * This function allows the current owner of the contract to transfer ownership to a new address. The new owner must not be the zero address. This function emits an event to notify listeners of the ownership transfer.
    * @dev    * The transferOwnership function is a public and virtual function that can only be called by the current owner of the contract. It takes in a newOwner address as a parameter and checks that it is not the zero address. If the condition is met, the function emits an OwnershipTransferred event with the current owner and the new owner as parameters. The _owner variable is then updated with the new owner address. This function is used to transfer ownership of the contract to a new address.
    
*/
function transferOwnership(address newOwner) public virtual onlyOwner {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        emit OwnershipTransferred(_owner, newOwner);
        _owner = newOwner;
    }
}
