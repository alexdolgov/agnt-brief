// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Address.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

/*
 *  Smoke – mainnet launch build
 *  •  250 000-token TX cap during whitelist
 *  •  60-second per-wallet cooldown during whitelist
 *  •  All other behaviour identical to the passing-tests version
 */
contract AIVAX is ERC20, Ownable, ReentrancyGuard {
    using Address for address;

    // ───────────────────────── constants ─────────────────────────
    uint256 public constant TOTAL_SUPPLY       = 1_000_000_000 ether;
    uint256 public constant WHITELIST_DURATION = 20 minutes;
    uint256 public constant VESTING_DURATION   = 1_095 days;

    uint256 public constant TX_CAP_WL   = 250_000 ether; // per-tx limit (WL only)
    uint256 public constant WL_COOLDOWN = 60;            // seconds between buys

    // ───────────────────────── supply buckets ────────────────────
    uint256 public vestingSupply;
    uint256 public presaleSupply;
    uint256 public airdropSupply;

    // ───────────────────────── launch flags ──────────────────────
    uint256 public tradingStartTime;
    uint256 public vestingStartTime;
    bool    public tradingEnabled;
    bool    public presaleClaimable;
    bool    public airdropClaimable;

    address public liquidityPool;

    // ───────────────────────── roles ─────────────────────────────
    mapping(address => bool) public whitelist;
    mapping(address => bool) public isManager;

    // ───────────────────────── early-hold accounting ─────────────
    mapping(address => uint256) public earlyHoldAmountFromPresale;
    mapping(address => uint256) public earlyHoldAmountFromAirdrop;
    mapping(address => uint256) public earlyHoldAmountFromMarket;
    mapping(address => uint256) public earlyHoldAmount;
    mapping(address => bool) public soldEarlyPosition;
    uint256 public totalEarlySellers;
    uint256 public totalEarlyHold;

    // ───────────────────────── allocations ───────────────────────
    mapping(address => uint256) public presaleAllocation;
    mapping(address => uint256) public airdropAllocation;

    // ───────────────────────── vesting engine ────────────────────
    uint256 public rewardRate;              // plain storage
    uint256 public rewardPerShareStored;
    uint256 public lastUpdateTime;
    uint256 public unallocatedRewards;

    mapping(address => uint256) public userRewardPerSharePaid;
    mapping(address => uint256) public rewards;

    // ───────────────────────── WL cooldown tracking ──────────────
    mapping(address => uint256) public lastBuyTs;

    // ───────────────────────── constructor ───────────────────────
    constructor(uint256 _presaleTokens, uint256 _airdropTokens)
        ERC20("AIVAX", "AIVAX")
    {
        require(
            _presaleTokens + _airdropTokens <= TOTAL_SUPPLY,
            "Invalid token allocations"
        );

        vestingSupply = (TOTAL_SUPPLY * 25) / 100;
        presaleSupply = _presaleTokens;
        airdropSupply = _airdropTokens;

        uint256 ownerSupply =
            TOTAL_SUPPLY - vestingSupply - presaleSupply - airdropSupply;

        _mint(address(this), vestingSupply + presaleSupply + airdropSupply);
        _mint(msg.sender, ownerSupply);

        rewardRate = vestingSupply / VESTING_DURATION;
    }

    // ───────────────────────── modifiers & role mgmt ─────────────
    modifier onlyManager() {
        require(isManager[msg.sender] || msg.sender == owner(), "Not manager");
        _;
    }

    function addManager(address a) external onlyOwner { isManager[a] = true; }
    
    function removeManager(address a) external onlyOwner { isManager[a] = false; }

    // ───────────────────────── whitelist / LP / launch ───────────
    function setWhitelist(address[] calldata acc,bool s) external onlyManager{
        for(uint i; i<acc.length;){whitelist[acc[i]]=s;unchecked{++i;}}
    }

    function setLiquidityPool(address _lp) external {
        require(_admin(msg.sender));
        require(!tradingEnabled, "Trading has started");
        require(_lp!=address(0),"Invalid liquidity pool address");
        liquidityPool=_lp;
    }

    function enableTrading() external onlyOwner{
        require(!tradingEnabled,"Trading already enabled");

        if (!presaleClaimable) { presaleClaimable=true; }
        if (!airdropClaimable) { airdropClaimable=true; }

        tradingEnabled=true;
        tradingStartTime=block.timestamp;
        vestingStartTime=tradingStartTime+WHITELIST_DURATION;
        lastUpdateTime=vestingStartTime;
    }

    function enablePresaleClaims() external onlyOwner{presaleClaimable=true;}

    function enableAirdropClaims() external onlyOwner{airdropClaimable=true;}

    // ───────────────────────── seed allocations ──────────────────
    function seedPresale(address[] calldata acc,uint256[] calldata amt) external onlyOwner{
        require(!tradingEnabled,"Trading has started");
        require(acc.length==amt.length,"Length mismatch");
        for(uint i; i<acc.length;){
            address a=acc[i];
            uint256 prev=earlyHoldAmountFromPresale[a];
            earlyHoldAmountFromPresale[a]=amt[i];
            _deltaTotalEarlyHold(amt[i],prev);
            presaleAllocation[a]=amt[i];
            _recalcEarlyHold(a);
            unchecked{++i;}
        }
    }

    function seedAirdrop(address[] calldata acc,uint256[] calldata amt) external onlyOwner{
        require(!tradingEnabled,"Trading has started");
        require(acc.length==amt.length,"Length mismatch");
        for(uint i; i<acc.length;){
            address a=acc[i];
            uint256 prev=earlyHoldAmountFromAirdrop[a];
            earlyHoldAmountFromAirdrop[a]=amt[i];
            _deltaTotalEarlyHold(amt[i],prev);
            airdropAllocation[a]=amt[i];
            _recalcEarlyHold(a);
            unchecked{++i;}
        }
    }

    // ───────────────────────── claims ────────────────────────────
    function claimPresaleTokens() external nonReentrant {
        require(presaleClaimable, "Presale inactive");
        uint256 amount = presaleAllocation[msg.sender];
        require(amount > 0, "Nothing to claim");
        presaleAllocation[msg.sender] = 0;
        presaleSupply -= amount;
        _transfer(address(this), msg.sender, amount);
    }

    function claimAirdropTokens() external nonReentrant {
        require(airdropClaimable, "Airdrop inactive");
        uint256 amount = airdropAllocation[msg.sender];
        require(amount > 0, "Nothing to claim");
        airdropAllocation[msg.sender] = 0;
        airdropSupply -= amount;
        _transfer(address(this), msg.sender, amount);
    }

    // ───────────────────────── vesting engine ────────────────────
    function _accrue() internal {
        if (vestingStartTime == 0) return;
        uint256 capped = block.timestamp;
        uint256 endTs  = vestingStartTime + VESTING_DURATION;
        if (capped > endTs) capped = endTs;
        if (capped <= lastUpdateTime) return;

        uint256 elapsed = capped - lastUpdateTime;
        uint256 reward  = elapsed * rewardRate;
        lastUpdateTime  = capped;

        if (totalEarlyHold == 0) {
            unallocatedRewards += reward;
        } else {
            rewardPerShareStored +=
                (reward + unallocatedRewards) * 1e18 / totalEarlyHold;
            unallocatedRewards = 0;
        }
    }

    function currentRewardPerShare() public view returns (uint256) {
        if (vestingStartTime == 0) return rewardPerShareStored;
        uint256 capped = block.timestamp;
        uint256 endTs  = vestingStartTime + VESTING_DURATION;
        if (capped > endTs) capped = endTs;

        if (capped <= lastUpdateTime) {
            if (totalEarlyHold == 0) return rewardPerShareStored;
            return rewardPerShareStored +
                (unallocatedRewards * 1e18) / totalEarlyHold;
        }

        if (totalEarlyHold == 0) return rewardPerShareStored;
        uint256 elapsed = capped - lastUpdateTime;
        uint256 reward  = elapsed * rewardRate;

        return rewardPerShareStored +
            (reward + unallocatedRewards) * 1e18 / totalEarlyHold;
    }

    function earned(address account) public view returns (uint256) {
        uint256 perShare = currentRewardPerShare();
        uint256 accrued  = earlyHoldAmount[account] *
            (perShare - userRewardPerSharePaid[account]) / 1e18;
        uint256 total    = accrued + rewards[account];
        return total > vestingSupply ? vestingSupply : total;
    }

    function claimVestedTokens() external nonReentrant {
        _accrue();
        _syncAccount(msg.sender);
        uint256 reward = rewards[msg.sender];
        require(reward > 0, "Nothing to claim");
        require(reward <= vestingSupply, "Insufficient vesting supply");
        rewards[msg.sender] = 0;
        vestingSupply      -= reward;
        _transfer(address(this), msg.sender, reward);
    }

    // ───────────────────────── transfer hook ─────────────────────
    function isWhitelistPeriod() public view returns (bool) {
        return tradingEnabled && block.timestamp <= vestingStartTime;
    }

    address public router;
    function setRouter(address r) external onlyOwner {
        require(router == address(0), "Router already set");
        router = r;
    }

    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal override {
        super._beforeTokenTransfer(from, to, amount);

        /* ────────────────── always-allowed cases ────────────────── */
        if (from == address(0) || to == address(0)) return; // mint / burn

        if (_admin(from) || _admin(to) || from == address(this)) return; // owner / treasury

        /* ────────────────── pre-launch liquidity seeding ────────── */
        if (!tradingEnabled) {
            if (from == router || to == router) return;
            revert("Trading disabled");
        }

        /* ────────────────── vesting accounting ──────────────────── */
        _accrue();
        if (earlyHoldAmount[from] > 0) _syncAccount(from);
        if (earlyHoldAmount[to]   > 0) _syncAccount(to);

        /* ────────────────── 20-minute whitelist gate ────────────── */
        if (isWhitelistPeriod()) {
            if (from == router) {
                /* buy hop #2 (router → wallet) */
                require(whitelist[to], "Whitelist: buyer not approved");
            } else if (from == liquidityPool || to == liquidityPool) {
                /* any LP trade */
                address walletSide = from == liquidityPool ? to : from;

                // skip router in buy hop #1, check all real wallets
                if (walletSide != router) {
                    require(whitelist[walletSide], "Whitelist: wallet not approved");
                }
            } else {
                revert("Whitelist: LP buys/sells only");
            }
        }

        /* ────────────────── buy-side limits during WL ───────────── */
        if (isWhitelistPeriod() && from == liquidityPool) {
            require(amount <= TX_CAP_WL, "Exceeds tx limit (250k tokens)");
            require(
                block.timestamp >= lastBuyTs[to] + WL_COOLDOWN,
                "Cooldown active"
            );
            lastBuyTs[to] = block.timestamp;

            require(
                balanceOf(to) + amount <= 5_000_000 ether,
                "Wallet exceeds 5M tokens max"
            );

            if (!soldEarlyPosition[to]) {
                earlyHoldAmountFromMarket[to] += amount;
                totalEarlyHold                += amount;
                _recalcEarlyHold(to);
            }
        }

        /* ────────────────── sell-side handling ──────────────────── */
        if (to == liquidityPool && isWhitelistPeriod()) {
            /* WL sell – burn all early-hold */
            uint256 burnAmt =
                earlyHoldAmountFromMarket[from]
                + earlyHoldAmountFromPresale[from]
                + earlyHoldAmountFromAirdrop[from];

            if (burnAmt > totalEarlyHold) {
                totalEarlyHold = 0;
            } else {
                totalEarlyHold -= burnAmt;
            }

            earlyHoldAmountFromMarket[from]  = 0;
            earlyHoldAmountFromPresale[from] = 0;
            earlyHoldAmountFromAirdrop[from] = 0;
            _recalcEarlyHold(from);

            soldEarlyPosition[from] = true;
            totalEarlySellers      += 1;
        }

        /* ────────────────── post-WL early-hold clawback ─────────── */
        if (
            !isWhitelistPeriod() &&
            earlyHoldAmount[from] > 0 &&
            balanceOf(from) - amount < earlyHoldAmount[from]
        ) {
            totalEarlyHold       -= earlyHoldAmount[from];
            earlyHoldAmount[from] = 0;
            
            soldEarlyPosition[from] = true;
            totalEarlySellers    += 1;
        }
    }

    // ───────────────────────── internal utils ───────────────────
    function _syncAccount(address acct) internal {
        uint256 newReward = earned(acct);
        rewards[acct] = newReward;
        userRewardPerSharePaid[acct] = rewardPerShareStored;
    }

    function _deltaTotalEarlyHold(uint256 newVal,uint256 oldVal) internal {
        if (newVal > oldVal) {
            totalEarlyHold += newVal - oldVal;
        } else if (oldVal > newVal) {
            totalEarlyHold -= oldVal - newVal;
        }
    }

    function _recalcEarlyHold(address user) internal {
        earlyHoldAmount[user] =
            earlyHoldAmountFromPresale[user] +
            earlyHoldAmountFromAirdrop[user] +
            earlyHoldAmountFromMarket[user];
    }

    function _admin(address user) internal view returns (bool) {
        return (owner() == user) || isManager[user];
    }
}
