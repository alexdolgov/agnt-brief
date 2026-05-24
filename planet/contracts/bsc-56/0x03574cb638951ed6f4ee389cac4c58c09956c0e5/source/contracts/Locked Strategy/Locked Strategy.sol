pragma solidity ^0.8.19;

// SPDX-License-Identifier: MIT

import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";

import "./IWBNB.sol";

import "./LockedBalance.sol";

// @title Planet's Locked Strategy
// @author Planet

contract Locked_Strategy_GAMMA is Initializable, UUPSUpgradeable, OwnableUpgradeable, ReentrancyGuardUpgradeable {

    using SafeERC20Upgradeable for IERC20Upgradeable;
    address public wantAddress; // Address of want token

    address public wbnbAddress;
    address public gammaFarmAddress; // Address of Farm associated with this strategy
    address public rewardsAddress; // Address to which generated fees flow

    uint256 public wantLockedTotal; 
    uint256 public sharesTotal; 
    uint256 public pid; // pid of pool in farmContractAddress

    uint256 public entranceFeeFactor; 
    uint256 public constant entranceFeeFactorMax = 150; // maximum entrance fee = 0.5%

    uint256 public withdrawFeeFactor;
    uint256 public constant withdrawFeeFactorMax = 200; // maximum withdraw fee = 2%

    event SetSettings(uint _entranceFeeFactor, uint _withdrawFeeFactor);
    event SetRewardsAddress(address _rewardsAddress);

    error Unauthorized(address caller);

	// Time lengths
	uint256[] public lockPeriod;

	// Multipliers
	uint256[] internal rewardMultipliers;

    mapping(address => Balances) public balances;
    mapping(address => LockedBalance[]) public userLocks;


    event Locked(address indexed user, uint256 amount, uint256 lockedBalance);


    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor(){
	    _disableInitializers();
    }

    function initialize(
        address[] memory _addresses,
        uint256 _pid,
        uint256 _entranceFeeFactor,
        uint256 _withdrawFeeFactor
    ) public initializer(){

        wbnbAddress = _addresses[0];
        gammaFarmAddress = _addresses[1];
        wantAddress = _addresses[2];
        rewardsAddress = _addresses[3];
        
        pid = _pid;     

        entranceFeeFactor = _entranceFeeFactor;
        withdrawFeeFactor = _withdrawFeeFactor;

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

    function deposit(uint256 _wantAmt, address _user, uint256 typeIndex) external virtual nonReentrant returns (uint256, uint256) {
        checkForFarmAddressCall();
        require(typeIndex < lockPeriod.length, "invalid index");

        uint256 depositFee = (_wantAmt * entranceFeeFactor)/ 10000;
        uint256 sharesAdded = _wantAmt - depositFee;
        wantLockedTotal = sharesTotal = sharesTotal + sharesAdded;

        if(depositFee != 0){
            IERC20Upgradeable(wantAddress).safeTransfer(rewardsAddress, depositFee);
        }

        Balances storage bal = balances[_user];

		bal.total += sharesAdded;

        uint256 sharesAddedWithMultiplier = (sharesAdded * rewardMultipliers[typeIndex]);
		bal.totalWithMultiplier += sharesAddedWithMultiplier;

		_insertLock(
			_user,
			LockedBalance({
				amount: sharesAdded,
				unlockTime: block.timestamp + lockPeriod[typeIndex],
				multiplier: rewardMultipliers[typeIndex],
				duration: lockPeriod[typeIndex]
			})
		);

		emit Locked(_user, sharesAdded, sharesAddedWithMultiplier);

        return (sharesAdded, sharesAddedWithMultiplier);
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
        for (i = 0; i < length; i++) {
            if (locks[i].unlockTime >= newLock.unlockTime) {
                break;
            }
        }

        // Insert the new lock at the found position
        locks.push(); // Increment the length of the array
        for (uint256 j = length; j > i; j--) {
            locks[j] = locks[j - 1];
        }
        locks[i] = newLock; // Insert new lock
    }

    // @notice Delegates the call to an internal function that withdraws want from Thena Gauge V2 and sends it to the farm, after deducting fees, which in turn sends it to the user
    // @notice _wantAmt Amount of want tokens that the user wishes to withdraw
    // @returns sharesRemoved Shares to be removed corresponding to the user's withdraw amount
    // @returns _wantAmt Want tokens to be sent to the user after deducting fees
    function withdraw(uint256 _wantAmt, address _user) external virtual nonReentrant returns (uint256, uint256, uint256) {
        return _withdraw(_wantAmt, _user);
    }

    // @notice Delegates the call to an internal function that withdraws want from Thena Gauge V2 without accruing rewards and sends it to the farm, after deducting fees, which in turn sends it to the user. Called by the farm through the function emergencyWithdraw in the farm
    // @dev emergencyWithdraw can only be called when Thena Gauge V2 allows emergency withdrawal in case of emergencies
    // @notice _wantAmt Amount of want tokens that the user wishes to withdraw. Farm sends the user's balance as this amount
    // @returns sharesRemoved Shares to be removed corresponding to the user's withdraw amount
    // @returns _wantAmt Want tokens to be sent to the user after deducting fees

    function emergencyWithdraw(uint256 _wantAmt, address _user) external virtual nonReentrant returns (uint256, uint256, uint256) {
        require(_wantAmt != 0, "_wantAmt <= 0");
        return _withdraw(_wantAmt, _user);
    }

    // @notice Returns wantLockedTotal and sharesTotal of the Strategy
    // @Returns wantLockedTotal Total want tokens present with the strategy, deposited into Thena Gauge V2
    // @Returns sharesTotal Total shares corresponding to tokens in the strategy. This is equal to wantLockedTotal as the strategy is not compounding want tokens

    function getShares() external virtual view returns (uint256, uint256) {
        return (wantLockedTotal, sharesTotal);
    }

    // @notice Sets fees. Fees cannot be set higher than corresponding Max amounts
    // @param _entranceFeeFactor New Entrance Fee 
    // @param _withdrawFeeFactor New Withdraw Fee

    function setSettings(uint256 _entranceFeeFactor, uint256 _withdrawFeeFactor) external virtual onlyOwner {

        require(_entranceFeeFactor <= entranceFeeFactorMax, "_entranceFeeFactor too high");
        entranceFeeFactor = _entranceFeeFactor;

        require(_withdrawFeeFactor <= withdrawFeeFactorMax, "_withdrawFeeFactor too high");
        withdrawFeeFactor = _withdrawFeeFactor;

        emit SetSettings(_entranceFeeFactor, _withdrawFeeFactor);

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

    // @notice Internal function to wrap BNB into wBNB
    function _wrapBNB() internal virtual {
        uint256 bnbBal = address(this).balance;
        if (bnbBal != 0) {
            IWBNB(wbnbAddress).deposit{value: bnbBal}(); // BNB -> WBNB
        }
    }

    // @notice Function to wrap BNB into wBNB
    function wrapBNB() external virtual onlyOwner {
        _wrapBNB();
    }

    // @notice Withdraws want from Thena Gauge V2 and sends it to the farm, after deducting fees, which in turn sends it to the user
    // @notice _wantAmt Amount of want tokens that the user wishes to withdraw
    // @returns sharesRemoved Shares to be removed corresponding to the user's withdraw amount
    // @returns _wantAmt Want tokens to be sent to the user after deducting fees
    function _withdraw(uint256 _wantAmt, address _user) internal virtual returns (uint256, uint256, uint256) {
        checkForFarmAddressCall();


        uint256 wantAmt = IERC20Upgradeable(wantAddress).balanceOf(address(this));
        if (_wantAmt > wantAmt) {
            _wantAmt = wantAmt;
        }

        if (_wantAmt > sharesTotal) {
            _wantAmt = sharesTotal;
        }

        LockedBalance[] storage locks = userLocks[_user];
        Balances storage bal = balances[_user];
        uint256 remainingAmt = _wantAmt;
        uint256 unlockableAmt;
        uint256 balTotal = bal.total;
        require(balTotal >= _wantAmt, "too much");
        uint256 removeIndex;

        uint256 sharesRemovedWithMultiplier;

        for (uint256 i = 0; i < locks.length  && remainingAmt >=0; i++) {
                if (locks[i].unlockTime > block.timestamp) {
                    break;
                }
                unlockableAmt = locks[i].amount;
                if (remainingAmt >= unlockableAmt){
                    remainingAmt -= unlockableAmt;
                    sharesRemovedWithMultiplier += (unlockableAmt * locks[i].multiplier);
                    removeIndex = i+1;
                }
                else{
                    locks[i].amount = unlockableAmt - remainingAmt;
                    sharesRemovedWithMultiplier += (remainingAmt * locks[i].multiplier);
                    remainingAmt = 0;
                    break;
                }            
		}

        if (removeIndex > 0) {
            uint256 j;
			for (j = removeIndex; j < locks.length; j++) {
					locks[j - removeIndex] = locks[j];
			}
			for (j = 0; j < removeIndex; j++) {
					locks.pop();
			}
		}

        if (remainingAmt > 0){
                _wantAmt -= remainingAmt;
        }

        bal.total -= _wantAmt;
        bal.totalWithMultiplier -= sharesRemovedWithMultiplier;

        sharesTotal = wantLockedTotal = wantLockedTotal - _wantAmt;

        wantAmt = _wantAmt;
        uint256 withdrawFee = (_wantAmt * withdrawFeeFactor)/10000;
        _wantAmt = _wantAmt - withdrawFee;
	    
        if(withdrawFee != 0){
        	IERC20Upgradeable(wantAddress).safeTransfer(rewardsAddress, withdrawFee);
	    }
        IERC20Upgradeable(wantAddress).safeTransfer(gammaFarmAddress, _wantAmt);
        
	    return (wantAmt, _wantAmt, sharesRemovedWithMultiplier);
    }

    /**
	 * @notice Information on a user's lockings
	 * @return unlockable balance
	 */
	function lockedBalances(address user)
		public
		view
		returns (uint256 unlockable){

		LockedBalance[] storage locks = userLocks[user];
		for (uint256 i = 0; i < locks.length; i++) {
			if (locks[i].unlockTime <= block.timestamp) {
				unlockable += locks[i].amount;
			}
		}
		return (unlockable);
	}

    /**
	 * @notice Add a new reward token to be distributed to stakers.
	 */
	function setLockTypeInfo(uint256[] memory _lockPeriod, uint256[] memory _rewardMultipliers) external onlyOwner {
		require(_lockPeriod.length == _rewardMultipliers.length, "invalid lock period");
		delete lockPeriod;
		delete rewardMultipliers;
		for (uint256 i = 0; i < _lockPeriod.length; i += 1) {
			lockPeriod.push(_lockPeriod[i]);
			rewardMultipliers.push(_rewardMultipliers[i]);
		}
	}

    function getEarningShares(address _user) public view returns (uint256 totalEarningShares){
            Balances storage bal = balances[_user];
            totalEarningShares = bal.totalWithMultiplier;
    }
}