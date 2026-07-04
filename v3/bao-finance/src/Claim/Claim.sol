// Dependency file: contracts/modules/Ownable.sol

// SPDX-License-Identifier: MIT
// pragma solidity >=0.6.0;

contract Ownable {
    address public owner;
    address public admin;

    event OwnerChanged(address indexed _oldOwner, address indexed _newOwner);
    event AdminChanged(address indexed _oldAdmin, address indexed _newAdmin);

    constructor () public {
        owner = msg.sender;
        admin = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, 'Ownable: FORBIDDEN');
        _;
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, 'Ownable: FORBIDDEN');
        _;
    }

    function changeOwner(address _newOwner) public onlyOwner {
        require(_newOwner != address(0), 'Ownable: INVALID_ADDRESS');
        emit OwnerChanged(owner, _newOwner);
        owner = _newOwner;
    }

    function changeAdmin(address _newAdmin) public onlyAdmin {
        require(_newAdmin != address(0), 'Ownable: INVALID_ADDRESS');
        require(_newAdmin != admin, 'Ownable: NO CHANGE');
        emit AdminChanged(admin, _newAdmin);
        admin = _newAdmin;
    }
}


// Dependency file: contracts/interfaces/IERC20.sol

// pragma solidity >=0.5.0;

interface IERC20 {
    event Approval(address indexed owner, address indexed spender, uint value);
    event Transfer(address indexed from, address indexed to, uint value);

    function name() external view returns (string memory);
    function symbol() external view returns (string memory);
    function decimals() external view returns (uint8);
    function totalSupply() external view returns (uint);
    function balanceOf(address owner) external view returns (uint);
    function allowance(address owner, address spender) external view returns (uint);

    function approve(address spender, uint value) external returns (bool);
    function transfer(address to, uint value) external returns (bool);
    function transferFrom(address from, address to, uint value) external returns (bool);
}


// Dependency file: contracts/interfaces/IClaimCondition.sol

// pragma solidity >=0.6.0;

interface IClaimCondition {
    function verify(uint256 pid, address user) external view returns(bool);
}

// Dependency file: contracts/interfaces/IClaimRule.sol

// pragma solidity >=0.6.0;

interface IClaimRule {
    function getRewardAmount(uint256 pid, address user) external view returns(uint256);
}

// Dependency file: contracts/libraries/SafeMath.sol


// pragma solidity >=0.6.0;

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

// Root file: contracts/Claim.sol

pragma solidity >=0.6.0;

// import 'contracts/modules/Ownable.sol';
// import 'contracts/interfaces/IERC20.sol';
// import 'contracts/interfaces/IClaimCondition.sol';
// import 'contracts/interfaces/IClaimRule.sol';
// import 'contracts/libraries/SafeMath.sol';

contract Claim is Ownable {
    using SafeMath for uint256;

    struct RewardInfo {
        uint256 pid;
        address token;
        uint256 total;
        uint256 balance;
        uint256 startTimestamp;
        uint256 endTimestamp;
        address condition;
        address rule;
        mapping(address => bool) cliamedUser;
        address[] users;
    }
    
    uint256[] _pids;
    mapping(uint256 => RewardInfo) _rewardInfo;
    mapping(address => uint256) _extraAmount;

    event Create(uint256 indexed pid, address token, uint256 total);
    event Set(uint256 indexed pid, address condition, address rule);
    event Withdraw(address indexed token, uint256 amount);
    event Claim(uint256 indexed pid, address token, uint256 amount);
    
    function rewardInfo(uint256 pid) external view returns (address token, uint256 total, uint256 balance, uint256 startTimestamp, uint256 endTimestamp, address condition, address rule) {
        return (
            _rewardInfo[pid].token,
            _rewardInfo[pid].total,
            _rewardInfo[pid].balance,
            _rewardInfo[pid].startTimestamp,
            _rewardInfo[pid].endTimestamp,
            _rewardInfo[pid].condition,
            _rewardInfo[pid].rule
        );
    }
    
    function rewardLength() external view returns (uint256) {
        return _pids.length;
    }
    
    function pendingReward(uint256 pid) external view returns (bool, uint256) {
       return _claimInfo(pid);
    }

    function rewardExist(uint256 pid) public view returns (bool) {
        if(_pids.length > pid) {
            return true;
        }
        return false;
    }
    
    function isExpired(uint256 pid) public view returns (bool) {
        require(rewardExist(pid), 'REWARD NOT EXISTED.');
        return _rewardInfo[pid].startTimestamp <= block.timestamp && block.timestamp <= _rewardInfo[pid].endTimestamp ? false : true;
    }

    function create(address token, uint256 total, uint256 startTimestamp, uint256 endTimestamp, address condition, address rule) external onlyAdmin {
        require(token != address(0), 'INVALID TOKEN ADDRESS.');
        require(startTimestamp < endTimestamp && endTimestamp > block.timestamp, 'INVALID TIMESTAMP.');
        RewardInfo storage reward = _rewardInfo[_pids.length];
        reward.pid = _pids.length;
        reward.token = token;
        reward.total = total;
        reward.balance = total;
        reward.startTimestamp = startTimestamp;
        reward.endTimestamp = endTimestamp;
        reward.condition = condition;
        reward.rule = rule;
        _pids.push(_pids.length);
        emit Create(_pids.length, token, total);
    }
    
    function set(uint256 pid, address condition, address rule) external onlyAdmin {
        require(rewardExist(pid), 'REWARD NOT EXISTED.');
        require(condition != address(0) && rule != address(0), 'INVALID ARGS');
        RewardInfo storage reward = _rewardInfo[pid];
        reward.condition = condition;
        reward.rule = rule;
        emit Set(pid, condition, rule);
    }

    function updateTotal(uint256 pid, uint256 newTotal) external onlyAdmin {
        require(rewardExist(pid), 'REWARD NOT EXISTED.');
        RewardInfo storage reward = _rewardInfo[pid];
        uint256 claimedAmount = reward.total.sub(reward.balance);
        require(reward.total != newTotal && newTotal > claimedAmount, 'INVALID TOTAL.');
        reward.total = newTotal;
        reward.balance = newTotal.sub(claimedAmount);
    }
    
    function updateTimestamp(uint256 pid, uint256 startTimestamp, uint256 endTimestamp) external onlyAdmin {
        require(rewardExist(pid), 'REWARD NOT EXISTED.');
        RewardInfo storage reward = _rewardInfo[pid];
        require(startTimestamp < endTimestamp && endTimestamp != reward.endTimestamp, 'INVALID TIMESTAMP.');
        reward.startTimestamp = startTimestamp;
        reward.endTimestamp = endTimestamp;
        
    }
    
    function claim(uint256 pid) external {
        require(!isExpired(pid), 'THE REWARD IS OUTTIME.');
        RewardInfo storage reward = _rewardInfo[pid];
        require(reward.condition != address(0) && reward.rule != address(0), 'THE REWARD INVALID.');
        (bool res, uint256 rewardAmount) = _claimInfo(pid);
        require(res, 'Claim FAILED.');
        reward.balance = reward.balance.sub(rewardAmount);
        reward.cliamedUser[msg.sender] = true;
        reward.users.push(msg.sender);
        IERC20(reward.token).transfer(msg.sender, rewardAmount);
        emit Claim(pid, reward.token, rewardAmount);
    }
    
    function withdraw(address token) external onlyAdmin {
        require(token != address(0), 'INVALID TOKEN ADDRESS');
        uint256[] memory zeroPids = new uint256[](0);
        _clean(zeroPids);
        IERC20(token).transfer(msg.sender, _extraAmount[token]);
        emit Withdraw(token, _extraAmount[token]);
        _extraAmount[token] = 0;
    }
    
    function withdrawWithPids(uint256[] calldata pids, address token) external onlyAdmin {
        require(token != address(0), 'INVALID TOKEN ADDRESS');
        _clean(pids);
        IERC20(token).transfer(msg.sender, _extraAmount[token]);
        emit Withdraw(token, _extraAmount[token]);
        _extraAmount[token] = 0;
    }
    
    function _claimInfo(uint256 pid) internal view returns (bool, uint256) {
        require(rewardExist(pid), 'REWARD NOT EXISTED.');
        RewardInfo storage reward = _rewardInfo[pid];
        uint256 rewardAmount = _rewardAmount(pid);
        bool verifyRes = IClaimCondition(reward.condition).verify(pid, msg.sender);
        if (reward.balance >= rewardAmount && verifyRes && !reward.cliamedUser[msg.sender]) {
            return (true, rewardAmount);
        } else {
            return (false, 0);
        }
    }
    
    function _clean(uint256[] memory pids) internal {
        uint256[] memory targetPids = pids.length > 0 ? pids : _pids;
        for (uint i = 0; i < targetPids.length; i++) {
            RewardInfo storage reward = _rewardInfo[targetPids[i]];
            if (reward.endTimestamp < block.timestamp) {
                _extraAmount[reward.token] = _extraAmount[reward.token].add(reward.balance);
                reward.balance = 0;
            }
        }   
    }
    
    function _rewardAmount(uint256 pid) internal view returns (uint256) {
        require(rewardExist(pid), 'REWARD NOT EXISTED.');
        RewardInfo storage reward = _rewardInfo[pid];
        return IClaimRule(reward.rule).getRewardAmount(pid, msg.sender);
    }

}
