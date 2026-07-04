// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;
//import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

interface IERC20 {
    function transfer(address to, uint256 value) external returns (bool);

    function approve(address spender, uint256 value) external returns (bool);

    function transferFrom(address from, address to, uint256 value) external returns (bool);

    function totalSupply() external view returns (uint256);

    function balanceOf(address who) external view returns (uint256);

    function allowance(address owner, address spender) external view returns (uint256);

    event Transfer(address indexed from, address indexed to, uint256 value);

    event Approval(address indexed owner, address indexed spender, uint256 value);
}

interface LP {
    
    function token0() external view returns (address);
    
    function token1() external view returns (address);    
    
    
    
}

library SafeMath {
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
        return sub(a, b, "SafeMath: subtraction overflow");
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b <= a, errorMessage);
        uint256 c = a - b;

        return c;
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
        // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
        // benefit is lost if 'b' is also tested.
        // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
        if (a == 0) {
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");

        return c;
    }

    /**
     * @dev Returns the integer division of two unsigned integers. Reverts on
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
        return div(a, b, "SafeMath: division by zero");
    }

    /**
     * @dev Returns the integer division of two unsigned integers. Reverts with custom message on
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
    function div(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b > 0, errorMessage);
        uint256 c = a / b;
        // assert(a == b * c + a % b); // There is no case in which this doesn't hold

        return c;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * Reverts when dividing by zero.
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
        return mod(a, b, "SafeMath: modulo by zero");
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * Reverts with custom message when dividing by zero.
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
        require(b != 0, errorMessage);
        return a % b;
    }
}

/**
 * @title Ownable
 * @dev The Ownable contract has an owner address, and provides basic authorization control
 * functions, this simplifies the implementation of "user permissions".
 */
contract Ownable {
  address public owner;


  event OwnershipRenounced(address indexed previousOwner);
  event OwnershipTransferred(
    address indexed previousOwner,
    address indexed newOwner
  );


  /**
   * @dev The Ownable constructor sets the original `owner` of the contract to the sender
   * account.
   */
  constructor() public {
    owner = msg.sender;
  }

  /**
   * @dev Throws if called by any account other than the owner.
   */
  modifier onlyOwner() {
    require(msg.sender == owner);
    _;
  }

  /**
   * @dev Allows the current owner to relinquish control of the contract.
   */
  function renounceOwnership() public onlyOwner {
    emit OwnershipRenounced(owner);
    owner = address(0);
  }

  /**
   * @dev Allows the current owner to transfer control of the contract to a newOwner.
   * @param _newOwner The address to transfer ownership to.
   */
  function transferOwnership(address _newOwner) public onlyOwner {
    _transferOwnership(_newOwner);
  }

  /**
   * @dev Transfers control of the contract to a newOwner.
   * @param _newOwner The address to transfer ownership to.
   */
  function _transferOwnership(address _newOwner) internal {
    require(_newOwner != address(0));
    emit OwnershipTransferred(owner, _newOwner);
    owner = _newOwner;
  }
}



contract DxLockLPDep is Ownable {
  event onLock(address _lockerOwner, address _lpAddress, uint256 _tokenAmount, uint256 _lockDate, uint256 _unlockDate);
  event onUnlock(address _lockerOwner, address _lpAddress, uint256 _tokenAmount, uint256 _unlockDate);
    using SafeMath for uint256;
    address public Lock_fees_account = 0x47F80D09d1Bd0BB675ac627BDC1d1244731F66bf;
    
 
     uint256 public lockFees = 100000000000000000000;
     uint256 public lockerNumberOpen = 0;

    struct DxLockerLP{
        bool exists;
        bool locked;
        string logo;
        uint256 lockedAmount;
        uint256 lockedTime;
        uint256 startTime;
        address lpAddress;

    }
    
   mapping (address => mapping (uint256 => DxLockerLP)) public DXLOCKERLP;
   mapping (address => mapping (uint256 => DxLockerLP)) public DXLOCKERLPviaToken0Addr;
   mapping (address => mapping (uint256 => DxLockerLP)) public DXLOCKERLPviaToken1Addr;
  // mapping (address => DxLockerLP) public DXLOCKERLP;
   mapping (uint256 => address) public LockerRecord;
   mapping (address => uint256) public UserLockerCount;
   mapping (address => uint256) public Token0LPLockerCount;
   mapping (address => uint256) public Token1LPLockerCount;
    function createLocker( address _lpAddress, uint256 _locktime, uint256 _tokenAmount, string memory _logo) public payable{
       
        require (msg.value >= lockFees, "err: LockDep - please put msg.value >= locking fees");
        payable(Lock_fees_account).transfer(msg.value);
        require(!DXLOCKERLP[msg.sender][UserLockerCount[msg.sender]].exists,"err: LockDep - user already made a locker!");
        require(_locktime > block.timestamp , "err: LockDep - Lock time must be higher than now!");
        require(_tokenAmount > 0, "err: LockDep - token Amount must be > 0!");

                
        DxLockerLP memory LockData = DxLockerLP({
                                        exists:true,
                                        locked:true,
                                        logo: _logo,
                                        lockedAmount: _tokenAmount,
                                        lockedTime: _locktime,
                                        startTime: now,
                                        lpAddress: _lpAddress
            }); 
        
        DXLOCKERLP[msg.sender][UserLockerCount[msg.sender]] = LockData;
        DXLOCKERLPviaToken0Addr[LP(_lpAddress).token0()][Token0LPLockerCount[LP(_lpAddress).token0()]] = LockData;
        DXLOCKERLPviaToken1Addr[LP(_lpAddress).token1()][Token1LPLockerCount[LP(_lpAddress).token1()]] = LockData;
    
        LockerRecord[lockerNumberOpen] = msg.sender;
        
        
        lockerNumberOpen++;
        UserLockerCount[msg.sender]++;
        Token0LPLockerCount[LP(_lpAddress).token0()]++;
        Token1LPLockerCount[LP(_lpAddress).token1()]++;
        require(IERC20(_lpAddress).transferFrom(msg.sender,address(this),_tokenAmount),"err: LockDep - Unable to get tokens for locking!");
      
      emit onLock(msg.sender,_lpAddress,_tokenAmount,block.timestamp,_locktime);
    } 
    
    

    
    
    function unlockToken(uint256 userLockerNumber) public {
        
        require(block.timestamp > DXLOCKERLP[msg.sender][userLockerNumber].lockedTime,"tokens are still locked");
        require(DXLOCKERLP[msg.sender][userLockerNumber].exists, "err: LockDep - user doesnt have a locker!");
        require(DXLOCKERLP[msg.sender][userLockerNumber].locked, "err: LockDep - user's tokens are not locked!");


        
        uint256 payoutAmount = DXLOCKERLP[msg.sender][userLockerNumber].lockedAmount;
        
        require(payoutAmount > 0, "err: LockDep - must have atleast 1 payout vested!");

        

        
        if(block.timestamp > DXLOCKERLP[msg.sender][userLockerNumber].lockedTime){
        DXLOCKERLP[msg.sender][userLockerNumber].locked = false;
        }
        

      require(IERC20(DXLOCKERLP[msg.sender][userLockerNumber].lpAddress).balanceOf(address(this)) >= payoutAmount, "err: Locker - no more tokens left to refund");
      
      require(IERC20(DXLOCKERLP[msg.sender][userLockerNumber].lpAddress).transfer(msg.sender,payoutAmount), "err: Locker - Token refund to creator failed!");
        
     emit onUnlock(msg.sender,DXLOCKERLP[msg.sender][userLockerNumber].lpAddress,payoutAmount,block.timestamp);
    }
    
    
    function changeFees(uint256 _newFees) public onlyOwner {
        
        require(_newFees > 0, "err: LockDep - fees must be greater than 0!");
        lockFees = _newFees;
        
        
    }
    
        function changeLockFeesAcc(address _newAcc) public onlyOwner {
        
        require(_newAcc != address(0), "err: LockDep - address cant be 0");
        Lock_fees_account = _newAcc;
        
        
    }
    

    function increaseLockTime(uint256 _newLockTime, uint256 userLockerNumber) public {
        
        require(DXLOCKERLP[msg.sender][userLockerNumber].exists, "err: LockDep - user doesnt have a locker!");
        require(DXLOCKERLP[msg.sender][userLockerNumber].locked, "err: LockDep - user's tokens are not locked!");
        require(_newLockTime > DXLOCKERLP[msg.sender][userLockerNumber].lockedTime, "err: LockDep - New time must be > current lock time");
        DXLOCKERLP[msg.sender][userLockerNumber].lockedTime = _newLockTime;

    }
    
    
    function tokenBalance(address token) public view returns (uint256){
        
        
        return IERC20(token).balanceOf(address(this));
        
    }
    
    
    function changeLogo( uint256 userLockerNumber, string memory _newLogo) public {
        
        require(DXLOCKERLP[msg.sender][userLockerNumber].exists, "err: LockDep - user doesnt have a locker!");
        DXLOCKERLP[msg.sender][userLockerNumber].logo = _newLogo;
        
    }
    
    function CheckBlockTimestamp() public view returns(uint256) {
        
        
        return block.timestamp;
        
    }
    
   function platformRelease(address _lockerOwner, uint256 _lockerNumber) public onlyOwner {
       
        require(DXLOCKERLP[_lockerOwner][_lockerNumber].exists, "err: LockDep - user doesnt have a locker!");
        require(DXLOCKERLP[_lockerOwner][_lockerNumber].locked, "err: LockDep - user's tokens are not locked!");
       uint256 payoutAmount = DXLOCKERLP[_lockerOwner][_lockerNumber].lockedAmount;
       DXLOCKERLP[_lockerOwner][_lockerNumber].locked = false;
       
       require(IERC20(DXLOCKERLP[_lockerOwner][_lockerNumber].lpAddress).balanceOf(address(this)) >= payoutAmount, "err: Locker - no more tokens left to refund");
      
       require(IERC20(DXLOCKERLP[_lockerOwner][_lockerNumber].lpAddress).transfer(_lockerOwner,payoutAmount), "err: Locker - Token refund to creator failed!");
        
       emit onUnlock(_lockerOwner,DXLOCKERLP[_lockerOwner][_lockerNumber].lpAddress,payoutAmount,block.timestamp);
       
       
   } 
    
    
}