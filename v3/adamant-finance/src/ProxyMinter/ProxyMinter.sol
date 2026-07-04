pragma solidity ^0.6.12;
// SPDX-License-Identifier: UNLICENSED


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
    function _msgSender() internal view virtual returns (address payable) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes memory) {
        this; // silence state mutability warning without generating bytecode - see https://github.com/ethereum/solidity/issues/2691
        return msg.data;
    }
}


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
    constructor () internal {
        address msgSender = _msgSender();
        _owner = msgSender;
        emit OwnershipTransferred(address(0), msgSender);
    }

    /**
     * @dev Returns the address of the current owner.
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
    function renounceOwnership() public virtual onlyOwner {
        emit OwnershipTransferred(_owner, address(0));
        _owner = address(0);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        emit OwnershipTransferred(_owner, newOwner);
        _owner = newOwner;
    }
}

interface IMinter {
    function isMinter(address) view external returns(bool);
    function amountAddyToMint(uint256 ethProfit) view external returns(uint256);
    function mintFor(address user, address asset, uint256 amount) external;

    function addyPerProfitEth() view external returns(uint256);

    function setMinter(address minter, bool canMint) external;
}

contract ProxyMinter is Ownable {

    /* ========== STATE VARIABLES ========== */

    mapping(address => bool) private _minters;
    address public deployer;
    address public minter;

    /* ========== CONSTRUCTOR ========== */

    constructor(address _minter)
        public
    {
        minter = _minter;
    }
    
    /* ========== MODIFIERS ========== */

    modifier onlyMinter {
        require(isMinter(msg.sender) == true, "AddyMinter: caller is not the minter");
        _;
    }

    function mintFor(address user, address asset, uint256 amount) external onlyMinter {
        IMinter(minter).mintFor(user, asset, amount);
    }
    
    /* ========== VIEWS ========== */

    function isMinter(address account) public view returns (bool) {
        return _minters[account];
    }

    function amountAddyToMint(uint256 ethProfit) public view returns (uint256) {
        return IMinter(minter).amountAddyToMint(ethProfit);
    }

    /* ========== RESTRICTED FUNCTIONS ========== */

    function setDeployer(address _deployer) public onlyOwner {
        require(deployer == address(0), "already set");
        deployer = _deployer;
    }
    
    function setMinter(address minter, bool canMint) external {
        require(deployer == msg.sender, "not deployer");

        if (canMint) {
            _minters[minter] = canMint;
        } else {
            delete _minters[minter];
        }
    }
}
