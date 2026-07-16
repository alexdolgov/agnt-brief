// File: @openzeppelin/contracts/utils/Context.sol


// OpenZeppelin Contracts (last updated v5.0.1) (utils/Context.sol)

pragma solidity ^0.8.20;

/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
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

// File: @openzeppelin/contracts/access/Ownable.sol


// OpenZeppelin Contracts (last updated v5.0.0) (access/Ownable.sol)

pragma solidity ^0.8.20;


/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * The initial owner is set to the address provided by the deployer. This can
 * later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract Ownable is Context {
    address private _owner;

    /**
     * @dev The caller account is not authorized to perform an operation.
     */
    error OwnableUnauthorizedAccount(address account);

    /**
     * @dev The owner is not a valid owner account. (eg. `address(0)`)
     */
    error OwnableInvalidOwner(address owner);

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the address provided by the deployer as the initial owner.
     */
    constructor(address initialOwner) {
        if (initialOwner == address(0)) {
            revert OwnableInvalidOwner(address(0));
        }
        _transferOwnership(initialOwner);
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        _checkOwner();
        _;
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if the sender is not the owner.
     */
    function _checkOwner() internal view virtual {
        if (owner() != _msgSender()) {
            revert OwnableUnauthorizedAccount(_msgSender());
        }
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby disabling any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        _transferOwnership(address(0));
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        if (newOwner == address(0)) {
            revert OwnableInvalidOwner(address(0));
        }
        _transferOwnership(newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual {
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}

// File: WorldCupPool.sol


pragma solidity ^0.8.35;
/*
  _____ _          _          _
 |  ___(_)_ __ ___| |    __ _| |__  ___
 | |_  | | '__/ _ \ |   / _` | '_ \/ __|
 |  _| | | | |  __/ |__| (_| | |_) \__ \
 |_|   |_|_|  \___|_____\__,_|_.__/|___/

v1.03
*/


/// @notice Minimal interface to the EP staking token.
interface IEP {
    function transferFrom(address from, address to, uint256 amount) external returns (bool);
    function transfer(address to, uint256 amount) external returns (bool);
    function balanceOf(address account) external view returns (uint256);
    function stakeEP(uint256 amountEP) external;
    function unstakeEP(uint256 amountEP) external;
    function claimRewards() external returns (uint256);
}

/// @notice Minimal interface to the FBX reward token.
interface IFBX {
    function transfer(address to, uint256 amount) external returns (bool);
    function balanceOf(address account) external view returns (uint256);
}

/// @notice Minimal interface to Polymarket's Gnosis ConditionalTokens contract
///         on Polygon. A market (`conditionId`) is resolved once
///         `payoutDenominator > 0`; the winning outcome is the index whose
///         `payoutNumerators` entry is non-zero.
interface IConditionalTokens {
    function payoutDenominator(bytes32 conditionId) external view returns (uint256);
    function payoutNumerators(bytes32 conditionId, uint256 index) external view returns (uint256);
}

/// @title WorldCupPool — a no-loss prediction market proof of concept.
/// @notice Users deposit EP backing a team. A "team" is identified directly by
///         its **Polymarket `conditionId`** — the immutable on-chain id of that
///         team's "Will X win the World Cup?" market — so there's no FIFA-code
///         translation table to maintain. Deposited EP is staked, earning FBX
///         for the whole pool. Each (user, market) backing accrues "cheers" at
///         1 cheer/sec/EP, but only up to DEPOSIT_CUTOFF — cheers freeze the
///         instant deposits close, so accrual never depends on when results are
///         declared. Once the winning market is fixed, its backers redeem their
///         cheers pro-rata for a share of all FBX collected. Principal (EP) is
///         always withdrawable — no one loses their deposit.
///
///         The 48 backable markets are hardcoded in the constructor — the
///         conditionIds of Polymarket's World Cup winner event (a neg-risk group
///         of binary "Yes/No" markets, one per team), baked into the bytecode.
///         Resolution reads those markets' payouts directly off the
///         ConditionalTokens contract.
///
///         Resolution paths (any one fixes the winner; first to land wins):
///           1. `settleFromPolymarket()` / first `redeem()` — permissionless.
///              Reads the registered markets and, if exactly one reports "Yes",
///              settles automatically. Best-effort: any problem reading
///              Polymarket is a no-op revert, never a brick.
///           2. `declareResults(market)` — owner override, independent of
///              Polymarket. Locked until 7 days after the cutoff, giving
///              Polymarket an exclusive first week as the canonical resolver.
///           3. `openRefund()` — permissionless backstop. After REFUND_DEADLINE
///              (cutoff + 30 days) with nothing declared, anyone opens pro-rata
///              refund mode and every backer redeems against total cheers.
contract WorldCupPool is Ownable {
    /// @dev Hardcoded Polygon mainnet addresses — baked into the bytecode and
    ///      not settable, so there is no admin lever to ever point the pool at a
    ///      different (wrong or malicious) token or oracle.
    IEP public constant EP = IEP(0x60Ed6aCEF3a96F8CDaF0c0D207BbAfA66e751af2);
    IFBX public constant FBX = IFBX(0xD125443F38A69d776177c2B9c041f462936F8218);
    /// @dev Polymarket's Gnosis ConditionalTokens on Polygon.
    address public constant CONDITIONAL_TOKENS = 0x4D97DCd97eC945f40cF65F87097ACe5EA0476045;

    /// @dev Outcome index of "Yes" in every Polymarket binary market (outcomes
    ///      are ["Yes","No"]). The winning team's market resolves Yes; all
    ///      losing teams resolve No. Verified against live resolved neg-risk
    ///      markets on-chain.
    uint256 public constant YES_INDEX = 0;

    /// @dev Deposits close at the earliest moment the WC 2026 final could end:
    ///      2026-07-19 20:45 UTC = kickoff (19:00 UTC) + 90 min regulation +
    ///      15 min halftime. Withdrawals are unaffected.
    uint256 public constant DEPOSIT_CUTOFF = 1784493900;

    /// @dev The owner override (declareResults) is locked until 7 days after the
    ///      cutoff. This gives Polymarket an exclusive first week as the
    ///      canonical resolver; only if it's still silent can the owner step in.
    ///      = DEPOSIT_CUTOFF + 7 days = 2026-07-26 20:45 UTC.
    uint256 public constant OWNER_DECLARE_OPEN = DEPOSIT_CUTOFF + 7 days;

    /// @dev After this point, if no result has been declared, anyone can open
    ///      pro-rata refund mode. = DEPOSIT_CUTOFF + 30 days = 2026-08-18 20:45 UTC.
    uint256 public constant REFUND_DEADLINE = DEPOSIT_CUTOFF + 30 days;

    /// @dev How the winner was fixed. None until resolved.
    enum ResolutionSource { None, Polymarket, Owner }
    ResolutionSource public resolutionSource;

    /// @dev Set once when results are declared OR refund is opened. Until then == 0.
    uint256 public resultsTime;
    /// @dev Polymarket conditionId of the winning team, valid only after declaration.
    bytes32 public winningMarket;
    bool public resultsDeclared;
    /// @dev True once pro-rata refund mode is opened. Mutually exclusive with resultsDeclared.
    bool public refundOpened;

    /// @dev Snapshot of the winning market's total cheers, frozen at declaration.
    uint256 public winningMarketCheers;
    /// @dev Sum of cheers across all markets, frozen when refund opens.
    uint256 public totalSettledCheers;
    /// @dev Total FBX available to distribute, frozen at declaration / refund open.
    uint256 public rewardPot;
    /// @dev FBX already paid out, to track remainder.
    uint256 public rewardPaid;

    /// @dev A single (user, market) backing.
    struct Position {
        uint256 stakedEP;     // EP this user has on this market
        uint256 cheers;       // settled (frozen) cheers
        uint256 lastUpdate;   // timestamp cheers were last settled
        bool redeemed;        // payout already claimed
    }

    // user => conditionId => position
    mapping(address => mapping(bytes32 => Position)) public positions;

    /// @dev Running settled cheer total per market, kept current via _settleMarket.
    mapping(bytes32 => uint256) public marketCheers;
    /// @dev Per-market last-update clock for the running total.
    mapping(bytes32 => uint256) public marketLastUpdate;
    /// @dev EP currently staked per market (drives cheer accrual rate).
    mapping(bytes32 => uint256) public marketStakedEP;

    /// @dev Total EP staked across all markets.
    uint256 public totalStakedEP;

    /// @dev O(1) validity check for a registered Polymarket market (conditionId).
    mapping(bytes32 => bool) public isMarket;
    /// @dev Enumerable list of registered markets, populated by the owner.
    bytes32[] public markets;

    // --- reentrancy guard ---
    uint256 private constant _NOT_ENTERED = 1;
    uint256 private constant _ENTERED = 2;
    uint256 private _status = _NOT_ENTERED;

    event Deposit(address indexed user, bytes32 indexed market, uint256 amountEP);
    event Withdraw(address indexed user, bytes32 indexed market, uint256 amountEP);
    event ResultsDeclared(bytes32 winningMarket, uint256 winningCheers, uint256 pot, ResolutionSource source);
    event Redeem(address indexed user, bytes32 indexed market, uint256 cheers, uint256 fbxPayout);
    event RefundOpened(uint256 totalCheers, uint256 pot);
    event Refund(address indexed user, bytes32 indexed market, uint256 cheers, uint256 fbxPayout);

    modifier nonReentrant() {
        require(_status != _ENTERED, "reentrant");
        _status = _ENTERED;
        _;
        _status = _NOT_ENTERED;
    }

    /// @dev Blocks any call once an outcome is fixed (either a declaration or a refund).
    modifier whileUnresolved() {
        require(!resultsDeclared, "results declared");
        require(!refundOpened, "refund opened");
        _;
    }

    /// @notice Registers the 48 World Cup 2026 team markets (Polymarket
    ///         conditionIds, verified 1:1 against the live world-cup-winner
    ///         event) and makes the deployer the (transferable) owner. The
    ///         team set is baked into the bytecode here — immutable, no
    ///         registration step, no admin lever to change it.
    constructor() Ownable(msg.sender) {
        bytes32[48] memory ids = [
            bytes32(0x5a59d269c2b5108cd2f64c624e46ee2c8b5cfd88b882582565f927918315b6aa), // ALG
            bytes32(0x0c4cd2055d6ea89354ffddc55d6dbcef9355748112ea952fc925f3db6a5c457f), // ARG
            bytes32(0x098e2be3df8ab529940c567819f8ef007cf007820e9d627642a5bbfaa42af372), // AUS
            bytes32(0xfe230d510eaf545198c0d62bb17871e5fe8989f1b19aa54c0c062b858360987c), // AUT
            bytes32(0x32cfa52198e85e070d1b17d1b53c5c3a6aaae7736cdc33fa6aa04d353f0c2811), // BEL
            bytes32(0xbce6698c9a61376c0709a2a724a9cf0dd0236d8dea882533073b6bb062efbee0), // BIH
            bytes32(0x30d55d8124ee1e12dabe89201badc45669b81dff69e4ce44d961f32878ec178a), // BRA
            bytes32(0x67443cb1ffb2bf180f7df5b6ca7adff63f7e8e933c7e41405ba118f3e9f8befb), // CAN
            bytes32(0x289568d555ec620ed6fa33c936c5f42649d3a2e30748a1daf7079f42453fbea4), // CIV
            bytes32(0xcd836ec4d94b8a4ddc5713d80fe9db245d2fb4796eaf12337974da1b4e96100d), // COD
            bytes32(0xe99cc59f32b10d23acf196d1a0e8264ea30fca198428acadd3464b06ff60e771), // COL
            bytes32(0x3bc69cb672591e4fcd2ef856b64b219a906e15d4601b50066ac81a446574dfaf), // CPV
            bytes32(0xe5bd80313b8859e3f5761568ac9498866ea9d4419e4d1b6a877a9a9bd2754cb4), // CRO
            bytes32(0xdb4b2f370c3d0e996fbb32213c87aa5402936e3d4882432b6738e2f5661b79a6), // CUW
            bytes32(0x5e614739363bbfc399469102c600e4e8260032d41e59e0bc12ebc0e71231642d), // CZE
            bytes32(0xbaf7780f9059e34b84301fd411f8dc573b4d56adfe6e0cda33daf304b1438da4), // ECU
            bytes32(0x7412d284c8f63791fec807f9b1f61c6fe61163621775a3dc8686cd2575272abe), // EGY
            bytes32(0x375409bc5eeeff961e82b479caeccc20f33d15738e5bce1186d628aa3d9dfb1f), // ENG
            bytes32(0x7976b8dbacf9077eb1453a62bcefd6ab2df199acd28aad276ff0d920d6992892), // ESP
            bytes32(0x9b6fef249040fd17e9c107955b37ac2c3e923509b6b0ff01cc463a331ddeb894), // FRA
            bytes32(0x1595b4818eeb1ea1e0bec5de6f057218e557feee9b405a0e930d290384fa1d16), // GER
            bytes32(0x881a3ffa618b6ae0ab95a5637e310afb1afc2d99c921bfe3235b15eccfce0344), // GHA
            bytes32(0x506f80bcf76bc75e6b31a250e2d754f347c4c231665326931d58bdb339ba1913), // HAI
            bytes32(0x84edef36bded182da6a395ac6c785dba8f3e09b6c5ad041385b2042536cbef25), // IRN
            bytes32(0x51e8c8df709aa78f64d2d9324d9d2556270f81e3966ade308099e5338bb4e4c9), // IRQ
            bytes32(0x33a87d02fa01e958929385c74b8627d32cc4474e9ebd312d268865c5207147fa), // JOR
            bytes32(0x0189df05ed7bf84d799213b01a79571e305c03b2ac5359cfbb3a323448ba20fa), // JPN
            bytes32(0x65307f30dce84ac35e41813035d3c04933da830dc4efbbb2fcdc4b282700ef3b), // KOR
            bytes32(0x3fb8a8de2ac275882d72b2c4f22d41776fcf033f9e413a77a84dd395c0d5257c), // KSA
            bytes32(0x37a6de1b21803e5f3fb1965116218215d79963af4f7e51659696366267a63a03), // MAR
            bytes32(0x5ccfe1b69a582d2985db08a8481a0d74c314b1fce9b4711ae2efb2c6467fe6aa), // MEX
            bytes32(0x9be56371f6a29d12769b2f196847ee825b9585ebb8bfa042136be031b081eba1), // NED
            bytes32(0x7b52405ad0e0d31bfe970940b67d77f24ecedeab8a2361c11148c02a006e325c), // NOR
            bytes32(0x9e5f9d8c384f8fe368b195fa9a780be58643dff7360588a4e577012df8af00a7), // NZL
            bytes32(0x9779c09fd4dd0a1c82dd82618269c2aa5669d91305293b396d1e0b8a166b566e), // PAN
            bytes32(0x675bba4df50fd123f7fbfbafa67e9b75f4092d85ce0f9148ce78fc945964c856), // PAR
            bytes32(0x4f3421fb2daf5cca7430ed8d8132463963081572d75434393a1808fdb8829fe8), // POR
            bytes32(0x4fe305a2ae995a52ff278895344895fe587b4fec3d5f04347b4dbf5e99bce99c), // QAT
            bytes32(0x233ce0c3969a5cd5079287f16fcd283be7c1db82263e08697f85dbe1b4d2113c), // RSA
            bytes32(0xf950740bc71136155d6525cc0528a582c81f88812bff227803190c32ca25f54d), // SCO
            bytes32(0x6972edb1b3f8cd8192651a665fc424dff846efe1c4a2376f628d4b20c704144c), // SEN
            bytes32(0x3a26ca6425e2d98f14935670bc22cdb0744defc6f6d83c65f8c413a921c5c70c), // SUI
            bytes32(0xd0dbdc94b28c5cffeef64ed6b13e5f0f2324fb177e5ffaa634b48c88fe18d5e7), // SWE
            bytes32(0xff0cfa9506cfa95759e4c7591654195bd26e3011f9882b51439135e04f2b69f1), // TUN
            bytes32(0x106ccc4508432a065a67394837d4c2c529a8d77ed69fa3ba90b81eedf5236598), // TUR
            bytes32(0x7876851632c295043c66536150a304cb785abdf712ba8489d298c6e6926be106), // URU
            bytes32(0xcdb1f0400949238a63d3e88243d2ada08cd9c2a71985ced9f0cfd5e66354cf90), // USA
            bytes32(0x965ebc5d79eb1ec02cad67245a44b9e45b33359018f013fb6cf81d5bbf7bcc8d)  // UZB
        ];
        for (uint256 i = 0; i < ids.length; i++) {
            isMarket[ids[i]] = true;
            markets.push(ids[i]);
        }
    }

    /// @dev Ownership can be transferred (Ownable) but never renounced — the
    ///      owner override is a safety path we don't want to lose by accident.
    function renounceOwnership() public view override onlyOwner {
        revert("renounce disabled");
    }

    // ----- Cheer accounting -----

    /// @dev The cheer clock. Cheers accrue only up to DEPOSIT_CUTOFF: before the
    ///      cutoff the clock tracks block.timestamp; at and after it the clock is
    ///      pinned to DEPOSIT_CUTOFF, so no backing earns cheers once deposits
    ///      close. Accrual is therefore frozen identically for everyone the
    ///      instant deposits shut, independent of when results are later
    ///      declared. (resultsTime, set at declaration/refund, is always
    ///      > DEPOSIT_CUTOFF, so it never affects this clock — it only records
    ///      when the FBX pot was frozen.)
    function _clock() internal view returns (uint256) {
        return block.timestamp < DEPOSIT_CUTOFF ? block.timestamp : DEPOSIT_CUTOFF;
    }

    /// @dev Freeze the running per-market cheer total up to the current clock.
    function _settleMarket(bytes32 market) internal {
        uint256 nowTs = _clock();
        uint256 last = marketLastUpdate[market];
        if (last == 0) {
            marketLastUpdate[market] = nowTs;
            return;
        }
        if (nowTs > last) {
            marketCheers[market] += (nowTs - last) * marketStakedEP[market];
            marketLastUpdate[market] = nowTs;
        }
    }

    /// @dev Freeze a user's cheers on a given market up to the current clock.
    function _settleUser(address user, bytes32 market) internal {
        Position storage p = positions[user][market];
        uint256 nowTs = _clock();
        if (p.lastUpdate != 0 && nowTs > p.lastUpdate) {
            p.cheers += (nowTs - p.lastUpdate) * p.stakedEP;
        }
        p.lastUpdate = nowTs;
    }

    // ----- Deposit / withdraw -----

    /// @notice Deposit `amountEP` of EP backing `market` (a Polymarket
    ///         conditionId). Requires prior EP approval. A user may back any
    ///         number of markets independently. Accepted only while
    ///         block.timestamp < DEPOSIT_CUTOFF.
    function deposit(uint256 amountEP, bytes32 market) external nonReentrant whileUnresolved {
        require(block.timestamp < DEPOSIT_CUTOFF, "deposits closed");
        require(amountEP > 0, "zero amount");
        require(isMarket[market], "invalid market");

        // Settle running totals before changing stake.
        _settleMarket(market);
        _settleUser(msg.sender, market);

        // Pull EP in, measuring what actually arrived rather than trusting the
        // requested amount, then stake the contract's entire unstaked EP balance
        // so no EP is ever left sitting idle (and any stray EP gets put to work).
        uint256 balBefore = EP.balanceOf(address(this));
        require(EP.transferFrom(msg.sender, address(this), amountEP), "EP transfer failed");
        uint256 received = EP.balanceOf(address(this)) - balBefore;
        require(received > 0, "no EP received");

        EP.stakeEP(EP.balanceOf(address(this)));

        positions[msg.sender][market].stakedEP += received;
        marketStakedEP[market] += received;
        totalStakedEP += received;

        emit Deposit(msg.sender, market, received);
    }

    /// @notice Withdraw `amountEP` of principal from a market backing. Accrued
    ///         cheers are kept; accrual on the withdrawn amount stops. Any time.
    function withdraw(uint256 amountEP, bytes32 market) external nonReentrant {
        Position storage p = positions[msg.sender][market];
        require(amountEP > 0 && amountEP <= p.stakedEP, "bad amount");

        _settleMarket(market);
        _settleUser(msg.sender, market);

        p.stakedEP -= amountEP;
        marketStakedEP[market] -= amountEP;
        totalStakedEP -= amountEP;

        // Unstake and return principal.
        EP.unstakeEP(amountEP);
        require(EP.transfer(msg.sender, amountEP), "EP return failed");

        emit Withdraw(msg.sender, market, amountEP);
    }

    /// @notice Withdraw ALL of the caller's staked EP across every market in one
    ///         transaction. Cheers earned on each are kept (settled first); only
    ///         the principal leaves. Unstakes and transfers once for the whole
    ///         sum to keep it a single, cheap action.
    function withdrawAll() external nonReentrant {
        uint256 totalOut = 0;
        uint256 len = markets.length;
        for (uint256 i = 0; i < len; i++) {
            bytes32 m = markets[i];
            Position storage p = positions[msg.sender][m];
            uint256 amt = p.stakedEP;
            if (amt == 0) continue;

            _settleMarket(m);
            _settleUser(msg.sender, m);

            p.stakedEP = 0;
            marketStakedEP[m] -= amt;
            totalStakedEP -= amt;
            totalOut += amt;

            emit Withdraw(msg.sender, m, amt);
        }
        require(totalOut > 0, "nothing staked");

        EP.unstakeEP(totalOut);
        require(EP.transfer(msg.sender, totalOut), "EP return failed");
    }

    // ----- Resolution -----

    /// @dev Common resolution path: freeze the winning market's cheers and the
    ///      FBX pot, and mark results declared. Cheers are already frozen at the
    ///      cutoff, so this just snapshots.
    function _resolve(bytes32 market, ResolutionSource src) internal {
        resultsTime = block.timestamp;
        resultsDeclared = true;
        winningMarket = market;
        resolutionSource = src;

        _settleMarket(market);
        winningMarketCheers = marketCheers[market];

        EP.claimRewards();
        rewardPot = FBX.balanceOf(address(this));

        emit ResultsDeclared(market, winningMarketCheers, rewardPot, src);
    }

    /// @notice Permissionless settlement from Polymarket. Scans the registered
    ///         markets and, if exactly one reports "Yes", fixes the result.
    ///         Reverts (a no-op) if Polymarket is unresolved, ambiguous, or
    ///         unreadable — it can never corrupt or brick the pool; the owner
    ///         override and the refund backstop remain available.
    function settleFromPolymarket() external nonReentrant whileUnresolved {
        _settleFromPolymarket();
    }

    /// @dev Shared settle-from-Polymarket logic. Holds no guards of its own —
    ///      every caller (settleFromPolymarket, redeem) already carries the
    ///      nonReentrant guard and only invokes this while the pool is unresolved.
    function _settleFromPolymarket() internal {
        // A resolved Polymarket market is itself proof the final is over, so
        // there's no extra waiting period — just a sanity floor that deposits
        // have closed (guards a misconfigured, already-resolved market from
        // settling early).
        require(block.timestamp >= DEPOSIT_CUTOFF, "too early");
        (bytes32 market, bool found) = polymarketWinner();
        require(found, "polymarket not settled");
        _resolve(market, ResolutionSource.Polymarket);
    }

    /// @notice Owner override: declare the winning market directly, independent
    ///         of Polymarket. The fallback for when Polymarket fails to resolve.
    ///         Locked until OWNER_DECLARE_OPEN (cutoff + 7 days), so Polymarket
    ///         has an exclusive first week as the canonical resolver.
    function declareResults(bytes32 market) external onlyOwner nonReentrant whileUnresolved {
        require(block.timestamp >= OWNER_DECLARE_OPEN, "too early to declare");
        require(isMarket[market], "invalid market");
        _resolve(market, ResolutionSource.Owner);
    }

    /// @notice Permissionless safety net: after REFUND_DEADLINE, if nothing has
    ///         been declared, anyone can open pro-rata refund mode. All markets'
    ///         cheers are settled and summed; each backer can then `claimRefund`
    ///         on each market they backed for their share of the FBX pot.
    function openRefund() external nonReentrant whileUnresolved {
        require(block.timestamp >= REFUND_DEADLINE, "too early");

        resultsTime = block.timestamp;
        refundOpened = true;

        uint256 total = 0;
        uint256 len = markets.length;
        for (uint256 i = 0; i < len; i++) {
            bytes32 m = markets[i];
            _settleMarket(m);
            total += marketCheers[m];
        }
        totalSettledCheers = total;

        EP.claimRewards();
        rewardPot = FBX.balanceOf(address(this));

        emit RefundOpened(total, rewardPot);
    }

    // ----- Polymarket reads (best-effort, never revert) -----

    /// @dev True only if ConditionalTokens has deployed code. Guards the
    ///      high-level external calls below from reverting on a no-code address,
    ///      which try/catch would not absorb.
    function _ctReady() internal view returns (address ct, bool ready) {
        ct = CONDITIONAL_TOKENS;
        uint256 size;
        assembly {
            size := extcodesize(ct)
        }
        ready = size > 0;
    }

    /// @dev Safe read of payoutDenominator: returns 0 (treated as "unresolved")
    ///      on any failure or if ConditionalTokens has no code.
    function _payoutDenominator(bytes32 conditionId) internal view returns (uint256) {
        (address ct, bool ready) = _ctReady();
        if (!ready) return 0;
        try IConditionalTokens(ct).payoutDenominator(conditionId) returns (uint256 d) {
            return d;
        } catch {
            return 0;
        }
    }

    /// @dev Safe read of payoutNumerators: returns 0 on any failure.
    function _payoutNumerator(bytes32 conditionId, uint256 index) internal view returns (uint256) {
        (address ct, bool ready) = _ctReady();
        if (!ready) return 0;
        try IConditionalTokens(ct).payoutNumerators(conditionId, index) returns (uint256 n) {
            return n;
        } catch {
            return 0;
        }
    }

    /// @notice Whether a registered market has reported on Polymarket.
    function isMarketResolved(bytes32 market) public view returns (bool) {
        if (!isMarket[market]) return false;
        return _payoutDenominator(market) > 0;
    }

    /// @notice Whether Polymarket reports this market as the winner (Yes paid out).
    function didMarketWin(bytes32 market) public view returns (bool) {
        if (!isMarket[market]) return false;
        if (_payoutDenominator(market) == 0) return false;
        return _payoutNumerator(market, YES_INDEX) > 0;
    }

    /// @notice The winning market according to Polymarket, if determinable
    ///         unambiguously. `found` is false when none has won yet, or when the
    ///         data is ambiguous (more than one winner) — callers should then
    ///         fall back to the owner override.
    function polymarketWinner() public view returns (bytes32 winner, bool found) {
        uint256 len = markets.length;
        for (uint256 i = 0; i < len; i++) {
            bytes32 m = markets[i];
            if (didMarketWin(m)) {
                if (found) return (bytes32(0), false); // ambiguous — bail safely
                winner = m;
                found = true;
            }
        }
    }

    /// @notice True iff Polymarket reports exactly one winning market right now.
    function hasPolymarketWinner() external view returns (bool) {
        (, bool found) = polymarketWinner();
        return found;
    }

    // ----- Claims -----

    /// @notice Winners redeem their cheers on the winning market for a pro-rata
    ///         share of the FBX pot. The first winner to claim settles the pool
    ///         for everyone: if nothing has been resolved yet, the result is
    ///         pulled from Polymarket in this same tx (reverts if Polymarket
    ///         hasn't settled and the owner hasn't declared — nothing to claim).
    function redeem(bytes32 market) external nonReentrant returns (uint256 payout) {
        if (!resultsDeclared && !refundOpened) {
            _settleFromPolymarket();
        }
        require(resultsDeclared, "no results yet");
        require(market == winningMarket, "not winning market");

        Position storage p = positions[msg.sender][market];
        require(!p.redeemed, "already redeemed");

        _settleUser(msg.sender, market);
        uint256 userCheers = p.cheers;
        require(userCheers > 0, "no cheers");
        require(winningMarketCheers > 0, "no winning cheers");

        payout = (rewardPot * userCheers) / winningMarketCheers;
        p.redeemed = true;
        rewardPaid += payout;

        if (payout > 0) {
            require(FBX.transfer(msg.sender, payout), "FBX payout failed");
        }
        emit Redeem(msg.sender, market, userCheers, payout);
    }

    /// @notice In refund mode, redeem cheers from any market backed pro-rata
    ///         against total cheers across all markets. Called per market backed.
    function claimRefund(bytes32 market) external nonReentrant returns (uint256 payout) {
        require(refundOpened, "refund not open");

        Position storage p = positions[msg.sender][market];
        require(!p.redeemed, "already redeemed");

        _settleUser(msg.sender, market);
        uint256 userCheers = p.cheers;
        p.redeemed = true;

        if (userCheers > 0 && totalSettledCheers > 0) {
            payout = (rewardPot * userCheers) / totalSettledCheers;
            rewardPaid += payout;
            if (payout > 0) {
                require(FBX.transfer(msg.sender, payout), "FBX payout failed");
            }
        }
        emit Refund(msg.sender, market, userCheers, payout);
    }

    /// @notice After results or refund open, the owner may rescue FBX that
    ///         exceeds what claimants are still owed. The outstanding
    ///         obligation is exactly (rewardPot - rewardPaid); everything above
    ///         that — post-snapshot emissions and rounding dust — is excess.
    /// @dev Claims any pending FBX first so post-declaration emissions are included.
    function rescueExcessFBX(address to) external nonReentrant onlyOwner returns (uint256 excess) {
        require(resultsDeclared || refundOpened, "not resolved");
        require(to != address(0), "zero address");

        EP.claimRewards();

        uint256 balance = FBX.balanceOf(address(this));
        uint256 owed = rewardPot - rewardPaid;
        require(balance > owed, "nothing to rescue");

        excess = balance - owed;
        require(FBX.transfer(to, excess), "FBX rescue failed");
    }

    // ----- Views -----

    /// @notice Full list of registered market conditionIds.
    function allMarkets() external view returns (bytes32[] memory) {
        return markets;
    }

    /// @notice Number of registered markets.
    function marketCount() external view returns (uint256) {
        return markets.length;
    }

    /// @notice Total EP currently deposited (staked) for a market.
    function totalEPForMarket(bytes32 market) external view returns (uint256) {
        return marketStakedEP[market];
    }

    /// @notice Live total cheers generated by a market (settled + pending to clock).
    function totalCheersForMarket(bytes32 market) public view returns (uint256) {
        uint256 nowTs = _clock();
        uint256 last = marketLastUpdate[market];
        uint256 pending = (last != 0 && nowTs > last)
            ? (nowTs - last) * marketStakedEP[market]
            : 0;
        return marketCheers[market] + pending;
    }

    /// @notice Live cheers for a specific user's backing of a market.
    function cheersOf(address user, bytes32 market) external view returns (uint256) {
        Position storage p = positions[user][market];
        uint256 nowTs = _clock();
        uint256 pending = (p.lastUpdate != 0 && nowTs > p.lastUpdate)
            ? (nowTs - p.lastUpdate) * p.stakedEP
            : 0;
        return p.cheers + pending;
    }

    /// @notice A user's EP deposited on a specific market.
    function stakedOf(address user, bytes32 market) external view returns (uint256) {
        return positions[user][market].stakedEP;
    }
}