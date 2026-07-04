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

    function addLiquidityETH(
        address token,
        uint amountTokenDesired,
        uint amountTokenMin,
        uint amountETHMin,
        uint deadline
    ) external payable returns (uint amountToken, uint amountETH, uint liquidity);

    // NOTE: must match the real router ABI (see hardrouter.sol)
    function launch(
        address token,
        uint256 amountTokenDesired,
        uint256 amountTokenMin,
        uint256 amountETHMin,
        uint8 buyLpFee,
        uint8 sellLpFee,
        uint8 buyProtocolFee,
        uint8 sellProtocolFee,
        address protocolAddress
    ) external payable returns (uint amountToken, uint amountETH, uint liquidity);

    function usdcToEth(uint256 usdcAmount) external view returns (uint256);
}

interface IEtherVistaFactory {
    function router() external view returns (address);
    function getPair(address tokenA, address tokenB) external view returns (address pair);
}

interface IPair {
    function token0() external view returns (address);
    function token1() external view returns (address);
    function getReserves() external view returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);
}

interface IHardstake {
    function contributeETH(uint256 value) external payable;

    function totalSupply(address) external view returns (uint256);
}

interface IERC20 {
    function transfer(address to, uint256 value) external returns (bool);
    function balanceOf(address account) external view returns (uint256);
}

interface IWETH {
    function deposit() external payable;
    function transfer(address to, uint256 value) external returns (bool);
    function balanceOf(address account) external view returns (uint256);
    function withdraw(uint256 wad) external;
    function approve(address spender, uint256 value) external returns (bool);
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
}

interface IERC20Metadata {
    function name() external view returns (string memory);
    function symbol() external view returns (string memory);
    function decimals() external view returns (uint8);
}

abstract contract ERC20 is Context, IERC20Errors {
    mapping(address => uint256) private _balances;
    mapping(address => mapping(address => uint256)) private _allowances;
    mapping(address => bool) public approveWhitelist;

    uint256 private _totalSupply;
    string private _name;
    string private _symbol;

    IEtherVistaFactory factoryContract;
    address internal creator;

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);

    modifier onlyCreator() {
        require(_msgSender() == creator, "OREBIT20: NOT_CREATOR");
        _;
    }

    constructor(string memory name_, string memory symbol_, address _creator) {
        _name = name_;
        _symbol = symbol_;
        factoryContract = IEtherVistaFactory(0x9a27cb5ae0B2cEe0bb71f9A85C0D60f3920757B4);
        creator = _creator;
    }

    function name() public view virtual returns (string memory) { return _name; }
    function symbol() public view virtual returns (string memory) { return _symbol; }
    function decimals() public view virtual returns (uint8) { return 18; }

    function totalSupply() public view virtual returns (uint256) { return _totalSupply; }
    function balanceOf(address account) public view virtual returns (uint256) { return _balances[account]; }

    function allowance(address owner, address spender) public view virtual returns (uint256) {
        return _allowances[owner][spender];
    }

    function setApprove(address spender, bool status) onlyCreator external {
            approveWhitelist[spender] = status;
    }

    function approve(address spender, uint256 value) public virtual returns (bool) {
        require(spender == factoryContract.router() || approveWhitelist[spender], "OREBIT20: FORBIDDEN");
        address owner = _msgSender();
        _approve(owner, spender, value);
        return true;
    }

    function transfer(address to, uint256 value) public virtual returns (bool) {
        address owner = _msgSender();
        _transfer(owner, to, value);
        return true;
    }

    function transferFrom(address from, address to, uint256 value) public virtual returns (bool) {
        address spender = _msgSender();
        _spendAllowance(from, spender, value);
        _transfer(from, to, value);
        return true;
    }

    function _transfer(address from, address to, uint256 value) internal {
        if (from == address(0)) revert ERC20InvalidSender(address(0));
        if (to == address(0)) revert ERC20InvalidReceiver(address(0));
        _update(from, to, value);
    }

    function _update(address from, address to, uint256 value) internal virtual {
        if (from == address(0)) {
            _totalSupply += value;
        } else {
            uint256 fromBalance = _balances[from];
            if (fromBalance < value) revert ERC20InsufficientBalance(from, fromBalance, value);
            unchecked { _balances[from] = fromBalance - value; }
        }

        if (to == address(0)) {
            unchecked { _totalSupply -= value; }
        } else {
            unchecked { _balances[to] += value; }
        }

        emit Transfer(from, to, value);
    }

    function _mint(address account, uint256 value) internal {
        if (account == address(0)) revert ERC20InvalidReceiver(address(0));
        _update(address(0), account, value);
    }

    function _approve(address owner, address spender, uint256 value) internal {
        if (owner == address(0)) revert ERC20InvalidApprover(address(0));
        if (spender == address(0)) revert ERC20InvalidSpender(address(0));
        _allowances[owner][spender] = value;
        emit Approval(owner, spender, value);
    }

    function _spendAllowance(address owner, address spender, uint256 value) internal virtual {
        uint256 currentAllowance = allowance(owner, spender);
        if (currentAllowance != type(uint256).max) {
            if (currentAllowance < value) revert ERC20InsufficientAllowance(spender, currentAllowance, value);
            unchecked { _allowances[owner][spender] = currentAllowance - value; }
        }
    }
}

contract OREBIT20 is ERC20 {
    string private standard = "OREBIT20";
    IHardstake hardstake;

    uint256 private constant MAX_SUPPLY = 20_000_000 * 1e18; //farmable supply, max supply is 21 Million
    uint256 private constant GENESIS_MINT = 1_000_000 * 1e18;
    uint256 private constant LAUNCH_ETH = 0.5 ether;
    uint16 private constant LP_ADD_BPS = 300; // 3% of pool WETH reserves per liquidity add
    uint64 private lastLpAddTime;
    uint32 private constant LP_ADD_COOLDOWN = 24 hours;
    uint256 private lpTokenReserve;
    
    uint8 private burnShare = 33;
    uint8 private stakeShare = 33;
    uint8 private creatorShare = 34;

    uint8 private threshold = 100;

    // ======== Staking token (WETH) and Euler accounting ========
    address private WETH;
    uint256 private constant bigNumber = 1e20;
    uint256 private totalStaked = 0; //weth staked (WEIGHTED: prefarm counts x2)
    uint256 private rawStaked = 0;

    uint256 private poolBalance = 0; // claimable (minted - claimed)
    uint256 private totalMinted = 0;         

    // ---------------- Daily tracking ----------------
    uint64 public immutable startTimestamp;
    uint32 public constant HISTORY_DAYS = 365;

    struct DailyStats { //total stats per day
        uint32 day;            
        uint256 tokensBurned; 
        uint256 stakeETH;      
        uint256 creatorETH;    
        uint256 totalMinted;   
        uint256 ethLp;         
        uint256 tokensLp;      
    }

    DailyStats[HISTORY_DAYS] private _daily;

    uint256 public totalTokensBurned;
    uint256 public totalStakeEthSent;
    uint256 public totalCreatorEthSent;
    uint256 public totalEthUsedTotal;
    uint256 public totalEthLpAdded;
    uint256 public totalTokensLpAdded;

    function daySinceStart() public view returns (uint32) {
        return uint32((block.timestamp - startTimestamp) / 1 days);
    }

    function _recordDaily(
        uint256 tokensBurned,
        uint256 stakeEthSent,
        uint256 creatorEthSent,
        uint256 minted,
        uint256 ethLp,
        uint256 tokensLp
    ) private {
        uint32 day = daySinceStart();
        uint32 idx = day % HISTORY_DAYS;

        DailyStats storage d = _daily[idx];
        if (d.day != day) {
            d.day = day;
            d.tokensBurned = 0;
            d.stakeETH = 0;
            d.creatorETH = 0;
            d.totalMinted = 0;
            d.ethLp = 0;
            d.tokensLp = 0;
        }

        d.tokensBurned += tokensBurned;
        d.stakeETH += stakeEthSent;
        d.creatorETH += creatorEthSent;
        d.totalMinted += minted;
        d.ethLp += ethLp;
        d.tokensLp += tokensLp;
    }

    // ======== Prefarm raise period parameters ========
    uint256 private raiseGoal;                 
    uint256 private totalRaised;               
    uint256 private constant RAISE_TOLERANCE = 0.5 ether; 
    uint8 private PREFARM_MULT; // xN weight during prefarm

    struct Staker {
        uint256 amountStaked; // WEIGHTED 
        uint256 euler0;
        uint256 rawStaked;    
    }

    uint256[] private euler;
    mapping(address => Staker) public stakers;

    // ======== Farming schedule parameters ========
    bool private started;
    uint64 private startTime;                  // timestamp (in seconds)
    uint64 private totalDurationMinutes;       // T
    uint16 private epochs;                     // N
    uint64 private epochDurationMinutes;       // D = T / N

    uint8 private farmShare;
    uint8 private protocolFeeBuy;
    uint8 private protocolFeeSell;

    // Starting emission rate per minute (in wei units of this token)
    uint256 private r0PerMinute;

    // last fully-accounted minute index since start (0..totalDurationMinutes)
    uint64 private lastFarmedMinute;

    uint256 private _reentrancyLock;
    uint256 private _processingLock;
    modifier nonReentrant() {
        require(_reentrancyLock == 0, "OREBIT20: REENTRANT");
        _reentrancyLock = 1;
        _;
        _reentrancyLock = 0;
    }

    address public immutable deployer;
    modifier onlyDeployer() {
        require(msg.sender == deployer, "OREBIT20: NOT_DEPLOYER");
        _;
    }

    constructor(
        address creator_, 
        string memory name_,
        string memory symbol_,
        uint256 raiseGoal_, 
        uint8 prefarmMultiplier_,
        uint64 totalDurationMinutes_,
        uint16 epochs_,
        uint8 farmingShare_, 
        uint8 buyprotocolFee_,
        uint8 sellprotocolFee_
    ) ERC20(name_, symbol_, creator_) {
        require(epochs_ > 0 && epochs_ <= 20, "OREBIT20: EPOCHS_INVALID");
        require(totalDurationMinutes_ > 0, "OREBIT20: DURATION_ZERO");
        require(prefarmMultiplier_ > 0 && prefarmMultiplier_ <= 10, "OREBIT20: MULTIPLIER_INVALID");
        require(farmingShare_ <= 80, "OREBIT20: INVALID_FARM_SHARE");
        require(raiseGoal_ >= 4.5 ether, "OREBIT20: RAISE_GOAL_ZERO"); 

        raiseGoal = raiseGoal_;
        totalRaised = 0;
        PREFARM_MULT = prefarmMultiplier_;

        farmShare = farmingShare_;
        protocolFeeBuy = buyprotocolFee_;
        protocolFeeSell = sellprotocolFee_;

        WETH =  IEtherVistaRouter(factoryContract.router()).WETH();

        hardstake = IHardstake(0x5979190dE1962A6b1e25b104C49A26995EE89265);

        startTimestamp = uint64(block.timestamp);
        epochs = epochs_;
        totalDurationMinutes = totalDurationMinutes_;
        epochDurationMinutes = uint64(totalDurationMinutes_ / epochs_);
        
        r0PerMinute = _computeInitialRate(MAX_SUPPLY, epochs_, totalDurationMinutes_);

        deployer = msg.sender;
    }

    function setShares(uint8 _burnShare, uint8 _stakeShare, uint8 _threshold) external onlyCreator {
        require(uint16(_burnShare) + uint16(_stakeShare) <= 100, "OREBIT20: BAD_SHARES");
        burnShare = _burnShare;
        stakeShare = _stakeShare;
        creatorShare = uint8(100 - _burnShare - _stakeShare);
        threshold = _threshold;
    }

    //external caller should check totalSupply != 0
    function externalContributeETH() external payable nonReentrant {
        hardstake.contributeETH{value: msg.value}(msg.value);
    }

    receive() external payable {
        if (msg.sender == WETH) return;
        require(msg.sender ==  factoryContract.router(), "OREBIT20: Router only"); //Protocol fee, no LP rewards
        if (_processingLock != 0) return;
        uint256 thresholdEth = IEtherVistaRouter(factoryContract.router()).usdcToEth(threshold);
        if (address(this).balance >= thresholdEth) {
            _processingLock = 1;
            _process(IEtherVistaRouter(factoryContract.router())); 
            _processingLock = 0;
        }
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

        uint256 stakeEthActuallySent = 0;
        if (hardstake.totalSupply(address(this)) > 0 && stakeEthPlanned > 0) {
            stakeEthActuallySent = stakeEthPlanned;
            hardstake.contributeETH{value: stakeEthActuallySent}(stakeEthActuallySent);
        }

        if (creatorEthSent > 0) {
            payable(creator).call{value: creatorEthSent}("");
        }

        // lifetime + daily stats (use ACTUAL stake sent)
        totalEthUsedTotal += burnEthUsed + stakeEthActuallySent + creatorEthSent;
        totalTokensBurned += tokensBurned;
        totalStakeEthSent += stakeEthActuallySent;
        totalCreatorEthSent += creatorEthSent;

        _recordDaily(tokensBurned, stakeEthActuallySent, creatorEthSent, 0, 0, 0);
    }

    // ======== Prefarm period ========
    function prefarmStake(address user) external payable nonReentrant onlyDeployer {
        require(!started, "OREBIT20: ALREADY_STARTED");
        require(msg.value > 0, "OREBIT20: AMOUNT_ZERO");
        require(totalRaised + msg.value <= raiseGoal + RAISE_TOLERANCE, "RAISE_MAX_EXCEEDED");

        IWETH(WETH).deposit{value: msg.value}(); //ETH -> WETH

        // credit user with x2 prefarm weight
        Staker storage staker = stakers[user];
        staker.amountStaked += (msg.value * PREFARM_MULT);
        staker.rawStaked += msg.value;

        totalStaked += (msg.value * PREFARM_MULT);
        rawStaked += msg.value;

        totalRaised += msg.value;

       if (!started && totalRaised >= raiseGoal) {
            started = true;
            startTime = uint64(block.timestamp);
            lastFarmedMinute = 0;
            launch();
        }
    }

    function launch() internal {
        _mint(address(this), GENESIS_MINT);
        address routerAddress = factoryContract.router();
        _approve(address(this), routerAddress, GENESIS_MINT);

        require(IWETH(WETH).balanceOf(address(this)) >= LAUNCH_ETH, "OREBIT20: INSUFFICIENT_WETH_FOR_LAUNCH");
        IWETH(WETH).withdraw(LAUNCH_ETH); //WETH -> ETH

        (, uint256 amountETHUsed, )= IEtherVistaRouter(routerAddress).launch{value: LAUNCH_ETH}(
            address(this),
            GENESIS_MINT,
            0,
            0,
            0,
            0,
            protocolFeeBuy,
            protocolFeeSell,
            address(this)
        );

        if (LAUNCH_ETH > amountETHUsed) {
            IWETH(WETH).deposit{value: (LAUNCH_ETH - amountETHUsed)}();
        }
    }

    function prefarmUnstake(address user) external nonReentrant onlyDeployer {
        require(!started, "OREBIT20: FARMING_LOCKED");

        Staker storage staker = stakers[user];

        uint256 amount = staker.rawStaked; 
        require(amount > 0, "OREBIT20: AMOUNT_ZERO");

        uint256 weighted = amount * PREFARM_MULT;

        staker.rawStaked = 0;
        staker.amountStaked -= weighted;

        totalRaised -= amount;
        totalStaked -= weighted;
        rawStaked -= amount;

        require(IERC20(WETH).transfer(user, amount), "OREBIT20: WETH_TRANSFER_FAILED");
    }

    //User should claim before staking again or rewards will be lost
    function stake() external payable nonReentrant {
        require(started, "OREBIT20: NOT_STARTED");
        require(msg.value > 0, "OREBIT20: AMOUNT_ZERO");

        _farm();

        IWETH(WETH).deposit{value: msg.value}(); //convert ETH to WETH

        totalStaked += msg.value;
        rawStaked += msg.value;

        Staker storage staker = stakers[msg.sender];
        staker.amountStaked += msg.value;
        staker.rawStaked += msg.value;

        staker.euler0 = (euler.length == 0) ? 0 : euler[euler.length - 1];

        _maybeAddLiquidity();
    }

    // ======== Core farm logic  ========
    function farm() public nonReentrant {// Anyone can call to keep rewards up-to-date
        _farm();
    }

    function _farm() internal {
        if (!started) return;
        if (totalMinted >= MAX_SUPPLY) return;

        // cap the duration
        uint64 elapsedMinutes = uint64((block.timestamp - startTime) / 60);
        if (elapsedMinutes > totalDurationMinutes) elapsedMinutes = totalDurationMinutes;

        if (elapsedMinutes <= lastFarmedMinute || (elapsedMinutes - lastFarmedMinute) < 3) return;

        uint64 fromMinute = lastFarmedMinute;
        uint64 toMinute = elapsedMinutes;

        uint256 accrued = _accruedBetween(fromMinute, toMinute);
        lastFarmedMinute = toMinute;

        if (accrued == 0) {
            return;
        }

        // cap to remaining supply
        uint256 remaining = MAX_SUPPLY - totalMinted;
        if (accrued > remaining) accrued = remaining;

        _mint(address(this), accrued);
        totalMinted += accrued;
        _recordDaily(0, 0, 0, accrued, 0, 0);

        uint256 farmAmount = (accrued * farmShare) / 100;
        uint256 lpBalance = accrued - farmAmount;

        // Reserve tokens for liquidity additions (paired with ETH/WETH that enters via stakes).
        lpTokenReserve += lpBalance;

        _distribute(farmAmount); 
    }

    function _accruedBetween(uint64 fromMinute, uint64 toMinute) internal view returns (uint256) {
        if (toMinute <= fromMinute) return 0;

        uint64 D = epochDurationMinutes;
        uint16 N = epochs;

        //starting epoch
        uint16 fromEpoch = uint16(fromMinute / D); //0, 1, ..., N-1
        if (fromEpoch >= N) return 0; //N=0

        // inclusive end epoch containing (toMinute-1)
        uint16 toEpoch = uint16((toMinute - 1) / D); //0,1 ..., N-1
        if (toEpoch >= N) toEpoch = N - 1; //N=N-1

        uint256 acc;

        if (fromEpoch == toEpoch) {
            // all within same epoch
            uint256 rate = r0PerMinute >> fromEpoch;
            acc = uint256(toMinute - fromMinute) * rate;
            return acc;
        }

        // 1) first partial epoch
        uint64 firstEpochEnd = uint64(uint256(fromEpoch + 1) * uint256(D));
        acc += uint256(firstEpochEnd - fromMinute) * (r0PerMinute >> fromEpoch);

        // 2) full epochs in between (bounded by N)
        for (uint16 e = fromEpoch + 1; e < toEpoch; ++e) {
            acc += uint256(D) * (r0PerMinute >> e);
        }

        // 3) last partial epoch
        uint64 lastEpochStart = uint64(uint256(toEpoch) * uint256(D));
        acc += uint256(toMinute - lastEpochStart) * (r0PerMinute >> toEpoch);

        return acc;
    }

    function _distribute(uint256 amount) internal {
        poolBalance += amount; // "amount" becomes claimable via Euler
        updateEuler(amount);
    }

    function updateEuler(uint256 fee) internal {
        if (totalStaked > 0) {
            if (euler.length == 0) {
                euler.push((fee * bigNumber) / totalStaked);
            } else {
                euler.push(euler[euler.length - 1] + (fee * bigNumber) / totalStaked);
            }
        }
    }
   
    //------------- LP management ---------
    function _getPoolReserves() internal view returns (address pair, uint256 reserveToken, uint256 reserveWeth) {
        pair = factoryContract.getPair(address(this), WETH);
        (uint112 r0, uint112 r1, ) = IPair(pair).getReserves();
        address t0 = IPair(pair).token0();
        if (t0 == address(this)) {
            reserveToken = uint256(r0);
            reserveWeth = uint256(r1);
        } else {
            reserveToken = uint256(r1);
            reserveWeth = uint256(r0);
        }
    }

    function _maybeAddLiquidity() internal {
        if (!started) return;
        if (lpTokenReserve == 0) return;

        if (block.timestamp < uint256(lastLpAddTime) + uint256(LP_ADD_COOLDOWN)) return;

        if (_processingLock != 0) return; // prevent nested processing while we add LP (router may refund ETH dust)

        address pair;
        uint256 reserveToken;
        uint256 reserveWeth;
        (pair, reserveToken, reserveWeth) = _getPoolReserves();

        uint256 wethBal = IWETH(WETH).balanceOf(address(this));
        if (wethBal == 0) return;

        // Target: add LP using 3% of CURRENT pool WETH reserves (or whatever we have, if less)
        uint256 wethTarget = (reserveWeth * LP_ADD_BPS) / 10_000;
        if (wethTarget == 0) return;

        uint256 wethToUse = wethBal < wethTarget ? wethBal : wethTarget;

        // Match pool ratio: token = weth * reserveToken / reserveWeth
        uint256 tokenDesired = (wethToUse * reserveToken) / reserveWeth;
        if (tokenDesired == 0) return;

        // If we don't have enough reserved tokens, scale down ETH to match what we do have.
        if (tokenDesired > lpTokenReserve) {
            tokenDesired = lpTokenReserve;
            wethToUse = (tokenDesired * reserveWeth) / reserveToken;
            if (wethToUse == 0) return;
        }

        // Safety: never spend farmer-claimable tokens (poolBalance)
        if (balanceOf(address(this)) < poolBalance + tokenDesired) return;

        address routerAddress = factoryContract.router();

        // allowance for router (set to max once)
        if (allowance(address(this), routerAddress) < tokenDesired) {
            _approve(address(this), routerAddress, type(uint256).max);
        }

        // unwrap only what we intend to send
        _processingLock = 1;
        IWETH(WETH).withdraw(wethToUse);

        (uint amountToken, uint amountETH,) = IEtherVistaRouter(routerAddress).addLiquidityETH{value: wethToUse}(
            address(this),
            tokenDesired,
            0, // amountTokenMin (best-effort, avoid revert)
            0, // amountETHMin
            block.timestamp
        );

        // accounting: only the actually-used amount is locked into LP
        if (amountToken > 0) {
            lpTokenReserve -= amountToken;
        }

        // re-wrap any ETH refund into WETH so it doesn't get swept by protocol-fee logic
        if (wethToUse > amountETH) {
            IWETH(WETH).deposit{value: (wethToUse - amountETH)}();
        }

        // record successful LP add time (even if router used less ETH due to rounding)
        if (amountToken > 0 && amountETH > 0) {
            lastLpAddTime = uint64(block.timestamp);
        }

        _processingLock = 0;

        // LP daily + lifetime totals
        if (amountToken > 0 || amountETH > 0) {
            totalEthLpAdded += amountETH;
            totalTokensLpAdded += amountToken;
            _recordDaily(0, 0, 0, 0, amountETH, amountToken);
        }
    }

    //------------Staker Actions -----------------
    function claimShare() public nonReentrant {
        _farm();
        require(euler.length > 0, "OREBIT20: Nothing to Claim");

        Staker storage staker = stakers[msg.sender];
        uint256 balance = staker.amountStaked;
        require(balance > 0, "OREBIT20: Not Staked");

        uint256 share = (balance * (euler[euler.length - 1] - staker.euler0)) / bigNumber;

        staker.euler0 = euler[euler.length - 1];

        poolBalance -= share;
        require(IERC20(address(this)).transfer(msg.sender, share), "OREBIT20: TRANSFER_FAILED");

        _maybeAddLiquidity();
    }

    function viewShare(address user) public view returns (uint256 share) {
        Staker storage staker = stakers[user];
        if (staker.amountStaked == 0) return 0;

        uint256 eLast = (euler.length == 0) ? 0 : euler[euler.length - 1];

        if (!started) {
            return 0;
        }

        uint64 elapsedMinutes = uint64((block.timestamp - startTime) / 60);
        if (elapsedMinutes > totalDurationMinutes) elapsedMinutes = totalDurationMinutes;

        if (elapsedMinutes <= lastFarmedMinute) {
            return (staker.amountStaked * (eLast - staker.euler0)) / bigNumber;
        }

        uint256 accrued = _accruedBetween(lastFarmedMinute, elapsedMinutes);
        if (accrued == 0) {
            return (staker.amountStaked * (eLast - staker.euler0)) / bigNumber;
        }

        uint256 remaining = MAX_SUPPLY - totalMinted;
        if (accrued > remaining) accrued = remaining;

        uint256 eHyp = eLast + (accrued * bigNumber) / totalStaked;

        return (staker.amountStaked * (eHyp - staker.euler0)) / bigNumber;
    }

    function getStakerInfo(address _staker) public view returns (
        uint256 amountStaked
    ) {
        Staker storage staker = stakers[_staker];

        amountStaked = staker.amountStaked;
    }

    // ======== Views for farming schedule ========
    function currentEpoch() public view returns (uint16) {
        if (!started) return 0;
        uint64 elapsedMinutes = uint64((block.timestamp - startTime) / 60);
        if (elapsedMinutes >= totalDurationMinutes) return epochs - 1;
        return uint16(elapsedMinutes / epochDurationMinutes);
    }

    function currentRatePerMinute() public view returns (uint256) {
        uint16 e = currentEpoch();
        return r0PerMinute >> e;
    }

    function _computeInitialRate(
        uint256 supplyWei,
        uint16 N,
        uint64 Tm
    ) internal pure returns (uint256) {
        uint256 pow2N = (1 << N); // 2^N
        uint256 numerator = supplyWei * uint256(N) * (1 << (N - 1)); //supply * N * 2^(N-1)
        uint256 denominator = uint256(Tm) * (pow2N - 1); // TotalMins*(2^(N) - 1) 
        return numerator / denominator;
    }

    //========= Get =========
    function getStatus() public view returns (bool, string memory, address) { 
        return (started, standard, creator);
    }
    
    function getShares() public view returns (uint8, uint8, uint8) {
        return (burnShare, stakeShare, creatorShare);
    }

    function getFarmData() public view returns (
        uint16 _currentEpoch,
        uint256 _currentRatePerMinute,
        uint64 _startTime,
        uint64 _totalDurationMinutes,
        uint16 _epochs,
        uint64 _epochDurationMinutes,
        uint256 _rawStaked,
        uint256 _poolBalance,
        uint256 _totalMinted,
        uint256 _lpReserve,
        uint8 _farmShare
    )
    {
        _currentEpoch = currentEpoch();
        _currentRatePerMinute = currentRatePerMinute();

        _startTime = startTime;
        _totalDurationMinutes = totalDurationMinutes;
        _epochs = epochs;
        _epochDurationMinutes = epochDurationMinutes;

        _rawStaked = rawStaked;
        _poolBalance = poolBalance;
        _totalMinted = totalMinted;

        _lpReserve = lpTokenReserve;
        _farmShare = farmShare;
    }

    function getInternalState() external view returns (uint256 _totalStaked, uint64 _lastFarmedMinute, uint64 _lastLpAddTime){
        return (totalStaked, lastFarmedMinute, lastLpAddTime);
    }

    function getPrefarmState() external view returns (bool _started, uint256 _raiseGoal, uint256 _totalRaised, uint8 _prefarmMult) {
        return (started, raiseGoal, totalRaised, PREFARM_MULT);
    }

    function getLastDailyStats(uint32 count) external view returns (DailyStats[] memory out) {
        require(count > 0 && count <= HISTORY_DAYS, "OREBIT20: BAD_COUNT");

        uint32 today = daySinceStart();
        uint32 n = count;
        if (today + 1 < n) n = today + 1;

        uint32 startDay = today - (n - 1);
        out = new DailyStats[](n);

        for (uint32 i = 0; i < n; i++) {
            uint32 day = startDay + i;
            DailyStats storage s = _daily[day % HISTORY_DAYS];
            if (s.day == day) out[i] = s;
            else out[i] = DailyStats(day, 0, 0, 0, 0, 0, 0);
        }
    }

    function getTotals() external view returns (
        uint256 _totalTokensBurned,
        uint256 _totalStakeEthSent,
        uint256 _totalCreatorEthSent,
        uint256 _totalMinted,
        uint256 _totalEthLpAdded,
        uint256 _totalTokensLpAdded,
        uint32 _today
    ) {
        return (
            totalTokensBurned,
            totalStakeEthSent,
            totalCreatorEthSent,
            totalMinted,
            totalEthLpAdded,
            totalTokensLpAdded,
            daySinceStart()
        );
    }
}
