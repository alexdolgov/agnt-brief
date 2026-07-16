pragma solidity ^0.6.12;
pragma experimental ABIEncoderV2;
// SPDX-License-Identifier: UNLICENSED

struct RewardData {
    address token;
    uint256 amount;
}
struct LockedBalance {
    uint256 amount;
    uint256 unlockTime;
}

// Interface for EPS Staking contract - http://ellipsis.finance/
interface IMultiFeeDistribution {

    /* ========== VIEWS ========== */
    function totalSupply() external view returns (uint256);
    function lockedSupply() external view returns (uint256);

    function rewardPerToken(address _rewardsToken) external view returns (uint256);

    function getRewardForDuration(address _rewardsToken) external view returns (uint256);

    // Address and claimable amount of all reward tokens for the given account
    function claimableRewards(address account) external view returns (RewardData[] memory);

    // Total balance of an account, including unlocked, locked and earned tokens
    function totalBalance(address user) view external returns (uint256 amount);

    // Total withdrawable balance for an account to which no penalty is applied
    function unlockedBalance(address user) view external returns (uint256 amount);

    // Final balance received and penalty balance paid by user upon calling exit
    function withdrawableBalance(address user) view external returns (uint256 amount, uint256 penaltyAmount);

    // Information on the "earned" balances of a user
    // Earned balances may be withdrawn immediately for a 50% penalty
    function earnedBalances(address user) view external returns (uint256 total, LockedBalance[] memory earningsData);

    // Information on a user's locked balances
    function lockedBalances(address user) view external returns (uint256 total, uint256 unlockable, uint256 locked, LockedBalance[] memory lockData);

    /* ========== MUTATIVE FUNCTIONS ========== */

    // Mint new tokens
    // Minted tokens receive rewards normally but incur a 50% penalty when
    // withdrawn before lockDuration has passed.
    function mint(address user, uint256 amount) external;

    // Withdraw full unlocked balance and claim pending rewards
    function exit() external;

    // Withdraw all currently locked tokens where the unlock time has passed
    function withdrawExpiredLocks() external;

    // Claim all pending staking rewards (both BUSD and EPS)
    function getReward() external;

    // Stake tokens to receive rewards
    // Locked tokens cannot be withdrawn for lockDuration and are eligible to receive stakingReward rewards
    function stake(uint256 amount, bool lock) external;

    // Stake tokens to receive rewards
    // Locked tokens cannot be withdrawn for lockDuration and are eligible to receive stakingReward rewards
    function stakeFor(address user, uint256 amount, bool lock) external;
    
    // Withdraw staked tokens
    // First withdraws unlocked tokens, then earned tokens. Withdrawing earned tokens
    // incurs a 50% penalty which is distributed based on locked balances.
    function withdraw(uint256 amount) external;
    
    /* ========== ADMIN CONFIGURATION ========== */

    // Used to let FeeDistribution know that _rewardsToken was added to it
    function notifyRewardAmount(address _rewardsToken, uint256 rewardAmount) external;
}

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


/** 
 * @title Proposal
 * @dev Implements voting process for a single proposal
 */
contract Proposal {
    using SafeMath for uint256;
   
    struct Voter {
        uint256 weight; // vote weight = # of ADDY locked
        bool voted;  // if true, that person already voted
        bool supported;   // whether they supported the proposal
    }

    address public constant multiFeeDist = 0x920f22E1e5da04504b765F8110ab96A20E6408Bd;
    string private description;

    mapping(address => Voter) public voters;

    uint256 public votesFor = 0;
    uint256 public votesAgainst = 0;

    constructor(string memory _description) public {
        description = _description;
    }

    // **** Views **** //

    function getVotingWeight(address user) public view returns (uint256) {
        (uint256 locked_total, , , ) = IMultiFeeDistribution(multiFeeDist).lockedBalances(user);
        return locked_total;
    }

    function getDescription() public view returns (string memory) {
        return description;
    }

    function getInfoFor(address user) external view returns (
        string memory description,
        bool voted,
        bool supported,
        uint256 weight,
        uint256 votingWeight
        ) 
    {
        Voter storage voter = voters[user];

        description = getDescription();
        voted = voter.voted;
        supported = voter.supported;
        weight = voter.weight;
        votingWeight = getVotingWeight(user);
    }

    // **** State Mutations ****

    function vote(bool support) public {
        Voter storage sender = voters[msg.sender];

        require(!sender.voted, "Already voted.");
        uint256 weight = getVotingWeight(msg.sender);

        sender.voted = true;
        sender.supported = support;
        sender.weight = weight;

        if(support) {
            votesFor = votesFor.add(weight);
        }
        else {
            votesAgainst = votesAgainst.add(weight);
        }

        emit Voted(msg.sender, weight, support);
    }

    event Voted(address indexed voter, uint256 weight, bool supported);
}
