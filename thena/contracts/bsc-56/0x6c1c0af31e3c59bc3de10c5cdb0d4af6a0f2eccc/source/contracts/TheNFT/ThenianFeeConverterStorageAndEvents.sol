// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;


abstract contract ThenianFeeConverterStorageAndEvents {

    bool public isPaused;

    address constant public wbnb = 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c;
    address public masterchef;  // theNFT chef
    address public routerSolidly = 0xd4ae6eCA985340Dd434D38F470aCCce4DC78D109;
    address public routerAlgebra = 0x327Dd3208f0bCF590A66110aCB6e5e6941A4EfA0;
    address public rewardToken; // $THE
    address[] public tokens;    // used to swap tokens
    address[] public pairs;     // used to claim fee from Pair.sol
    
    

    mapping(address => bytes) public tokenToPath;
    mapping(address => bool) public hasPath;
    mapping(address => bool) public isKeeper;
    mapping(address => bool) public isToken;
    mapping(address => bool) public isPair;

    
    event StakingReward(uint256 _timestamp, uint256 _wbnbAmount);
    event ClaimFee(address indexed _pair, uint256 timestamp);
    event ClaimFeeError(address indexed _pair, uint256 timestamp);
    event SwapError(address indexed _tokenIn, uint256 _balanceIn, uint256 timestamp);  
    event Swap(address indexed _tokenIn, uint256 _balanceIn, uint256 _balanceOut);  
    event AddPair(address indexed _pair);
    event RemovePair(address indexed _pair);
    event AddToken(address indexed token);
    event RemoveToken(address indexed token);
    event SetPath(address indexed token, bytes path);
    event RemovePath(address indexed token);
    event WithdrawERC20(address indexed token, address receiver, uint256 amount);
    event SetKeeper(address indexed keeper);
    event RemoveKeeper(address indexed keeper);
    event SetSolidlyRouter(address indexed router);
    event SetAlgebraRouter(address indexed router);
    event SetMasterchef(address indexed chef);
    event SetRewardToken(address indexed token);
    event TriggerPause(bool newState);



}