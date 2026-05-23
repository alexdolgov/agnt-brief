// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;


import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "./zap.sol";


contract CavePool is Ownable,ReentrancyGuard {
    using SafeMath for uint256;
    

    // Info of each user.
    struct UserInfo {
        uint256 amount;     // How many LP tokens the user has provided.
        uint256 rewardDebt; // Reward debt. See explanation below.
    }

    // Info of each pool.
    struct PoolInfo {
        IERC20 lpToken;           // Address of LP token contract.
        uint256 allocPoint;       // How many allocation points assigned to this pool. s to distribute per block.
        uint256 lastRewardBlock;  // Last block number that s distribution occurs.
        uint256 accPerShare; // Accumulated s per share, times 1e12. See below.
        uint16 depositFeeBP;      // V1 Deposit fee in basis points     
        IERC721 platNft; //plat NFT for bonus
        uint256 platMultiplier; //bonus amount for platinum.   
    }

    
    IERC20 public poollpToken;
    IERC20 public rewardToken;
    Zap public zapper;

    
    uint256 public rewardPerBlock;
    
    uint256 platBonusPercentageBase = 100;

    // V1
    // Deposit burn address
    address public burnAddress;
    // V1
    // Deposit fee to burn
    uint16 public depositFeeToBurn;
   

    // Info of each pool.
    PoolInfo[] public poolInfo;
    // Info of each user that stakes LP tokens.
    mapping (address => UserInfo) public userInfo;
    // Total allocation poitns. Must be the sum of all allocation points in all pools.
    uint256 private totalAllocPoint = 0;
    // The block number when  mining starts.
    uint256 public startBlock;
    // The block number when  mining ends.
    uint256 public bonusEndBlock;

    event Compound(address indexed user, uint256 amount);
    event Deposit(address indexed user, uint256 amount);
    event Withdraw(address indexed user, uint256 amount);
    event EmergencyWithdraw(address indexed user, uint256 amount);

    constructor(
        IERC20 _LPToken,
        IERC20 _rewardToken,
        uint256 _rewardPerBlock,
        address _burnAddress, 
        uint16 _depositFeeBP, 
        uint256 _startBlock,
        uint256 _bonusEndBlock,
        address payable _zapper,
        address _platNFT
    )  {
        
        poollpToken = _LPToken;
        rewardToken = _rewardToken;
        rewardPerBlock = _rewardPerBlock;
        burnAddress = _burnAddress;
        depositFeeToBurn = _depositFeeBP;
        zapper = Zap(_zapper);
        rewardToken.approve(_zapper,type(uint256).max);
        if(_startBlock <= block.number)
            startBlock = block.number;
        else
            startBlock = _startBlock;

        bonusEndBlock = _bonusEndBlock;

        // V1 / Deposit fee limited to 10% No way for contract owner to set higher deposit fee
        require(depositFeeToBurn <= 1000, "contract: invalid deposit fee basis points");

        // staking pool
        poolInfo.push(PoolInfo({
            lpToken: _LPToken,
            allocPoint: 1000,
            lastRewardBlock: startBlock,
            accPerShare: 0,
            depositFeeBP: depositFeeToBurn,
            platNft:  IERC721(_platNFT),
            platMultiplier: 200 //2x bonus
        }));

        totalAllocPoint = 1000;

    }
   
    function stopReward() public onlyOwner {
        bonusEndBlock = block.number;
    }


    // Return reward multiplier over the given _from to _to block.
    function getMultiplier(uint256 _from, uint256 _to) public view returns (uint256) {
        if (_to <= bonusEndBlock) {
            return _to.sub(_from);
        } else if (_from >= bonusEndBlock) {
            return 0;
        } else {
            return bonusEndBlock.sub(_from);
        }
    }

    // View function to see pending Reward on frontend.
    function pendingReward(address _user) external view returns (uint256) {
        PoolInfo storage pool = poolInfo[0];
        UserInfo storage user = userInfo[_user];
        uint256 accTokensPerShare = pool.accPerShare;
        uint256 lpSupply = pool.lpToken.balanceOf(address(this));
        if (block.number > pool.lastRewardBlock && lpSupply != 0) {
            uint256 multiplier = getMultiplier(pool.lastRewardBlock, block.number);
            uint256 Reward = multiplier.mul(rewardPerBlock).mul(pool.allocPoint).div(totalAllocPoint);
            accTokensPerShare = accTokensPerShare.add(Reward.mul(1e12).div(lpSupply));
        }

        
        uint256 pending = user.amount.mul(accTokensPerShare).div(1e12).sub(user.rewardDebt);
        if(pending > 0 && pool.platNft.balanceOf(_user) > 0){
            pending = pending.mul(pool.platMultiplier).div(platBonusPercentageBase);
        }
        return pending;
    }

    // Update reward variables of the given pool to be up-to-date.
    function updatePool(uint256 _pid) public {
        PoolInfo storage pool = poolInfo[_pid];
        if (block.number <= pool.lastRewardBlock) {
            return;
        }
        uint256 lpSupply = pool.lpToken.balanceOf(address(this));
        if (lpSupply == 0) {
            pool.lastRewardBlock = block.number;
            return;
        }
        uint256 multiplier = getMultiplier(pool.lastRewardBlock, block.number);
        uint256 Reward = multiplier.mul(rewardPerBlock).mul(pool.allocPoint).div(totalAllocPoint);
        pool.accPerShare = pool.accPerShare.add(Reward.mul(1e12).div(lpSupply));
        pool.lastRewardBlock = block.number;
    }

    // Update reward variables for all pools. Be careful of gas spending!
    function massUpdatePools() public {
        uint256 length = poolInfo.length;
        for (uint256 pid = 0; pid < length; ++pid) {
            updatePool(pid);
        }
    }


    // Stake  tokens
    function deposit(uint256 _amount) public {
        PoolInfo storage pool = poolInfo[0];
        UserInfo storage user = userInfo[msg.sender];

        updatePool(0);
        if (user.amount > 0) {
            uint256 pending = user.amount.mul(pool.accPerShare).div(1e12).sub(user.rewardDebt);
            if(pending > 0 ){
                if(pool.platNft.balanceOf(msg.sender) > 0){
                    pending = pending.mul(pool.platMultiplier).div(platBonusPercentageBase);                                     
                }
                rewardToken.transfer(address(msg.sender), pending);
            }
        }
      
        // V1 Add the possibility of deposit fees sent to burn address
        if(_amount > 0) {
            pool.lpToken.transferFrom(address(msg.sender), address(this), _amount);
            if(pool.depositFeeBP > 0){
                uint256 depositFee = _amount.mul(pool.depositFeeBP).div(10000);
                pool.lpToken.transfer(burnAddress, depositFee);
                user.amount = user.amount.add(_amount).sub(depositFee);
            }else{
                user.amount = user.amount.add(_amount);
            }
        }        
        
        
        user.rewardDebt = user.amount.mul(pool.accPerShare).div(1e12);

        emit Deposit(msg.sender, _amount);
    }

    
    function compound() public nonReentrant {
        PoolInfo storage pool = poolInfo[0];
        UserInfo storage user = userInfo[msg.sender];

        updatePool(0);

        uint256 _amount = 0;
        if (user.amount > 0) {
            uint256 pending = user.amount.mul(pool.accPerShare).div(1e12).sub(user.rewardDebt);
           if(pending > 0 ){
               if(pool.platNft.balanceOf(msg.sender) > 0){
                    pending = pending.mul(pool.platMultiplier).div(platBonusPercentageBase);   
               }
                zapper.zapInToken(address(rewardToken), pending, address(pool.lpToken), msg.sender);
                _amount = IERC20(pool.lpToken).balanceOf(msg.sender);        
                if (_amount > 0) {
                    pool.lpToken.transferFrom(address(msg.sender), address(this), _amount);          
                    user.amount = user.amount.add(_amount);            
                }
                user.rewardDebt = user.amount.mul(pool.accPerShare).div(1e12);                
            }
        }
        emit Compound(msg.sender, _amount);        
    }

    // Withdraw tokens from STAKING.
    function withdraw(uint256 _amount) public {
        PoolInfo storage pool = poolInfo[0];
        UserInfo storage user = userInfo[msg.sender];
        require(user.amount >= _amount, "withdraw: not good");
        updatePool(0);
        uint256 pending = user.amount.mul(pool.accPerShare).div(1e12).sub(user.rewardDebt);
       if(pending > 0){
           if(pool.platNft.balanceOf(msg.sender) > 0){
                pending = pending.mul(pool.platMultiplier).div(platBonusPercentageBase); 
           }
           rewardToken.transfer(address(msg.sender), pending);
        }
        if(_amount > 0) {
            user.amount = user.amount.sub(_amount);
            pool.lpToken.transfer(address(msg.sender), _amount);
        }
        user.rewardDebt = user.amount.mul(pool.accPerShare).div(1e12);

        emit Withdraw(msg.sender, _amount);
    }

    // Withdraw without caring about rewards. EMERGENCY ONLY.
    function emergencyWithdraw() public {
        PoolInfo storage pool = poolInfo[0];
        UserInfo storage user = userInfo[msg.sender];
        pool.lpToken.transfer(address(msg.sender), user.amount);
        user.amount = 0;
        user.rewardDebt = 0;
        emit EmergencyWithdraw(msg.sender, user.amount);
    }
   
    
    // V1 Add a function to update rewardPerBlock. Can only be called by the owner.
    function updateRewardPerBlock(uint256 _rewardPerBlock) public onlyOwner {
        rewardPerBlock = _rewardPerBlock;
        //Automatically updatePool 0
        updatePool(0);        
    } 
    
    // V1 Add a function to update bonusEndBlock. Can only be called by the owner.
    function updateBonusEndBlock(uint256 _bonusEndBlock) public onlyOwner {
        bonusEndBlock = _bonusEndBlock;
    }   
    
    // V1 Update the given pool's deposit fee. Can only be called by the owner.
    function updateDepositFeeBP(uint256 _pid, uint16 _depositFeeBP) public onlyOwner {
        require(_depositFeeBP <= 10000, "updateDepositFeeBP: invalid deposit fee basis points");
        poolInfo[_pid].depositFeeBP = _depositFeeBP;
        depositFeeToBurn = _depositFeeBP;
    }    

    

    function setZapper(address payable _zapper) external onlyOwner {
        require(_zapper != address(0), "setZapTimeLock: not address 0");
        zapper = Zap(_zapper);
        rewardToken.approve(_zapper,type(uint256).max);
    }
    function setPoolLP(address lp) public onlyOwner{
        require(lp != address(0), "setPoolLP: do not set to address zero");
        poolInfo[0].lpToken = IERC20(lp);
    }
    
    function sweep(address tokenToSweep) public onlyOwner{
        require(tokenToSweep != address(poolInfo[0].lpToken), "sweep: cannot sweep staking token");
        IERC20 sweeper = IERC20(tokenToSweep);        
        sweeper.transfer(msg.sender, sweeper.balanceOf(address(this)));
    }
}