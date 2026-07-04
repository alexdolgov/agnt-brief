// Dependency file: contracts/modules/ProjectConfigable.sol

// pragma solidity >=0.6.6;

interface IConfig {
    function dev() external view returns (address);
    function admin() external view returns (address);
}

contract ProjectConfigable {
    address public config;
    address public owner;

    constructor() public {
        owner = msg.sender;
    }
    
    function setupConfig(address _config) external onlyOwner {
        config = _config;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, 'OWNER FORBIDDEN');
        _;
    }

    function admin() public view returns(address) {
        if(config != address(0)) {
            return IConfig(config).admin();
        }
        return owner;
    }

    function dev() public view returns(address) {
        if(config != address(0)) {
            return IConfig(config).dev();
        }
        return owner;
    }

    function changeOwner(address _user) external onlyOwner {
        require(owner != _user, 'IFOConfig: NO CHANGE');
        owner = _user;
    }
    
    modifier onlyDev() {
        require(msg.sender == dev() || msg.sender == owner, 'dev FORBIDDEN');
        _;
    }
    
    modifier onlyAdmin() {
        require(msg.sender == admin() || msg.sender == owner, 'admin FORBIDDEN');
        _;
    }
}
pragma solidity >=0.6.6;
pragma experimental ABIEncoderV2;
// import './modules/ProjectConfigable.sol';

interface ISwapPair {
    function totalSupply() external view returns(uint);
    function token0() external view returns (address);
    function token1() external view returns (address);
    function getReserves() external view returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);
}

interface IDemaxLP {
    function totalSupply() external view returns(uint);
    function tokenA() external view returns (address);
    function tokenB() external view returns (address);
}

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
    function allPairs(uint _index) external view returns (address);
    function allPairsLength() external view returns (uint);
}

interface IDemaxProjectDeploy {
    function getFactoryList() external view returns (address[] memory);
    function getPoolList(address _factory) external view returns (address[] memory);
    function factoryList(address _mintToken) external view returns (address);
    function poolList(address _factory, address _lpToken) external view returns (address);
    function getPoolByIndex(address _factory, uint _index) external view returns (address);
    function factories(uint _index) external view returns (address);
    function factoryListLength() external view returns (uint);
    function factoryPoolListLength(address _factory) external view returns (uint);
    function disabledFactory(address _factory) external view returns (bool);
    function disabledPool(address _pool) external view returns (bool);
}

struct MintStruct {
    uint weight;
    uint amountToMint;
    uint aPerBMinted;
}

interface IDemaxProjectFactory {
    function mintToken() external view returns (address);
    function owner() external view returns (address);
    function mintRate() external view returns (uint);
    function mintTotal() external view returns (uint);
    function amountPerWeight() external view returns (uint);
    function startBlock() external view returns (uint);
    function finishBlock() external view returns (uint);
    function totalWeight() external view returns (uint);
    function pools(address _pool) external view returns (MintStruct memory);
    function intro() external view returns (string memory);
}

interface IDemaxProjectPool {
    function factory() external view returns (address);
    function mintToken() external view returns (address);
    function burgerToken() external view returns (address);
    function lpToken() external view returns (address);
    function totalStake() external view returns (uint);
    function balance(address _user) external view returns (uint);
    function queryBurger(address _user) external view returns(uint);
    function queryReward(address _user) external view returns(uint);
}

contract DemaxProjectQuery is ProjectConfigable {
    string public chainSymbol = 'ETH';
    address public projectDeploy;
    mapping(address=>uint) public tokenType; //0 demax LP, 1 uni LP, 2 token

    struct FactoryData {
        address factory;
        address owner;
        address mintToken;
        uint mintRate;
        uint mintTotal;
        uint totalWeight;
        uint amountPerWeight;
        uint startBlock;
        uint finishBlock;
        bool disabled;
        uint mintTokenDecimals;
        string mintTokenSymbol;
        string intro;
    }

    struct PoolData {
        address pool;
        address factory;
        address lpToken;
        address burgerToken;
        address mintToken;
        uint totalStake;
        uint mintTokenBalance;
        uint userBurger;
        uint userReward;
        uint userBalance;
        address lpToken0;
        address lpToken1;
        uint burgerTokenDecimals;
        uint mintTokenDecimals;
        uint weight;
        bool disabled;
        string burgerTokenSymbol;
        string mintTokenSymbol;
        string lpToken0Symbol;
        string lpToken1Symbol;
    }

    constructor() public {
        uint id;
        assembly {
            id := chainid()
        }
        if(id == 56 || id == 97) {
            chainSymbol = 'BNB';
        } else if(id == 128 || id == 256) {
            chainSymbol = 'HT';
        }
    }

    function initialize(address _projectDeploy) public onlyOwner {
        projectDeploy = _projectDeploy;
    }

    function setToken(address _token, uint _value) onlyDev external {
        tokenType[_token] = _value;
    }

    function getFactoryData(address _factory) public view returns (FactoryData memory data) {
        data.factory = _factory; 
        data.owner = IDemaxProjectFactory(_factory).owner(); 
        data.mintToken = IDemaxProjectFactory(_factory).mintToken();
        data.mintRate = IDemaxProjectFactory(_factory).mintRate(); 
        data.mintTotal = IDemaxProjectFactory(_factory).mintTotal();
        data.totalWeight = IDemaxProjectFactory(_factory).totalWeight(); 
        data.amountPerWeight = IDemaxProjectFactory(_factory).amountPerWeight();
        data.startBlock = IDemaxProjectFactory(_factory).startBlock();
        data.finishBlock = IDemaxProjectFactory(_factory).finishBlock(); 
        data.disabled = IDemaxProjectDeploy(projectDeploy).disabledFactory(_factory);
        if(data.disabled){
            return data;
        }
        data.mintTokenDecimals = IERC20(data.mintToken).decimals();
        data.mintTokenSymbol = IERC20(data.mintToken).symbol();
        data.intro = IDemaxProjectFactory(_factory).intro();
        return data;
    }

    function getFactoryDataByIndex(uint _index) public view returns (FactoryData memory data) {
        return getFactoryData(IDemaxProjectDeploy(projectDeploy).factories(_index));
    }

    function getFactoryList() external view returns (FactoryData[] memory list) {
        address[] memory data = IDemaxProjectDeploy(projectDeploy).getFactoryList();
        uint count = data.length;
        list = new FactoryData[](count);
        if (count == 0) return list;
        for(uint i;i < count; i++) {
            list[i] = getFactoryData(data[i]);
        }
        return list;
    }

    function iterateReverseFactoryList(uint _start, uint _end) public view returns (FactoryData[] memory list){
        require(_end <= _start && _end >= 0 && _start >= 0, "INVAID_PARAMTERS");
        uint count = IDemaxProjectDeploy(projectDeploy).factoryListLength();
        if (_start > count) _start = count;
        count = _start - _end;
        list = new FactoryData[](count);
        if (count == 0) return list;
        uint index = 0;
        for(uint i = _end;i < _start; i++) {
            uint j = _start - i -1;
            list[index] = getFactoryDataByIndex(j);
            index++;
        }
        return list;
    }

    function getPoolData(address _pool) public view returns (PoolData memory data) {
        data.pool = _pool; 
        data.factory = IDemaxProjectPool(_pool).factory(); 
        data.lpToken = IDemaxProjectPool(_pool).lpToken(); 
        data.burgerToken = IDemaxProjectPool(_pool).burgerToken(); 
        data.mintToken = IDemaxProjectPool(_pool).mintToken();
        data.totalStake = IDemaxProjectPool(_pool).totalStake(); 
        data.disabled = IDemaxProjectDeploy(projectDeploy).disabledPool(_pool);
        if(data.disabled){
            return data;
        }
        data.mintTokenBalance = IERC20(data.mintToken).balanceOf(_pool); 
        data.userBurger = IDemaxProjectPool(_pool).queryBurger(msg.sender); 
        data.userReward = IDemaxProjectPool(_pool).queryReward(msg.sender); 
        data.userBalance = IDemaxProjectPool(_pool).balance(msg.sender); 
        data.burgerTokenDecimals = IERC20(data.burgerToken).decimals();
        data.mintTokenDecimals = IERC20(data.mintToken).decimals();
        data.burgerTokenSymbol = IERC20(data.burgerToken).symbol();
        data.mintTokenSymbol = IERC20(data.mintToken).symbol();
        
        if (tokenType[data.lpToken] == 0) {
            data.lpToken0 = IDemaxLP(data.lpToken).tokenA();
            data.lpToken1 = IDemaxLP(data.lpToken).tokenB();
            data.lpToken0Symbol = IERC20(data.lpToken0).symbol();
            data.lpToken1Symbol = IERC20(data.lpToken1).symbol();
        } else if(tokenType[data.lpToken] == 1) {
            data.lpToken0 = ISwapPair(data.lpToken).token0();
            data.lpToken1 = ISwapPair(data.lpToken).token1();
            data.lpToken0Symbol = IERC20(data.lpToken0).symbol();
            data.lpToken1Symbol = IERC20(data.lpToken1).symbol();
        } else if(tokenType[data.lpToken] == 2) {
            data.lpToken0Symbol = IERC20(data.lpToken).symbol();
        } else {
            data.lpToken0Symbol = chainSymbol;
        }
        MintStruct memory ms = IDemaxProjectFactory(data.factory).pools(_pool);
        data.weight = ms.weight;
        return data;
    }

    function getPoolList(address _factory) external view returns (PoolData[] memory list) {
        address[] memory pools = IDemaxProjectDeploy(projectDeploy).getPoolList(_factory);
        uint count = pools.length;
        list = new PoolData[](count);
        if (count == 0) return list;
        for(uint i;i < count; i++) {
            list[i] = getPoolData(pools[i]);
        }
        return list;
    }

}