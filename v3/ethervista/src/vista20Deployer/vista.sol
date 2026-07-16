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

interface IEulerFactoryBalances {
    function claimableBalance(address tokenAddress, address user) external view returns (uint256);
}

interface IHardstake {
    function contributeETH(uint256 value) external payable;
    function totalSupply(address) external view returns (uint256);
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
        require(_msgSender() == creator, "VISTA20: NOT_CREATOR");
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
        require(spender == factoryContract.router() || approveWhitelist[spender],"VISTA20: FORBIDDEN SPENDER");
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


contract VISTA20 is ERC20 {

    IHardstake hardstake;
    string private standard = "VISTA20";

    uint8 private burnShare = 33;
    uint8 private stakeShare = 33;
    uint8 private creatorShare = 34;

    uint8 threshold = 100;

    // Euler Factory params
    address private eulerFactory;
    uint256 private totalTokens;
    uint256 private saleGoal;
    uint8 private creatorTokensShare;
    uint256 private totalRaised;
    uint256 private tokensSold;
    bool private status;   // bonded
    bool private launched;

    // ---------------- daily snapshots ----------------
    uint64 public immutable startTimestamp;
    uint32 public constant HISTORY_DAYS = 365;

    struct DailyTotals {
        uint32 day;            // daySinceStart
        uint256 tokensBurned;  // tokens burned on that day
        uint256 stakeETH;      // ETH sent to hardstake on that day
        uint256 creatorETH;    // ETH sent to creator on that day
    }

    DailyTotals[HISTORY_DAYS] private _dailyTotals;

    uint256 public totalEthUsedTotal;     // total ETH actually spent/sent via _process (burn swap + stake + creator)
    uint256 public totalTokensBurned;     // cumulative tokens burned via _process
    uint256 public totalStakeEthSent;     
    uint256 public totalCreatorEthSent;   

    uint256 private _processingLock;
    uint256 private _reentrancyLock;
    modifier nonReentrant() {
        require(_reentrancyLock == 0, "VISTA20: REENTRANT");
        _reentrancyLock = 1;
        _;
        _reentrancyLock = 0;
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

        hardstake = IHardstake(0xEBFfa9d3fB522e9773c18A9c44194BE502Fc3A28);

        startTimestamp = uint64(block.timestamp);

        _mint(address(this), _totalTokens);
    }

    function setShares(uint8 _burnShare, uint8 _stakeShare, uint8 _threshold) external onlyCreator {
        require(uint16(_burnShare) + uint16(_stakeShare) <= 100, "VISTA20: BAD_SHARES");
        burnShare = _burnShare;
        stakeShare = _stakeShare;
        creatorShare = uint8(100 - _burnShare - _stakeShare);
        threshold = _threshold;
    }

    // external caller should check totalSupply != 0
    function externalContributeETH() external payable nonReentrant {
        hardstake.contributeETH{value: msg.value}(msg.value);
    }

    receive() external payable {
        address pairAddress = factoryContract.getPair(WETH, address(this));
        if (msg.sender == pairAddress) return;
        require(msg.sender == factoryContract.router(), "VISTA20: Router only");
        if (_processingLock != 0) return;
        uint256 thresholdEth = IEtherVistaRouter(factoryContract.router()).usdcToEth(threshold);
        if (address(this).balance >= thresholdEth) {
            _processingLock = 1;
            _process(IEtherVistaRouter(factoryContract.router()));
            _processingLock = 0;
        }
    }

    // ---------------- Daily snapshot helpers ----------------
    function daySinceStart() internal view returns (uint32) {
        return uint32((block.timestamp - startTimestamp) / 1 days);
    }

    function _recordDaily(uint256 tokensBurned, uint256 stakeEthSent, uint256 creatorEthSent) private {
        uint32 day = daySinceStart();
        uint32 idx = day % HISTORY_DAYS;

        DailyTotals storage d = _dailyTotals[idx];
        if (d.day != day) {
            d.day = day;
            d.tokensBurned = 0;
            d.stakeETH = 0;
            d.creatorETH = 0;
        }

        d.tokensBurned += tokensBurned;
        d.stakeETH += stakeEthSent;
        d.creatorETH += creatorEthSent;
    }

    function _process(IEtherVistaRouter router) internal {
        uint256 totalEthAvailable = address(this).balance;
        if (totalEthAvailable == 0) return;

        uint256 burnEthUsed = (totalEthAvailable * burnShare) / 100;
        uint256 stakeEthPlanned = (totalEthAvailable * stakeShare) / 100;
        uint256 creatorEthSent = totalEthAvailable - burnEthUsed - stakeEthPlanned;

        uint256 tokensBurned = 0;

        if (burnEthUsed > 0) {
            uint256 preBal = balanceOf(address(this));

            address[] memory path = new address[](2);
            path[0] = WETH;
            path[1] = address(this);

            router.swapExactETHForTokensSupportingFeeOnTransferTokens{value: burnEthUsed}(
                0,
                path,
                address(this),
                block.timestamp
            );

            uint256 postBal = balanceOf(address(this));
            tokensBurned = postBal - preBal;

            if (tokensBurned > 0) {
                _update(address(this), address(0), tokensBurned);
            }
        }

        uint256 stakeEthSent = 0;
        if (hardstake.totalSupply(address(this)) > 0 && stakeEthPlanned > 0) {
            stakeEthSent = stakeEthPlanned;
            hardstake.contributeETH{value: stakeEthSent}(stakeEthSent);
        }

        if (creatorEthSent > 0) {
            payable(creator).call{value: creatorEthSent}("");
        }

        if (tokensBurned > 0) {
            totalTokensBurned += tokensBurned;
        }
        if (stakeEthSent > 0) {
            totalStakeEthSent += stakeEthSent;
        }
        if (creatorEthSent > 0) {
            totalCreatorEthSent += creatorEthSent;
        }

        totalEthUsedTotal += (burnEthUsed + stakeEthSent + creatorEthSent);

        _recordDaily(tokensBurned, stakeEthSent, creatorEthSent);
    }

    // ----- EulerFactory -----------

    modifier onlyEulerFactory() {
        require(msg.sender == eulerFactory, "VISTA20: Only factory");
        _;
    }

    function initializeBondedState(uint256 _tokensSold, uint256 _totalRaised) external payable onlyEulerFactory nonReentrant
    {
        require(!launched, "VISTA20: Sale already launched");
        require(!status, "VISTA20: Already bonded");
        require(_totalRaised >= saleGoal, "VISTA20: Sale goal not reached");
        require(address(this).balance >= _totalRaised, "VISTA20: Funding mismatch");
        require(msg.value == _totalRaised, "VISTA20: Value mismatch");

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
        require(!launched, "VISTA20: Sale already launched");
        require(totalRaised >= saleGoal, "VISTA20: Sale goal not reached");
        require(status, "VISTA20: not bonded");
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
            address(this) // protocol is the token
        );

        _transfer(address(this), creator, creatorTokens);
        uint256 initiatorShareAmount = address(this).balance;
        require(initiatorShareAmount > 0, "No balance for creator share");

        payable(saleInitiator).transfer(initiatorShareAmount);
    }

    function claimTokens(address user) external onlyEulerFactory nonReentrant {
        require(launched, "VISTA20: Sale not launched");
        uint256 tokenAmount = IEulerFactoryBalances(eulerFactory).claimableBalance(address(this), user);
        require(tokenAmount > 0, "VISTA20: No tokens to claim");

        _transfer(address(this), user, tokenAmount);
    }

    function takeFee() public nonReentrant {
        address pairAddress = factoryContract.getPair(WETH, address(this));

        require(pairAddress != address(0), "VISTA20: Pair not found");

        uint256 preETH = address(this).balance;

        IPair pair = IPair(pairAddress);
        pair.claimShare();

        uint256 postETH = address(this).balance;

        uint256 balance = postETH - preETH;
        require(balance > 0, "VISTA20: No fees");

        uint256 creatorBalance = (balance * 75) / 100;
        payable(creator).transfer(creatorBalance);
        payable(0x4C5fbF8D815379379b3695ba77B5D3f898C1230b).transfer(balance-creatorBalance); // 25% Ethervista ecosystem fee
    }

    function getShare() external view returns (uint256) {
        address pairAddress = factoryContract.getPair(WETH, address(this));

        require(pairAddress != address(0), "VISTA20: Pair not found");

        return IPair(pairAddress).viewShare();
    }

    // ========= Get =========
    function getStatus() public view returns (bool, string memory, address) {
        return (launched, standard, creator);
    }

    function getShares() public view returns (uint8, uint8, uint8) {
        return (burnShare, stakeShare, creatorShare);
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

    function getLastDailyTotals(uint32 count) external view returns (DailyTotals[] memory out) {
        require(count > 0 && count <= HISTORY_DAYS, "VISTA20: BAD_COUNT");

        uint32 today = daySinceStart();
        uint32 n = count;
        if (today + 1 < n) n = today + 1;

        uint32 startDay = today - (n - 1);
        out = new DailyTotals[](n);

        for (uint32 i = 0; i < n; i++) {
            uint32 day = startDay + i;
            DailyTotals storage s = _dailyTotals[day % HISTORY_DAYS];
            if (s.day == day) out[i] = s;
            else out[i] = DailyTotals(day, 0, 0, 0);
        }
    }
 
    function getTotal() public view returns (
        uint256 _totalEthUsedTotal, 
        uint256 _totalTokensBurned, 
        uint256 _totalStakeEthSent, 
        uint256 _totalCreatorEthSent
    ){
        return (totalEthUsedTotal, totalTokensBurned, totalStakeEthSent, totalCreatorEthSent);
    }
}
