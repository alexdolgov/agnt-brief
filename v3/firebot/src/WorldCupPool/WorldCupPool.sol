pragma solidity ^0.8.35;
/* SPDX-License-Identifier: MIT
  _____ _          _          _
 |  ___(_)_ __ ___| |    __ _| |__  ___
 | |_  | | '__/ _ \ |   / _` | '_ \/ __|
 |  _| | | | |  __/ |__| (_| | |_) \__ \
 |_|   |_|_|  \___|_____\__,_|_.__/|___/

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

/// @title WorldCupPool — a no-loss prediction market proof of concept.
/// @notice Users deposit EP backing one or more teams, identified by their FIFA
///         3-letter code (e.g. "FRA", "BRA"). Deposited EP is staked, earning
///         FBX for the whole pool. Each (user, team) backing accrues "cheers"
///         at 1 cheer/sec/EP, but only up to DEPOSIT_CUTOFF — cheers freeze the
///         instant deposits close, so accrual never depends on when results are
///         declared. Once the winning team is declared, holders of that team's
///         cheers redeem them pro-rata for a share of all FBX collected.
///         Principal (EP) is always withdrawable — no one loses their deposit.
///         Deposits close at the earliest possible end of the final match (see
///         DEPOSIT_CUTOFF); withdrawals stay open.
///
///         Resolution paths:
///           1. Starting DECLARE_OPEN (cutoff + 24h), the owner calls
///              `declareResults(team)`. This is the normal path — the 24h delay
///              guarantees the actual result is settled (even in the extra
///              time + penalties + post-match ceremony worst case).
///           2. If the owner is unreachable and no result has been declared by
///              REFUND_DEADLINE (cutoff + 30 days), anyone can call
///              `openRefund()`. Every backer then redeems their cheers
///              pro-rata against total cheers across all teams. No judgment of
///              outcome required.
contract WorldCupPool {
    IEP public immutable EP;
    IFBX public immutable FBX;
    address public immutable owner;

    /// @dev Deposits close at the earliest moment the WC 2026 final could end:
    ///      2026-07-19 20:45 UTC = kickoff (19:00 UTC) + 90 min regulation +
    ///      15 min halftime. Withdrawals are unaffected.
    uint256 public constant DEPOSIT_CUTOFF = 1784493900;

    /// @dev Earliest moment the owner may declare results. = DEPOSIT_CUTOFF + 24h
    ///      = 2026-07-20 20:45 UTC. Gives the result a full day to settle even
    ///      in the worst case (extra time + penalties + ceremony) and removes
    ///      any temptation to act on partial information.
    uint256 public constant DECLARE_OPEN = DEPOSIT_CUTOFF + 24 hours;

    /// @dev After this point, if no result has been declared, anyone can open
    ///      pro-rata refund mode. = DEPOSIT_CUTOFF + 30 days = 2026-08-18 20:45 UTC.
    uint256 public constant REFUND_DEADLINE = DEPOSIT_CUTOFF + 30 days;

    /// @dev Set once when results are declared OR refund is opened. Until then == 0.
    uint256 public resultsTime;
    /// @dev FIFA 3-letter code of the winning team, valid only after declaration.
    bytes3 public winningTeam;
    bool public resultsDeclared;
    /// @dev True once pro-rata refund mode is opened. Mutually exclusive with resultsDeclared.
    bool public refundOpened;

    /// @dev Snapshot of the winning team's total cheers, frozen at declaration.
    uint256 public winningTeamCheers;
    /// @dev Sum of cheers across all teams, frozen when refund opens.
    uint256 public totalSettledCheers;
    /// @dev Total FBX available to distribute, frozen at declaration / refund open.
    uint256 public rewardPot;
    /// @dev FBX already paid out, to track remainder.
    uint256 public rewardPaid;

    /// @dev A single (user, team) backing.
    struct Position {
        uint256 stakedEP;     // EP this user has on this team
        uint256 cheers;       // settled (frozen) cheers
        uint256 lastUpdate;   // timestamp cheers were last settled
        bool redeemed;        // payout already claimed
    }

    // user => team code => position
    mapping(address => mapping(bytes3 => Position)) public positions;

    /// @dev Running settled cheer total per team, kept current via _settleTeam.
    mapping(bytes3 => uint256) public teamCheers;
    /// @dev Per-team last-update clock for the running total.
    mapping(bytes3 => uint256) public teamLastUpdate;
    /// @dev EP currently staked per team (drives team cheer accrual rate).
    mapping(bytes3 => uint256) public teamStakedEP;

    /// @dev Total EP staked across all teams.
    uint256 public totalStakedEP;

    /// @dev O(1) validity check for a team code.
    mapping(bytes3 => bool) public isValidTeam;
    /// @dev Enumerable list of all 48 qualified teams, populated in the constructor.
    bytes3[] public teams;

    // --- reentrancy guard ---
    uint256 private constant _NOT_ENTERED = 1;
    uint256 private constant _ENTERED = 2;
    uint256 private _status = _NOT_ENTERED;

    event Deposit(address indexed user, bytes3 indexed team, uint256 amountEP);
    event Withdraw(address indexed user, bytes3 indexed team, uint256 amountEP);
    event ResultsDeclared(bytes3 winningTeam, uint256 winningCheers, uint256 pot);
    event Redeem(address indexed user, bytes3 indexed team, uint256 cheers, uint256 fbxPayout);
    event RefundOpened(uint256 totalCheers, uint256 pot);
    event Refund(address indexed user, bytes3 indexed team, uint256 cheers, uint256 fbxPayout);

    modifier nonReentrant() {
        require(_status != _ENTERED, "reentrant");
        _status = _ENTERED;
        _;
        _status = _NOT_ENTERED;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "not owner");
        _;
    }

    /// @dev Blocks any call once an outcome is fixed (either a declaration or a refund).
    modifier whileUnresolved() {
        require(!resultsDeclared, "results declared");
        require(!refundOpened, "refund opened");
        _;
    }

    constructor(address ep, address fbx) {
        require(ep != address(0) && fbx != address(0), "zero address");
        EP = IEP(ep);
        FBX = IFBX(fbx);
        owner = msg.sender;

        // All 48 teams qualified for the 2026 World Cup, identified by their
        // FIFA 3-letter code (ASCII-packed into bytes3), in alphabetical order.
        bytes3[48] memory codes = [
            bytes3("ALG"), "ARG", "AUS", "AUT", "BEL", "BIH", "BRA", "CAN",
            "CIV", "COD", "COL", "CPV", "CRO", "CUW", "CZE", "ECU",
            "EGY", "ENG", "ESP", "FRA", "GER", "GHA", "HAI", "IRN",
            "IRQ", "JOR", "JPN", "KOR", "KSA", "MAR", "MEX", "NED",
            "NOR", "NZL", "PAN", "PAR", "POR", "QAT", "RSA", "SCO",
            "SEN", "SUI", "SWE", "TUN", "TUR", "URU", "USA", "UZB"
        ];
        for (uint256 i = 0; i < codes.length; i++) {
            isValidTeam[codes[i]] = true;
            teams.push(codes[i]);
        }
    }

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

    /// @dev Freeze the running per-team cheer total up to the current clock.
    function _settleTeam(bytes3 team) internal {
        uint256 nowTs = _clock();
        uint256 last = teamLastUpdate[team];
        if (last == 0) {
            teamLastUpdate[team] = nowTs;
            return;
        }
        if (nowTs > last) {
            teamCheers[team] += (nowTs - last) * teamStakedEP[team];
            teamLastUpdate[team] = nowTs;
        }
    }

    /// @dev Freeze a user's cheers on a given team up to the current clock.
    function _settleUser(address user, bytes3 team) internal {
        Position storage p = positions[user][team];
        uint256 nowTs = _clock();
        if (p.lastUpdate != 0 && nowTs > p.lastUpdate) {
            p.cheers += (nowTs - p.lastUpdate) * p.stakedEP;
        }
        p.lastUpdate = nowTs;
    }

    /// @notice Deposit `amountEP` of EP backing `team`. Requires prior EP approval.
    ///         A user may back any number of teams independently. Deposits are
    ///         only accepted while block.timestamp < DEPOSIT_CUTOFF.
    function deposit(uint256 amountEP, bytes3 team) external nonReentrant whileUnresolved {
        require(block.timestamp < DEPOSIT_CUTOFF, "deposits closed");
        require(amountEP > 0, "zero amount");
        require(isValidTeam[team], "invalid team");

        // Settle running totals before changing stake.
        _settleTeam(team);
        _settleUser(msg.sender, team);

        // Pull EP in, measuring what actually arrived rather than trusting the
        // requested amount, then stake the contract's entire unstaked EP balance
        // so no EP is ever left sitting idle (and any stray EP gets put to work).
        uint256 balBefore = EP.balanceOf(address(this));
        require(EP.transferFrom(msg.sender, address(this), amountEP), "EP transfer failed");
        uint256 received = EP.balanceOf(address(this)) - balBefore;
        require(received > 0, "no EP received");

        EP.stakeEP(EP.balanceOf(address(this)));

        positions[msg.sender][team].stakedEP += received;
        teamStakedEP[team] += received;
        totalStakedEP += received;

        emit Deposit(msg.sender, team, received);
    }

    /// @notice Withdraw `amountEP` of principal from a team backing. Accrued cheers
    ///         are kept; accrual on the withdrawn amount stops. Allowed any time.
    function withdraw(uint256 amountEP, bytes3 team) external nonReentrant {
        Position storage p = positions[msg.sender][team];
        require(amountEP > 0 && amountEP <= p.stakedEP, "bad amount");

        _settleTeam(team);
        _settleUser(msg.sender, team);

        p.stakedEP -= amountEP;
        teamStakedEP[team] -= amountEP;
        totalStakedEP -= amountEP;

        // Unstake and return principal.
        EP.unstakeEP(amountEP);
        require(EP.transfer(msg.sender, amountEP), "EP return failed");

        emit Withdraw(msg.sender, team, amountEP);
    }

    /// @notice Owner declares the winning team and snapshots the winning team's
    ///         (already-frozen-at-cutoff) cheers and the FBX pot. Locked out
    ///         until at least 24h after the earliest possible end of the final,
    ///         to ensure the actual result is unambiguous.
    function declareResults(bytes3 team) external nonReentrant onlyOwner whileUnresolved {
        require(block.timestamp >= DECLARE_OPEN, "too early to declare");
        require(isValidTeam[team], "invalid team");

        resultsTime = block.timestamp;
        resultsDeclared = true;
        winningTeam = team;

        _settleTeam(team);
        winningTeamCheers = teamCheers[team];

        EP.claimRewards();
        rewardPot = FBX.balanceOf(address(this));

        emit ResultsDeclared(team, winningTeamCheers, rewardPot);
    }

    /// @notice Permissionless safety net: after REFUND_DEADLINE, if nothing has
    ///         been declared, anyone can open pro-rata refund mode. All teams'
    ///         cheers are settled and summed; each backer can then `claimRefund`
    ///         on each team they backed for their share of the FBX pot.
    function openRefund() external nonReentrant whileUnresolved {
        require(block.timestamp >= REFUND_DEADLINE, "too early");

        resultsTime = block.timestamp;
        refundOpened = true;

        uint256 total = 0;
        for (uint256 i = 0; i < teams.length; i++) {
            bytes3 t = teams[i];
            _settleTeam(t);
            total += teamCheers[t];
        }
        totalSettledCheers = total;

        EP.claimRewards();
        rewardPot = FBX.balanceOf(address(this));

        emit RefundOpened(total, rewardPot);
    }

    /// @notice Winners redeem their cheers on the winning team for a pro-rata
    ///         share of the FBX pot.
    function redeem(bytes3 team) external nonReentrant returns (uint256 payout) {
        require(resultsDeclared, "no results yet");
        require(team == winningTeam, "not winning team");

        Position storage p = positions[msg.sender][team];
        require(!p.redeemed, "already redeemed");

        _settleUser(msg.sender, team);
        uint256 userCheers = p.cheers;
        require(userCheers > 0, "no cheers");
        require(winningTeamCheers > 0, "no winning cheers");

        payout = (rewardPot * userCheers) / winningTeamCheers;
        p.redeemed = true;
        rewardPaid += payout;

        if (payout > 0) {
            require(FBX.transfer(msg.sender, payout), "FBX payout failed");
        }
        emit Redeem(msg.sender, team, userCheers, payout);
    }

    /// @notice In refund mode, redeem cheers from any team backed pro-rata
    ///         against total cheers across all teams. Called per team backed.
    function claimRefund(bytes3 team) external nonReentrant returns (uint256 payout) {
        require(refundOpened, "refund not open");

        Position storage p = positions[msg.sender][team];
        require(!p.redeemed, "already redeemed");

        _settleUser(msg.sender, team);
        uint256 userCheers = p.cheers;
        p.redeemed = true;

        if (userCheers > 0 && totalSettledCheers > 0) {
            payout = (rewardPot * userCheers) / totalSettledCheers;
            rewardPaid += payout;
            if (payout > 0) {
                require(FBX.transfer(msg.sender, payout), "FBX payout failed");
            }
        }
        emit Refund(msg.sender, team, userCheers, payout);
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

    /// @notice Full list of valid team codes (all 48 qualified teams).
    function allTeams() external view returns (bytes3[] memory) {
        return teams;
    }

    /// @notice Number of valid team codes.
    function teamCount() external view returns (uint256) {
        return teams.length;
    }

    /// @notice Total EP currently deposited (staked) for a team.
    function totalEPForTeam(bytes3 team) external view returns (uint256) {
        return teamStakedEP[team];
    }

    /// @notice Live total cheers generated by a team (settled + pending to clock).
    function totalCheersForTeam(bytes3 team) public view returns (uint256) {
        uint256 nowTs = _clock();
        uint256 last = teamLastUpdate[team];
        uint256 pending = (last != 0 && nowTs > last)
            ? (nowTs - last) * teamStakedEP[team]
            : 0;
        return teamCheers[team] + pending;
    }

    /// @notice Live cheers for a specific user's backing of a team.
    function cheersOf(address user, bytes3 team) external view returns (uint256) {
        Position storage p = positions[user][team];
        uint256 nowTs = _clock();
        uint256 pending = (p.lastUpdate != 0 && nowTs > p.lastUpdate)
            ? (nowTs - p.lastUpdate) * p.stakedEP
            : 0;
        return p.cheers + pending;
    }

    /// @notice A user's EP deposited on a specific team.
    function stakedOf(address user, bytes3 team) external view returns (uint256) {
        return positions[user][team].stakedEP;
    }
}