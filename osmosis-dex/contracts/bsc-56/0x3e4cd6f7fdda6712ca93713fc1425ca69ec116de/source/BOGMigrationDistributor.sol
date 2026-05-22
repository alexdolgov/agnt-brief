//SPDX-License-Identifier: MIT

pragma solidity ^0.7.4;

/**
 * $$$$$$$\                   $$$$$$$$\                  $$\
 * $$  __$$\                  \__$$  __|                 $$ |
 * $$ |  $$ | $$$$$$\   $$$$$$\  $$ | $$$$$$\   $$$$$$\  $$ | $$$$$$$\
 * $$$$$$$\ |$$  __$$\ $$  __$$\ $$ |$$  __$$\ $$  __$$\ $$ |$$  _____|
 * $$  __$$\ $$ /  $$ |$$ /  $$ |$$ |$$ /  $$ |$$ /  $$ |$$ |\$$$$$$\
 * $$ |  $$ |$$ |  $$ |$$ |  $$ |$$ |$$ |  $$ |$$ |  $$ |$$ | \____$$\
 * $$$$$$$  |\$$$$$$  |\$$$$$$$ |$$ |\$$$$$$  |\$$$$$$  |$$ |$$$$$$$  |
 * \_______/  \______/  \____$$ |\__| \______/  \______/ \__|\_______/
 *                     $$\   $$ |
 *                     \$$$$$$  |
 *                      \______/
 *
 * BogTools / Bogged Finance
 * https://bogtools.io/
 * https://bogged.finance/
 * Telegram: https://t.me/bogtools
 */

/**
 * Standard SafeMath, stripped down to just add/sub/mul/div
 */
library SafeMath {
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");

        return c;
    }
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        return sub(a, b, "SafeMath: subtraction overflow");
    }
    function sub(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b <= a, errorMessage);
        uint256 c = a - b;

        return c;
    }
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        if (a == 0) {
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");

        return c;
    }
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        return div(a, b, "SafeMath: division by zero");
    }
    function div(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        // Solidity only automatically asserts when dividing by 0
        require(b > 0, errorMessage);
        uint256 c = a / b;
        // assert(a == b * c + a % b); // There is no case in which this doesn't hold

        return c;
    }
}

/**
 * BEP20 standard interface.
 */
interface IBEP20 {
    function totalSupply() external view returns (uint256);
    function decimals() external view returns (uint8);
    function symbol() external view returns (string memory);
    function name() external view returns (string memory);
    function getOwner() external view returns (address);
    function balanceOf(address account) external view returns (uint256);
    function transfer(address recipient, uint256 amount) external returns (bool);
    function allowance(address _owner, address spender) external view returns (uint256);
    function approve(address spender, uint256 amount) external returns (bool);
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
}

/**
 * Allows for contract ownership along with multi-address authorization
 */
abstract contract BOGAuth {
    address owner;
    mapping (address => bool) private authorizations;

    constructor(address _owner) {
        owner = _owner;
        authorizations[_owner] = true;
    }

    /**
     * Function modifier to require caller to be contract owner
     */
    modifier onlyOwner() {
        require(isOwner(msg.sender), "!OWNER"); _;
    }

    /**
     * Function modifier to require caller to be authorized
     */
    modifier authorized() {
        require(isAuthorized(msg.sender), "!AUTHORIZED"); _;
    }

    /**
     * Authorize address. Any authorized address
     */
    function authorize(address adr) public authorized {
        authorizations[adr] = true;
        emit Authorized(adr);
    }

    /**
     * Remove address' authorization. Owner only
     */
    function unauthorize(address adr) public onlyOwner {
        authorizations[adr] = false;
        emit Unauthorized(adr);
    }

    /**
     * Check if address is owner
     */
    function isOwner(address account) public view returns (bool) {
        return account == owner;
    }

    /**
     * Return address' authorization status
     */
    function isAuthorized(address adr) public view returns (bool) {
        return authorizations[adr];
    }

    /**
     * Transfer ownership to new address. Caller must be owner.
     */
    function transferOwnership(address payable adr) public onlyOwner {
        owner = adr;
        authorizations[adr] = true;
        emit OwnershipTransferred(adr);
    }

    event OwnershipTransferred(address owner);
    event Authorized(address adr);
    event Unauthorized(address adr);
}

/**
 * Pause and unpause certain functions using modifiers
 */
abstract contract BOGPausable is BOGAuth {
    bool public paused;
    
    constructor (bool _paused) { paused = _paused; }

    modifier whenPaused() {
        require(paused || isAuthorized(msg.sender), "!PAUSED"); _;
    }

    modifier notPaused() {
        require(!paused || isAuthorized(msg.sender), "PAUSED"); _;
    }

    function pause() external notPaused authorized {
        paused = true;
        emit Paused();
    }

    function unpause() public whenPaused authorized {
        _unpause();
    }
    
    function _unpause() internal {
        paused = false;
        emit Unpaused();
    }

    event Paused();
    event Unpaused();
}

abstract contract BOGFinalizable is BOGAuth {
    bool public isFinalized;

    modifier unfinalized() {
        require(!isFinalized, "FINALIZED"); _;
    }

    modifier finalized() {
        require(isFinalized, "!FINALIZED"); _;
    }

    function finalize() public authorized unfinalized {
        isFinalized = true;
        emit Finalized();
    }

    event Finalized();
}

library Math {
    function min(uint x, uint y) internal pure returns (uint z) {
        z = x < y ? x : y;
    }

    // babylonian method (https://en.wikipedia.org/wiki/Methods_of_computing_square_roots#Babylonian_method)
    function sqrt(uint y) internal pure returns (uint z) {
        if (y > 3) {
            z = y;
            uint x = y / 2 + 1;
            while (x < z) {
                z = x;
                x = (y / x + x) / 2;
            }
        } else if (y != 0) {
            z = 1;
        }
    }
}

contract BOGTempLP is IBEP20 {
    using SafeMath for uint256;

    string constant _name = "BOG Temporary Migration LP's";
    string constant _symbol = "BOGTempLP";
    uint8 constant _decimals = 18;

    uint256 _totalSupply;
    address _owner;

    mapping (address => uint256) _balances;
    mapping (address => mapping (address => uint256)) _allowances;
    
    uint public constant MINIMUM_LIQUIDITY = 10**3;

    constructor (uint256 _supply) {
        _owner = msg.sender;
        
        _totalSupply = _supply;
        
        _balances[_owner] = _totalSupply;
        emit Transfer(address(0), _owner, _totalSupply);
    }

    function mint(uint256 amount) external {
        require(msg.sender == _owner);
        _balances[_owner] = _balances[_owner].add(amount);
        emit Transfer(address(0), _owner, amount);
    }

    function totalSupply() external view override returns (uint256) { return _totalSupply; }
    function decimals() external pure override returns (uint8) { return _decimals; }
    function symbol() external pure override returns (string memory) { return _symbol; }
    function name() external pure override returns (string memory) { return _name; }
    function getOwner() external view override returns (address) { return _owner; }
    function balanceOf(address account) external view override returns (uint256) { return _balances[account]; }
    function allowance(address __owner, address spender) external view override returns (uint256) { return _allowances[__owner][spender]; }

    function transfer(address recipient, uint256 amount) external override returns (bool) {
        _transferFrom(msg.sender, recipient, amount);
        return true;
    }

    function approve(address spender, uint256 amount) external override returns (bool) {
        _allowances[msg.sender][spender] = amount;
        emit Approval(msg.sender, spender, amount);
        return true;
    }

    function transferFrom(address sender, address recipient, uint256 amount) external override returns (bool) {
        _transferFrom(sender, recipient, amount);
        return true;
    }

    function _transferFrom(address sender, address recipient, uint256 amount) internal {
        if(sender != msg.sender && _allowances[sender][msg.sender] != uint256(-1)){
            _allowances[sender][msg.sender] = _allowances[sender][msg.sender].sub(amount);
        }
        _balances[sender] = _balances[sender].sub(amount);
        _balances[recipient] = _balances[recipient].add(amount);
        emit Transfer(sender, recipient, amount);
    }
}

interface IBOGMigrationData {
    function totalHolders() external view returns (uint256);
    function totalBalances() external view returns (uint256);
    function totalStakes() external view returns (uint256);
    
    function getInfo(address holder) external view returns (bool migrated, uint256 stake, uint256 balance, bool preExploitHolder);
    
    function hasBeenMigrated(address holder) external view returns (bool);
    function getBalance(address holder) external view returns (uint256);
    function getStake(address holder) external view returns (uint256);
    function isPreExploitHolder(address holder) external view returns (bool);
}

interface IBOGStaking {
    function stakingToken() external view returns (address);
    function rewardToken() external view returns (address);
    
    function totalStaked() external view returns (uint256);
    function totalRealised() external view returns (uint256);

    function getTotalRewards() external view returns (uint256);

    function getCumulativeRewardsPerLP() external view returns (uint256);
    function getLastContractBalance() external view returns (uint256);
    function getAccuracyFactor() external view returns (uint256);

    function getStake(address staker) external view returns (uint256);
    function getRealisedEarnings(address staker) external returns (uint256);
    function getUnrealisedEarnings(address staker) external view returns (uint256);

    function stake(uint256 amount) external;
    function stakeFor(address staker, uint256 amount) external;
    function stakeAll() external;

    function unstake(uint256 amount) external;
    function unstakeAll() external;
    
    function realise() external;

    event Realised(address account, uint amount);
    event Staked(address account, uint amount);
    event Unstaked(address account, uint amount);
}

contract BOGMigrationDistributor is BOGAuth, BOGPausable, BOGFinalizable {
    using SafeMath for uint256;
    
    uint public constant MINIMUM_LIQUIDITY = 10**3;
    
    IBOGMigrationData migration;
    IBOGStaking LPStakingPool;
    IBEP20 BOG;
    IBEP20 public LP;
    
    bool initialized;
    
    uint256 public distributedLPSupply;
    
    uint256 public totalBalances;
    uint256 public totalStakes;
    
    mapping (address => bool) public balanceClaims;
    uint256 public balanceClaimed;
    
    mapping (address => bool) public stakeClaims;
    uint256 public stakeClaimed;
    
    constructor (address _migration, address _BOG, uint256 liquidity0, uint256 liquidity1, uint256 distributedShare, uint256 totalShare) BOGAuth(msg.sender) BOGPausable(true) {
        migration = IBOGMigrationData(_migration);
        BOG = IBEP20(_BOG);
        
        uint256 totalLPSupply = Math.sqrt(liquidity0.mul(liquidity1)).sub(MINIMUM_LIQUIDITY);
        distributedLPSupply = totalLPSupply.mul(distributedShare).div(totalShare);
        
        LP = new BOGTempLP(distributedLPSupply);
        
        totalBalances = migration.totalBalances();
        totalStakes = migration.totalStakes();
        
    }
    
    function initializeStakingPool(address _LPStakingPool) external authorized {
        require(address(LPStakingPool) == address(0), "INITIALIZED");
        LPStakingPool = IBOGStaking(_LPStakingPool);
        LP.approve(address(LPStakingPool), uint256(-1));
    }
    
    modifier isInitialized(){
        require(initialized); _;
    }
    
    modifier migrated(address holder){
        require(migration.hasBeenMigrated(holder), "Not migrated holder"); _;
    }
    
    function intialize() external {
        BOG.transferFrom(msg.sender, address(this), migration.totalBalances());
        initialized = true;
    }
    
    function pendingBalance(address holder) external view returns (uint256) {
        return balanceClaims[holder] ? 0 : migration.getBalance(holder);
    }
    
    function claimBalance() external notPaused isInitialized {
        require(!balanceClaims[msg.sender], "CLAIMED");
        balanceClaims[msg.sender] = true;
        
        uint256 amount = migration.getBalance(msg.sender);
        if(amount == 0){ return; }
        
        BOG.transfer(msg.sender, amount);
        
        balanceClaimed = balanceClaimed.add(amount);
    }
    
    function pendingLP(address holder) external view returns (uint256) {
        return stakeClaims[holder] ? 0 : distributedLPSupply.mul(migration.getStake(holder)).div(totalStakes);
    }
    
    // Return new scaled LP amount to claimer
    function claimLP() external notPaused finalized isInitialized {
        require(!stakeClaims[msg.sender], "CLAIMED");
        stakeClaims[msg.sender] = true;
        
        uint256 staked = migration.getStake(msg.sender);
        if(staked == 0){ return; }
        
        uint256 amount = distributedLPSupply.mul(staked).div(totalStakes);
        LP.transfer(msg.sender, amount);
        
        stakeClaimed = balanceClaimed.add(amount);
    }
    
    // Stake LP in pool on behalf of 
    function stakeLP() external notPaused unfinalized isInitialized {
        require(!stakeClaims[msg.sender], "CLAIMED");
        stakeClaims[msg.sender] = true;
        
        uint256 staked = migration.getStake(msg.sender);
        if(staked == 0){ return; }
        
        uint256 amount = distributedLPSupply.mul(staked).div(totalStakes);

        LPStakingPool.stakeFor(msg.sender, amount);
        
        stakeClaimed = balanceClaimed.add(amount);
    }

    function withdrawTokens(address token) external authorized {
        IBEP20(token).transfer(msg.sender, IBEP20(token).balanceOf(address(this)));
    }

    function withdrawTokenAmount(address token, uint256 amount) external authorized {
        IBEP20(token).transfer(msg.sender, amount);
    }
    
    function migrateLP(address _lp) external authorized unfinalized {
        // Remove temp LP
        LP.transfer(address(0x0), LP.balanceOf(address(this)));
        
        // Swap in new staking token (LP)
        LP = IBEP20(_lp);

        LP.transferFrom(msg.sender, address(this), distributedLPSupply.sub(stakeClaimed));
        
        LP.approve(address(LPStakingPool), uint256(-1));
        
        finalize();
    }
}