pragma solidity ^0.8.19;

// SPDX-License-Identifier: MIT
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import "./Math.sol";
import "./IReservoir.sol";
import "./IStrategy.sol";
import "./IPToken.sol";
import "./IEligibleDataProvider.sol";
import "./IConvertToBoost.sol";

/// @title Planet's Farn
/// @author Planet - planet.finance
contract PlanetFarm is Initializable, OwnableUpgradeable, UUPSUpgradeable, ReentrancyGuardUpgradeable {

    using SafeERC20 for IERC20;
    using Math for uint256;

    uint256 public totalAllocPoint; // Total allocation points. Must be the sum of all allocation points in all pools
    
    uint256 public boostGeneratorPid; // GAMMA-BTCB pool pid 
    address internal boostConverterAddress; // contract to convert gamma rewards to gamma-btcb and deposits to gamma-btcb pool
    uint256 public boostDefaultLockTimeIndex; // lockindex corresponding to default lock time while converting to GAMMA-BTCB during claim
    uint256 public vestingDefaultLockTimeIndex; // lockindex corresponding to default lock time while claiming gamma into the vesting vault

    uint public claimToWalletFeeFactor; // fee to skip vesting period and claim gamma rewards directly to wallet
    uint internal constant claimToWalletFeeMax = 8000; 
    
    uint256 public bountyHuntFeeFactor; // what percent of bounty hunted rewards the platform keeps

    bool public isDrip; // Specifies if rewards from reservor are turned on for the farm
    bool public emergencyWithdrawLockedPools; // when true, all the user's balance can be instantly withdrawn from locked pools even if the unlock time has not been reached

    address internal vestingVaultStrategy; // vault where rewards are vested for a specified time period
    address internal constant GAMMA = 0xb3Cb6d2f8f2FDe203a022201C81a96c167607F15;
    address internal constant BTCB = 0x7130d2A12B9BCbFAe4f2634d864A1Ee1Ce3Ead9c;


    address public rewardsAddress; // where platform fees are sent

    IReservoir public Reservoir; // where gamma is stored and distributed to farm at drip rate
    IEligibleDataProvider private EligibleDataProvider; 

    // Info of each user.
    struct UserInfo {
        uint256 parentRewardDebt; // Reward adjustment that the user should not receive at the next distribution for parent farm rewards
        uint256 gammaRewardDebt; // Reward adjustment that the user should not receive at the next distribution for planet gamma farm rewards
        uint256 shares;
        
        // Square root of user.shares * GAMMA-BTCB for regular pools. This decides the share of boosted rewards that the user receives provided he is elibigle (holds 5% in GAMMA-BTCB)
        // Square root of userEarningShares * GAMMA-BTCB for locked pools. userEarningShares = userShares*lockTimeMultiplier
        // for GAMMA-BTCB (boost pool) it's same as userEarningShares
        uint256 earningFactor; 
        }

    struct PoolInfo {
        uint256 allocPoint; //  Number of allocation points assigned to this pool. It determines the share of GAMMA distributed to this pool in the farm
        uint256 lastRewardBlock; // Block number at which the last GAMMA distribution occurred
        uint256 accParentGAMMAPerShare; // Accumulated GAMMA from parent protocols per share, times 1e12

        uint256 accGAMMAPerFactorPerShare; // Boosted GAMMA rewards to be provided to users per user factor
        uint256 totalEarningFactor; // Total factor of the pool. This is the sum of the user factors of all the users in the pool

        IERC20 want; // Address of the deposit token.
        address strat; // Address of the strategy that will store or compound want tokens
        address pToken; // address of pToken associated with the pool. Locked pools do not have pTokens associated with them

        bool hasStratRewards; // whether the pool has strategy generating extra rewards in addition to the farm rewards
        bool isTimeLocked; // whether the pool is time locked
    }
    

    PoolInfo[] public poolInfo; // Info of each pool.

    mapping(uint256 => mapping(address => UserInfo)) public userInfo; // Info of each user that stakes tokens
    mapping(address => uint256) internal usersClaimableGamma; // rewards that have accrued to the user but are yet to be claimed
    mapping(address => uint256[]) public usersPoolList; // list of all the pools the user has supplied to

    event Deposit(address indexed user, address msgSender, uint256 indexed pid, uint256 amount, uint256 unLockTime);
    event Withdraw(address indexed user, uint256 indexed pid, uint256 sharesRemoved, uint256 amountWithdrawn);
    
    event SetRewardsAddress(address _rewardsAddress);
    event SetBoostConverterAddress(address _boostConverterAddress);
    event Disqualified(address _user); 

    event SetReservoir(address _reservoir);
    event SetEligibleDataProvider(address _EligibleDataProvider); 
    event ChangeIsDrip(bool _dripStatus);
    event SetEmergencyWithdrawLockedPools(bool _emergencyWithdrawLockedPools);
    event SetBoostGeneratorAndVestingVault(uint256 _boostGeneratorPid, uint256 _boostDefaultLockTimeIndex, address _vestingVaultStrategy, uint256 _vestingDefaultLockTimeIndex);
    event SetFees(uint256 _claimToWalletFeeFactor, uint256 _bountyHuntFeeFactor);


    /**
    @notice function to deposit into planet's farm
    @param _mintAddress address of the person on who's behalf deposit is to happen. In case of pools that aren't locked, this address receives pTokens during deposit
    @param _wantAmt desired deposit amount of the pid's want token
    @param _pid pid of the pool to deposit into
    @param _lockTimeIndex index corressponding to the desired lockTime for locked pools
    */
    function deposit(address _mintAddress, uint256 _wantAmt, uint256 _pid, uint256 _lockTimeIndex) external nonReentrant{
        if(_pid == boostGeneratorPid)
            depositBoost(_mintAddress, _wantAmt, _lockTimeIndex, true);  
	    else
            depositOthers(_mintAddress, _wantAmt, _pid, _lockTimeIndex);
    }

    /** 
    @notice function to withdraw tokens from the farm
    @param _pid pid of the pool to withdraw from
    @param _wantAmt desired withdraw amount of the pid's want token
    Note: This is the total withdraw amount. Withdraw fee, if applicable will be charged so the user will recieve this minus the withdraw fee
    */
    function withdraw(uint256 _pid, uint256 _wantAmt) external nonReentrant {
        updatePool(_pid, false);
        PoolInfo storage pool = poolInfo[_pid];
        address caller = _msgSender();
        UserInfo storage user = userInfo[_pid][caller];

        uint256 userShares = user.shares; 
        uint256 userEarningFactor = user.earningFactor;

        (uint256 accParentGAMMAPerShare, uint256 accGAMMAPerFactorPerShare) = (pool.accParentGAMMAPerShare, pool.accGAMMAPerFactorPerShare);

        usersClaimableGamma[caller] += ((userShares * accParentGAMMAPerShare + userEarningFactor * accGAMMAPerFactorPerShare)/1e12 - user.parentRewardDebt - user.gammaRewardDebt);   

        {
            (uint256 wantLockedTotal, uint256 sharesTotal) = IStrategy(pool.strat).getShares();
            require(sharesTotal !=0, "sharesTotal 0");
            require(userShares !=0, "userShares 0");

            uint256 amount = (userShares*wantLockedTotal)/sharesTotal;
            if (_wantAmt > amount) {
                _wantAmt = amount;
            }
        }

        uint256 toBeSentToUser;
        uint256 sharesRemoved;
        uint256 earningSharesRemoved;

        if (_wantAmt != 0) {

            if (_pid == boostGeneratorPid){
                (sharesRemoved, toBeSentToUser, earningSharesRemoved) = IStrategy(pool.strat).withdraw(_wantAmt, _msgSender());  
                
                user.shares = userShares = userShares - sharesRemoved;
                user.earningFactor = userEarningFactor = userEarningFactor - earningSharesRemoved;
                pool.totalEarningFactor = pool.totalEarningFactor - earningSharesRemoved ; 

                user.gammaRewardDebt = (userEarningFactor * accGAMMAPerFactorPerShare)/1e12;   
                usersClaimableGamma[caller] += _handleActionAfter(caller, true);
            }
            else if (pool.isTimeLocked){
                (sharesRemoved, toBeSentToUser, ) = IStrategy(pool.strat).withdraw(_wantAmt, caller);  
                
                user.shares = userShares = userShares - sharesRemoved;
                
                uint256 userEarningShares = IStrategy(pool.strat).getEarningShares(caller);
                uint256 newEarningFactor = getNewEarningFactor(caller, userEarningShares);

                pool.totalEarningFactor = pool.totalEarningFactor - userEarningFactor + newEarningFactor ; 
                user.earningFactor = userEarningFactor = newEarningFactor;
                
                user.parentRewardDebt = (userShares * accParentGAMMAPerShare)/1e12;
                user.gammaRewardDebt = (userEarningFactor * accGAMMAPerFactorPerShare)/1e12;

                usersClaimableGamma[caller] += _handleActionAfter(caller, false);
            }
            else{
                (sharesRemoved, toBeSentToUser) = IStrategy(pool.strat).withdraw(_wantAmt);  
                user.shares = userShares = userShares - sharesRemoved;           
                IPToken(pool.pToken).burn(caller, sharesRemoved); 

                uint256 newEarningFactor = getNewEarningFactor(caller, userShares);

                pool.totalEarningFactor = pool.totalEarningFactor - userEarningFactor + newEarningFactor; 
                user.earningFactor = userEarningFactor =  newEarningFactor;
                
                user.parentRewardDebt =(userShares * accParentGAMMAPerShare)/1e12;
                user.gammaRewardDebt = (userEarningFactor * accGAMMAPerFactorPerShare)/1e12;

                usersClaimableGamma[caller] += _handleActionAfter(caller, false);
            }

            if(userShares == 0)
                _removePoolFromUsersPoolList(_pid, caller);

            pool.want.safeTransfer(caller, toBeSentToUser);
        }else{ 
            user.parentRewardDebt =(userShares * accParentGAMMAPerShare)/1e12;
            user.gammaRewardDebt = (userEarningFactor * accGAMMAPerFactorPerShare)/1e12;
        }
        emit Withdraw(caller, _pid, sharesRemoved, toBeSentToUser);
    }

    
   
    /**
    @notice function to calculate the total pending rewards and then distribute the rewards based on the user's preference
    @param _stakeToBoostPool if true, converts the claimed GAMMA rewards to GAMMA-BTCB and stakes to the boost pool
    @param _claimInstantly if true, claims the rewards instantly to wallet with a penalty charged for instant claim
    @param addBTCBPercentage percentage of his own BTCB that user can choose to pair with GAMMA rewards when he claims to boost pool. Max 50%, that is, 5000.
    @dev if _stakeToBoostPool and _claimInstantly are false, GAMMA rewards are claimed to the vesting vault by default.
    @dev special handling is done to avoid excessive gas fees by not fetching rewards freshly accrued in aggregated pools during each claim
    */
    function claimAllPoolsPendingGamma(bool _stakeToBoostPool, bool _claimInstantly, uint256 addBTCBPercentage) external {
        uint256 pendingRewards;
        uint256 pid;
        uint256 userShares;
        uint256 userEarningFactor;
        uint256 accParentGAMMAPerShare;
        uint256 accGAMMAPerFactorPerShare;
        address caller = _msgSender();
        uint256[] memory userPools = usersPoolList[caller];
        uint256 length = userPools.length;
       


        for(uint256 i = 0; i < length;) {
            pid = userPools[i];
            PoolInfo storage pool = poolInfo[pid]; 
            UserInfo storage user = userInfo[pid][caller];

            /* 
            Rewards freshly accrued in aggregated pools are not fetched in claimGamma, to avoid excessive Gas Fees. This is not a big concern 
            as rewards are updated periodically, so users will only miss rewards corresponding to a few hours.These rewards will be given to 
            the user the next time they claim their rewards. 

            When a user exits his position a pool and then claims rewards, no rewards will be missed as exiting his entire position will fetch 
            all freshly accrued rewards.
            **/ 
            updatePool(pid, false);

            userShares = user.shares;
            userEarningFactor = user.earningFactor;
            accParentGAMMAPerShare = pool.accParentGAMMAPerShare;
            accGAMMAPerFactorPerShare = pool.accGAMMAPerFactorPerShare;
        
            pendingRewards += ((userShares * accParentGAMMAPerShare + userEarningFactor * accGAMMAPerFactorPerShare)/1e12 - user.parentRewardDebt - user.gammaRewardDebt);
            user.parentRewardDebt = (userShares * accParentGAMMAPerShare)/1e12;
            user.gammaRewardDebt = (userEarningFactor * accGAMMAPerFactorPerShare)/1e12;
            
            unchecked {
	            i++;
	        }
        }

        pendingRewards += usersClaimableGamma[caller];
        usersClaimableGamma[caller] = 0;

        distributeRewards(pendingRewards, _stakeToBoostPool, _claimInstantly, addBTCBPercentage, caller);
        
    }

       /**
    @notice function to withdraw vesting tokens
    @param _wantAmt desired withdraw amount of vesting gamma
    Note: This is the total withdraw amount. Penalty fee, if applicable for early withdrawl 
    will be charged on this so the user will recieve this minus the penalty on withdrawl
    */
    function withdrawVesting(uint256 _wantAmt) external nonReentrant {
        IStrategy(vestingVaultStrategy).withdrawVesting(_wantAmt, _msgSender());  
    } 

    /** 
    @notice function to withdraw all your tokens from the farm during an EMERGENCY ONLY
    @param _user address of the user that you wish to bounty hunt
    @return issueBounty whether or not the bounty hunt was successful. Returns false if the user is still eligible for rewards or if the user has already been hunted
    @return huntedGamma amount of gamma hunted and sent to the caller after the bounty hunt
    */
    function claimBounty(address _user) external returns (bool issueBounty, uint256 huntedGamma) {
        (issueBounty, huntedGamma)  = checkAndProcessEligibility(_user);
	}


    /** 
    @notice Function that updates shares and checks and updates the eligibility status of both the sender and the recepient. Called by the pToken when a pToken transfer takes place
    @param _pid pid corresponding to the calling pToken
    @param _sender address of the sender of the pToken transfer
    @param _recepient address of the recepient of the pToken transfer
    @param amount amount being transfered from sender to recepient
    */
    function handleActionAfter(uint256 _pid, address _sender, address _recepient, uint256 amount) external nonReentrant {	
        PoolInfo storage pool = poolInfo[_pid];
			if (pool.pToken == _msgSender()) {
    
                updatePool(_pid, false);       
                (uint256 accParentGAMMAPerShare, uint256 accGAMMAPerFactorPerShare) = (pool.accParentGAMMAPerShare, pool.accGAMMAPerFactorPerShare);

                {
                UserInfo storage sender = userInfo[_pid][_sender];
                uint256 senderShares = sender.shares; 
                uint256 senderEarningFactor = sender.earningFactor;
                usersClaimableGamma[_sender] += ((senderShares * accParentGAMMAPerShare + senderEarningFactor * accGAMMAPerFactorPerShare)/1e12 - sender.parentRewardDebt - sender.gammaRewardDebt);   

                sender.shares = senderShares -= amount;

                uint256 newEarningFactorSender = getNewEarningFactor(_sender, senderShares);

                pool.totalEarningFactor = pool.totalEarningFactor - senderEarningFactor + newEarningFactorSender ; 
                sender.earningFactor = senderEarningFactor = newEarningFactorSender; 

                sender.parentRewardDebt = (senderShares * accParentGAMMAPerShare)/1e12;
                sender.gammaRewardDebt = (senderEarningFactor * accGAMMAPerFactorPerShare)/1e12;
				usersClaimableGamma[_sender] += _handleActionAfter (_sender, false);
                }
                
                {  
                UserInfo storage recepient = userInfo[_pid][_recepient];
                uint256 recepientShares = recepient.shares; 
                uint256 recepientEarningFactor = recepient.earningFactor;
                usersClaimableGamma[_recepient] += ((recepientShares * accParentGAMMAPerShare + recepientEarningFactor * accGAMMAPerFactorPerShare)/1e12 - recepient.parentRewardDebt - recepient.gammaRewardDebt);  

                recepient.shares = recepientShares += amount;

                uint256 newEarningFactorRecepient = getNewEarningFactor(_recepient, recepientShares);


                pool.totalEarningFactor = pool.totalEarningFactor - recepientEarningFactor + newEarningFactorRecepient ; 
                recepient.earningFactor = recepientEarningFactor = newEarningFactorRecepient; 

                recepient.parentRewardDebt = (recepientShares * accParentGAMMAPerShare)/1e12;
                recepient.gammaRewardDebt = (recepientEarningFactor * accGAMMAPerFactorPerShare)/1e12;

                usersClaimableGamma[_recepient] += _handleActionAfter (_recepient, false);
                }
			}
	}

   
    /************************** VIEW FUNCTIONS **************************/

 


    /**
    @notice Calculates the total pending GAMMA rewards for a user across all pools. Returns the amount the user will receive if he calls claimAllPoolsPendingGamma.
    Note: Freshly accrued parent farm rewards are not included to avoid large gas fees from calling 
    the parent farm. Instead, the protocol runs a cron to fetch these rewards periodically
    @return _user total amount of pending GAMMA rewards for the user across all pools, including any claimable GAMMA
    */
    function pendingGAMMAAllPools(address _user) external view returns (uint256) {
        uint256 poolLen = usersPoolList[_user].length;
        uint256 totalPendingGamma;
        uint256 pendingGammaParentFarm;
        uint256 pendingGammaPlanet;

        for(uint256 i = 0; i < poolLen; ++i){
            (pendingGammaParentFarm, pendingGammaPlanet) =  _pendingGAMMA(usersPoolList[_user][i], _user);
            totalPendingGamma = totalPendingGamma + pendingGammaParentFarm + pendingGammaPlanet;
        }
        return totalPendingGamma + usersClaimableGamma[_user];
    }


    /**
    @notice function to check whether a user can be bounty hunted or not. To be checked before calling claimBounty
    @param _user user who's bounty you wish to hunt
    @return issueBounty whether or not a bounty hunt will be successful. Returns false if the user is still eligible for rewards or if the user has already been hunted
    @return huntedGamma amount of gamma hunted that the caller will receive by bounty hunting
    */
    function checkEligibility (address _user) external view returns (bool issueBounty, uint256 huntedGamma){
        address EligibilityProvider = address(EligibleDataProvider); 

		uint256 lastDqTime = IEligibleDataProvider(EligibilityProvider).getDqTime(_user);
		bool alreadyDqd = lastDqTime != 0;

        bool isEligible = IEligibleDataProvider(EligibilityProvider).isEligibleForRewards(_user);

		if (!isEligible && !alreadyDqd) {
			issueBounty = true;

            uint256 len = usersPoolList[_user].length;
            uint256 i;
            uint256 pid;
            uint256 huntedGammaPid;

            for( i = 0; i < len; ++i){
                pid = usersPoolList[_user][i];
                if (pid == boostGeneratorPid){
                    continue; 
                }
                ( , huntedGammaPid) = _pendingGAMMA(pid, _user);
                huntedGamma += huntedGammaPid;
            }
            uint256 bountyHuntFee = huntedGamma * bountyHuntFeeFactor/10000;
            huntedGamma = huntedGamma - bountyHuntFee;
        }
    }


    /**
    @notice This function provides a list of pool IDs and corresponding shares for a given user. 
    It is used by the eligibility data provider to calculate whether or not the user is eligible
    @param _user The address of the user whose pool data is being queried
    @return _usersPoolList array of pool IDs (`uint256[]`) that the user participates in
    @return _userSharesList array of corresponding shares (`uint256[]`) the user holds in each of those pools
    */
    function getUserAccountData(address _user) external view returns (uint256[] memory, uint256[] memory){
        uint256[] memory usersList = usersPoolList[_user];
        uint256 usersPoolListLength = usersList.length;
        uint256 i;
        uint256 pid;
        uint256[] memory _usersPoolList = new uint256[](usersPoolListLength);
        uint256[] memory _userSharesList = new uint256[](usersPoolListLength);

        for (i=0; i< usersPoolListLength;){
            pid = usersList[i];
            _usersPoolList[i] = pid;
            _userSharesList[i] = userInfo[pid][_user].shares;
            unchecked {
	            i++;
	        }
        }
        return (_usersPoolList, _userSharesList);
    }

   /**
    @notice This function provides the total count of pools that have been added
    @return poolLength total number of pools added to the farm
    */
    function poolLength() external view returns (uint256) {
        return poolInfo.length;
    }

    /************************** PUBLIC FUNCTIONS **************************/

    /**
    @notice Updates reward variables for all pools. It's important to be cautious with gas consumption, as this operation updates all pools
    @param getParentRewards Indicates whether to also update parent farm rewards for aggregated pools alongside the gamma farm rewards.
    */
    function massUpdatePools(bool getParentRewards) public{
        uint256 poolLen  = poolInfo.length;
        for (uint256 pid = 0; pid < poolLen; ) {
            updatePool(pid, getParentRewards);
            unchecked {
	            pid++;
	        }
        }
    }


    /**
    @notice Updates the reward variables for a specific pool to ensure they are current
    This function is critical for synchronizing a pool's reward variables with the current blockchain state, especially after new blocks have been mined
    It adjusts rewards based on pool allocation points, total shares, and the pool's strategy for generating additional rewards
    @param _pid The pool ID that is to be updated
    @param getParentRewards If set to true, the function will also claim and account for additional rewards generated by the pool's strategy
    @dev If 'getParentRewards' is true and the pool has strategy rewards, it claims these rewards and adjusts the pool's accumulated GAMMA per share accordingly
    */
    function updatePool(uint256 _pid, bool getParentRewards) public {
        PoolInfo storage pool = poolInfo[_pid];

        uint256 lastRewardBlock = pool.lastRewardBlock;
        if (block.number <= lastRewardBlock) {
            return;
        }
        pool.lastRewardBlock = block.number;

        address strat = pool.strat;
        uint256 sharesTotal = IStrategy(strat).sharesTotal();
        uint256 multiplier = getMultiplier(lastRewardBlock, block.number);
        uint256 allocPoint = pool.allocPoint;

        if (sharesTotal == 0 ) {
            return;
        }

        // For any pools that are generating extra rewards in the strategy, in addition to the farm rewards, (for example, AQUA infinity vault), 
        // we claim rewards from strategy and bring back to farm so that those rewards are included in reward distribution. These rewards are distributed
        // to all users, regardless of whether they hold the minimum GAMMA-BTCB required
        
        if (pool.hasStratRewards && getParentRewards) {           
            uint256 parentGAMMAReward = IStrategy(strat).earnGammaProfits();
            pool.accParentGAMMAPerShare += ((parentGAMMAReward * 1e12)/(sharesTotal));
        }

        if (allocPoint == 0 || multiplier == 0) {
            return;
        }
        uint256 GAMMAReward = (multiplier * Reservoir.farmDripRate() * allocPoint)/totalAllocPoint;

        if(pool.totalEarningFactor != 0){
            pool.accGAMMAPerFactorPerShare += ((GAMMAReward * 1e12)/(pool.totalEarningFactor));
        }
    }


    /**
    @notice view function to calculate the pending GAMMA rewards for a user in a specific pool
    @param _pid The pool ID for which the pending rewards are calculated
    @param _user The address of the user for whom the pending rewards are calculated
    @return pendingGammaParentFarm The amount of pending GAMMA rewards from the parent farm
    @return pendingGammaPlanet The amount of pending GAMMA rewards from the planet portion of the pool
    @dev The rewards are split into two parts: those accruing from the parent farm (in aggregated strategies) and those from the gamma farm earnings, allowing for detailed insight into reward sources
    */
    function _pendingGAMMA(uint256 _pid, address _user) public view returns (uint256 pendingGammaParentFarm, uint256 pendingGammaPlanet) {
        PoolInfo memory pool = poolInfo[_pid];
        uint256 userShares = userInfo[_pid][_user].shares;      

        if (block.number > pool.lastRewardBlock && pool.totalEarningFactor != 0) {
            uint256 multiplier = getMultiplier(pool.lastRewardBlock, block.number);
            uint256 GAMMAReward = (multiplier * Reservoir.farmDripRate() * pool.allocPoint)/totalAllocPoint;

            pool.accGAMMAPerFactorPerShare = pool.accGAMMAPerFactorPerShare + (GAMMAReward*1e12)/(pool.totalEarningFactor);           
        }
        
        pendingGammaParentFarm = (userShares * pool.accParentGAMMAPerShare)/1e12 - userInfo[_pid][_user].parentRewardDebt;
        pendingGammaPlanet = (userInfo[_pid][_user].earningFactor * pool.accGAMMAPerFactorPerShare)/1e12 - userInfo[_pid][_user].gammaRewardDebt;
    }


    /************************** INTERNAL FUNCTIONS **************************/

    /**
    @notice internal function to deposit into tokens other than gamma-btcb (boost generator) on planet's farm
    @param _mintAddress address of the person on who's behalf deposit is to happen. In case of pools that aren't locked, this address receives pTokens during deposit
    @param _wantAmt desired deposit amount of the pid's want token
    @param _pid pid of the pool to deposit into
    @param _lockTimeIndex index corressponding to the desired lockTime for locked pools
    */
    function depositOthers(address _mintAddress, uint256 _wantAmt, uint256 _pid, uint256 _lockTimeIndex) internal{
        updatePool(_pid, false);
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][_mintAddress];

        uint256 userShares = user.shares; 
        uint256 userEarningFactor = user.earningFactor;

        (uint256 accParentGAMMAPerShare, uint256 accGAMMAPerFactorPerShare) = (pool.accParentGAMMAPerShare, pool.accGAMMAPerFactorPerShare);

        usersClaimableGamma[_mintAddress] += ((userShares * accParentGAMMAPerShare + userEarningFactor * accGAMMAPerFactorPerShare)/1e12 - user.parentRewardDebt - user.gammaRewardDebt);   
        if (_wantAmt != 0) {
            if(userShares == 0){
                usersPoolList[_mintAddress].push(_pid);
            }
            pool.want.safeTransferFrom(_msgSender(), pool.strat, _wantAmt);  
            uint256 sharesAdded;

            {
            uint256 newEarningFactor;
            uint256 userTotalEarningShares;


            if(pool.isTimeLocked){
                (sharesAdded, userTotalEarningShares) = IStrategy(pool.strat).deposit(_wantAmt, _mintAddress, _lockTimeIndex);
                newEarningFactor = getNewEarningFactor(_mintAddress, userTotalEarningShares);
            }
            else {
                sharesAdded = IStrategy(pool.strat).deposit(_wantAmt);
                IPToken(pool.pToken).mint(_mintAddress, sharesAdded);   
                newEarningFactor = getNewEarningFactor(_mintAddress, userShares + sharesAdded);
            }
            
            user.shares = userShares = userShares + sharesAdded;
            pool.totalEarningFactor = pool.totalEarningFactor - userEarningFactor + newEarningFactor ; 
            user.earningFactor = userEarningFactor = newEarningFactor; 
            
            user.parentRewardDebt =(userShares * accParentGAMMAPerShare)/1e12;
            user.gammaRewardDebt = (userEarningFactor * accGAMMAPerFactorPerShare)/1e12;
            usersClaimableGamma[_mintAddress] += _handleActionAfter(_mintAddress, false);
            }

            emit Deposit(_mintAddress, _msgSender(), _pid, sharesAdded, 0);

        } else {
            user.parentRewardDebt =(userShares * accParentGAMMAPerShare)/1e12;
            user.gammaRewardDebt = (userEarningFactor * accGAMMAPerFactorPerShare)/1e12;
        }
    }


    /**
    @notice internal function to deposit ONLY GAMMA-BTCB (boost generator) on planet's farm
    @param _mintAddress address of the person on who's behalf deposit is to happen. In case of pools that aren't locked, this address receives pTokens during deposit
    @param _wantAmt desired deposit amount of gamma-btcb
    @param _lockTimeIndex index corressponding to the desired lockTime for locked pools
    @param takeWantFromMsgsender whether to take tokens from the user. This is true when called by deposit, false when called by claimAllPoolsPendingGamma
    */
    function depositBoost(address _mintAddress, uint256 _wantAmt, uint256 _lockTimeIndex, bool takeWantFromMsgsender) internal{
        updatePool(boostGeneratorPid, false);
        PoolInfo storage pool = poolInfo[boostGeneratorPid];
        UserInfo storage user = userInfo[boostGeneratorPid][_mintAddress];
        IERC20 want = pool.want;
        address strat = pool.strat;

        uint256 userShares = user.shares;
        uint256 userFactor = user.earningFactor;
        usersClaimableGamma[_mintAddress] += ((userFactor * pool.accGAMMAPerFactorPerShare)/1e12 - user.gammaRewardDebt);

        if (_wantAmt != 0) {
            if(userShares == 0){
                usersPoolList[_mintAddress].push(boostGeneratorPid);
            }     

            if(takeWantFromMsgsender)
                want.safeTransferFrom(_msgSender(), strat, _wantAmt);
            else
                want.safeTransfer(strat, _wantAmt);
            uint256 sharesAdded;
            {
                uint256 userTotalEarningShares;    
                (sharesAdded, userTotalEarningShares) = IStrategy(strat).deposit(_wantAmt, _mintAddress, _lockTimeIndex);
                user.shares = userShares = userShares + sharesAdded;
                
                pool.totalEarningFactor =  pool.totalEarningFactor + userTotalEarningShares - userFactor;
                user.earningFactor = userFactor = userTotalEarningShares;
            }
            
            user.gammaRewardDebt = (userFactor * pool.accGAMMAPerFactorPerShare)/1e12;   

            // update the eligibiliy for rewards for other pools based on the current deposit in boost pool, and accrue the rewards for all pools for the user. 
            usersClaimableGamma[_mintAddress] += _handleActionAfter(_mintAddress, true);
            emit Deposit(_mintAddress, _msgSender(), boostGeneratorPid, sharesAdded, block.timestamp + IStrategy(strat).getLockPeriod(_lockTimeIndex));
        }
        else{
            user.gammaRewardDebt = (userFactor * pool.accGAMMAPerFactorPerShare)/1e12;   
            // we do not emit deposit event for zero deposit.
        }
    }
    

    /** 
    @notice function to check and update the eligibility status of the user passed to the function
    @dev Will be called from deposit, withdraw, transfer to update user eligibility and accrue rewards. 
    @param _user address of the user who's eligibility status to check and update
    @param _calledByBoostTransaction whether or not this is called within function depositBoost
    @return pendingRewards pending rewards yet to be given to the user. In case of a bounty hunt, these rewards are received by the bounty hunter after bounty hunt fee is charged.
    */
    function _handleActionAfter(address _user, bool _calledByBoostTransaction) internal returns (uint256 pendingRewards) {
        address EligibilityProvider = address(EligibleDataProvider);
        bool wasEligible = IEligibleDataProvider(EligibilityProvider).lastEligibleStatus(_user);
        IEligibleDataProvider(EligibilityProvider).refresh(_user);
        bool isEligible = IEligibleDataProvider(EligibilityProvider).lastEligibleStatus(_user);

        pendingRewards = _handleActionAfter(_user, _calledByBoostTransaction, wasEligible, isEligible);
    }


    /** 
    @notice function to update the eligibility status of the user passed to the function
    @param _user address of the user who's eligibility status to update
    @param _calledByBoostTransaction whether or not this is called within function depositBoost
    @param _wasEligible whether the user's previous eligibility status was eligible
    @param _isEligible whether the user's current eligibility status is eligible
    @return pendingRewards pending rewards yet to be given to the user. In case of a bounty hunt, these rewards are received by the bounty hunter after bounty hunt fee is charged.
    */
    function _handleActionAfter(address _user, bool _calledByBoostTransaction, bool _wasEligible, bool _isEligible) internal returns (uint256 pendingRewards) {
        
        if (_isEligible){
            if (!_wasEligible || _calledByBoostTransaction) {
                pendingRewards = _handleActionAfterEligible (_user);
            }
        }
        else{
            pendingRewards = _handleActionAfterZero(_user); 
        }
    }  


    /** 
    @notice function to update the eligibility status of the user passed to the function as eligible
    @param _user address of the user who's eligibility status to update
    @return pendingRewards pending rewards yet to be given to the user. In case of a bounty hunt, these rewards are received by the bounty hunter after bounty hunt fee is charged.
    */
    function _handleActionAfterEligible(address _user) internal returns (uint256 pendingRewards){
        uint256 pid;
        //uint256 len = usersPoolList[_user].length;
        //uint256[] memory userPools = new uint256[](len);
        //userPools = usersPoolList[_user];
        uint256 boostPid = boostGeneratorPid;

        // take a call whether lock time also impacts pool rewards
        uint256 boostGeneratorBalance = userInfo[boostPid][_user].shares;
        
        for(uint256 i = 0; i < usersPoolList[_user].length; ++i){
            //pid = userPools[i];
            pid = usersPoolList[_user][i];

            // no need to update earning factor for boost pool based on eligibility. boost pool will always be receiving rewards. 
            // We are updating eligibility and earning factor for other pools based on boost pool shares. 
            if (pid == boostPid){
                continue;
            }
            pendingRewards += _handleActionAfterFactors(_user, pid, boostGeneratorBalance);
        }    
    }


    /** 
    @notice function to update the factors of the user passed to the function
    @param _user address of the user 
    @param _pid pid of the pool in which to update the user's factors
    @param _boostGeneratorBalance gamma-btcb (boost generator) balance of the user
    @return pendingRewards pending rewards yet to be given to the user. In case of a bounty hunt, these rewards are received by the bounty hunter after bounty hunt fee is charged.
    */
    function _handleActionAfterFactors(address _user, uint256 _pid, uint256 _boostGeneratorBalance) internal returns (uint256 pendingRewards){

        PoolInfo storage pool = poolInfo[_pid]; 
        UserInfo storage user = userInfo[_pid][_user];

        uint256 userShares = user.shares;
        uint256 userEarningFactor = user.earningFactor;


        updatePool(_pid, false);

        uint256 accGAMMAPerFactorPerShare = pool.accGAMMAPerFactorPerShare;
                
        
        //usersClaimableGamma[_user] += ((userShares * pool.accParentGAMMAPerShare)/1e12 - user.parentRewardDebt);   

        // not directly adding this to usersCliamableGamma as this function can also get called from bounty hunting contract which means the bounty hunter will get these rewards. 
        // when deposit, withdraw, and transfer functions call this we return pendingRewards which will get assigned to usersClaimableGAMMA in those functions 
        pendingRewards = ((userEarningFactor * accGAMMAPerFactorPerShare)/1e12 - user.gammaRewardDebt);

        uint256 newEarningFactor;

        if (pool.isTimeLocked){
            uint256 userEarningShares = IStrategy(pool.strat).getEarningShares(_user);
            newEarningFactor = Math.sqrt(userEarningShares * _boostGeneratorBalance);
        }
        else{
            newEarningFactor = Math.sqrt(userShares * _boostGeneratorBalance);
        }
        
        pool.totalEarningFactor = pool.totalEarningFactor - userEarningFactor + newEarningFactor ; 
        user.earningFactor = userEarningFactor = newEarningFactor;

        //user.parentRewardDebt =(userShares * accParentGAMMAPerShare)/1e12;
        user.gammaRewardDebt = (userEarningFactor * accGAMMAPerFactorPerShare)/1e12;
    }


    /** 
    @notice function to update the factors of the user passed to zero when the user is not eligible fot rewards
    @param _user address of the user 
    @return pendingRewards pending rewards yet to be given to the user. In case of a bounty hunt, these rewards are received by the bounty hunter after bounty hunt fee is charged.
    */
    function _handleActionAfterZero(address _user) internal returns (uint256 pendingRewards){
        uint256 pid;
        uint256[] memory userPools = usersPoolList[_user];
        uint256 len = userPools.length;
        uint256 i;

        for(i = 0; i < len; i++){
            pid = userPools[i];
            PoolInfo storage pool = poolInfo[pid]; 
            if (pid == boostGeneratorPid){
                continue; 
            }

            UserInfo storage user = userInfo[pid][_user];

            //uint256 userShares = user.shares;
            uint256 userEarningFactor = user.earningFactor;
            updatePool(pid, false);

            //(uint256 accParentGAMMAPerShare, uint256 accGAMMAPerFactorPerShare) = (pool.accParentGAMMAPerShare, pool.accGAMMAPerFactorPerShare);
                
            //usersClaimableGamma[_user] += ((userShares * accParentGAMMAPerShare)/1e12 - user.parentRewardDebt);   
            pendingRewards += ((userEarningFactor * pool.accGAMMAPerFactorPerShare)/1e12 - user.gammaRewardDebt);

            pool.totalEarningFactor -= userEarningFactor; 
            user.earningFactor = 0;

            //user.parentRewardDebt = (userShares * accParentGAMMAPerShare)/1e12;
            user.gammaRewardDebt = 0;
        }
    }


    /**
    @notice internal function that handles the distribution of GAMMA rewards to users, taking into account their specified options for reward handling
    It can stake rewards in a boost pool, claim them instantly, or convert a portion to BTCB
    @param _wantAmt The amount of GAMMA rewards to distribute
    @param _stakeToBoostPool if true, converts the claimed GAMMA rewards to GAMMA-BTCB and stakes to the boost pool
    @param _claimInstantly if true, claims the rewards instantly to wallet with a penalty charged for instant claim
    @param addBTCBPercentage percentage of his own BTCB that user can choose to pair with GAMMA rewards when he claims to boost pool. Max 50%, that is, 5000.
    @dev if _stakeToBoostPool and _claimInstantly are false, GAMMA rewards are claimed to the vesting vault by default.
    */
    function distributeRewards(uint256 _wantAmt, bool _stakeToBoostPool, bool _claimInstantly, uint256 addBTCBPercentage, address _mintAddress) internal{
        
        address _gamma = GAMMA;
        if(_wantAmt > IERC20(_gamma).balanceOf(address(this)))
            Reservoir.drip();
        
        if(_wantAmt != 0) {
            if(_stakeToBoostPool){
                address boostConverter = boostConverterAddress;
                IERC20(_gamma).safeTransfer(boostConverter, _wantAmt);
                uint256 BTCBAmount = IConvertToBoost(boostConverter).getBTCBAmount(_wantAmt, addBTCBPercentage);
                IERC20(BTCB).safeTransferFrom(_msgSender(), boostConverter, BTCBAmount);
                _wantAmt = IConvertToBoost(boostConverter).convertToBoost(_wantAmt, BTCBAmount, _mintAddress, addBTCBPercentage); 
                depositBoost(_mintAddress,_wantAmt, boostDefaultLockTimeIndex, false);                  
            } else if (_claimInstantly){
                uint256 claimToWalletFee = (_wantAmt * claimToWalletFeeFactor)/ 10000;
                IERC20(_gamma).safeTransfer(rewardsAddress,claimToWalletFee);
                _wantAmt -= claimToWalletFee;
                IERC20(_gamma).safeTransfer(_mintAddress, _wantAmt);
            } else {
                address vestingVault = vestingVaultStrategy;
                IERC20(_gamma).safeTransfer(vestingVault, _wantAmt);
                IStrategy(vestingVault).depositVesting(_wantAmt, _mintAddress, vestingDefaultLockTimeIndex);
            }  
        }
    }


    /**
    @notice Removes pool from users pool list 
    @param _pid poolInfo pid that needs to be removed
    @param _user user for which the pid is to be removed from the list    
    */
    function _removePoolFromUsersPoolList(uint256 _pid, address _user) internal {
        uint256[] memory userPools = usersPoolList[_user];
        uint256 usersPoolListLength = userPools.length;
        for(uint256 i = 0; i < usersPoolListLength;){
            if(userPools[i] == _pid){
                usersPoolList[_user][i] = usersPoolList[_user][usersPoolListLength - 1];
                usersPoolList[_user].pop();
                break;
            }
            unchecked {
	            i++;
	        }
        }
    }


    /**
    @notice internal function to check whether a user can be bounty hunted and bounty hunt him
    @param _user user who's bounty you wish to hunt
    @return issueBounty whether or not a bounty hunt was successful. Returns false if the user is still eligible for rewards or if the user has already been hunted
    @return huntedGamma amount of gamma hunted that the caller has received by bounty hunting
    */
    function checkAndProcessEligibility(address _user) internal returns (bool issueBounty, uint256 huntedGamma) {	
		uint256 lastDqTime = EligibleDataProvider.getDqTime(_user);
		bool alreadyDqd = lastDqTime != 0;
        address _gamma = GAMMA;

        bool wasEligible = EligibleDataProvider.lastEligibleStatus(_user);
        EligibleDataProvider.refresh(_user);
        bool isEligible = EligibleDataProvider.lastEligibleStatus(_user);

		if (!isEligible && !alreadyDqd) {
			issueBounty = true;
            huntedGamma = _handleActionAfter(_user, false, wasEligible,isEligible);
            if(huntedGamma > IERC20(_gamma).balanceOf(address(this)))
                Reservoir.drip();

            uint256 bountyHuntFee = huntedGamma * bountyHuntFeeFactor/10000;
            huntedGamma = huntedGamma - bountyHuntFee;
            IERC20(_gamma).safeTransfer(rewardsAddress, bountyHuntFee);
            IERC20(_gamma).safeTransfer(_msgSender(), huntedGamma);
        }
	}


    /**
    @notice Calculates the reward multiplier for a given block range
    @param _from The starting block number for the calculation
    @param _to The ending block number for the calculation
    @return blocks The number of blocks between '_from' and '_to' if 'isDrip' is true; otherwise, returns zero
    */
    function getMultiplier(uint256 _from, uint256 _to) internal view returns (uint256 blocks){
        if(isDrip){
            blocks = _to - _from;
        }
    }


    /**
    @notice Computes a new earning factor for a user based on their shares in the boost generator and total strategy shares
    @param _user The address of the user for whom the earning factor is being calculated
    @param totalStratShares The total number of shares in the strategy
    @return newEarningFactor The calculated new earning factor for the user
    */
    function getNewEarningFactor(address _user, uint256 totalStratShares) internal view returns(uint256 newEarningFactor){
            uint256 _boostGeneratorBalance = userInfo[boostGeneratorPid][_user].shares;
            newEarningFactor = Math.sqrt(totalStratShares * _boostGeneratorBalance);
    }

 /************************** ONLY OWNER FUNCTIONS **************************/

    /**
    @notice function to add a new pool to the farm. Can only be called by the owner
    @param _allocPoint alloc points for the new pool
    @param _want want address for the new pool
    @param _strat strategy address for the new pool
    @param _withUpdate whether or not to call massUpdatePools, should always be true
    @param _pToken address of the return token provided to the user against his deposit. Locked pools do not have pTokens
    @param _hasStratRewards whether the pool has strategy generating extra rewards in addition to the farm rewards
    @param _isTimeLocked whether the pool is time locked
    */
    function add(uint256 _allocPoint, IERC20 _want, address _strat, bool _withUpdate, address _pToken, bool _hasStratRewards, bool _isTimeLocked) external onlyOwner{
        
        // _withUdpate should always be true. Made it optional as if we have too many pools, this function might fail
        // In that case we call massUpdatePools separately first and then immediately call this function with _withUpdate 
        // set to false to make sure the current rewards are accrued to existing pools before adding a new pool
        if (_withUpdate) {
            massUpdatePools(false);
        }
        totalAllocPoint = totalAllocPoint + _allocPoint;
        
        PoolInfo memory poolData = PoolInfo({
            want: _want,
            allocPoint: _allocPoint,
            lastRewardBlock: block.number,
            pToken: _pToken,

            accParentGAMMAPerShare: 0,

            accGAMMAPerFactorPerShare: 0,
            totalEarningFactor: 0,

            strat: _strat,
            hasStratRewards: _hasStratRewards,

            isTimeLocked: _isTimeLocked
        });

        poolInfo.push(poolData);
    }


    /**
    @notice updates the given pool's GAMMA allocation point and gammaRewardBoostPercentage. Can only be called by the owner
    @param _pid pid of the pool who's data is to be updated
    @param _allocPoint new alloc points for the pool
    @param _withUpdate whether or not to call massUpdatePools. This should always be true
    @param _hasStratRewards whether the pool has strategy generating extra rewards in addition to the farm rewards
    */
    function set(uint256 _pid, uint256 _allocPoint, bool _withUpdate, bool _hasStratRewards) external onlyOwner{
 
        // _withUdpate should always be true. Made it optional as if we have too many pools, this function might fail.
        // In that case we call massUpdatePools separately first and then immediately call this function with _withUpdate 
        // set to false to make sure the current rewards are accrued to existing pools before adding a new pool
        if (_withUpdate) {
            massUpdatePools(false);
        }
        totalAllocPoint = (totalAllocPoint - poolInfo[_pid].allocPoint) + _allocPoint;
        poolInfo[_pid].allocPoint = _allocPoint;
        // This should be true for pools that have startegies generating rewards 
        poolInfo[_pid].hasStratRewards = _hasStratRewards;
    }


    /**
    @notice Updates the status of 'isDrip' and optionally triggers an update of all pools
    This function can only be called by the contract owner
    To be called with _withUpdate true, to avoid mismatch in funds allocated + funds available with the farm
    @param _dripStatus The new status to be set for 'isDrip'
    @param _withUpdate If true, triggers a mass update of all pools
    */
    function changeIsDrip(bool _dripStatus, bool _withUpdate) external onlyOwner {
        require(_dripStatus != isDrip,"same");
        if (_withUpdate)
            massUpdatePools(false);

        isDrip = _dripStatus;     

        emit ChangeIsDrip(_dripStatus);
    }


    /**
    @notice Sets a new reservoir contract
    @param _reservoir The address of the new reservoir contract
    */
    function setReservoir(IReservoir _reservoir) external onlyOwner {
        Reservoir = _reservoir;
        emit SetReservoir(address(_reservoir));
    }


    /**
    @notice Assigns a new eligible data provider
    @param _EligibleDataProvider The address of the new eligible data provider
    */
    function setEligibleDataProvider( IEligibleDataProvider _EligibleDataProvider) external onlyOwner {
        EligibleDataProvider = _EligibleDataProvider;
        emit SetEligibleDataProvider(address(_EligibleDataProvider)); 
    }


    /**
    @notice Updates the rewards address
    @param _rewardsAddress The new rewards address
    */
    function setRewardsAddress(address _rewardsAddress) external onlyOwner {
        rewardsAddress = _rewardsAddress;
        emit SetRewardsAddress(_rewardsAddress);
    }


    /**
    @notice Sets a new boost converter address
    @param _boostConverterAddress The address of the new boost converter
    */
    function setBoostConverterAddress(address _boostConverterAddress) external onlyOwner {
        boostConverterAddress = _boostConverterAddress;
        emit SetBoostConverterAddress(_boostConverterAddress);
    }


    /**
    @notice Toggles the lock on emergency withdrawals from pools. 
    @param _emergencyWithdrawLockedPools bool, when true (in case of emergencies), users can withdraw tokens from locked pools before the unlock time.
    */
    function setEmergencyWithdrawLockedPools(bool _emergencyWithdrawLockedPools) external onlyOwner {
        emergencyWithdrawLockedPools = _emergencyWithdrawLockedPools;
        emit SetEmergencyWithdrawLockedPools(_emergencyWithdrawLockedPools);
    }


    /**
    @notice Sets the fee factors for claim-to-wallet operations and bounty hunts
    @param _claimToWalletFeeFactor The new fee factor for claim-to-wallet operations
    @param _bountyHuntFeeFactor The new fee factor for bounty hunts
    */
    function setFees(uint256 _claimToWalletFeeFactor, uint256 _bountyHuntFeeFactor) external onlyOwner {
        require (_claimToWalletFeeFactor <= claimToWalletFeeMax, "high");
        require (_bountyHuntFeeFactor <= 10000, "high");

        claimToWalletFeeFactor = _claimToWalletFeeFactor;
        bountyHuntFeeFactor = _bountyHuntFeeFactor;
        emit SetFees(_claimToWalletFeeFactor, _bountyHuntFeeFactor); 
    }


    /**
    @notice Updates the boost generator and vesting vault settings
    @param _boostGeneratorPid The new Pool ID for the boost generator
    @param _boostDefaultLockTimeIndex The default lock time index for the boost
    @param _vestingVaultStrategy The address of the new vesting vault strategy
    @param _vestingDefaultLockTimeIndex The default lock time index for vesting
    */
    function updateBoostGeneratorAndVestingVault(uint256 _boostGeneratorPid, uint256 _boostDefaultLockTimeIndex, address _vestingVaultStrategy, uint256 _vestingDefaultLockTimeIndex) external onlyOwner {
        boostGeneratorPid = _boostGeneratorPid;
        boostDefaultLockTimeIndex = _boostDefaultLockTimeIndex;
        vestingVaultStrategy = _vestingVaultStrategy;
        vestingDefaultLockTimeIndex = _vestingDefaultLockTimeIndex;
        emit SetBoostGeneratorAndVestingVault(_boostGeneratorPid, _boostDefaultLockTimeIndex, _vestingVaultStrategy, _vestingDefaultLockTimeIndex);
    }


    /**
    @notice Allows the contract owner to recover tokens sent to the contract
    This is a safety mechanism to ensure that non-GAMMA tokens can be retrieved if they are mistakenly sent to the contract
    It includes a safety check to prevent withdrawal of GAMMA tokens
    @param _token The address of the token to be recovered
    @param _amount The amount of the token to be transferred out of the contract
    */
    function inCaseTokensGetStuck(address _token, uint256 _amount) external onlyOwner{
        require(_token != GAMMA, "!safe");
        IERC20(_token).safeTransfer(_msgSender(), _amount);
    }

     /** 
    @notice function to withdraw all your tokens from the farm during an EMERGENCY ONLY. 
    Note: You will lose your rewards when emergency withdrawing. 
    Note: Cannot emergencyWithdraw from locked pools unless emergencyWithdrawLockedPools is enabled by the admin.
    @param _pid pid of the pool to withdraw from
    */
    function emergencyWithdraw(uint256 _pid) external nonReentrant {
        PoolInfo storage pool = poolInfo[_pid];
        if (pool.isTimeLocked){
            require(emergencyWithdrawLockedPools , "locked"); 
        }
        address userAddress = _msgSender();
        UserInfo storage user = userInfo[_pid][userAddress];

        IERC20 want = pool.want;
        address strat = pool.strat;
        uint256 amount;
        uint256 userShares = user.shares;

        
        (uint256 wantLockedTotal, uint256 sharesTotal) = IStrategy(strat).getShares();
        amount = (userShares * wantLockedTotal)/sharesTotal;
        

        uint256 sharesRemoved;
        uint256 toBeSentToUser;
         
        if(pool.isTimeLocked){
            (sharesRemoved, toBeSentToUser, ) = IStrategy(strat).emergencyWithdraw(amount, userAddress); 
        }else{
            (sharesRemoved, toBeSentToUser) = IStrategy(strat).emergencyWithdraw(amount); 
            IPToken(pool.pToken).burn(userAddress, userShares); 
        }

            user.shares = 0;
            pool.totalEarningFactor = pool.totalEarningFactor - user.earningFactor;    
            user.earningFactor = 0;

            user.parentRewardDebt = 0;
            user.gammaRewardDebt = 0;
            
            _removePoolFromUsersPoolList(_pid, userAddress);
            want.safeTransfer(userAddress, toBeSentToUser);

        emit Withdraw(userAddress, _pid, sharesRemoved, toBeSentToUser);
    }

function initialize() public initializer(){
        __Ownable_init();
        __ReentrancyGuard_init();
        Reservoir = IReservoir(0x0fAEab379586404A2a621e25Dda195c99dD77FF4);
        isDrip = true;
        __UUPSUpgradeable_init();
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor(){
	    _disableInitializers();
    }

    function _authorizeUpgrade(address newImplementation)
        internal
        virtual
        override
	onlyOwner {
    }

}
