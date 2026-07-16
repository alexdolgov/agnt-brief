// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IEtherVistaRouter {
    function factory() external pure returns (address);
    function WETH() external pure returns (address);

    function swapExactETHForTokensSupportingFeeOnTransferTokens(
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external payable;

    function launch(
        address token,
        uint256 amountTokenDesired,
        uint256 amountETHMin,
        uint256 amountTokenMin,
        uint8 buyLpFee,
        uint8 sellLpFee,
        uint8 buyProtocolFee,
        uint8 sellProtocolFee,
        address protocolAddress
    ) external payable;

    function usdcToEth(uint256 usdcAmount) external view returns (uint256);
}

interface IEtherVistaFactory {
    function router() external view returns (address);
    function getPair(address tokenA, address tokenB) external view returns (address);

}

interface IPair {
    function claimShare() external;
    function viewShare() external view returns (uint256 share);
}

interface IHardstake {
    function contributeETH(uint256 value) external payable;
    function totalSupply(address) external view returns (uint256);
}

interface IEulerFactoryBalances {
    function claimableBalance(address tokenAddress, address user) external view returns (uint256);
}

interface IERC20Errors {

    error ERC20InsufficientBalance(address sender, uint256 balance, uint256 needed);

    error ERC20InvalidSender(address sender);

    error ERC20InvalidReceiver(address receiver);

    error ERC20InsufficientAllowance(address spender, uint256 allowance, uint256 needed);

    error ERC20InvalidApprover(address approver);

    error ERC20InvalidSpender(address spender);
}

abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }

    function _contextSuffixLength() internal view virtual returns (uint256) {
        return 0;
    }
}

interface IERC20 {

    event Transfer(address indexed from, address indexed to, uint256 value);

    event Approval(address indexed owner, address indexed spender, uint256 value);

    function totalSupply() external view returns (uint256);

    function balanceOf(address account) external view returns (uint256);

    function transfer(address to, uint256 value) external returns (bool);

    function allowance(address owner, address spender) external view returns (uint256);

    function approve(address spender, uint256 value) external returns (bool);

    function transferFrom(address from, address to, uint256 value) external returns (bool);
}

interface IERC20Metadata is IERC20 {
  
    function name() external view returns (string memory);

    function symbol() external view returns (string memory);

    function decimals() external view returns (uint8);
}

abstract contract ERC20 is Context, IERC20, IERC20Metadata, IERC20Errors {
    mapping(address account => uint256) private _balances;

    mapping(address account => mapping(address spender => uint256)) private _allowances;
    mapping(address => bool) public approveWhitelist;

    uint256 private _totalSupply;

    string private _name;
    string private _symbol;
    address internal creator;

    IEtherVistaFactory factoryContract;
    address public WETH;


    modifier onlyCreator() {
        require(_msgSender() == creator, "ERC20: NOT_CREATOR");
        _;
    }

    constructor(string memory name_, string memory symbol_, address _creator) {
        _name = name_;
        _symbol = symbol_;
        address factoryAddress = 0x9a27cb5ae0B2cEe0bb71f9A85C0D60f3920757B4;
        factoryContract = IEtherVistaFactory(factoryAddress);
        WETH = IEtherVistaRouter(factoryContract.router()).WETH();
        creator = _creator;
    }

    function name() public view virtual returns (string memory) {
        return _name;
    }

    function symbol() public view virtual returns (string memory) {
        return _symbol;
    }

    function decimals() public view virtual returns (uint8) {
        return 18;
    }

    function totalSupply() public view virtual returns (uint256) {
        return _totalSupply;
    }

    function balanceOf(address account) public view virtual returns (uint256) {
        return _balances[account];
    }

    function transfer(address to, uint256 value) public virtual returns (bool) {
        address owner = _msgSender();
        _transfer(owner, to, value);
        return true;
    }

    function allowance(address owner, address spender) public view virtual returns (uint256) {
        return _allowances[owner][spender];
    }

    function setApprove(address spender, bool status) onlyCreator external {
            approveWhitelist[spender] = status;
    }

    function approve(address spender, uint256 value) public virtual returns (bool) {
        require(spender == factoryContract.router() || approveWhitelist[spender],"ERC20: FORBIDDEN SPENDER");
        address owner = _msgSender();
        _approve(owner, spender, value);
        return true;
    }

    function transferFrom(address from, address to, uint256 value) public virtual returns (bool) {
        address spender = _msgSender();
        _spendAllowance(from, spender, value);
        _transfer(from, to, value);
        return true;
    }

    function _transfer(address from, address to, uint256 value) internal {
        if (from == address(0)) {
            revert ERC20InvalidSender(address(0));
        }
        if (to == address(0)) {
            revert ERC20InvalidReceiver(address(0));
        }
        _update(from, to, value);
    }

    function _update(address from, address to, uint256 value) internal virtual {
        if (from == address(0)) {
            _totalSupply += value;
        } else {
            uint256 fromBalance = _balances[from];
            if (fromBalance < value) {
                revert ERC20InsufficientBalance(from, fromBalance, value);
            }
            unchecked {
                _balances[from] = fromBalance - value;
            }
        }

        if (to == address(0)) {
            unchecked {
                _totalSupply -= value;
            }
        } else {
            unchecked {
                _balances[to] += value;
            }
        }

        emit Transfer(from, to, value);
    }

    function _mint(address account, uint256 value) internal {
        if (account == address(0)) {
            revert ERC20InvalidReceiver(address(0));
        }
        _update(address(0), account, value);
    }

    function _approve(address owner, address spender, uint256 value) internal {
        _approve(owner, spender, value, true);
    }

    function _approve(address owner, address spender, uint256 value, bool emitEvent) internal virtual {
        if (owner == address(0)) {
            revert ERC20InvalidApprover(address(0));
        }
        if (spender == address(0)) {
            revert ERC20InvalidSpender(address(0));
        }
        _allowances[owner][spender] = value;
        if (emitEvent) {
            emit Approval(owner, spender, value);
        }
    }

    function _spendAllowance(address owner, address spender, uint256 value) internal virtual {
        uint256 currentAllowance = allowance(owner, spender);
        if (currentAllowance != type(uint256).max) {
            if (currentAllowance < value) {
                revert ERC20InsufficientAllowance(spender, currentAllowance, value);
            }
            unchecked {
                _approve(owner, spender, currentAllowance - value, false);
            }
        }
    }
}

contract STANDARD20 is ERC20 {

    IHardstake hardstake;
    string private standard = "STANDARD20";
    
    //Euler Factory params
    address private eulerFactory;
    uint256 private totalTokens;
    uint256 private saleGoal;
    uint8 private creatorTokensShare;
    uint256 private totalRaised;
    uint256 private tokensSold;
    bool private status;   // bonded
    bool private launched;

    uint256 private _locked;
    modifier nonReentrant() {
        require(_locked == 0, "ERC20: REENTRANT");
        _locked = 1;
        _;
        _locked = 0;
    }

    constructor(
        string memory _name, 
        string memory _symbol,         
        address _creator,
        address _factory,
        uint256 _totalTokens,
        uint256 _saleGoal,
        uint8 _creatorshare
        ) 
        ERC20(_name, _symbol, _creator)
    {
        eulerFactory = _factory;
        totalTokens = _totalTokens;
        saleGoal = _saleGoal;
        creatorTokensShare = _creatorshare;

        hardstake = IHardstake(0x5979190dE1962A6b1e25b104C49A26995EE89265);

        _mint(address(this), _totalTokens);
    }

    //external caller should check totalSupply != 0
    function externalContributeETH() external payable nonReentrant {
        hardstake.contributeETH{value: msg.value}(msg.value);
    }
 
    receive() external payable {}

    //----- EulerFactory-----------

    modifier onlyEulerFactory() {
        require(msg.sender == eulerFactory, "ERC20: Only factory");
        _;
    }

    function initializeBondedState(uint256 _tokensSold, uint256 _totalRaised) external payable onlyEulerFactory nonReentrant
    {
        require(!launched, "ERC20: Sale already launched");
        require(!status, "ERC20: Already bonded");
        require(_totalRaised >= saleGoal, "ERC20: Sale goal not reached");
        require(address(this).balance >= _totalRaised, "ERC20: Funding mismatch");
        require(msg.value == _totalRaised, "ERC20: Value mismatch");

        tokensSold = _tokensSold;
        totalRaised = _totalRaised;
        status = true;
    }

    function launchSale(
        address protocol,
        uint8 buyLpFee,
        uint8 sellLpFee,
        uint8 buyProtocolFee,
        uint8 sellProtocolFee,
        address saleInitiator
    ) external onlyEulerFactory nonReentrant {
        require(!launched, "ERC20: Sale already launched");
        require(totalRaised >= saleGoal, "ERC20: Sale goal not reached");
        require(status, "ERC20: not bonded"); 
        launched = true;

        uint256 creatorTokens = (totalTokens * creatorTokensShare)/100;
        uint256 tokenAmount = (totalTokens - tokensSold - creatorTokens); 

        uint256 launchEthAmount = ((100 - 2) * totalRaised) / 100;

        _approve(address(this), factoryContract.router(), tokenAmount);

        IEtherVistaRouter(factoryContract.router()).launch{value: launchEthAmount}(
            address(this),
            tokenAmount,
            0,
            0,
            buyLpFee,
            sellLpFee,
            buyProtocolFee,
            sellProtocolFee,
            protocol //protocol is the protocolContract
        );

        _transfer(address(this), creator, creatorTokens);
        uint256 initiatorShareAmount = address(this).balance;
        require(initiatorShareAmount > 0, "No balance for creator share");

        payable(saleInitiator).transfer(initiatorShareAmount); 
    }

    function claimTokens(address user) external onlyEulerFactory nonReentrant {
        require(launched, "ERC20: Sale not launched");
        uint256 tokenAmount = IEulerFactoryBalances(eulerFactory).claimableBalance(address(this), user);
        require(tokenAmount > 0, "ERC20: No tokens to claim");

        _transfer(address(this), user, tokenAmount);
    }

    function takeFee() public nonReentrant {
        address pairAddress = factoryContract.getPair(WETH, address(this));

        require(pairAddress != address(0), "ERC20: Pair not found");

        uint256 preETH = address(this).balance;

        IPair pair = IPair(pairAddress);
        pair.claimShare();

        uint256 postETH = address(this).balance;

        uint256 balance = postETH - preETH;
        require(balance > 0, "ERC20: No fees");

        uint256 creatorBalance = (balance * 75) / 100;
        payable(creator).transfer(creatorBalance);
        payable(0x4C5fbF8D815379379b3695ba77B5D3f898C1230b).transfer(balance-creatorBalance); //25% Ethervista ecosystem fee
    }

    //========= Get =========
    function getShare() external view returns (uint256) {
        address pairAddress = factoryContract.getPair(WETH, address(this));

        require(pairAddress != address(0), "ERC20: Pair not found");

        return IPair(pairAddress).viewShare();
    }

    function getStatus() public view returns (bool, string memory, address) { 
        return (launched, standard, creator);
    }

    function getSaleState() external view returns (
        uint256 _totalTokens,
        uint256 _saleGoal,
        uint256 _totalRaised,
        uint256 _tokensSold,
        bool _status,
        bool _launched,
        address _eulerFactory
    )
    {
        return (totalTokens, saleGoal, totalRaised, tokensSold, status, launched, eulerFactory);
    }
}

