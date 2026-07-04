// Dependency file: contracts/Configable.sol

// pragma solidity 0.6.12;

interface IConfig {
    function dev() external view returns (address);
    function admin() external view returns (address);
}

contract Configable {
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

// Root file: contracts/IFOQuery.sol

pragma solidity 0.6.12;
pragma experimental ABIEncoderV2;
// import "contracts/Configable.sol";

interface ISwapPair {
    function totalSupply() external view returns(uint256);
    function token0() external view returns (address);
    function token1() external view returns (address);
    function getReserves() external view returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);
}

interface IDemaxLP {
    function totalSupply() external view returns(uint256);
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
    function allPairsLength() external view returns (uint256);
}

interface IIFOFactory {
    function getPair(address _lpToken, address _offeringToken) external view returns (address);
    function allPairs(uint _index) external view returns (address);
    function allPairsLength() external view returns (uint256);
}

interface IIFO {
    function owner() external view returns (address);
    function lpToken() external view returns (address);
    function offeringToken() external view returns (address);
    function startBlock() external view returns (uint256);
    function endBlock() external view returns (uint256);
    function raisingAmount() external view returns (uint256);
    function offeringAmount() external view returns (uint256);
    function totalAmount() external view returns (uint256);
    function offeringHarvested() external view returns (uint256);
    function harvestedCount() external view returns (uint256);
    function getAddressListLength() external view returns(uint256);
}

contract IFOQuery is Configable {
    string public chainSymbol = 'ETH';
    address public factory;
    address public swapFactory;
    string public ipfs;
    mapping(address=>uint) public tokenType; //0 demax LP, 1 uni LP, 2 token

    struct PoolData {
        address pool;
        address owner;
        address lpToken;
        address offeringToken;
        uint256 startBlock;
        uint256 endBlock;
        uint256 raisingAmount;
        uint256 offeringAmount;
        uint256 totalAmount;
        uint256 offeringTokenDecimals;
        uint256 offeredAmount;
        uint256 offeringHarvested;
        uint256 depositedCount;
        uint256 harvestedCount;
        uint256 lpTokenAmount;
        address lpToken0;
        address lpToken1;
        string lpToken0Symbol;
        string lpToken1Symbol;
        string offeringTokenSymbol;
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

    function initialize(address _factory, address _swapFactory) public onlyDev {
        factory = _factory;
        swapFactory = _swapFactory;
    }

    function changeIpfs(string memory _value) external onlyDev {
        ipfs = _value;
    }

    function setToken(address _token, uint _value) onlyDev external {
        tokenType[_token] = _value;
    }

    struct Token {
        uint totalSupply;
        uint decimals;
        uint balanceOf;
        string name;
        string symbol;
        
    }
 
    function queryToken(address token) public view returns (Token memory tk) {
        tk.totalSupply = IERC20(token).totalSupply();
        tk.name = IERC20(token).name();
        tk.symbol = IERC20(token).symbol();
        tk.decimals = IERC20(token).decimals();
        tk.balanceOf = IERC20(token).balanceOf(msg.sender);
        return tk;
    }
    
    function queryTokenList(address[] memory tokens) public view returns(Token[] memory token_list){
        token_list = new Token[](tokens.length);
        for(uint i = 0;i < tokens.length;i++) {
            token_list[i] = queryToken(tokens[i]);
        }
        return token_list;
    }

    function getPair(address _token0, address _token1) public view returns (address) {
        return ISwapFactory(swapFactory).getPair(_token0, _token1);
    }

    function getSwapPairReserve(address _pair) public view returns (address token0, address token1, uint decimals0, uint decimals1, uint reserve0, uint reserve1, uint totalSupply) {
        totalSupply = ISwapPair(_pair).totalSupply();
        token0 = ISwapPair(_pair).token0();
        token1 = ISwapPair(_pair).token1();
        decimals0 = IERC20(token0).decimals();
        decimals1 = IERC20(token1).decimals();
        (reserve0, reserve1, ) = ISwapPair(_pair).getReserves();
    }

    function getSwapPairReserveByTokens(address _token0, address _token1) public view returns (address token0, address token1, uint decimals0, uint decimals1, uint reserve0, uint reserve1, uint totalSupply) {
        address _pair = getPair(_token0, _token1);
        totalSupply = ISwapPair(_pair).totalSupply();
        token0 = ISwapPair(_pair).token0();
        token1 = ISwapPair(_pair).token1();
        decimals0 = IERC20(token0).decimals();
        decimals1 = IERC20(token1).decimals();
        (reserve0, reserve1, ) = ISwapPair(_pair).getReserves();
    }

    // _tokenB is base token
    function getLpValueByFactory(address _factory, address _tokenA, address _tokenB, uint _amount) public view returns (uint, uint) {
        address pair = ISwapFactory(_factory).getPair(_tokenA, _tokenB);
        (, address token1, uint decimals0, uint decimals1, uint reserve0, uint reserve1, uint totalSupply) = getSwapPairReserve(pair);
        if(_amount == 0 || totalSupply == 0) {
            return (0, 0);
        }
        uint decimals = decimals0;
        uint total = reserve0 * 2;
        if(_tokenB == token1) {
            total = reserve1 * 2;
            decimals = decimals1;
        }
        return (_amount*total/totalSupply, decimals);
    }

    function getLpValue(address _tokenA, address _tokenB, uint _amount) public view returns (uint, uint) {
        return getLpValueByFactory(swapFactory, _tokenA, _tokenB, _amount);
    }

    function getDemaxLpValue(address _lpToken, address _baseToken, uint _amount) public view returns (uint, uint) {
        address lpToken0 = IDemaxLP(_lpToken).tokenA();
        address lpToken1 = IDemaxLP(_lpToken).tokenB();
        if(!(_baseToken == lpToken0 || _baseToken == lpToken1)) {
            return (0, 0);
        }
        address token = lpToken0;
        if(_baseToken == lpToken0) {
            token = lpToken1;
        }
        
        return getLpValueByFactory(swapFactory, token, _baseToken, _amount);
    }

    function getPoolData(address _pool) public view returns (PoolData memory data) {
        data.pool = _pool;
        data.owner = IIFO(_pool).owner(); 
        data.lpToken = IIFO(_pool).lpToken(); 
        data.offeringToken = IIFO(_pool).offeringToken(); 
        data.startBlock = IIFO(_pool).startBlock(); 
        data.endBlock = IIFO(_pool).endBlock(); 
        data.raisingAmount = IIFO(_pool).raisingAmount(); 
        data.offeringAmount = IIFO(_pool).offeringAmount(); 
        data.totalAmount = IIFO(_pool).totalAmount(); 
        data.offeringHarvested = IIFO(_pool).offeringHarvested(); 
        data.depositedCount = IIFO(_pool).getAddressListLength(); 
        data.harvestedCount = IIFO(_pool).harvestedCount();
        if(data.offeringToken != address(0)) {
            data.offeringTokenDecimals = IERC20(data.offeringToken).decimals();
            data.offeringTokenSymbol = IERC20(data.offeringToken).symbol();
            data.offeredAmount = IERC20(data.offeringToken).balanceOf(_pool);
        } else {
            data.offeringTokenDecimals = 18;
            data.offeringTokenSymbol = chainSymbol;
            data.offeredAmount = _pool.balance;
        }
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

        data.lpTokenAmount = IERC20(data.lpToken).balanceOf(_pool);
        return data;
    }

    function getPoolDataByIndex(uint _index) public view returns (PoolData memory data) {
        return getPoolData(IIFOFactory(factory).allPairs(_index));
    }

    function getPoolDataByTokens(address _lpToken, address _offeringToken) public view returns (PoolData memory data) {
        return getPoolData(IIFOFactory(factory).getPair(_lpToken, _offeringToken));
    }

    function iterateReversePoolList(uint _start, uint _end) external view returns (PoolData[] memory list) {
        require(_end <= _start && _end >= 0 && _start >= 0, "INVAID_PARAMTERS");
        uint count = IIFOFactory(factory).allPairsLength();
        if (_start > count) _start = count;
        count = _start - _end;
        list = new PoolData[](count);
        if (count == 0) return list;
        uint index = 0;
        for(uint i = _end;i < _start; i++) {
            uint j = _start - i -1;
            list[index] = getPoolDataByIndex(j);
            index++;
        }
        return list;
    }
}