// File: contracts/interfaces/ISubVesting.sol


/*
    Created by DeNet
    
    Interface for ERC20Vesting 
*/

pragma solidity ^0.8.0;

interface ISubVesting {
    event SubVestingAdd(
        address indexed _to,
        uint256 _value
    );

    event UpdateStatus (
        address indexed _to,
        uint8 status
    );
}
// File: contracts/interfaces/IERC20Vesting.sol


/*
    Created by DeNet
    
    Interface for ERC20Vesting 
*/

pragma solidity ^0.8.0;

interface IERC20Vesting {

    event Vested(address indexed to, uint256 value);

    function vestingToken() external view returns(address);

    function getAmountToWithdraw(address _user) external view returns(uint256);

    function withdraw() external;

    function withdrawFor(address _for) external;

    function approveVesting(address _to) external;

    function stopApproveVesting(address _to) external;
}
// File: @openzeppelin/contracts/token/ERC20/IERC20.sol


// OpenZeppelin Contracts (last updated v4.6.0) (token/ERC20/IERC20.sol)

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
    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) external returns (bool);
}

// File: @openzeppelin/contracts/utils/math/SafeMath.sol


// OpenZeppelin Contracts (last updated v4.6.0) (utils/math/SafeMath.sol)

pragma solidity ^0.8.0;

// CAUTION
// This version of SafeMath should only be used with Solidity 0.8 or later,
// because it relies on the compiler's built in overflow checks.

/**
 * @dev Wrappers over Solidity's arithmetic operations.
 *
 * NOTE: `SafeMath` is generally not needed starting with Solidity 0.8, since the compiler
 * now has built in overflow checking.
 */
library SafeMath {
    /**
     * @dev Returns the addition of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryAdd(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            uint256 c = a + b;
            if (c < a) return (false, 0);
            return (true, c);
        }
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function trySub(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b > a) return (false, 0);
            return (true, a - b);
        }
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryMul(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
            // benefit is lost if 'b' is also tested.
            // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
            if (a == 0) return (true, 0);
            uint256 c = a * b;
            if (c / a != b) return (false, 0);
            return (true, c);
        }
    }

    /**
     * @dev Returns the division of two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryDiv(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a / b);
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryMod(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a % b);
        }
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
        return a + b;
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
        return a * b;
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator.
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
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
    function sub(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        unchecked {
            require(b <= a, errorMessage);
            return a - b;
        }
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting with custom message on
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
    function div(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        unchecked {
            require(b > 0, errorMessage);
            return a / b;
        }
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
    function mod(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        unchecked {
            require(b > 0, errorMessage);
            return a % b;
        }
    }
}

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


// OpenZeppelin Contracts (last updated v4.7.0) (access/Ownable.sol)

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
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        _checkOwner();
        _;
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if the sender is not the owner.
     */
    function _checkOwner() internal view virtual {
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
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

// File: contracts/SubVesting.sol


/*
    Created by DeNet

    DeMet Vesting.

    This is last year supply vesting with one year.
*/

pragma solidity ^0.8.0;






contract SubVesting  is Ownable, ISubVesting {
    using SafeMath for uint256;
    using SafeMath for uint64;

    address public vestingContractAddress;
    address public vestingOwner;

    address private _vestingToken;

    uint256 public totalRequestedAmount;
    uint256 public totalWithdrawedAmount;

    uint8 constant public VESTING_STATUS_FULL = 2;
    uint8 constant public VESTING_STATUS_PART = 1;
    uint8 constant public VESTING_STATUS_SAFE = 0;

    /**
    * @dev
    * - timeStart -  Start Vesting Time
    * - timeEnd - End Vesting Time
    * - fullAmount - total amount of subvesting tokens
    * - stageOneAmount - Safty withdraw to get reward from exited participants
    * - stageTwoAmount - Safty withdraw to stay in next years
    * - payed - Total amount of withdrawed funds
    * - status - 0 - Vesting is Safe, 1 - Vesting lost profit from exited participents, 2 - Leave from Vesting of next years 
    */
    struct SubVestingProfile {
        uint64 timeStart;
        uint64 timeEnd;
        uint256 fullAmount;
        uint256 stageOneAmount;
        uint256 stageTwoAmount;
        uint256 payed;
        uint8 status;
    }

    mapping (address => SubVestingProfile) public SubVestingStatus;

    // set contract address
    function setVestingContractAddress(address _contractAddress, address _vestingOwnerAddress) public onlyOwner {
        vestingContractAddress = _contractAddress;
        vestingOwner = _vestingOwnerAddress;
        
        IERC20Vesting _vestingContract = IERC20Vesting(vestingContractAddress);
        _vestingToken = _vestingContract.vestingToken();
    }

    function addVesting(
        address _to,
        uint64 _start,
        uint64 _end,
        uint256 _fullAmount,
        uint256 _stageOneAmount,
        uint256 _stageTwoAmount
    ) public onlyOwner {
        require(_to != address(0), "Address = 0");
        require(SubVestingStatus[_to].timeStart == 0, "User already have vesting");
        require(_fullAmount != 0, "Amount = 0");
        require(_start < _end, "TimeStart > TimeEnd");
        require(_end > block.timestamp, "Time end < block.timestamp");
        require(_fullAmount >= _stageTwoAmount, "_fullAmount less _stageTwoAmount");
        require(_stageTwoAmount >= _stageOneAmount, "_stageTwoAmount less _stageOneAmount");

        SubVestingStatus[_to] = SubVestingProfile(_start, _end, _fullAmount, _stageOneAmount, _stageTwoAmount, 0, 0);
        totalRequestedAmount = totalRequestedAmount.add(_fullAmount);
        emit SubVestingAdd(_to, _fullAmount);
    }

    /* 
        Return abaialble balance to withdraw
    */
    function getAmountToFullWithdraw(address _user) public view  returns(uint256) {
        SubVestingProfile memory _tmpProfile = SubVestingStatus[_user];

        if (_tmpProfile.timeStart > block.timestamp) {
            return 0;
        }
        uint _vestingPeriod = _tmpProfile.timeEnd.sub(_tmpProfile.timeStart);
        uint _amount = _tmpProfile.fullAmount.div(_vestingPeriod);
        if (_tmpProfile.timeEnd > block.timestamp) {
            _amount = _amount.mul(block.timestamp.sub(_tmpProfile.timeStart));
        } else {
            _amount = _tmpProfile.fullAmount;
        }
        return _amount.sub(_tmpProfile.payed);
    }

    function getAmountToPartWithdraw(address _user) public view  returns(uint256) {
        SubVestingProfile memory _tmpProfile = SubVestingStatus[_user];
        if (_tmpProfile.status > VESTING_STATUS_PART) {
            return 0;
        }
        if (_tmpProfile.timeStart > block.timestamp) {
            return 0;
        }
        uint _vestingPeriod = _tmpProfile.timeEnd.sub(_tmpProfile.timeStart);
        uint _amount = _tmpProfile.stageTwoAmount.div(_vestingPeriod);
        if (_tmpProfile.timeEnd > block.timestamp) {
            _amount = _amount.mul(block.timestamp.sub(_tmpProfile.timeStart));
        } else {
            _amount = _tmpProfile.stageTwoAmount;
        }
        return _amount.sub(_tmpProfile.payed);
    }

    function getAmountToSafeWithdraw(address _user) public view  returns(uint256) {
        SubVestingProfile memory _tmpProfile = SubVestingStatus[_user];
        if (_tmpProfile.status > VESTING_STATUS_SAFE) {
            return 0;
        }
        if (_tmpProfile.timeStart > block.timestamp) {
            return 0;
        }
        uint _vestingPeriod = _tmpProfile.timeEnd.sub(_tmpProfile.timeStart);
        uint _amount = _tmpProfile.stageOneAmount.div(_vestingPeriod);
        if (_tmpProfile.timeEnd > block.timestamp) {
            _amount = _amount.mul(block.timestamp.sub(_tmpProfile.timeStart));
        } else {
            _amount = _tmpProfile.stageOneAmount;
        }
        return _amount.sub(_tmpProfile.payed);
    }

    function _subTransfer(address _to, uint _amount) internal returns (bool) {
        IERC20Vesting _vestingContract = IERC20Vesting(vestingContractAddress);
        _vestingContract.withdrawFor(vestingOwner);
        IERC20 originalToken = IERC20(_vestingToken);

        uint256 _vestingOwnerBalance = originalToken.balanceOf(vestingOwner);
        if (_vestingOwnerBalance < _amount) {
            return false;
        }
        originalToken.transferFrom(vestingOwner, address(this), _amount);
        originalToken.transfer(_to, _amount);
        SubVestingStatus[_to].payed = SubVestingStatus[_to].payed.add(_amount);
        totalWithdrawedAmount = totalWithdrawedAmount.add(_amount);
        return true;
    }

    function fullWithdraw() public {
        address _to = msg.sender;
        uint _amount = getAmountToFullWithdraw(_to);
        
        require(_amount > 0, "fullWithdraw: amount = 0");

        require(_subTransfer(_to, _amount) == true, "_subTransfer: balance < amount");        
        if (SubVestingStatus[_to].status < VESTING_STATUS_FULL) {
            SubVestingStatus[_to].status = VESTING_STATUS_FULL;
            emit UpdateStatus(_to, VESTING_STATUS_FULL); 
        }
    }

    function PartWithdraw() public {
        address _to = msg.sender;
        uint _amount = getAmountToPartWithdraw(_to);
        
        require(_amount > 0, "PartWithdraw: amount = 0");

        require(_subTransfer(_to, _amount) == true, "_subTransfer: balance < amount");        
        if (SubVestingStatus[_to].status < VESTING_STATUS_PART) {
            SubVestingStatus[_to].status = VESTING_STATUS_PART;
            emit UpdateStatus(_to, VESTING_STATUS_PART); 
        }
    }

    function SafeWithdraw() public {
        address _to = msg.sender;
        uint _amount = getAmountToSafeWithdraw(_to);
        
        require(_amount > 0, "fullWithdraw: amount = 0");

        require(_subTransfer(_to, _amount) == true, "_subTransfer: balance < amount");        
        // No need to check status, because it smallest status (zero)
    }
}