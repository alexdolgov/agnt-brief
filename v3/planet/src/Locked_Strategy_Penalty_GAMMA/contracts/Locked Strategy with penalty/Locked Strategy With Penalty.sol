pragma solidity ^0.8.19;

// SPDX-License-Identifier: MIT

import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";

// @title Planet's Locked Strategy
// @author Planet

contract Locked_Strategy_Penalty_GAMMA is Initializable, UUPSUpgradeable, OwnableUpgradeable, ReentrancyGuardUpgradeable {

    using SafeERC20Upgradeable for IERC20Upgradeable;
    struct LockedBalance {
	    uint256 amount;
	    uint256 unlockTime;
	    uint256 duration;
    }
    address public wantAddress; // Address of want token

    address public gammaFarmAddress; // Address of Farm associated with this strategy
    address public rewardsAddress; // Address to which generated fees flow

    uint256 public wantLockedTotal; 
    uint256 public sharesTotal; 

    uint256 public penaltyFactor;
    uint256 internal constant penaltyFactorMax = 5000; // maximum penalty = 50%

    // Time lengths
	uint256[] public lockPeriod;

    mapping(address => uint256) public balance;
    mapping(address => LockedBalance[]) public userLocks;


    event Locked(address indexed user, uint256 amount, uint256 lockedBalance);
    event SetPenaltyFactor(uint256 _penaltyFactor);
    event SetRewardsAddress(address _rewardsAddress);

    error Unauthorized(address caller);


    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor(){
	    _disableInitializers();
    }

    function initialize(
        address[] memory _addresses,
        uint256 _penaltyFactor
    ) public initializer(){

        gammaFarmAddress = _addresses[0];
        wantAddress = _addresses[1];
        rewardsAddress = _addresses[2];
        
        penaltyFactor = _penaltyFactor;

        __Ownable_init();
        __ReentrancyGuard_init();
        __UUPSUpgradeable_init();
 
    }
    
    function _authorizeUpgrade(address newImplementation)
        internal
        virtual
        override
	onlyOwner {
    }


    // @notice Ensures deposit, withdraw and claim calls made to this strategy come only through the Farm

    function checkForFarmAddressCall() private view  {
        if(msg.sender != gammaFarmAddress) 
        {
            revert Unauthorized(msg.sender);
        }
    }

    // @notice Deposits want tokens recieved from the user through the farm into Thena GaugeV2 after deducting fees
    // @param _wantAmt Amount of want tokens that the user is depositing
    // @returns sharesAdded Shares to be added to the user corresponding to his deposit amount

    function deposit(uint256 _wantAmt, address _user, uint256 typeIndex) external virtual nonReentrant returns(uint256, uint256, uint256){
        checkForFarmAddressCall();
        require(typeIndex < lockPeriod.length, "invalid index");
        uint256 lockIndex = lockPeriod[typeIndex];

        wantLockedTotal = sharesTotal = sharesTotal + _wantAmt;

		balance[_user] += _wantAmt;


		_insertLock(
			_user,
			LockedBalance({
				amount: _wantAmt,
				unlockTime: block.timestamp + lockIndex,
				duration: lockIndex
			})
		);

		emit Locked(_user, _wantAmt, balance[_user]);
        return (0,0,0);
    }

    function _insertLock(address _user, LockedBalance memory newLock) internal {
        LockedBalance[] storage locks = userLocks[_user];
        uint256 length = locks.length;

        // If it's the first element or should be placed at the end due to unlock time
        if (length == 0 || locks[length - 1].unlockTime <= newLock.unlockTime) {
            locks.push(newLock);
            return;
        }
        // Find the correct position for the new lock
        uint256 i;
        for (i = 0; i < length;) {
            if (locks[i].unlockTime >= newLock.unlockTime) {
                break;
            }
            unchecked{
                i++;
            }
        }

        // Insert the new lock at the found position
        locks.push(); // Increment the length of the array
        for (uint256 j = length; j > i;) {
            locks[j] = locks[j - 1];
            unchecked{
                j--;
            }
        }
        locks[i] = newLock; // Insert new lock
    }

    // @notice Returns wantLockedTotal and sharesTotal of the Strategy
    // @Returns wantLockedTotal Total want tokens present with the strategy, deposited into Thena Gauge V2
    // @Returns sharesTotal Total shares corresponding to tokens in the strategy. This is equal to wantLockedTotal as the strategy is not compounding want tokens

    function getShares() external virtual view returns (uint256, uint256) {
        return (wantLockedTotal, sharesTotal);
    }

    // @notice Sets fees. Fees cannot be set higher than corresponding Max amounts
    // @param _penaltyFactor New Penalty Fee for early withdrawal 

    function setPenaltyFactor(uint256 _penaltyFactor) external virtual onlyOwner {

        require(_penaltyFactor <= penaltyFactorMax, "_penaltyFactor too high");
        penaltyFactor = _penaltyFactor;

        emit SetPenaltyFactor(_penaltyFactor);

    }

    // @notice Sets Rewards Address to which fees generated flow
    // @param _rewardsAddress New Rewards Address

    function setRewardsAddress(address _rewardsAddress) external virtual onlyOwner {
        rewardsAddress = _rewardsAddress;
        emit SetRewardsAddress(_rewardsAddress);
    }

    // @notice Withdraws tokens sent by mistake to the strategy. Note: Want tokens sent to the strategy cannot be removed.
    // @param _token Token to be withdraw
    // @param _amount Amount of _token to be withdrawn from the strategy
    // @param _to Address to which withdrawn tokens are to be sent
    function inCaseTokensGetStuck(address _token, uint256 _amount, address _to) external virtual onlyOwner {
        require(_token != wantAddress, "!safe");
        IERC20Upgradeable(_token).safeTransfer(_to, _amount);
    }


    // @notice Withdraws want from Thena Gauge V2 and sends it to the farm, after deducting fees, which in turn sends it to the user
    // @notice _wantAmt Amount of want tokens that the user wishes to withdraw
    // @returns sharesRemoved Shares to be removed corresponding to the user's withdraw amount
    // @returns _wantAmt Want tokens to be sent to the user after deducting fees
    function withdrawVesting(uint256 _wantAmt, address _user) external virtual nonReentrant () {
        checkForFarmAddressCall();

        uint256 wantAmt = IERC20Upgradeable(wantAddress).balanceOf(address(this));
        if (_wantAmt > wantAmt) {
            _wantAmt = wantAmt;
        }

        if (_wantAmt > sharesTotal) {
            _wantAmt = sharesTotal;
        }

        uint256 bal = balance[_user];

        if (_wantAmt > bal){
            _wantAmt = bal;
        }

        LockedBalance[] storage locks = userLocks[_user];
        uint256 remainingAmt = _wantAmt;
        uint256 unlockableAmt;
        uint256 removeIndex;
        uint256 penaltyAmount;
        uint256 locksLength = locks.length;

        for (uint256 i = 0; i < locksLength  && remainingAmt !=0;) {    
                uint256 toBeRemoved;
                unlockableAmt = locks[i].amount;
                if (remainingAmt >= unlockableAmt){
                    toBeRemoved = unlockableAmt;
                    removeIndex = i+1;
                }
                else{
                    toBeRemoved = remainingAmt;
                    locks[i].amount = unlockableAmt - toBeRemoved;
                } 
                remainingAmt -= toBeRemoved;
                if (locks[i].unlockTime > block.timestamp) {
                    penaltyAmount += toBeRemoved;
                }
                unchecked{
                    i++;
                }
		}
        if (removeIndex != 0) {
			for (uint256 j = removeIndex; j < locksLength;) {
					locks[j - removeIndex] = locks[j];
                    unchecked{
                        j++;
                    }
			}
			for (uint256 j = 0; j < removeIndex;) {
					locks.pop();
                    unchecked{
                        j++;
                    }
			}
		}
        balance[_user] = bal - _wantAmt;

        sharesTotal = wantLockedTotal = wantLockedTotal - _wantAmt;

        if(penaltyAmount != 0){
            penaltyAmount = ((penaltyAmount * penaltyFactor)/10000); 
            _wantAmt -= penaltyAmount;
            IERC20Upgradeable(wantAddress).safeTransfer(rewardsAddress, penaltyAmount);
        }
        IERC20Upgradeable(wantAddress).safeTransfer(_user, _wantAmt);
    }

    /**
	 * @notice Information on a user's lockings
	 * @return unlockable balance
	 */
	function unlockedBalance(address user)
		public
		view
		returns (uint256 unlockable){

		LockedBalance[] storage locks = userLocks[user];
        uint256 locksLength = locks.length;
		for (uint256 i = 0; i < locksLength;) {
			if (locks[i].unlockTime <= block.timestamp) {
				unlockable += locks[i].amount;
			}
            unchecked{
                i++;
            }
		}
	}

    function getPenaltyDetails(address _user, uint256 amount) external view returns (uint256 withdrawAmount, uint256 receivedAmount, uint256 penaltyAmount) {
            if (balance[_user] < amount){
                withdrawAmount = balance[_user];
            }else{
                withdrawAmount = amount;
            }
            uint256 unlockable = unlockedBalance(_user);
            if(unlockable >= withdrawAmount){
                penaltyAmount = 0;
            }else{
                penaltyAmount = ((withdrawAmount - unlockable) * penaltyFactor)/10000; 
            }
            receivedAmount = withdrawAmount - penaltyAmount; 
    }


 /**
    * @notice Sets the lock period options and corresponding reward multipliers
    * @param _lockPeriod Array of lock periods
    */
	function setLockTypeInfo(uint256[] memory _lockPeriod) external virtual onlyOwner {		
        uint256 lockPeriodLength = lockPeriod.length;
        for(uint256 i; i<lockPeriodLength;){
            lockPeriod.pop();
            unchecked{
                i++;
            }
        }

        uint256 _lockPeriodLength = _lockPeriod.length;
		for (uint256 i; i < _lockPeriodLength;) {
			lockPeriod.push(_lockPeriod[i]);
            unchecked{
                i++;
            }
		}
	}

    function getNumberOfLocks(address _user) external view returns (uint256){
        return userLocks[_user].length;
    }

}