// File @openzeppelin/contracts/math/SafeMath.sol@v3.4.0

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
    function trySub(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        if (b > a) return (false, 0);
        return (true, a - b);
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
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
    function tryDiv(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        if (b == 0) return (false, 0);
        return (true, a / b);
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
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
    function mod(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b > 0, errorMessage);
        return a % b;
    }
}


// File @openzeppelin/contracts/utils/Context.sol@v3.4.0



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
    function _msgSender() internal view virtual returns (address payable) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes memory) {
        this; // silence state mutability warning without generating bytecode - see https://github.com/ethereum/solidity/issues/2691
        return msg.data;
    }
}


// File @openzeppelin/contracts/access/Ownable.sol@v3.4.0



pragma solidity >=0.6.0 <0.8.0;

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


// File libraries/PoolConstant.sol


// Version @2021-05
// Source: Pancake Bunny
/*
 █████╗ ██████╗ ███████╗██████╗  ██████╗  ██████╗██╗  ██╗███████╗████████╗
██╔══██╗██╔══██╗██╔════╝██╔══██╗██╔═══██╗██╔════╝██║ ██╔╝██╔════╝╚══██╔══╝
███████║██████╔╝█████╗  ██████╔╝██║   ██║██║     █████╔╝ █████╗     ██║   
██╔══██║██╔═══╝ ██╔══╝  ██╔══██╗██║   ██║██║     ██╔═██╗ ██╔══╝     ██║   
██║  ██║██║     ███████╗██║  ██║╚██████╔╝╚██████╗██║  ██╗███████╗   ██║   
╚═╝  ╚═╝╚═╝     ╚══════╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝╚══════╝   ╚═╝  
 */
pragma solidity >=0.6.12;

library PoolConstant {
    enum PoolTypes {
        SpaceStake, // no perf fee
        BananaStake,
        FlipToFlip,
        FlipToBanana,
        Space, // no perf fee
        SpaceBNB
    }

    struct PoolInfoBSC {
        address pool;
        uint256 balance;
        uint256 principal;
        uint256 available;
        uint256 tvl;
        uint256 utilized;
        uint256 liquidity;
        uint256 pBASE;
        uint256 pSPACE;
        uint256 depositedAt;
        uint256 feeDuration;
        uint256 feePercentage;
    }
}


// File interfaces/IVaultController.sol


// Version @2021-05
// Source: Pancake Bunny
/*
 █████╗ ██████╗ ███████╗██████╗  ██████╗  ██████╗██╗  ██╗███████╗████████╗
██╔══██╗██╔══██╗██╔════╝██╔══██╗██╔═══██╗██╔════╝██║ ██╔╝██╔════╝╚══██╔══╝
███████║██████╔╝█████╗  ██████╔╝██║   ██║██║     █████╔╝ █████╗     ██║   
██╔══██║██╔═══╝ ██╔══╝  ██╔══██╗██║   ██║██║     ██╔═██╗ ██╔══╝     ██║   
██║  ██║██║     ███████╗██║  ██║╚██████╔╝╚██████╗██║  ██╗███████╗   ██║   
╚═╝  ╚═╝╚═╝     ╚══════╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝╚══════╝   ╚═╝  
 */
pragma solidity >=0.6.12;

interface IVaultController {
    function minter() external view returns (address);

    function spaceChef() external view returns (address);

    function stakingToken() external view returns (address);
}


// File interfaces/IStrategy.sol


// Version @2021-05
// Source: Pancake Bunny
/*
 █████╗ ██████╗ ███████╗██████╗  ██████╗  ██████╗██╗  ██╗███████╗████████╗
██╔══██╗██╔══██╗██╔════╝██╔══██╗██╔═══██╗██╔════╝██║ ██╔╝██╔════╝╚══██╔══╝
███████║██████╔╝█████╗  ██████╔╝██║   ██║██║     █████╔╝ █████╗     ██║   
██╔══██║██╔═══╝ ██╔══╝  ██╔══██╗██║   ██║██║     ██╔═██╗ ██╔══╝     ██║   
██║  ██║██║     ███████╗██║  ██║╚██████╔╝╚██████╗██║  ██╗███████╗   ██║   
╚═╝  ╚═╝╚═╝     ╚══════╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝╚══════╝   ╚═╝  
 */
pragma solidity >=0.6.12;
pragma experimental ABIEncoderV2;


interface IStrategy is IVaultController {
    function deposit(uint256 _amount) external;

    function depositAll() external;

    function withdraw(uint256 _amount) external; // SPACE STAKING POOL ONLY

    function withdrawAll() external;

    function getReward() external; // SPACE STAKING POOL ONLY

    function harvest() external;

    function totalSupply() external view returns (uint256);

    function balance() external view returns (uint256);

    function balanceOf(address account) external view returns (uint256);

    function sharesOf(address account) external view returns (uint256);

    function principalOf(address account) external view returns (uint256);

    function earned(address account) external view returns (uint256);

    function withdrawableBalanceOf(address account) external view returns (uint256); // SPACE STAKING POOL ONLY

    function priceShare() external view returns (uint256);

    /* ========== Strategy Information ========== */

    function pid() external view returns (uint256);

    function poolType() external view returns (PoolConstant.PoolTypes);

    function depositedAt(address account) external view returns (uint256);

    function rewardsToken() external view returns (address);

    event Deposited(address indexed user, uint256 amount);
    event Withdrawn(address indexed user, uint256 amount, uint256 withdrawalFee);
    event ProfitPaid(address indexed user, uint256 profit, uint256 performanceFee);
    event SpacePaid(address indexed user, uint256 profit, uint256 performanceFee);
    event Harvested(uint256 profit);
}


// File interfaces/ISpaceMinter.sol


// Version @2021-05
// Source: Pancake Bunny
/*
 █████╗ ██████╗ ███████╗██████╗  ██████╗  ██████╗██╗  ██╗███████╗████████╗
██╔══██╗██╔══██╗██╔════╝██╔══██╗██╔═══██╗██╔════╝██║ ██╔╝██╔════╝╚══██╔══╝
███████║██████╔╝█████╗  ██████╔╝██║   ██║██║     █████╔╝ █████╗     ██║   
██╔══██║██╔═══╝ ██╔══╝  ██╔══██╗██║   ██║██║     ██╔═██╗ ██╔══╝     ██║   
██║  ██║██║     ███████╗██║  ██║╚██████╔╝╚██████╗██║  ██╗███████╗   ██║   
╚═╝  ╚═╝╚═╝     ╚══════╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝╚══════╝   ╚═╝  
 */

pragma solidity >=0.6.12;

interface ISpaceMinter {
    function isMinter(address) external view returns (bool);

    function amountSpaceToMint(uint256 bnbProfit) external view returns (uint256);

    function withdrawalFee(uint256 amount, uint256 depositedAt) external view returns (uint256);

    function performanceFee(uint256 profit) external view returns (uint256);

    function mintFor(
        address flip,
        uint256 withdrawalFeeAmount,
        uint256 performanceFeeAmount,
        address dest,
        uint256 depositedAt
    ) external payable;

    function amountToMintPerProfit() external view returns (uint256);

    function withdrawalFeeFreePeriod() external view returns (uint256);

    function withdrawalFeeRate() external view returns (uint256);

    function updateAccessToMint(address minter, bool canMint) external;

    function mint(address to, uint256 amount) external;

    function safeSpaceTransfer(address to, uint256 amount) external;

    function mintGov(uint256 amount) external;
}


// File interfaces/ISpaceChef.sol


// Version @2021-05
// Source: Pancake Bunny
/*
 █████╗ ██████╗ ███████╗██████╗  ██████╗  ██████╗██╗  ██╗███████╗████████╗
██╔══██╗██╔══██╗██╔════╝██╔══██╗██╔═══██╗██╔════╝██║ ██╔╝██╔════╝╚══██╔══╝
███████║██████╔╝█████╗  ██████╔╝██║   ██║██║     █████╔╝ █████╗     ██║   
██╔══██║██╔═══╝ ██╔══╝  ██╔══██╗██║   ██║██║     ██╔═██╗ ██╔══╝     ██║   
██║  ██║██║     ███████╗██║  ██║╚██████╔╝╚██████╗██║  ██╗███████╗   ██║   
╚═╝  ╚═╝╚═╝     ╚══════╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝╚══════╝   ╚═╝  
 */
pragma solidity >=0.6.12;

interface ISpaceChef {
    struct UserInfo {
        uint256 balance;
        uint256 pending;
        uint256 rewardPaid;
    }

    struct VaultInfo {
        address token;
        uint256 allocPoint;
        uint256 lastRewardBlock;
        uint256 accSpacePerShare;
    }

    function spacePerBlock() external view returns (uint256);

    function totalAllocPoint() external view returns (uint256);

    function vaultInfoOf(address vault) external view returns (VaultInfo memory);

    function vaultUserInfoOf(address vault, address user) external view returns (UserInfo memory);

    function pendingSpace(address vault, address user) external view returns (uint256);

    function notifyDeposited(address user, uint256 amount) external;

    function notifyWithdrawn(address user, uint256 amount) external;

    function safeSpaceTransfer(address user) external returns (uint256);
}


// File @openzeppelin/contracts/math/Math.sol@v3.4.0



pragma solidity >=0.6.0 <0.8.0;

/**
 * @dev Standard math utilities missing in the Solidity language.
 */
library Math {
    /**
     * @dev Returns the largest of two numbers.
     */
    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a >= b ? a : b;
    }

    /**
     * @dev Returns the smallest of two numbers.
     */
    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a < b ? a : b;
    }

    /**
     * @dev Returns the average of two numbers. The result is rounded towards
     * zero.
     */
    function average(uint256 a, uint256 b) internal pure returns (uint256) {
        // (a + b) / 2 can overflow, so we distribute
        return (a / 2) + (b / 2) + ((a % 2 + b % 2) / 2);
    }
}


// File interfaces/IBEP20.sol


// Version @2021-05
// Source: Pancake Bunny
/*
 █████╗ ██████╗ ███████╗██████╗  ██████╗  ██████╗██╗  ██╗███████╗████████╗
██╔══██╗██╔══██╗██╔════╝██╔══██╗██╔═══██╗██╔════╝██║ ██╔╝██╔════╝╚══██╔══╝
███████║██████╔╝█████╗  ██████╔╝██║   ██║██║     █████╔╝ █████╗     ██║   
██╔══██║██╔═══╝ ██╔══╝  ██╔══██╗██║   ██║██║     ██╔═██╗ ██╔══╝     ██║   
██║  ██║██║     ███████╗██║  ██║╚██████╔╝╚██████╗██║  ██╗███████╗   ██║   
╚═╝  ╚═╝╚═╝     ╚══════╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝╚══════╝   ╚═╝  
 */
pragma solidity >=0.6.4;

interface IBEP20 {
    /**
     * @dev Returns the amount of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the token decimals.
     */
    function decimals() external view returns (uint8);

    /**
     * @dev Returns the token symbol.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the token name.
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the bep token owner.
     */
    function getOwner() external view returns (address);

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
    function allowance(address _owner, address spender) external view returns (uint256);

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


// File @openzeppelin/contracts/utils/Address.sol@v3.4.0



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
    function functionCall(address target, bytes memory data) internal returns (bytes memory) {
      return functionCall(target, data, "Address: low-level call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`], but with
     * `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
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
    function functionCallWithValue(address target, bytes memory data, uint256 value) internal returns (bytes memory) {
        return functionCallWithValue(target, data, value, "Address: low-level call with value failed");
    }

    /**
     * @dev Same as {xref-Address-functionCallWithValue-address-bytes-uint256-}[`functionCallWithValue`], but
     * with `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
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
    function functionStaticCall(address target, bytes memory data) internal view returns (bytes memory) {
        return functionStaticCall(target, data, "Address: low-level static call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
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
    function functionDelegateCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionDelegateCall(target, data, "Address: low-level delegate call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a delegate call.
     *
     * _Available since v3.4._
     */
    function functionDelegateCall(address target, bytes memory data, string memory errorMessage) internal returns (bytes memory) {
        require(isContract(target), "Address: delegate call to non-contract");

        // solhint-disable-next-line avoid-low-level-calls
        (bool success, bytes memory returndata) = target.delegatecall(data);
        return _verifyCallResult(success, returndata, errorMessage);
    }

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


// File libraries/SafeBEP20.sol


pragma solidity >=0.6.0 <0.8.0;



/**
 * @title SafeBEP20
 * @dev Wrappers around BEP20 operations that throw on failure (when the token
 * contract returns false). Tokens that return no value (and instead revert or
 * throw on failure) are also supported, non-reverting calls are assumed to be
 * successful.
 * To use this library you can add a `using SafeBEP20 for IBEP20;` statement to your contract,
 * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
 */
library SafeBEP20 {
    using SafeMath for uint256;
    using Address for address;

    function safeTransfer(
        IBEP20 token,
        address to,
        uint256 value
    ) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transfer.selector, to, value));
    }

    function safeTransferFrom(
        IBEP20 token,
        address from,
        address to,
        uint256 value
    ) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transferFrom.selector, from, to, value));
    }

    /**
     * @dev Deprecated. This function has issues similar to the ones found in
     * {IBEP20-approve}, and its usage is discouraged.
     *
     * Whenever possible, use {safeIncreaseAllowance} and
     * {safeDecreaseAllowance} instead.
     */
    function safeApprove(
        IBEP20 token,
        address spender,
        uint256 value
    ) internal {
        // safeApprove should only be called when setting an initial allowance,
        // or when resetting it to zero. To increase and decrease it, use
        // 'safeIncreaseAllowance' and 'safeDecreaseAllowance'
        // solhint-disable-next-line max-line-length
        require((value == 0) || (token.allowance(address(this), spender) == 0), "SafeBEP20: approve from non-zero to non-zero allowance");
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, value));
    }

    function safeIncreaseAllowance(
        IBEP20 token,
        address spender,
        uint256 value
    ) internal {
        uint256 newAllowance = token.allowance(address(this), spender).add(value);
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, newAllowance));
    }

    function safeDecreaseAllowance(
        IBEP20 token,
        address spender,
        uint256 value
    ) internal {
        uint256 newAllowance = token.allowance(address(this), spender).sub(value, "SafeBEP20: decreased allowance below zero");
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, newAllowance));
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     */
    function _callOptionalReturn(IBEP20 token, bytes memory data) private {
        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since
        // we're implementing it ourselves. We use {Address.functionCall} to perform this call, which verifies that
        // the target address contains contract code and also asserts for success in the low-level call.

        bytes memory returndata = address(token).functionCall(data, "SafeBEP20: low-level call failed");
        if (returndata.length > 0) {
            // Return data is optional
            // solhint-disable-next-line max-line-length
            require(abi.decode(returndata, (bool)), "SafeBEP20: BEP20 operation did not succeed");
        }
    }
}


// File @openzeppelin/contracts/utils/ReentrancyGuard.sol@v3.4.0



pragma solidity >=0.6.0 <0.8.0;

/**
 * @dev Contract module that helps prevent reentrant calls to a function.
 *
 * Inheriting from `ReentrancyGuard` will make the {nonReentrant} modifier
 * available, which can be applied to functions to make sure there are no nested
 * (reentrant) calls to them.
 *
 * Note that because there is a single `nonReentrant` guard, functions marked as
 * `nonReentrant` may not call one another. This can be worked around by making
 * those functions `private`, and then adding `external` `nonReentrant` entry
 * points to them.
 *
 * TIP: If you would like to learn more about reentrancy and alternative ways
 * to protect against it, check out our blog post
 * https://blog.openzeppelin.com/reentrancy-after-istanbul/[Reentrancy After Istanbul].
 */
abstract contract ReentrancyGuard {
    // Booleans are more expensive than uint256 or any type that takes up a full
    // word because each write operation emits an extra SLOAD to first read the
    // slot's contents, replace the bits taken up by the boolean, and then write
    // back. This is the compiler's defense against contract upgrades and
    // pointer aliasing, and it cannot be disabled.

    // The values being non-zero value makes deployment a bit more expensive,
    // but in exchange the refund on every call to nonReentrant will be lower in
    // amount. Since refunds are capped to a percentage of the total
    // transaction's gas, it is best to keep them low in cases like this one, to
    // increase the likelihood of the full refund coming into effect.
    uint256 private constant _NOT_ENTERED = 1;
    uint256 private constant _ENTERED = 2;

    uint256 private _status;

    constructor () internal {
        _status = _NOT_ENTERED;
    }

    /**
     * @dev Prevents a contract from calling itself, directly or indirectly.
     * Calling a `nonReentrant` function from another `nonReentrant`
     * function is not supported. It is possible to prevent this from happening
     * by making the `nonReentrant` function external, and make it call a
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
}


// File libraries/RewardsDistributionRecipient.sol


// Version @2021-05
// Source: Pancake Bunny
/*
 █████╗ ██████╗ ███████╗██████╗  ██████╗  ██████╗██╗  ██╗███████╗████████╗
██╔══██╗██╔══██╗██╔════╝██╔══██╗██╔═══██╗██╔════╝██║ ██╔╝██╔════╝╚══██╔══╝
███████║██████╔╝█████╗  ██████╔╝██║   ██║██║     █████╔╝ █████╗     ██║   
██╔══██║██╔═══╝ ██╔══╝  ██╔══██╗██║   ██║██║     ██╔═██╗ ██╔══╝     ██║   
██║  ██║██║     ███████╗██║  ██║╚██████╔╝╚██████╗██║  ██╗███████╗   ██║   
╚═╝  ╚═╝╚═╝     ╚══════╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝╚══════╝   ╚═╝  
 */
pragma solidity >=0.6.2;

abstract contract RewardsDistributionRecipient is Ownable {
    address public rewardsDistribution;

    modifier onlyRewardsDistribution() {
        require(msg.sender == rewardsDistribution, "onlyRewardsDistribution");
        _;
    }

    function notifyRewardAmount(uint256 reward) external virtual;

    function setRewardsDistribution(address _rewardsDistribution) external onlyOwner {
        rewardsDistribution = _rewardsDistribution;
    }
}


// File libraries/Pausable.sol


// Version @2021-05
// Source: Pancake Bunny
/*
 █████╗ ██████╗ ███████╗██████╗  ██████╗  ██████╗██╗  ██╗███████╗████████╗
██╔══██╗██╔══██╗██╔════╝██╔══██╗██╔═══██╗██╔════╝██║ ██╔╝██╔════╝╚══██╔══╝
███████║██████╔╝█████╗  ██████╔╝██║   ██║██║     █████╔╝ █████╗     ██║   
██╔══██║██╔═══╝ ██╔══╝  ██╔══██╗██║   ██║██║     ██╔═██╗ ██╔══╝     ██║   
██║  ██║██║     ███████╗██║  ██║╚██████╔╝╚██████╗██║  ██╗███████╗   ██║   
╚═╝  ╚═╝╚═╝     ╚══════╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝╚══════╝   ╚═╝  
 */
pragma solidity ^0.6.2;

abstract contract Pausable is Ownable {
    uint256 public lastPauseTime;
    bool public paused;

    event PauseChanged(bool isPaused);

    modifier notPaused {
        require(!paused, "This action cannot be performed while the contract is paused");
        _;
    }

    constructor() internal {
        require(owner() != address(0), "Owner must be set");
    }

    function setPaused(bool _paused) external onlyOwner {
        if (_paused == paused) {
            return;
        }

        paused = _paused;
        if (paused) {
            lastPauseTime = now;
        }

        emit PauseChanged(paused);
    }
}


// File interfaces/IStrategyHelper.sol


// Version @2021-05
// Source: Pancake Bunny
/*
 █████╗ ██████╗ ███████╗██████╗  ██████╗  ██████╗██╗  ██╗███████╗████████╗
██╔══██╗██╔══██╗██╔════╝██╔══██╗██╔═══██╗██╔════╝██║ ██╔╝██╔════╝╚══██╔══╝
███████║██████╔╝█████╗  ██████╔╝██║   ██║██║     █████╔╝ █████╗     ██║   
██╔══██║██╔═══╝ ██╔══╝  ██╔══██╗██║   ██║██║     ██╔═██╗ ██╔══╝     ██║   
██║  ██║██║     ███████╗██║  ██║╚██████╔╝╚██████╗██║  ██╗███████╗   ██║   
╚═╝  ╚═╝╚═╝     ╚══════╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝╚══════╝   ╚═╝  
 */
pragma solidity >=0.6.12;

interface IStrategyHelper {
    function tokenPriceInBNB(address _token) external view returns (uint256);

    function bananaPriceInBNB() external view returns (uint256);

    function bnbPriceInUSD() external view returns (uint256);

    function profitOf(
        ISpaceMinter minter,
        address _flip,
        uint256 amount
    )
        external
        view
        returns (
            uint256 _usd,
            uint256 _space,
            uint256 _bnb
        );

    function tvl(address _flip, uint256 amount) external view returns (uint256); // in USD

    function tvlInBNB(address _flip, uint256 amount) external view returns (uint256); // in BNB

    function apy(ISpaceMinter minter, uint256 pid)
        external
        view
        returns (
            uint256 _usd,
            uint256 _space,
            uint256 _bnb
        );

    function compoundingAPY(uint256 pid, uint256 compoundUnit) external view returns (uint256);
}


// File interfaces/IApeRouter01.sol


// Version @2021-05
// Source: Pancake Bunny
/*
 █████╗ ██████╗ ███████╗██████╗  ██████╗  ██████╗██╗  ██╗███████╗████████╗
██╔══██╗██╔══██╗██╔════╝██╔══██╗██╔═══██╗██╔════╝██║ ██╔╝██╔════╝╚══██╔══╝
███████║██████╔╝█████╗  ██████╔╝██║   ██║██║     █████╔╝ █████╗     ██║   
██╔══██║██╔═══╝ ██╔══╝  ██╔══██╗██║   ██║██║     ██╔═██╗ ██╔══╝     ██║   
██║  ██║██║     ███████╗██║  ██║╚██████╔╝╚██████╗██║  ██╗███████╗   ██║   
╚═╝  ╚═╝╚═╝     ╚══════╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝╚══════╝   ╚═╝  
 */
pragma solidity >=0.6.2;

interface IApeRouter01 {
    function factory() external pure returns (address);

    function WETH() external pure returns (address);

    function addLiquidity(
        address tokenA,
        address tokenB,
        uint256 amountADesired,
        uint256 amountBDesired,
        uint256 amountAMin,
        uint256 amountBMin,
        address to,
        uint256 deadline
    )
        external
        returns (
            uint256 amountA,
            uint256 amountB,
            uint256 liquidity
        );

    function addLiquidityETH(
        address token,
        uint256 amountTokenDesired,
        uint256 amountTokenMin,
        uint256 amountETHMin,
        address to,
        uint256 deadline
    )
        external
        payable
        returns (
            uint256 amountToken,
            uint256 amountETH,
            uint256 liquidity
        );

    function removeLiquidity(
        address tokenA,
        address tokenB,
        uint256 liquidity,
        uint256 amountAMin,
        uint256 amountBMin,
        address to,
        uint256 deadline
    ) external returns (uint256 amountA, uint256 amountB);

    function removeLiquidityETH(
        address token,
        uint256 liquidity,
        uint256 amountTokenMin,
        uint256 amountETHMin,
        address to,
        uint256 deadline
    ) external returns (uint256 amountToken, uint256 amountETH);

    function removeLiquidityWithPermit(
        address tokenA,
        address tokenB,
        uint256 liquidity,
        uint256 amountAMin,
        uint256 amountBMin,
        address to,
        uint256 deadline,
        bool approveMax,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external returns (uint256 amountA, uint256 amountB);

    function removeLiquidityETHWithPermit(
        address token,
        uint256 liquidity,
        uint256 amountTokenMin,
        uint256 amountETHMin,
        address to,
        uint256 deadline,
        bool approveMax,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external returns (uint256 amountToken, uint256 amountETH);

    function swapExactTokensForTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external returns (uint256[] memory amounts);

    function swapTokensForExactTokens(
        uint256 amountOut,
        uint256 amountInMax,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external returns (uint256[] memory amounts);

    function swapExactETHForTokens(
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external payable returns (uint256[] memory amounts);

    function swapTokensForExactETH(
        uint256 amountOut,
        uint256 amountInMax,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external returns (uint256[] memory amounts);

    function swapExactTokensForETH(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external returns (uint256[] memory amounts);

    function swapETHForExactTokens(
        uint256 amountOut,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external payable returns (uint256[] memory amounts);

    function quote(
        uint256 amountA,
        uint256 reserveA,
        uint256 reserveB
    ) external pure returns (uint256 amountB);

    function getAmountOut(
        uint256 amountIn,
        uint256 reserveIn,
        uint256 reserveOut
    ) external pure returns (uint256 amountOut);

    function getAmountIn(
        uint256 amountOut,
        uint256 reserveIn,
        uint256 reserveOut
    ) external pure returns (uint256 amountIn);

    function getAmountsOut(uint256 amountIn, address[] calldata path) external view returns (uint256[] memory amounts);

    function getAmountsIn(uint256 amountOut, address[] calldata path) external view returns (uint256[] memory amounts);
}


// File interfaces/IApeRouter02.sol


// Version @2021-05
// Source: Pancake Bunny
/*
 █████╗ ██████╗ ███████╗██████╗  ██████╗  ██████╗██╗  ██╗███████╗████████╗
██╔══██╗██╔══██╗██╔════╝██╔══██╗██╔═══██╗██╔════╝██║ ██╔╝██╔════╝╚══██╔══╝
███████║██████╔╝█████╗  ██████╔╝██║   ██║██║     █████╔╝ █████╗     ██║   
██╔══██║██╔═══╝ ██╔══╝  ██╔══██╗██║   ██║██║     ██╔═██╗ ██╔══╝     ██║   
██║  ██║██║     ███████╗██║  ██║╚██████╔╝╚██████╗██║  ██╗███████╗   ██║   
╚═╝  ╚═╝╚═╝     ╚══════╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝╚══════╝   ╚═╝  
 */

pragma solidity >=0.6.2;

interface IApeRouter02 is IApeRouter01 {
    function removeLiquidityETHSupportingFeeOnTransferTokens(
        address token,
        uint256 liquidity,
        uint256 amountTokenMin,
        uint256 amountETHMin,
        address to,
        uint256 deadline
    ) external returns (uint256 amountETH);

    function removeLiquidityETHWithPermitSupportingFeeOnTransferTokens(
        address token,
        uint256 liquidity,
        uint256 amountTokenMin,
        uint256 amountETHMin,
        address to,
        uint256 deadline,
        bool approveMax,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external returns (uint256 amountETH);

    function swapExactTokensForTokensSupportingFeeOnTransferTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external;

    function swapExactETHForTokensSupportingFeeOnTransferTokens(
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external payable;

    function swapExactTokensForETHSupportingFeeOnTransferTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external;
}


// File interfaces/ISpacePool.sol


// Version @2021-05
// Source: Pancake Bunny
/*
 █████╗ ██████╗ ███████╗██████╗  ██████╗  ██████╗██╗  ██╗███████╗████████╗
██╔══██╗██╔══██╗██╔════╝██╔══██╗██╔═══██╗██╔════╝██║ ██╔╝██╔════╝╚══██╔══╝
███████║██████╔╝█████╗  ██████╔╝██║   ██║██║     █████╔╝ █████╗     ██║   
██╔══██║██╔═══╝ ██╔══╝  ██╔══██╗██║   ██║██║     ██╔═██╗ ██╔══╝     ██║   
██║  ██║██║     ███████╗██║  ██║╚██████╔╝╚██████╗██║  ██╗███████╗   ██║   
╚═╝  ╚═╝╚═╝     ╚══════╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝╚══════╝   ╚═╝  
 */
pragma solidity >=0.6.12;

struct Profit {
    uint256 usd;
    uint256 space;
    uint256 bnb;
}

struct APY {
    uint256 usd;
    uint256 space;
    uint256 bnb;
}

struct UserInfo {
    uint256 balance;
    uint256 principal;
    uint256 available;
    Profit profit;
    uint256 poolTVL;
    APY poolAPY;
}

interface ISpacePool {
    function deposit(uint256 _amount) external;

    function depositAll() external;

    function withdraw(uint256 _amount) external;

    function withdrawAll() external;

    function getReward() external;

    function balance() external view returns (uint256);

    function balanceOf(address account) external view returns (uint256);

    function principalOf(address account) external view returns (uint256);

    function profitOf(address account)
        external
        view
        returns (
            uint256 _usd,
            uint256 _space,
            uint256 _bnb
        );

    //    function earned(address account) external view returns (uint);
    function tvl() external view returns (uint256); // in USD

    function apy()
        external
        view
        returns (
            uint256 _usd,
            uint256 _space,
            uint256 _bnb
        );

    /* ========== Strategy Information ========== */
    //    function pid() external view returns (uint);
    //    function poolType() external view returns (PoolTypes);
    //    function isMinter() external view returns (bool, address);
    //    function getDepositedAt(address account) external view returns (uint);
    //    function getRewardsToken() external view returns (address);

    function info(address account) external view returns (UserInfo memory);
}


// File contracts/SpacePool.sol


// Version @2021-05
/*
 █████╗ ██████╗ ███████╗██████╗  ██████╗  ██████╗██╗  ██╗███████╗████████╗
██╔══██╗██╔══██╗██╔════╝██╔══██╗██╔═══██╗██╔════╝██║ ██╔╝██╔════╝╚══██╔══╝
███████║██████╔╝█████╗  ██████╔╝██║   ██║██║     █████╔╝ █████╗     ██║   
██╔══██║██╔═══╝ ██╔══╝  ██╔══██╗██║   ██║██║     ██╔═██╗ ██╔══╝     ██║   
██║  ██║██║     ███████╗██║  ██║╚██████╔╝╚██████╗██║  ██╗███████╗   ██║   
╚═╝  ╚═╝╚═╝     ╚══════╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝╚══════╝   ╚═╝  
 */
pragma solidity >=0.6.12;







// @notice Fees Redistribution pool
contract SpacePool is ISpacePool, RewardsDistributionRecipient, ReentrancyGuard, Pausable {
    using SafeMath for uint256;
    using SafeBEP20 for IBEP20;

    IApeRouter02 private constant ROUTER = IApeRouter02(0xC0788A3aD43d79aa53B09c2EaCc313A787d1d607);
    // @notice SPACE TOKEN
    IBEP20 public immutable SPACE;
    // @notice SPACE_BNB Treasury -> WBNB Rewards
    IBEP20 public immutable REWARDS_TOKEN;

    // @notice Rewards distributed over 90 days
    uint256 public periodFinish = 0;
    uint256 public rewardRate = 0;
    uint256 public rewardsDuration = 90 days;

    uint256 public lastUpdateTime;
    uint256 public rewardPerTokenStored;
    uint256 private totalDeposited;

    mapping(address => uint256) public userRewardPerTokenPaid;
    mapping(address => uint256) public rewards;

    mapping(address => uint256) private _balances;

    // @notice delegate staking
    mapping(address => bool) private _stakePermission;

    // @notice contract with utils functions
    IStrategyHelper public helper;

    event RewardAdded(uint256 reward);
    event Staked(address indexed user, uint256 amount);
    event Withdrawn(address indexed user, uint256 amount);
    event RewardPaid(address indexed user, uint256 reward);
    event RewardsDurationUpdated(uint256 newDuration);
    event Recovered(address token, uint256 amount);

    modifier updateReward(address account) {
        rewardPerTokenStored = rewardPerToken();
        lastUpdateTime = lastTimeRewardApplicable();
        if (account != address(0)) {
            rewards[account] = earned(account);
            userRewardPerTokenPaid[account] = rewardPerTokenStored;
        }
        _;
    }

    modifier canStakeTo() {
        require(_stakePermission[msg.sender], "auth");
        _;
    }

    constructor(
        address _helper,
        address _STAKING_TOKEN,
        address _REWARDS_TOKEN
    ) public {
        rewardsDistribution = msg.sender;
        _stakePermission[msg.sender] = true;

        REWARDS_TOKEN = IBEP20(_REWARDS_TOKEN);
        SPACE = IBEP20(_STAKING_TOKEN);

        helper = IStrategyHelper(_helper);

        IBEP20(_REWARDS_TOKEN).safeApprove(address(ROUTER), 0);
        IBEP20(_REWARDS_TOKEN).safeApprove(address(ROUTER), uint256(~0));

        IBEP20(_STAKING_TOKEN).safeApprove(address(ROUTER), 0);
        IBEP20(_STAKING_TOKEN).safeApprove(address(ROUTER), uint256(~0));
    }

    function deposit(uint256 amount) public override {
        _deposit(amount, msg.sender);
    }

    function depositAll() external override {
        deposit(SPACE.balanceOf(msg.sender));
    }

    function _deposit(uint256 amount, address to) private nonReentrant notPaused updateReward(to) {
        require(amount > 0, "amount");
        totalDeposited = totalDeposited.add(amount);
        _balances[to] = _balances[to].add(amount);
        SPACE.safeTransferFrom(msg.sender, address(this), amount);
        emit Staked(to, amount);
    }

    function withdraw(uint256 amount) public override nonReentrant updateReward(msg.sender) {
        require(amount > 0, "amount");
        totalDeposited = totalDeposited.sub(amount);
        _balances[msg.sender] = _balances[msg.sender].sub(amount);
        SPACE.safeTransfer(msg.sender, amount);
        emit Withdrawn(msg.sender, amount);
    }

    function withdrawAll() external override {
        uint256 _withdraw = _balances[msg.sender];
        if (_withdraw > 0) {
            withdraw(_withdraw);
        }
        getReward();
    }

    function getReward() public override nonReentrant updateReward(msg.sender) {
        uint256 reward = rewards[msg.sender];
        if (reward > 0) {
            rewards[msg.sender] = 0;
            reward = _flipToWBNB(reward);
            IBEP20(ROUTER.WETH()).safeTransfer(msg.sender, reward);
            emit RewardPaid(msg.sender, reward);
        }
    }

    function _flipToWBNB(uint256 amount) private returns (uint256 reward) {
        address wbnb = ROUTER.WETH();
        (uint256 rewardSpace, ) = ROUTER.removeLiquidity(address(SPACE), wbnb, amount, 0, 0, address(this), block.timestamp);
        address[] memory path = new address[](2);
        path[0] = address(SPACE);
        path[1] = wbnb;
        require(rewardSpace > 0, "SpacePool: _flipToWBNB no reward");
        ROUTER.swapExactTokensForTokens(rewardSpace, 0, path, address(this), block.timestamp);
        reward = IBEP20(wbnb).balanceOf(address(this));
    }

    function setHelper(IStrategyHelper _helper) external onlyOwner {
        require(address(_helper) != address(0), "SpacePool: setHelper zero address");
        helper = _helper;
    }

    function setStakePermission(address _address, bool permission) external onlyOwner {
        _stakePermission[_address] = permission;
    }

    function stakeTo(uint256 amount, address _to) external canStakeTo {
        _deposit(amount, _to);
    }

    function notifyRewardAmount(uint256 reward) external override onlyRewardsDistribution updateReward(address(0)) {
        if (block.timestamp >= periodFinish) {
            rewardRate = reward.div(rewardsDuration);
        } else {
            uint256 remaining = periodFinish.sub(block.timestamp);
            uint256 leftover = remaining.mul(rewardRate);
            rewardRate = reward.add(leftover).div(rewardsDuration);
        }

        uint256 _balance = REWARDS_TOKEN.balanceOf(address(this));
        require(rewardRate <= _balance.div(rewardsDuration), "reward");

        lastUpdateTime = block.timestamp;
        periodFinish = block.timestamp.add(rewardsDuration);
        emit RewardAdded(reward);
    }

    function setRewardsDuration(uint256 _rewardsDuration) external onlyOwner {
        require(periodFinish == 0 || block.timestamp > periodFinish, "period");
        rewardsDuration = _rewardsDuration;
        emit RewardsDurationUpdated(rewardsDuration);
    }

    function info(address account) external view override returns (UserInfo memory) {
        UserInfo memory userInfo;

        userInfo.balance = _balances[account];
        userInfo.principal = _balances[account];
        userInfo.available = _balances[account];

        Profit memory profit;
        (uint256 usd, uint256 space, uint256 bnb) = profitOf(account);
        profit.usd = usd;
        profit.space = space;
        profit.bnb = bnb;
        userInfo.profit = profit;

        userInfo.poolTVL = tvl();

        APY memory poolAPY;
        (usd, space, bnb) = apy();
        poolAPY.usd = usd;
        poolAPY.space = space;
        poolAPY.bnb = bnb;
        userInfo.poolAPY = poolAPY;

        return userInfo;
    }

    function profitOf(address account)
        public
        view
        override
        returns (
            uint256 _usd,
            uint256 _space,
            uint256 _bnb
        )
    {
        _usd = 0;
        _space = 0;
        _bnb = helper.tvlInBNB(address(REWARDS_TOKEN), earned(account));
    }

    function apy()
        public
        view
        override
        returns (
            uint256 _usd,
            uint256 _space,
            uint256 _bnb
        )
    {
        uint256 tokenDecimals = 1e18;
        uint256 __totalSupply = totalDeposited;
        if (__totalSupply == 0) {
            __totalSupply = tokenDecimals;
        }

        uint256 rewardPerTokenPerSecond = rewardRate.mul(tokenDecimals).div(__totalSupply);

        uint256 spacePrice = helper.tokenPriceInBNB(address(SPACE));
        uint256 lpPrice = helper.tvlInBNB(address(REWARDS_TOKEN), 1e18);

        _usd = 0;
        _space = 0;
        _bnb = 0;
        if (lpPrice > 0 && spacePrice > 0) {
            _bnb = rewardPerTokenPerSecond.mul(365 days).mul(lpPrice).div(spacePrice);
        }
    }

    function rewardPerToken() public view returns (uint256) {
        if (totalDeposited == 0) {
            return rewardPerTokenStored;
        }
        return rewardPerTokenStored.add(lastTimeRewardApplicable().sub(lastUpdateTime).mul(rewardRate).mul(1e18).div(totalDeposited));
    }

    function lastTimeRewardApplicable() public view returns (uint256) {
        return Math.min(block.timestamp, periodFinish);
    }

    function tvl() public view override returns (uint256) {
        uint256 price = helper.tokenPriceInBNB(address(SPACE));
        return price > 0 ? totalDeposited.mul(price).div(1e18) : 0;
    }

    function earned(address account) public view returns (uint256) {
        return _balances[account].mul(rewardPerToken().sub(userRewardPerTokenPaid[account])).div(1e18).add(rewards[account]);
    }

    function getRewardForDuration() external view returns (uint256) {
        return rewardRate.mul(rewardsDuration);
    }

    function totalSupply() external view returns (uint256) {
        return totalDeposited;
    }

    function balance() external view override returns (uint256) {
        return totalDeposited;
    }

    function balanceOf(address account) external view override returns (uint256) {
        return _balances[account];
    }

    function principalOf(address account) external view override returns (uint256) {
        return _balances[account];
    }

    // @notice Emergency only
    function recoverBEP20(address tokenAddress, uint256 tokenAmount) external onlyOwner {
        require(tokenAddress != address(SPACE) && tokenAddress != address(REWARDS_TOKEN), "tokenAddress");
        IBEP20(tokenAddress).safeTransfer(owner(), tokenAmount);
        emit Recovered(tokenAddress, tokenAmount);
    }
}


// File libraries/HomoraMath.sol


pragma solidity 0.6.12;

library HomoraMath {
    using SafeMath for uint256;

    function divCeil(uint256 lhs, uint256 rhs) internal pure returns (uint256) {
        return lhs.add(rhs).sub(1) / rhs;
    }

    function fmul(uint256 lhs, uint256 rhs) internal pure returns (uint256) {
        return lhs.mul(rhs) / (2**112);
    }

    function fdiv(uint256 lhs, uint256 rhs) internal pure returns (uint256) {
        return lhs.mul(2**112) / rhs;
    }

    // implementation from https://github.com/Uniswap/uniswap-lib/commit/99f3f28770640ba1bb1ff460ac7c5292fb8291a0
    // original implementation: https://github.com/abdk-consulting/abdk-libraries-solidity/blob/master/ABDKMath64x64.sol#L687
    function sqrt(uint256 x) internal pure returns (uint256) {
        if (x == 0) return 0;
        uint256 xx = x;
        uint256 r = 1;

        if (xx >= 0x100000000000000000000000000000000) {
            xx >>= 128;
            r <<= 64;
        }

        if (xx >= 0x10000000000000000) {
            xx >>= 64;
            r <<= 32;
        }
        if (xx >= 0x100000000) {
            xx >>= 32;
            r <<= 16;
        }
        if (xx >= 0x10000) {
            xx >>= 16;
            r <<= 8;
        }
        if (xx >= 0x100) {
            xx >>= 8;
            r <<= 4;
        }
        if (xx >= 0x10) {
            xx >>= 4;
            r <<= 2;
        }
        if (xx >= 0x8) {
            r <<= 1;
        }

        r = (r + x / r) >> 1;
        r = (r + x / r) >> 1;
        r = (r + x / r) >> 1;
        r = (r + x / r) >> 1;
        r = (r + x / r) >> 1;
        r = (r + x / r) >> 1;
        r = (r + x / r) >> 1; // Seven iterations should be enough
        uint256 r1 = x / r;
        return (r < r1 ? r : r1);
    }
}


// File interfaces/IPriceOracle.sol


// Version @2021-05
/*
 █████╗ ██████╗ ███████╗██████╗  ██████╗  ██████╗██╗  ██╗███████╗████████╗
██╔══██╗██╔══██╗██╔════╝██╔══██╗██╔═══██╗██╔════╝██║ ██╔╝██╔════╝╚══██╔══╝
███████║██████╔╝█████╗  ██████╔╝██║   ██║██║     █████╔╝ █████╗     ██║   
██╔══██║██╔═══╝ ██╔══╝  ██╔══██╗██║   ██║██║     ██╔═██╗ ██╔══╝     ██║   
██║  ██║██║     ███████╗██║  ██║╚██████╔╝╚██████╗██║  ██╗███████╗   ██║   
╚═╝  ╚═╝╚═╝     ╚══════╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝╚══════╝   ╚═╝  
 */
pragma solidity >=0.6.12;

interface IPriceOracle {
    /// @dev Return the wad price of token0/token1, multiplied by 1e18
    /// NOTE: (if you have 1 token0 how much you can sell it for token1)
    function getPrice(address token0, address token1) external view returns (uint256 price, uint256 lastUpdate);
}


// File interfaces/IApePair.sol


// Version @2021-05
// Source: Pancake Bunny
/*
 █████╗ ██████╗ ███████╗██████╗  ██████╗  ██████╗██╗  ██╗███████╗████████╗
██╔══██╗██╔══██╗██╔════╝██╔══██╗██╔═══██╗██╔════╝██║ ██╔╝██╔════╝╚══██╔══╝
███████║██████╔╝█████╗  ██████╔╝██║   ██║██║     █████╔╝ █████╗     ██║   
██╔══██║██╔═══╝ ██╔══╝  ██╔══██╗██║   ██║██║     ██╔═██╗ ██╔══╝     ██║   
██║  ██║██║     ███████╗██║  ██║╚██████╔╝╚██████╗██║  ██╗███████╗   ██║   
╚═╝  ╚═╝╚═╝     ╚══════╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝╚══════╝   ╚═╝  
 */
pragma solidity >=0.6.2;

interface IApePair {
    event Approval(address indexed owner, address indexed spender, uint256 value);
    event Transfer(address indexed from, address indexed to, uint256 value);

    function name() external pure returns (string memory);

    function symbol() external pure returns (string memory);

    function decimals() external pure returns (uint8);

    function totalSupply() external view returns (uint256);

    function balanceOf(address owner) external view returns (uint256);

    function allowance(address owner, address spender) external view returns (uint256);

    function approve(address spender, uint256 value) external returns (bool);

    function transfer(address to, uint256 value) external returns (bool);

    function transferFrom(
        address from,
        address to,
        uint256 value
    ) external returns (bool);

    function DOMAIN_SEPARATOR() external view returns (bytes32);

    function PERMIT_TYPEHASH() external pure returns (bytes32);

    function nonces(address owner) external view returns (uint256);

    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external;

    event Mint(address indexed sender, uint256 amount0, uint256 amount1);
    event Burn(address indexed sender, uint256 amount0, uint256 amount1, address indexed to);
    event Swap(address indexed sender, uint256 amount0In, uint256 amount1In, uint256 amount0Out, uint256 amount1Out, address indexed to);
    event Sync(uint112 reserve0, uint112 reserve1);

    function MINIMUM_LIQUIDITY() external pure returns (uint256);

    function factory() external view returns (address);

    function token0() external view returns (address);

    function token1() external view returns (address);

    function getReserves()
        external
        view
        returns (
            uint112 reserve0,
            uint112 reserve1,
            uint32 blockTimestampLast
        );

    function price0CumulativeLast() external view returns (uint256);

    function price1CumulativeLast() external view returns (uint256);

    function kLast() external view returns (uint256);

    function mint(address to) external returns (uint256 liquidity);

    function burn(address to) external returns (uint256 amount0, uint256 amount1);

    function swap(
        uint256 amount0Out,
        uint256 amount1Out,
        address to,
        bytes calldata data
    ) external;

    function skim(address to) external;

    function sync() external;

    function initialize(address, address) external;
}


// File interfaces/IApeFactory.sol


// Version @2021-05
// Source: Pancake Bunny
/*
 █████╗ ██████╗ ███████╗██████╗  ██████╗  ██████╗██╗  ██╗███████╗████████╗
██╔══██╗██╔══██╗██╔════╝██╔══██╗██╔═══██╗██╔════╝██║ ██╔╝██╔════╝╚══██╔══╝
███████║██████╔╝█████╗  ██████╔╝██║   ██║██║     █████╔╝ █████╗     ██║   
██╔══██║██╔═══╝ ██╔══╝  ██╔══██╗██║   ██║██║     ██╔═██╗ ██╔══╝     ██║   
██║  ██║██║     ███████╗██║  ██║╚██████╔╝╚██████╗██║  ██╗███████╗   ██║   
╚═╝  ╚═╝╚═╝     ╚══════╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝╚══════╝   ╚═╝  
 */
pragma solidity >=0.6.12;

interface IApeFactory {
    event PairCreated(address indexed token0, address indexed token1, address pair, uint256);

    function feeTo() external view returns (address);

    function feeToSetter() external view returns (address);

    function getPair(address tokenA, address tokenB) external view returns (address pair);

    function allPairs(uint256) external view returns (address pair);

    function allPairsLength() external view returns (uint256);

    function createPair(address tokenA, address tokenB) external returns (address pair);

    function setFeeTo(address) external;

    function setFeeToSetter(address) external;
}


// File interfaces/AggregatorV3Interface.sol


// Version @2021-05
// Source: Pancake Bunny
/*
 █████╗ ██████╗ ███████╗██████╗  ██████╗  ██████╗██╗  ██╗███████╗████████╗
██╔══██╗██╔══██╗██╔════╝██╔══██╗██╔═══██╗██╔════╝██║ ██╔╝██╔════╝╚══██╔══╝
███████║██████╔╝█████╗  ██████╔╝██║   ██║██║     █████╔╝ █████╗     ██║   
██╔══██║██╔═══╝ ██╔══╝  ██╔══██╗██║   ██║██║     ██╔═██╗ ██╔══╝     ██║   
██║  ██║██║     ███████╗██║  ██║╚██████╔╝╚██████╗██║  ██╗███████╗   ██║   
╚═╝  ╚═╝╚═╝     ╚══════╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝╚══════╝   ╚═╝  
 */
pragma solidity >=0.6.0;

interface AggregatorV3Interface {
    function decimals() external view returns (uint8);

    function description() external view returns (string memory);

    function version() external view returns (uint256);

    // getRoundData and latestRoundData should both raise "No data present"
    // if they do not have data to report, instead of returning unset values
    // which could be misinterpreted as actual reported values.
    function getRoundData(uint80 _roundId)
        external
        view
        returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        );

    function latestRoundData()
        external
        view
        returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        );
}


// File interfaces/IPriceCalculator.sol


// Version @2021-05
// Source: Pancake Bunny
/*
 █████╗ ██████╗ ███████╗██████╗  ██████╗  ██████╗██╗  ██╗███████╗████████╗
██╔══██╗██╔══██╗██╔════╝██╔══██╗██╔═══██╗██╔════╝██║ ██╔╝██╔════╝╚══██╔══╝
███████║██████╔╝█████╗  ██████╔╝██║   ██║██║     █████╔╝ █████╗     ██║   
██╔══██║██╔═══╝ ██╔══╝  ██╔══██╗██║   ██║██║     ██╔═██╗ ██╔══╝     ██║   
██║  ██║██║     ███████╗██║  ██║╚██████╔╝╚██████╗██║  ██╗███████╗   ██║   
╚═╝  ╚═╝╚═╝     ╚══════╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝╚══════╝   ╚═╝  
 */
pragma solidity >=0.6.12;

interface IPriceCalculator {
    function pricesInUSD(address[] memory assets) external view returns (uint256[] memory);

    function valueOfAsset(address asset, uint256 amount) external view returns (uint256 valueInBNB, uint256 valueInUSD);
}


// File contracts/PriceCalculator.sol


// Version @2021-05
// Source: Pancake Bunny
/*
 █████╗ ██████╗ ███████╗██████╗  ██████╗  ██████╗██╗  ██╗███████╗████████╗
██╔══██╗██╔══██╗██╔════╝██╔══██╗██╔═══██╗██╔════╝██║ ██╔╝██╔════╝╚══██╔══╝
███████║██████╔╝█████╗  ██████╔╝██║   ██║██║     █████╔╝ █████╗     ██║   
██╔══██║██╔═══╝ ██╔══╝  ██╔══██╗██║   ██║██║     ██╔═██╗ ██╔══╝     ██║   
██║  ██║██║     ███████╗██║  ██║╚██████╔╝╚██████╗██║  ██╗███████╗   ██║   
╚═╝  ╚═╝╚═╝     ╚══════╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝╚══════╝   ╚═╝  
 */

pragma solidity >=0.6.12;








contract PriceCalculator is IPriceCalculator, Ownable {
    using SafeMath for uint256;
    using HomoraMath for uint256;

    address public immutable SPACE;
    address public immutable SPACE_BNB;

    IPriceOracle public oracle;

    address public constant WBNB = 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c;
    address public constant BANANA = 0x603c7f932ED1fc6575303D8Fb018fDCBb0f39a95;
    address public constant BUSD = 0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56;

    IApeFactory private constant factory = IApeFactory(0x0841BD0B734E4F5853f0dD8d7Ea041c241fb0Da6);
    AggregatorV3Interface private constant bnbPriceFeed = AggregatorV3Interface(0x0567F2323251f0Aab15c8dFb1967E4e8A7D42aeE);

    mapping(address => address) private pairTokens;
    mapping(address => address) private tokenFeeds;
    mapping(address => bool) private oracleFeeds;

    constructor(
        address _SPACE_TOKEN,
        address _SPACE_BNB,
        IPriceOracle _oracle
    ) public {
        oracle = _oracle;
        SPACE = _SPACE_TOKEN;
        SPACE_BNB = _SPACE_BNB;
    }

    // Add Pair to asset to be able to use valueOfAsset
    function setPairToken(address asset, address pairToken) public onlyOwner {
        pairTokens[asset] = pairToken;
    }

    function setTokenFeed(address asset, address feed) public onlyOwner {
        tokenFeeds[asset] = feed;
    }

    function setOracleFeeds(address asset, bool available) public onlyOwner {
        oracleFeeds[asset] = available;
    }

    // Price of BNB via Chainlink
    function priceOfBNB() public view returns (uint256) {
        (, int256 price, , , ) = bnbPriceFeed.latestRoundData();
        return uint256(price).mul(1e10);
    }

    // Price of Banana using PriceOracle
    function priceOfBanana() public view returns (uint256) {
        require(oracleFeeds[BANANA], "PriceFeed: Banana not available in Oracle");
        (uint256 priceInBnb, ) = oracle.getPrice(BANANA, WBNB);
        uint256 valueInUSD = priceInBnb.mul(priceOfBNB()).div(1e18);
        return valueInUSD;
    }

    function priceOfSpace() public view returns (uint256) {
        (, uint256 spacePriceInUSD) = valueOfAsset(SPACE, 1e18);
        return spacePriceInUSD;
    }

    function pricesInUSD(address[] memory assets) public view override returns (uint256[] memory) {
        uint256[] memory prices = new uint256[](assets.length);
        for (uint256 i = 0; i < assets.length; i++) {
            (, uint256 valueInUSD) = valueOfAsset(assets[i], 1e18);
            prices[i] = valueInUSD;
        }
        return prices;
    }

    function _oracleValueOf(address asset, uint256 amount) private view returns (uint256 valueInBNB, uint256 valueInUSD) {
        require(oracleFeeds[asset], "PriceFeed: asset not available in Oracle");

        if (tokenFeeds[asset] != address(0)) {
            (, int256 price, , , ) = AggregatorV3Interface(tokenFeeds[asset]).latestRoundData();
            valueInUSD = uint256(price).mul(1e10).mul(amount).div(1e18);
            valueInBNB = valueInUSD.mul(1e18).div(priceOfBNB());
        } else {
            (uint256 assetPriceInBnb, ) = oracle.getPrice(asset, WBNB);
            valueInBNB = assetPriceInBnb.mul(amount).div(1e18);
            valueInUSD = valueInBNB.mul(priceOfBNB()).div(1e18);
        }
    }

    function valueOfAsset(address asset, uint256 amount) public view override returns (uint256 valueInBNB, uint256 valueInUSD) {
        if (asset == address(0) || asset == WBNB) {
            return _oracleValueOf(WBNB, amount);
        } else if (asset == SPACE || asset == SPACE_BNB) {
            return _valueOfAsset(asset, amount);
        } else if (keccak256(abi.encodePacked(IApePair(asset).symbol())) == keccak256("APE-LP")) {
            return _getPairPrice(asset, amount);
        } else {
            return _oracleValueOf(asset, amount);
        }
    }

    function _getPairPrice(address pair, uint256 amount) private view returns (uint256 valueInBNB, uint256 valueInUSD) {
        address token0 = IApePair(pair).token0();
        address token1 = IApePair(pair).token1();
        uint256 totalSupply = IApePair(pair).totalSupply();
        (uint256 r0, uint256 r1, ) = IApePair(pair).getReserves();
        uint256 sqrtK = HomoraMath.sqrt(r0.mul(r1)).fdiv(totalSupply);
        (uint256 px0, ) = _oracleValueOf(token0, 1e18);
        (uint256 px1, ) = _oracleValueOf(token1, 1e18);
        uint256 fairPriceInBNB = sqrtK.mul(2).mul(HomoraMath.sqrt(px0)).div(2**56).mul(HomoraMath.sqrt(px1)).div(2**56);
        valueInBNB = fairPriceInBNB.mul(amount).div(1e18);
        valueInUSD = valueInBNB.mul(priceOfBNB()).div(1e18);
    }

    // Need to add Pair Token before using it
    function _valueOfAsset(address asset, uint256 amount) public view returns (uint256 valueInBNB, uint256 valueInUSD) {
        if (asset == address(0) || asset == WBNB) {
            valueInBNB = amount;
            valueInUSD = amount.mul(priceOfBNB()).div(1e18);
        } else if (keccak256(abi.encodePacked(IApePair(asset).symbol())) == keccak256("APE-LP")) {
            if (IApePair(asset).token0() == WBNB || IApePair(asset).token1() == WBNB) {
                valueInBNB = amount.mul(IBEP20(WBNB).balanceOf(address(asset))).mul(2).div(IApePair(asset).totalSupply());
                valueInUSD = valueInBNB.mul(priceOfBNB()).div(1e18);
            } else {
                uint256 balanceToken0 = IBEP20(IApePair(asset).token0()).balanceOf(asset);
                (uint256 token0PriceInBNB, ) = valueOfAsset(IApePair(asset).token0(), 1e18);

                valueInBNB = amount.mul(balanceToken0).mul(2).mul(token0PriceInBNB).div(1e18).div(IApePair(asset).totalSupply());
                valueInUSD = valueInBNB.mul(priceOfBNB()).div(1e18);
            }
        } else {
            address pairToken = pairTokens[asset] == address(0) ? WBNB : pairTokens[asset];
            address pair = factory.getPair(asset, pairToken);
            valueInBNB = IBEP20(pairToken).balanceOf(pair).mul(amount).div(IBEP20(asset).balanceOf(pair));
            if (pairToken != WBNB) {
                (uint256 pairValueInBNB, ) = valueOfAsset(pairToken, 1e18);
                valueInBNB = valueInBNB.mul(pairValueInBNB).div(1e18);
            }
            valueInUSD = valueInBNB.mul(priceOfBNB()).div(1e18);
        }
    }

    function updateOracle(address newOracle) external onlyOwner {
        require(newOracle != address(0), "PriceCalculator: updateOracle wrong address");
        require(newOracle != address(oracle), "PriceCalculator: updateOracle address already set");
        oracle = IPriceOracle(newOracle);
    }
}


// File contracts/Dashboard.sol


pragma solidity >=0.6.12;





contract Dashboard is Ownable {
    using SafeMath for uint256;

    PriceCalculator public constant priceCalculator = PriceCalculator(0x5D6086f8aae9DaEBAC5674E8F3b867D5743171D3);

    address public constant WBNB = 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c;
    // address public constant SPACE = 0xe486a69E432Fdc29622bF00315f6b34C99b45e80;
    address public constant SPACE = 0xe486a69E432Fdc29622bF00315f6b34C99b45e80;
    // address public constant BANANA = 0x603c7f932ED1fc6575303D8Fb018fDCBb0f39a95;
    address public constant BANANA = 0x603c7f932ED1fc6575303D8Fb018fDCBb0f39a95;
    // address public constant VaultBanana = 0x49F7a2B88D7B96053534Ad04bC57e71e3658137c;
    address public constant VaultBanana = 0xB8FDa49A709E9D00274053D9Ed34CCa1B4BB21f8;

    // ISpaceChef private constant spaceChef = ISpaceChef(0x720bFD03B3b507e0287190E727D6FeC88b4Bc3Ae);
    ISpaceChef private constant spaceChef = ISpaceChef(0x03Eb6A9E2C0e45c0657cf77B6497e8767c92c710);
    // SpacePool private constant spacePool = SpacePool(0x9E811bc0Fb0D42E461D909682be14e21a12A73Cf);
    SpacePool private constant spacePool = SpacePool(0xd79dc49Ed716832658ec28FE93dd733e0DFB8d58);

    mapping(address => PoolConstant.PoolTypes) public poolTypes;
    mapping(address => uint256) public apeswapPoolIds;
    mapping(address => bool) public perfExemptions;

    function setPoolType(address pool, PoolConstant.PoolTypes poolType) public onlyOwner {
        poolTypes[pool] = poolType;
    }

    function setApeswapPoolId(address pool, uint256 pid) public onlyOwner {
        apeswapPoolIds[pool] = pid;
    }

    function setPerfExemption(address pool, bool exemption) public onlyOwner {
        perfExemptions[pool] = exemption;
    }

    // ---- View Functions
    function poolTypeOf(address pool) public view returns (PoolConstant.PoolTypes) {
        return poolTypes[pool];
    }

    function calculateProfit(address pool, address account) public view returns (uint256 profit, uint256 profitInBNB) {
        PoolConstant.PoolTypes poolType = poolTypes[pool];
        profit = 0;
        profitInBNB = 0;

        if (poolType == PoolConstant.PoolTypes.SpaceStake) {
            // profit as bnb
            address rewardsToken = address(spacePool.SPACE());
            uint256 amount = spacePool.earned(account);
            (profit, ) = priceCalculator.valueOfAsset(rewardsToken, amount);
            profitInBNB = profit;
        } else if (poolType == PoolConstant.PoolTypes.Space) {
            // profit as space
            profit = spaceChef.pendingSpace(pool, account);
            (profitInBNB, ) = priceCalculator.valueOfAsset(SPACE, profit);
        } else if (poolType == PoolConstant.PoolTypes.BananaStake || poolType == PoolConstant.PoolTypes.FlipToFlip) {
            // profit as underlying
            IStrategy strategy = IStrategy(pool);
            profit = strategy.earned(account);
            (profitInBNB, ) = priceCalculator.valueOfAsset(strategy.stakingToken(), profit);
        } else if (poolType == PoolConstant.PoolTypes.FlipToBanana || poolType == PoolConstant.PoolTypes.SpaceBNB) {
            // profit as banana
            IStrategy strategy = IStrategy(pool);
            profit = strategy.earned(account).mul(IStrategy(strategy.rewardsToken()).priceShare()).div(1e18);
            (profitInBNB, ) = priceCalculator.valueOfAsset(BANANA, profit);
        }
    }

    function utilizationOfPool(address pool) public view returns (uint256 liquidity, uint256 utilized) {
        return (0, 0);
    }

    function profitOfPool(address pool, address account) public view returns (uint256 profit, uint256 space) {
        (uint256 profitCalculated, uint256 profitInBNB) = calculateProfit(pool, account);
        profit = profitCalculated;
        space = 0;

        if (!perfExemptions[pool]) {
            IStrategy strategy = IStrategy(pool);
            if (strategy.minter() != address(0)) {
                profit = profit.mul(70).div(100);
                space = ISpaceMinter(strategy.minter()).amountSpaceToMint(profitInBNB.mul(30).div(100));
            }

            if (strategy.spaceChef() != address(0)) {
                space = space.add(spaceChef.pendingSpace(pool, account));
            }
        }
    }

    function tvlOfPool(address pool) public view returns (uint256 tvl) {
        if (poolTypes[pool] == PoolConstant.PoolTypes.SpaceStake) {
            (, tvl) = priceCalculator.valueOfAsset(address(spacePool.SPACE()), spacePool.balance());
        } else {
            IStrategy strategy = IStrategy(pool);
            (, tvl) = priceCalculator.valueOfAsset(strategy.stakingToken(), strategy.balance());

            if (strategy.rewardsToken() == VaultBanana) {
                IStrategy rewardsToken = IStrategy(strategy.rewardsToken());
                uint256 rewardsInBanana = rewardsToken.balanceOf(pool).mul(rewardsToken.priceShare()).div(1e18);
                (, uint256 rewardsInUSD) = priceCalculator.valueOfAsset(address(BANANA), rewardsInBanana);
                tvl = tvl.add(rewardsInUSD);
            }
        }
    }

    function infoOfPool(address pool, address account) public view returns (PoolConstant.PoolInfoBSC memory) {
        PoolConstant.PoolInfoBSC memory poolInfo;

        IStrategy strategy = IStrategy(pool);
        (uint256 pBASE, uint256 pSPACE) = profitOfPool(pool, account);
        (uint256 liquidity, uint256 utilized) = utilizationOfPool(pool);

        poolInfo.pool = pool;
        poolInfo.balance = strategy.balanceOf(account);
        poolInfo.principal = strategy.principalOf(account);
        poolInfo.available = strategy.withdrawableBalanceOf(account);
        poolInfo.tvl = tvlOfPool(pool);
        poolInfo.utilized = utilized;
        poolInfo.liquidity = liquidity;
        poolInfo.pBASE = pBASE;
        poolInfo.pSPACE = pSPACE;

        PoolConstant.PoolTypes poolType = poolTypeOf(pool);
        if (poolType != PoolConstant.PoolTypes.SpaceStake && strategy.minter() != address(0)) {
            ISpaceMinter minter = ISpaceMinter(strategy.minter());
            poolInfo.depositedAt = strategy.depositedAt(account);
            poolInfo.feeDuration = minter.withdrawalFeeFreePeriod();
            poolInfo.feePercentage = minter.withdrawalFeeRate();
        }
        return poolInfo;
    }

    function poolsOf(address account, address[] memory pools) public view returns (PoolConstant.PoolInfoBSC[] memory) {
        PoolConstant.PoolInfoBSC[] memory results = new PoolConstant.PoolInfoBSC[](pools.length);
        for (uint256 i = 0; i < pools.length; i++) {
            results[i] = infoOfPool(pools[i], account);
        }
        return results;
    }

    function stakingTokenValueInUSD(address pool, address account) internal view returns (uint256 tokenInUSD) {
        PoolConstant.PoolTypes poolType = poolTypes[pool];

        address stakingToken;
        if (poolType == PoolConstant.PoolTypes.SpaceStake) {
            stakingToken = SPACE;
        } else {
            stakingToken = IStrategy(pool).stakingToken();
        }

        if (stakingToken == address(0)) return 0;
        (, tokenInUSD) = priceCalculator.valueOfAsset(stakingToken, IStrategy(pool).principalOf(account));
    }

    function portfolioOfPoolInUSD(address pool, address account) internal view returns (uint256) {
        uint256 tokenInUSD = stakingTokenValueInUSD(pool, account);
        (, uint256 profitInBNB) = calculateProfit(pool, account);
        uint256 profitInSPACE = 0;

        if (!perfExemptions[pool]) {
            IStrategy strategy = IStrategy(pool);
            if (strategy.minter() != address(0)) {
                profitInBNB = profitInBNB.mul(70).div(100);
                profitInSPACE = ISpaceMinter(strategy.minter()).amountSpaceToMint(profitInBNB.mul(30).div(100));
            }

            if (
                (poolTypes[pool] == PoolConstant.PoolTypes.Space ||
                    poolTypes[pool] == PoolConstant.PoolTypes.SpaceBNB ||
                    poolTypes[pool] == PoolConstant.PoolTypes.FlipToFlip) && strategy.spaceChef() != address(0)
            ) {
                profitInSPACE = profitInSPACE.add(spaceChef.pendingSpace(pool, account));
            }
        }

        (, uint256 profitBNBInUSD) = priceCalculator.valueOfAsset(WBNB, profitInBNB);
        (, uint256 profitSPACEInUSD) = priceCalculator.valueOfAsset(SPACE, profitInSPACE);
        return tokenInUSD.add(profitBNBInUSD).add(profitSPACEInUSD);
    }

    function portfolioOf(address account, address[] memory pools) public view returns (uint256 deposits) {
        deposits = 0;
        for (uint256 i = 0; i < pools.length; i++) {
            deposits = deposits.add(portfolioOfPoolInUSD(pools[i], account));
        }
    }
}