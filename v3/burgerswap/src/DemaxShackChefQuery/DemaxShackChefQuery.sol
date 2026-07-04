// Dependency file: contracts/modules/Ownable.sol

// SPDX-License-Identifier: MIT
// pragma solidity >=0.6.0;

contract Ownable {
    address public owner;

    event OwnerChanged(address indexed _oldOwner, address indexed _newOwner);

    constructor () public {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, 'Ownable: FORBIDDEN');
        _;
    }

    function changeOwner(address _newOwner) public onlyOwner {
        require(_newOwner != address(0), 'Ownable: INVALID_ADDRESS');
        emit OwnerChanged(owner, _newOwner);
        owner = _newOwner;
    }

}


// Root file: contracts/DemaxShackChefQuery.sol

pragma solidity >= 0.6.6;
// import 'contracts/modules/Ownable.sol';


interface IERC20 {
    function name() external view returns (string memory);
    function symbol() external view returns (string memory);
    function decimals() external view returns (uint);
    function totalSupply() external view returns (uint);
    function balanceOf(address owner) external view returns (uint);
    function allowance(address owner, address spender) external view returns (uint);
}

interface ISwapFactory {
    function getPair(address _token0, address _token1) external view returns (address);
}

interface ISwapPair {
    function totalSupply() external view returns(uint);
    function token0() external view returns (address);
    function token1() external view returns (address);
    function getReserves() external view returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);
}


struct UserInfo {
    uint amount;         // How many LP tokens the user has provided.
    uint rewardDebt;     // Reward debt. See explanation below.
    uint earnDebt;     // Earn debt. See explanation below.
}

// Info of each pool.
struct PoolInfo {
    uint pid;
    address depositToken;           // Address of deposit token contract.
    address earnToken;           // Address of earn token contract.
    uint allocPoint;       // How many allocation points assigned to this pool. RewardTokens to distribute per block.
    uint lastUpdateBlock;  // Last block number that RewardTokens distribution occurs.
    uint lastRewardAmount; // Last RewardToken amunt that RewardTokens distribution occurs.
    uint lastEarnAmount; // Last EarnToken amunt that EarnTokens distribution occurs.
    uint accRewardPerShare;   // Accumulated RewardTokens per share, times 1e18. See below.
    uint accEarnPerShare;   // Accumulated EarnTokens per share, times 1e18. See below.
    uint tokenType;
    bool added;
}

interface IDemaxShackChef {
    function pids(uint _index) external view returns (uint);
    function poolLength() external view returns (uint);
    function mintToken() external view returns (address);
    function mintPerBlock() external view returns(uint);
    function rewardTotal() external view returns(uint);
    function earnTokensTotal(address _token) external view returns(uint);
    function poolInfo(uint _pid) external view returns(PoolInfo memory);
    function userInfo(uint _pid, address _user) external view returns(UserInfo memory);
    function swapTokens(address _token) external view returns (address);

    function getDepositTokenSupply(uint _pid) external view returns (uint);
    function pendingRewardInfo(uint _pid) external view returns (uint, uint, uint);
    function pendingEarnInfo(uint _pid) external view returns (uint, uint, uint);
    function pendingReward(uint _pid, address _user) external view returns (uint);
    function pendingEarn(uint _pid, address _user) external view returns (uint);
    function shackPoolInfo(uint _pid) external view returns (
        address token,              // Address of token contract
        uint depositCap,         // Max deposit amount
        uint depositClosed,      // Deposit closed
        uint lastRewardBlock,    // Last block number that reward distributed
        uint accRewardPerShare,  // Accumulated rewards per share
        uint accShare,           // Accumulated Share
        uint apy,                // APY, times 10000
        uint used                // How many tokens used for farming
    );
}

pragma experimental ABIEncoderV2;

contract DemaxShackChefQuery is Ownable {
    address chef;
    address public baseToken;
    address public swapFactory;

    struct ChefInfo {
        address rewardToken;
        uint mintPerBlock;
        uint totalAllocPoint;
        uint rewardTotal;
        uint rewardTotalValue;
        uint rewardTokenDecimals; 
        string rewardTokenSymbol;
    }

    struct Data {
        uint pid;
        address depositToken;
        address earnToken;
        address earnTargetToken;
        uint weight;
        uint depositCap;
        uint accShare;
        uint earnApr;
        uint tokenType;
        uint userAllowance;
        uint userBalance;
        uint userAmount;
        uint userReward;
        uint userEarn;
        uint pendingReward;
        uint pendingEarn;
        uint totalStake;
        uint pendingRewardValue;
        uint pendingEarnValue;
        uint totalStakeValue;
        uint depositTokenDecimals; 
        uint earnTokenDecimals; 
        uint earnTargetTokenDecimals; 
        string depositTokenSymbol;
        string earnTokenSymbol;
        string earnTargetTokenSymbol;
    }
    
    constructor() public {
    }
    
    function initialize(address _chef, address _baseToken, address _swapFactory) public onlyOwner {
        chef = _chef;
        baseToken = _baseToken;
        swapFactory = _swapFactory;
    }

    function getPair(address _factory, address _token0, address _token1) public view returns (address) {
        return ISwapFactory(_factory).getPair(_token0, _token1);
    }

    function getCurrentRate(address _factory, address _tokenIn, uint _amount) public view returns (uint) {
        if(_tokenIn == baseToken) {
            return _amount;
        }
        address pair = getPair(_factory, _tokenIn, baseToken);
        if(pair == address(0)) {
            return 0;
        }
        (uint112 reserve0, uint112 reserve1, ) = ISwapPair(pair).getReserves();
        if(reserve0 == 0 || reserve1 ==0) {
            return 0;
        }
        uint tokenInReserve = uint(reserve0);
        uint tokenOutReserve = uint(reserve1);
        uint tokenInDecimals = uint(IERC20(_tokenIn).decimals());
        uint tokenOutDecimals = uint(IERC20(baseToken).decimals());
        if(ISwapPair(pair).token0() != _tokenIn) {
            tokenInDecimals = IERC20(baseToken).decimals();
            tokenOutDecimals = IERC20(_tokenIn).decimals();
            tokenInReserve = uint(reserve1);
            tokenOutReserve = uint(reserve0);
        }
        if(tokenInDecimals > tokenOutDecimals) {
            tokenOutReserve = tokenOutReserve * 10** (tokenInDecimals - tokenOutDecimals);
        } else if(tokenInDecimals < tokenOutDecimals) {
            tokenInReserve = tokenInReserve * 10** (tokenOutDecimals - tokenInDecimals);
        }

        return _amount * tokenOutReserve / tokenInReserve;
    }

    function getEarnInfo(address _token) public view returns (uint total, uint totalValue) {
        total = IDemaxShackChef(chef).earnTokensTotal(_token);
        totalValue = total;
        if(IDemaxShackChef(chef).swapTokens(_token) != address(0)) {
            _token = IDemaxShackChef(chef).swapTokens(_token);
        }
        if(_token != baseToken) {
            totalValue = getCurrentRate(swapFactory, _token, total);
        }
        return (total, totalValue);
    }

    function getChefInfo() public view returns (ChefInfo memory data) {
        data.rewardToken = IDemaxShackChef(chef).mintToken();
        data.mintPerBlock = IDemaxShackChef(chef).mintPerBlock();
        data.rewardTotal = IDemaxShackChef(chef).rewardTotal();
        data.rewardTokenDecimals = IERC20(data.rewardToken).decimals();
        data.rewardTokenSymbol = IERC20(data.rewardToken).symbol();
        return data;
    }

    function getPoolInfo(uint _pid, address _user) public view returns (Data memory data) {
        PoolInfo memory pinfo  = IDemaxShackChef(chef).poolInfo(_pid);
        UserInfo memory uinfo = IDemaxShackChef(chef).userInfo(_pid, _user);
        data.pid = _pid;
        data.depositToken = pinfo.depositToken;
        data.earnToken = pinfo.earnToken;
        if(IDemaxShackChef(chef).swapTokens(pinfo.earnToken) != address(0)) {
            data.earnTargetToken = IDemaxShackChef(chef).swapTokens(pinfo.earnToken);
            data.earnTargetTokenDecimals = IERC20(data.earnTargetToken).decimals();
            data.earnTargetTokenSymbol = IERC20(data.earnTargetToken).symbol();
        }
        data.weight = pinfo.allocPoint;
        data.tokenType = pinfo.tokenType;
        data.userAllowance = IERC20(pinfo.depositToken).allowance(_user, chef);
        data.userBalance = IERC20(pinfo.depositToken).balanceOf(_user);
        data.userAmount = uinfo.amount;
        data.userReward = IDemaxShackChef(chef).pendingReward(_pid, _user);
        data.userEarn = IDemaxShackChef(chef).pendingEarn(_pid, _user);
        data.totalStake = IDemaxShackChef(chef).getDepositTokenSupply(_pid);
        data.depositTokenDecimals = IERC20(pinfo.depositToken).decimals();
        data.earnTokenDecimals = IERC20(pinfo.depositToken).decimals();
        data.depositTokenSymbol = IERC20(pinfo.depositToken).symbol();
        data.earnTokenSymbol = IERC20(pinfo.depositToken).symbol();

        (uint pendingReward,,) = IDemaxShackChef(chef).pendingRewardInfo(_pid);
        (uint pendingEarn,,) = IDemaxShackChef(chef).pendingRewardInfo(_pid);
        data.pendingReward = pendingReward;
        data.pendingEarn = pendingEarn;

        data.pendingRewardValue = getCurrentRate(swapFactory, IDemaxShackChef(chef).mintToken(), pendingReward);
        data.pendingEarnValue = getCurrentRate(swapFactory, data.earnToken, pendingEarn);
        data.totalStakeValue = getCurrentRate(swapFactory, data.depositToken, data.totalStake);

        (,uint depositCap, , , , uint accShare, uint apy,) = IDemaxShackChef(chef).shackPoolInfo(_pid);
        data.depositCap = depositCap;
        data.accShare = accShare;
        data.earnApr = apy;
        return data;
    }
 
    function iteratePoolInfoList(address _user, uint _start, uint _end) public view returns (Data[] memory result){
        require(_start <= _end && _start >= 0 && _end >= 0, "INVAID_PARAMTERS");
        uint count = IDemaxShackChef(chef).poolLength();
        if (_end > count) _end = count;
        count = _end - _start;
        result = new Data[](count);
        if (count == 0) return result;
        uint index = 0;
        for(uint i = _start;i < _end;i++) {
            uint _pid = IDemaxShackChef(chef).pids(i);
            result[index] = getPoolInfo(_pid, _user);
            index++;
        }
        return result;
    }

}