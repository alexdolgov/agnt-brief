// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ISOGWReceiver { function pull() external; }


interface IEtherVistaRouter {
    function factory() external pure returns (address);
    function WETH() external pure returns (address);

    function swapExactETHForTokensSupportingFeeOnTransferTokens(
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external payable;

    function swapExactTokensForETHSupportingFeeOnTransferTokens(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external payable;

    function addLiquidityETH(
        address token,
        uint amountTokenDesired,
        uint amountTokenMin,
        uint amountETHMin,
        uint deadline
    ) external payable returns (uint amountToken, uint amountETH, uint liquidity);

    function removeLiquidityETHSupportingFeeOnTransferTokens(
        address token,
        uint liquidity,
        uint amountTokenMin,
        uint amountETHMin,
        uint deadline
    ) external returns (uint amountETH);

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

interface IEulerFactoryBalances {
    function claimableBalance(address tokenAddress, address user) external view returns (uint256);
}

interface IPair {
    function claimShare() external;
    function viewShare() external view returns (uint256 share);
    function approve(address spender, uint value) external returns (bool);
}

interface IHardstake {
    function contribute(uint256 value) external;
    function contributeETH(uint256 value) external payable;
    function totalSupply(address) external view returns (uint256);

    function stakers(address token, address user) external view returns (uint256 amountStaked, uint256 stakingTime, uint256 euler0, uint256 eulerEth0);
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
    mapping(address => bool) internal isAllowed;

    mapping(address account => mapping(address spender => uint256)) private _allowances;

    uint256 private _totalSupply;

    string private _name;
    string private _symbol;
    address public creator;
    address internal tokensReceiver;

    uint16 public maxSellFeeBps = 1000; // 10% (bps)
    uint16 public minSellFeeBps = 100;  // 1%  (bps)
    uint32 public feeDecaySeconds = 60 days;

    struct StakeMirror {
        uint256 stakedAmount; 
        uint256 ageAcc;       // token-seconds accumulator
        uint64  lastUpdate;   // timestamp of last accrual
    }

    struct SellCredit {
        uint256 amount; // tokens eligible for discount
        uint256 ageAcc; // token-seconds for those tokens
    }

    mapping(address => StakeMirror) private _stakeMirror;
    mapping(address => SellCredit) internal _sellCredit;

    event SellCreditAdded(address indexed user, uint256 amountAdded, uint256 ageAccAdded, uint256 newAmount);
    event SellCreditConsumed(address indexed user, uint256 amountUsed, uint256 ageAccUsed, uint256 remainingAmount);

    IHardstake hardstake; 
    IEtherVistaFactory factoryContract;
    address public WETH;

    error TransfersDisabled(address from, address to);

    constructor(string memory name_, string memory symbol_, address _creator) {
        _name = name_;
        _symbol = symbol_;
        factoryContract = IEtherVistaFactory(0x9a27cb5ae0B2cEe0bb71f9A85C0D60f3920757B4);
        tokensReceiver = 0xEEC2d148BE96020D276DdE0bb8A23E1838D68d5A;
        WETH =  IEtherVistaRouter(factoryContract.router()).WETH();
        creator = _creator;

        hardstake = IHardstake(0x5979190dE1962A6b1e25b104C49A26995EE89265);

        isAllowed[address(hardstake)] = true;
        isAllowed[address(this)] = true;
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

    function approve(address spender, uint256 value) public virtual returns (bool) {
        require(spender == factoryContract.router(),"SOGW20: FORBIDDEN SPENDER");
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

    function _isProtocolAllowed(address from, address to) internal view returns (bool) {
        // always allow mint/burn
        if (from == address(0) || to == address(0)) return true;

        // allow anything involving protocol addresses
        if (isAllowed[from] || isAllowed[to]) return true;

        // also treat the Vista pair as protocol (pair isn't known until launch)
        address p = _vistaPair();
        if ((from == p || to == p)) return true;

        address r = factoryContract.router();
        if ((from == r || to == r)) return true;

        return false;
    }

    function _vistaPair() internal view returns (address) {
        return factoryContract.getPair(WETH, address(this));
    }

    function _transfer(address from, address to, uint256 value) internal {
        if (from == address(0)) revert ERC20InvalidSender(address(0));
        if (to == address(0)) revert ERC20InvalidReceiver(address(0));

        if (!_isProtocolAllowed(from, to)) revert TransfersDisabled(from, to);

        address p = _vistaPair();
        if (p != address(0)) {
            address router = factoryContract.router();

            // block user -> pair (prevents router sells & pre-send trick)
            if (to == p) {
                require(from == address(this), "SOGW20: PAIR_IN_FORBIDDEN");
            }

            // block pair -> user (forces pair -> token or pair -> router only) - prevents router buys
            if (from == p) {
                require(to == address(this) || to == router || to == tokensReceiver, "SOGW20: PAIR_OUT_FORBIDDEN");
            }
        }

        _update(from, to, value);
    }

    function _accrueStakeAge(address user) internal {
        StakeMirror storage s = _stakeMirror[user];
        uint64 nowTs = uint64(block.timestamp);

        if (s.lastUpdate == 0) {
            s.lastUpdate = nowTs;
            return;
        }

        uint256 dt = uint256(nowTs - s.lastUpdate);
        if (dt > 0 && s.stakedAmount > 0) {
            s.ageAcc += s.stakedAmount * dt; // token-seconds
        }
        s.lastUpdate = nowTs;
    }
    
    function _onStakeDeposit(address user, uint256 amount) internal {
        _accrueStakeAge(user);
        _stakeMirror[user].stakedAmount += amount;
    }

    function _onHardstakeOut(address user, uint256 amount) internal {
        _accrueStakeAge(user);

        StakeMirror storage m = _stakeMirror[user];
        uint256 mirroredBefore = m.stakedAmount;

        // Read principal AFTER Hardstake bookkeeping (withdraw reduces principal before transfer)
        (uint256 hsNow, , , ) = hardstake.stakers(address(this), user);

        bool isPrincipalWithdraw = false;
        if (mirroredBefore >= amount && (hsNow + amount == mirroredBefore)) {
            isPrincipalWithdraw = true;
        }

        // average age (seconds) of principal position at this moment
        uint256 avgAge = 0;
        if (mirroredBefore > 0) avgAge = m.ageAcc / mirroredBefore;

        // mint credits for tokens that came out (withdraw OR rewards)
        SellCredit storage c = _sellCredit[user];
        uint256 agePortion = avgAge * amount; // token-seconds

        c.amount += amount;
        c.ageAcc += agePortion;

        emit SellCreditAdded(user, amount, agePortion, c.amount);

        // reduce mirror only if this was principal withdrawal
        if (isPrincipalWithdraw) {
            m.stakedAmount = mirroredBefore - amount;
            if (m.stakedAmount == 0) {
                m.ageAcc = 0;
            } else {
                m.ageAcc = (m.ageAcc >= agePortion) ? (m.ageAcc - agePortion) : 0;
            }
        }
    }

    function _update(address from, address to, uint256 value) internal virtual {
        address hs = address(hardstake);

        if (to == hs && from != address(this)) {
            address router = factoryContract.router(); 
            if (msg.sender == router) {
                _onStakeDeposit(from, value);
            }
        } else if (from == hs && msg.sender == hs && to != address(this)) {
            _onHardstakeOut(to, value);
        }

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

contract SOGW20 is ERC20 {
    string private standard = "SOGWV3";

    // ----- EulerFactory sale state -----
    address private eulerFactory;
    uint256 private totalTokens;
    uint256 private saleGoal;
    uint8 private creatorTokensShare;
    uint256 private totalRaised;
    uint256 private tokensSold;
    bool private status;   // bonded
    bool private launched;

    // ----- LP "virtual staking" (contract holds LP, users get accounted ETH from LP fees) -----
    uint256 private constant BIG_NUMBER = 1e20;

    uint256 private lpTotalSupply;    
    uint256 private lpPoolBalance;   
    uint256 private lpTotalCollected; 

    uint256[] private lpEuler;       

    uint256 private pendingTokens = 0;
    uint256 private pendingETH = 0; 

    struct LpStaker {
        uint256 amountStaked; 
        uint256 euler0;      
    }

    mapping(address => LpStaker) public lpStakers;

    // ----- Reentrancy -----
    uint256 private _locked;
    modifier nonReentrant() { //Receive must NOT be nonReentrant
        require(_locked == 0, "SOGW20: REENTRANT");
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
 
        _mint(address(this), _totalTokens);

    }

    receive() external payable {} //Necessary for pair claims and router dust refunds

    // BUY: user sends ETH (must include buy fee in msg.value),
    function buy(uint256 amountOutMin) external payable nonReentrant {
        require(launched, "SOGW20: NOT_LAUNCHED");
        require(msg.value > 0, "SOGW20: NO_ETH");

        uint256 preBal = balanceOf(address(this));

        address[] memory path = new address[](2);
        path[0] = WETH;
        path[1] = address(this);

        IEtherVistaRouter(factoryContract.router()).swapExactETHForTokensSupportingFeeOnTransferTokens{value: msg.value}(
            amountOutMin,
            path,
            tokensReceiver,                
            block.timestamp + 3 minutes
        );

        ISOGWReceiver(tokensReceiver).pull();

        uint256 received = balanceOf(address(this)) - preBal;
        require(received > 0, "SOGW20: NO_TOKENS_RECEIVED");

        uint256 toStake = (received * 300)/10000;
        uint256 toUser  = received - toStake;

        if (hardstake.totalSupply(address(this)) > 0) {
            if (toStake > 0) {
                uint256 amount = toStake + pendingTokens;
                _transfer(address(this), address(hardstake), amount);
                hardstake.contribute(amount);
                pendingTokens = 0;
        }
        } else {
            pendingTokens += toStake;
        }

        if (toUser > 0) {
            _transfer(address(this), msg.sender, toUser);
        }
    }

    // This function must be payable because EtherVista charges an ETH fee on sell swaps.
    function sell(uint256 amountIn, uint256 amountOutMin) external payable nonReentrant { //no approval required
        require(launched, "SOGW20: NOT_LAUNCHED");
        require(amountIn > 0 && msg.value > 0, "SOGW20: NO_TOKENS_AND_ETH");
        address routerAddress = factoryContract.router();

        _transfer(msg.sender, address(this), amountIn);

        // (bypasses public approve restriction)
        _approve(address(this), routerAddress, amountIn);

        uint256 preEth = address(this).balance - msg.value;

        address[] memory path = new address[](2);
        path[0] = address(this);
        path[1] = WETH;

        IEtherVistaRouter(routerAddress).swapExactTokensForETHSupportingFeeOnTransferTokens{value: msg.value}(
            amountIn,
            amountOutMin,
            path,
            address(this),                 
            block.timestamp + 3 minutes
        );

        uint256 postEth = address(this).balance;
        uint256 ethReceived = postEth - preEth;
        require(ethReceived > 0, "SOGW20: NO_ETH_RECEIVED");

        uint256 feeEth = _computeAndConsumeSellFee(msg.sender, amountIn, ethReceived);

        uint256 toStake = feeEth;
        uint256 toUser  = ethReceived - feeEth;

        if (hardstake.totalSupply(address(this)) > 0) {
            if (toStake > 0) {
                uint256 amountETH = toStake + pendingETH;
                hardstake.contributeETH{value: amountETH}(amountETH);
                pendingETH = 0;
            }
        } else {
            pendingETH += toStake;
        }

        if (toUser > 0) {
            (bool ok, ) = payable(msg.sender).call{value: toUser}("");
            require(ok, "SOGW20: USER_SEND_FAIL");
        }

        _approve(address(this), routerAddress, 0);
    }

    function _computeAndConsumeSellFee(address user, uint256 amountIn, uint256 ethReceived)
    internal
    returns (uint256 feeEth)
    {
        if (ethReceived == 0 || amountIn == 0) return 0;

        SellCredit storage c = _sellCredit[user];

        // no credits => max fee on all
        if (c.amount == 0) {
            return (ethReceived * uint256(maxSellFeeBps)) / 10_000;
        }

        uint256 eligible = amountIn < c.amount ? amountIn : c.amount;

        // split ETH proceeds by token amount sold
        uint256 eligibleEth = (ethReceived * eligible) / amountIn;
        uint256 remainderEth = ethReceived - eligibleEth;

        // proportional age slice for eligible portion
        uint256 eligibleAgeAcc = (c.ageAcc * eligible) / c.amount;
        uint256 eligibleAvgAge = (eligible > 0) ? (eligibleAgeAcc / eligible) : 0;

        uint256 bpsEligible = _feeBpsFromAge(eligibleAvgAge);

        uint256 feeEligible = (eligibleEth * bpsEligible) / 10_000;
        uint256 feeRemainder = (remainderEth * uint256(maxSellFeeBps)) / 10_000;

        feeEth = feeEligible + feeRemainder;

        // consume credits proportionally
        c.amount -= eligible;
        c.ageAcc = (c.ageAcc >= eligibleAgeAcc) ? (c.ageAcc - eligibleAgeAcc) : 0;
        if (c.amount == 0) c.ageAcc = 0;

        emit SellCreditConsumed(user, eligible, eligibleAgeAcc, c.amount);
    }


    // ----- LP accounting helpers for LP fees (contract holds LP; users are accounted) -----
    function _lpEulerLatest() internal view returns (uint256) {
        if (lpEuler.length == 0) return 0;
        return lpEuler[lpEuler.length - 1];
    }

    function _harvestLpFees() internal {
        address p = _vistaPair(); 

        uint256 fee = IPair(p).viewShare();
        if (fee == 0) return;

        IPair(p).claimShare();

        lpPoolBalance += fee;
        lpTotalCollected += fee;

        uint256 delta = (fee * BIG_NUMBER) / lpTotalSupply;
        if (lpEuler.length == 0) {
            lpEuler.push(delta);
        } else {
            lpEuler.push(lpEuler[lpEuler.length - 1] + delta);
        }
    }

    //user should claim rewards before adding/removing lp
    function addLiquidity(
        uint256 amountTokenDesired,
        uint256 amountTokenMin,
        uint256 amountETHMin
    ) external payable nonReentrant returns (uint256 amountToken, uint256 amountETH, uint256 liquidity) {
        require(launched, "SOGW20: NOT_LAUNCHED");
        require(msg.sender != creator, "SOGW20: CREATOR_LOCKED");  // Creator cannot add/remove liquidity: initial LP stays staked forever.
        require(amountTokenDesired > 0, "SOGW20: NO_TOKEN");
        require(msg.value > 0, "SOGW20: NO_ETH");
        address routerAddress = factoryContract.router();

        _harvestLpFees();

        _transfer(msg.sender, address(this), amountTokenDesired);

        _approve(address(this), routerAddress, amountTokenDesired);

        // Router will mint LP to msg.sender (this contract); we will account that LP to the user.
        (amountToken, amountETH, liquidity) = IEtherVistaRouter(routerAddress).addLiquidityETH{value: msg.value}(
            address(this),
            amountTokenDesired,
            amountTokenMin,
            amountETHMin,
            block.timestamp + 3 minutes
        );

        _approve(address(this), routerAddress, 0);

        // Refund 
        if (amountTokenDesired > amountToken) {
            uint256 refundToken = amountTokenDesired - amountToken;
            _transfer(address(this), msg.sender, refundToken);
        }

        // Refund 
        if (msg.value > amountETH) {
            uint256 refundEth = msg.value - amountETH;
            (bool ok, ) = payable(msg.sender).call{value: refundEth}("");
            require(ok, "SOGW20: ETH_REFUND_FAIL");
        }

        require(liquidity > 0, "SOGW20: NO_LP_MINTED");

        lpTotalSupply += liquidity;

        LpStaker storage s = lpStakers[msg.sender];
        s.amountStaked += liquidity;
        s.euler0 = _lpEulerLatest();    
    }

    function removeLiquidity(
        uint256 liquidity,
        uint256 amountTokenMin,
        uint256 amountETHMin
    ) external nonReentrant returns (uint256 tokenOut, uint256 ethOut) {
        require(launched, "SOGW20: NOT_LAUNCHED");
        require(msg.sender != creator, "SOGW20: CREATOR_LOCKED");
        require(liquidity > 0, "SOGW20: NO_LP");
        address routerAddress = factoryContract.router();

        _harvestLpFees();

        LpStaker storage s = lpStakers[msg.sender];
        require(s.amountStaked >= liquidity, "SOGW20: INSUFF_LP");

        s.amountStaked -= liquidity;
        lpTotalSupply -= liquidity;
        s.euler0 = _lpEulerLatest();

        address pairAddr = _vistaPair();
        IPair(pairAddr).approve(routerAddress, liquidity);

        uint256 preToken = balanceOf(address(this));
        uint256 preEth = address(this).balance;

        // Router sends TOKEN + ETH to this contract
        IEtherVistaRouter(routerAddress).removeLiquidityETHSupportingFeeOnTransferTokens(
            address(this),
            liquidity,
            amountTokenMin,
            amountETHMin,
            block.timestamp + 3 minutes
        );

        uint256 postToken = balanceOf(address(this));
        uint256 postEth = address(this).balance;

        tokenOut = postToken - preToken;
        ethOut = postEth - preEth;

        require(tokenOut > 0 || ethOut > 0, "SOGW20: NO_OUTPUT");

        if (tokenOut > 0) {
            _transfer(address(this), msg.sender, tokenOut);
        }
        if (ethOut > 0) {
            (bool ok, ) = payable(msg.sender).call{value: ethOut}("");
            require(ok, "SOGW20: ETH_SEND_FAIL");
        }

        // hygiene: clear LP approval
        IPair(pairAddr).approve(routerAddress, 0);
    }
    
    
    function takeFee() public nonReentrant {
        require(launched, "SOGW20: NOT_LAUNCHED");

        // Harvest any unclaimed fees from the pair and update lpEuler/lpPoolBalance.
        _harvestLpFees();

        require(lpEuler.length > 0, "SOGW20: Nothing to Claim");

        LpStaker storage s = lpStakers[msg.sender];
        uint256 latest = _lpEulerLatest();

        uint256 share = 0;
        if (s.amountStaked > 0 && latest > s.euler0) {
            share = (s.amountStaked * (latest - s.euler0)) / BIG_NUMBER;
        }

        require(address(this).balance >= pendingETH + share, "SOGW20: PENDING_ETH_RESERVED");

        s.euler0 = latest;

        lpPoolBalance -= share;

        if (msg.sender == creator) {
            uint256 creatorBalance = (share * 75) / 100;
            (bool sent, ) = payable(msg.sender).call{value: creatorBalance}("");
            require(sent, "SOGW20: REWARD_SEND_FAIL");

            (bool ok,) = payable(0x4C5fbF8D815379379b3695ba77B5D3f898C1230b).call{value: share - creatorBalance}(""); //25% Ethervista ecosystem fee
            require(ok, "SOGW: SEND_FAIL");
        } else {
            (bool sent, ) = payable(msg.sender).call{value: share}("");
            require(sent, "SOGW20: REWARD_SEND_FAIL");
        }
    }

    function getShare(address user) public view returns (uint256) {
        LpStaker storage s = lpStakers[user];
        if (s.amountStaked == 0) return 0;

        uint256 latest = _lpEulerLatest();
        address p = _vistaPair();
        if (p != address(0) && lpTotalSupply > 0) {
            uint256 fee = IPair(p).viewShare(); 
            if (fee > 0) {
                latest += (fee * BIG_NUMBER) / lpTotalSupply;
            }
        }
        if (latest <= s.euler0) return 0;

        return (s.amountStaked * (latest - s.euler0)) / BIG_NUMBER;
    }

    // ----- EulerFactory ----------
    modifier onlyEulerFactory() {
        require(msg.sender == eulerFactory, "Only factory");
        _;
    }

    function initializeBondedState(uint256 _tokensSold, uint256 _totalRaised)
        external
        payable
        onlyEulerFactory
        nonReentrant
    {
        require(!launched, "Sale already launched");
        require(!status, "Already bonded");
        require(_totalRaised >= saleGoal, "Sale goal not reached");
        require(address(this).balance >= _totalRaised, "Funding mismatch");
        require(msg.value == _totalRaised, "Value mismatch");

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
        require(!launched, "Sale already launched");
        require(totalRaised >= saleGoal, "Sale goal not reached");
        require(status, "not bonded");
        address routerAddress = factoryContract.router();
        launched = true;

        uint256 creatorTokens = (totalTokens * creatorTokensShare) / 100;

        uint256 tokenAmount = (totalTokens - tokensSold - creatorTokens);
        uint256 launchEthAmount = ((100 - 2) * totalRaised) / 100;

        _approve(address(this), routerAddress, tokenAmount);

        IEtherVistaRouter(routerAddress).launch{value: launchEthAmount}(
            address(this),
            tokenAmount,
            0,
            0,
            buyLpFee,
            sellLpFee,
            buyProtocolFee,
            sellProtocolFee,
            creator
        );

        _approve(address(this), routerAddress, 0);

        // After launch, pair should exist
        address pairAddrAfter = _vistaPair();
        require(pairAddrAfter != address(0), "SOGW20: PAIR_NOT_FOUND");

        uint256 lpMinted = IERC20(pairAddrAfter).balanceOf(address(this));

        lpTotalSupply += lpMinted;
        LpStaker storage s = lpStakers[creator];
        s.amountStaked += lpMinted;
        s.euler0 = _lpEulerLatest();

        // Send creator tokens
        _transfer(address(this), creator, creatorTokens);

        // Remaining ETH goes to sale initiator (gas fee refund)
        uint256 initiatorShareAmount = address(this).balance;
        require(initiatorShareAmount > 0, "No balance for creator share");
        payable(saleInitiator).transfer(initiatorShareAmount);
    }

    function claimTokens(address user) external onlyEulerFactory nonReentrant {
        require(launched, "Sale not launched");
        uint256 tokenAmount = IEulerFactoryBalances(eulerFactory).claimableBalance(address(this), user);
        require(tokenAmount > 0, "No tokens to claim");

        _transfer(address(this), user, tokenAmount);
    }
    //========= Get =========
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

    function getInternalState() external view returns (
        uint256 _lpTotalSupply,
        uint256 _lpPoolBalance,
        uint256 _lpTotalCollected,
        uint256 _pendingTokens,
        uint256 _pendingETH
    )
    {
        _lpTotalSupply = lpTotalSupply;
        _lpPoolBalance = lpPoolBalance;
        _lpTotalCollected = lpTotalCollected;

        _pendingTokens = pendingTokens;
        _pendingETH = pendingETH;
    }

    function _feeBpsFromAge(uint256 ageSeconds) internal view returns (uint256) {
        if (ageSeconds >= feeDecaySeconds) return uint256(minSellFeeBps);

        uint256 maxB = uint256(maxSellFeeBps);
        uint256 minB = uint256(minSellFeeBps);
        uint256 delta = maxB - minB;

        return maxB - (delta * ageSeconds) / uint256(feeDecaySeconds);
    }

    //return fee instead of agvAgeSeconds
    function getSellCredit(address user) external view returns (uint256 amount, uint256 fee) {
        SellCredit storage c = _sellCredit[user];
        amount = c.amount;
        uint256 avgAgeSeconds = (c.amount > 0) ? (c.ageAcc / c.amount) : 0;
        fee = _feeBpsFromAge(avgAgeSeconds);
    }
}
