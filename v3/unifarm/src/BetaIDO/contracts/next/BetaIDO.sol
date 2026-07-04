// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IStakingLockAgent, IRefTreeStorage, ITicketsCounter, ILockableStaking} from './Interfaces.sol';
import {LockableStaking} from './LockableStaking.sol';
import {RefProgramBase} from './RefProgramBase.sol';
import {SafeERC20, IERC20} from '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import {IERC20Metadata} from '@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol';
import '@openzeppelin/contracts/utils/structs/EnumerableSet.sol';

abstract contract RefProgram is RefProgramBase {
    using SafeERC20 for IERC20;
    struct RefUserInfo {
        uint256[3] refCumulativeRewards;
        uint256[3] refCumulativeParticipants;
    }

    ITicketsCounter public ticketsCounter;
    uint256[3] public refererShares = [10, 5, 3];
    mapping(address => RefUserInfo) _refUserInfo;

    event RefRewardDistributed(
        address indexed referer,
        address indexed staker,
        uint8 indexed level,
        uint256 amount,
        uint256 timestamp
    );

    constructor(IRefTreeStorage refTreeStorage_, ITicketsCounter ticketsCounter_) RefProgramBase(refTreeStorage_) {
        setTicketsCounter(ticketsCounter_);
    }

    // SETTERS

    function setTicketsCounter(ITicketsCounter ticketsCounter_) public onlyOwner {
        ticketsCounter = ticketsCounter_;
    }

    function setRefShares(uint256[3] calldata shares) public onlyOwner {
        refererShares = shares;
    }

    // INTERNAL OPERATIONS

    function _refDistributeParticipants(address staker) internal {
        address referer = staker;
        for (uint8 i = 0; i < 3; i++) {
            referer = refTreeStorage.refererOf(referer);
            if (referer == address(0)) {
                break;
            }
            _refUserInfo[referer].refCumulativeParticipants[i]++;
        }
    }

    function _refDistributeRewards(
        IERC20 rewardToken,
        uint256 amount,
        address staker
    ) internal {
        address referer = staker;
        for (uint8 i = 0; i < 3; i++) {
            referer = refTreeStorage.refererOf(referer);
            if (referer == address(0)) {
                break;
            }
            uint256 refReward = (amount * refererShares[i]) / 100;
            rewardToken.safeTransfer(referer, refReward);
            emit RefRewardDistributed(referer, staker, i, refReward, block.timestamp);
            _refUserInfo[referer].refCumulativeRewards[i] += refReward;
        }
    }

    // EXTERNAL GETTERS

    function refUserInfo(address user)
        external
        view
        returns (
            RefUserInfo memory info,
            address referer,
            address[] memory referrals
        )
    {
        info = _refUserInfo[user];
        referer = refTreeStorage.refererOf(user);
        referrals = refTreeStorage.referralsOf(user);
    }
}

contract BetaIDO is RefProgram, IStakingLockAgent {
    using SafeERC20 for IERC20;
    using EnumerableSet for EnumerableSet.AddressSet;
    IERC20 public BUSD;

    struct VestingParams {
        uint32[] startPeriods;
        uint256[] startAmounts;
        uint32 mainPeriod;
        uint32 mainStepTime;
        uint256 mainAmount;
        uint32[] finalPeriods;
        uint256[] finalAmounts;
    }

    struct ProgramParams {
        uint16 places;
        uint256 busdAmount;
        uint256 tokenAmount;
        IERC20 token;
        uint32 registrationStart;
        uint32 registrationEnd;
        uint32 draw;
    }

    struct Program {
        VestingParams vesting; // unchangeable
        ProgramParams params; // unchangeable
        bool drawn; // To prevent double draw
        uint256 claimed; // To count how much tokens users have claimed
        bool refProgramActive; // Distribute referral program rewards or not
        bool cancelled; // Admin can cancel and let every user get all their busd back (unless user claimed tokens already)
        uint256 nextDrawIndex; // To split draw() in several tx's when necessary
        uint32 _filledDate; // calculated during adding
    }

    struct UserInfo {
        uint256 tickets;
        bool winner;
        uint256 claimed;
    }

    /**
     * Just to track tokens that are involved in (not cancelled) IDO's
     * @notice SHALL USE ONLY add(), remove(), contains() - NOT RELY ON INDEXES
     */
    EnumerableSet.AddressSet _tokensInvolved;
    /// @notice SHALL NEVER REMOVE USERS FROM THIS - userIndexes MUST STAY UNMODIFIED
    mapping(uint256 => EnumerableSet.AddressSet) _participantsOf;
    mapping(uint256 => uint16[]) _ticketsAt; // Values here are userIndexes
    Program[] _programs;
    mapping(uint256 => mapping(address => UserInfo)) _userInfos;

    event ProgramAdded(uint256 indexed index, IERC20 indexed token);
    event ProgramCancelled(uint256 indexed index, string reason);
    event RefProgramStatusSet(uint256 indexed index, bool value);
    event Draw(uint256 indexed index, bool indexed finished);
    event UserRegistered(uint256 indexed index, address indexed user, uint256 tickets);
    event UserClaimed(uint256 indexed index, address indexed user, uint256 amount, bool finished);
    event UserWon(uint256 indexed index, address indexed user);
    event TokensTaken(IERC20 indexed token, uint256 amount);

    constructor(
        IERC20 BUSD_,
        IRefTreeStorage refTreeStorage_,
        ITicketsCounter ticketsCounter_
    ) RefProgram(refTreeStorage_, ticketsCounter_) {
        BUSD = BUSD_;
    }

    // USER ACTIONS

    function register(uint256 index) public returns (uint16 userIndex) {
        Program storage program = _programs[index];
        require(block.timestamp >= program.params.registrationStart, 'too early');
        require(block.timestamp < program.params.registrationEnd, 'too late');
        require(!_participantsOf[index].contains(msg.sender), 'registered');
        // Tickets counter is independent so that admins can modify tickets distribution
        // Also, it is called only during registration - tickets amount is saved to storage
        (uint256 tickets, ILockableStaking[] memory lockableStakings, uint256[] memory lockableAmounts) = ticketsCounter
            .countTickets(msg.sender, program.params.draw);
        require(tickets > 0, 'no tickets');
        for (uint256 i = 0; i < lockableStakings.length; i++) {
            lockableStakings[i].lockByAgent(msg.sender, program.params.draw, lockableAmounts[i], bytes32(index));
        }
        uint256 participantsLength = _participantsOf[index].length();
        // Practically impossible to reach 2^16 participants but it would cause catastrophe if anyone did
        require(participantsLength < type(uint16).max, 'limit');

        BUSD.safeTransferFrom(msg.sender, address(this), program.params.busdAmount);

        userIndex = uint16(participantsLength);
        _participantsOf[index].add(msg.sender);
        _userInfos[index][msg.sender] = UserInfo({tickets: tickets, winner: false, claimed: 0});
        for (uint256 i = 0; i < tickets; i++) {
            _ticketsAt[index].push(userIndex);
        }
        _refDistributeParticipants(msg.sender);
        emit UserRegistered(index, msg.sender, tickets);
    }

    function claim(uint256 index) external {
        require(_participantsOf[index].contains(msg.sender), 'not registered');
        if (_programs[index].cancelled) {
            _retrieveBusd(index, msg.sender);
            return;
        }
        require(_programs[index].drawn, 'too early');
        UserInfo storage info = _userInfos[index][msg.sender];
        ProgramParams storage params = _programs[index].params;
        if (_isWinner(index, msg.sender)) {
            uint256 claimable = getClaimable(index, msg.sender);
            require(claimable > 0, 'nothing to claim');
            params.token.safeTransfer(msg.sender, claimable);
            if (info.claimed == 0 && _programs[index].refProgramActive) {
                _refDistributeRewards(BUSD, params.busdAmount, msg.sender);
            }
            info.claimed += claimable;
            _programs[index].claimed += claimable;
            emit UserClaimed(index, msg.sender, claimable, info.claimed == params.tokenAmount);
        } else {
            _retrieveBusd(index, msg.sender);
        }
    }

    function _retrieveBusd(uint256 index, address user) internal {
        UserInfo storage info = _userInfos[index][user];
        require(info.claimed == 0, 'already retrieved');
        BUSD.safeTransfer(user, _programs[index].params.busdAmount);
        info.claimed = type(uint256).max; // Unique value to distinct users that has claimed their BUSD back
        emit UserClaimed(index, user, 0, true);
    }

    // OWNER ACTIONS

    function addProgram(
        VestingParams memory vesting,
        ProgramParams memory params,
        bool refProgramActive
    ) external onlyOwner returns (uint256 index) {
        uint32 _filledDate = _validateParams(vesting, params);
        index = _programs.length;
        _programs.push(
            Program({
                vesting: vesting,
                params: params,
                drawn: false,
                claimed: 0,
                refProgramActive: refProgramActive,
                cancelled: false,
                nextDrawIndex: 0,
                _filledDate: _filledDate
            })
        );
        _tokensInvolved.add(address(params.token));
        emit ProgramAdded(index, params.token);
    }

    function cancelProgram(uint256 index, string memory reason) external onlyOwner {
        require(!_programs[index].cancelled);
        _programs[index].cancelled = true;
        _tokensInvolved.remove(address(_programs[index].params.token));
        emit ProgramCancelled(index, reason);
    }

    function setRefProgramActive(uint256 index, bool value) external onlyOwner {
        require(_programs[index].refProgramActive != value);
        _programs[index].refProgramActive = value;
        emit RefProgramStatusSet(index, value);
    }

    function draw(uint256 index, uint256 gasLimit) external onlyOwner returns (bool finished) {
        Program storage program = _programs[index];
        require(block.timestamp >= program.params.draw, 'too early');
        require(!program.drawn, 'draw already done');

        if (_participantsOf[index].length() > program.params.places) {
            uint256 minGasThreshold = gasleft() - gasLimit;
            uint16 places = program.params.places;
            uint16[] storage tickets = _ticketsAt[index];
            for (uint256 i = program.nextDrawIndex; i < places; i++) {
                if (gasleft() < minGasThreshold) {
                    program.nextDrawIndex = i;
                    emit Draw(index, false);
                    return false;
                }
                uint16 winnerIndex = tickets[_generateRandom(tickets.length, i)];
                address winner = _participantsOf[index].at(winnerIndex);
                emit UserWon(index, winner);
                _userInfos[index][winner].winner = true;
                _removeTickets(index, winnerIndex, _userInfos[index][winner].tickets);
            }
        }
        program.drawn = true;
        delete _ticketsAt[index];
        emit Draw(index, true);
        return true;
    }

    function takeByAddress(IERC20 token, uint256 amount) public onlyOwner {
        require(!_tokensInvolved.contains(address(token)), 'involved');
        if (amount == 0) amount = token.balanceOf(address(this));
        token.safeTransfer(msg.sender, amount);
        emit TokensTaken(token, amount);
    }

    function takeByIndex(uint256 index, uint256 amount) public onlyOwner {
        Program storage program = _programs[index];
        require(block.timestamp > program._filledDate || program.cancelled, 'forbidden');
        if (amount == 0) amount = program.params.token.balanceOf(address(this));
        program.params.token.safeTransfer(msg.sender, amount);
        emit TokensTaken(program.params.token, amount);
    }

    /**
     * @dev Unlock possible for anyone if program was cancelled
     */
    function exceptionalUnlockPossible(address user, bytes32 payload) external view override returns (bool) {
        return _programs[uint256(payload)].cancelled;
    }

    function getClaimable(uint256 index, address user) public view returns (uint256 amount) {
        if (!_isWinner(index, user)) return 0;
        return _getCumulativeClaimable(index) - _userInfos[index][user].claimed;
    }

    function infoBundle(uint256 index, address user)
        external
        view
        returns (
            Program memory p,
            UserInfo memory u,
            uint256 busd_bal,
            uint256 busd_all,
            TokenMetadata memory token,
            bool isWinner,
            uint256 ticketsCounted
        )
    {
        p = _programs[index];
        u = _userInfos[index][user];
        busd_bal = BUSD.balanceOf(user);
        busd_all = BUSD.allowance(user, address(this));
        token = infoBundleToken(IERC20Metadata(address(p.params.token)));
        isWinner = _isWinner(index, user);
        (ticketsCounted, , ) = ticketsCounter.countTickets(user, p.params.draw);
    }

    struct TokenMetadata {
        uint8 decimals;
        string name;
        string symbol;
        uint256 totalSupply;
    }

    function infoBundleToken(IERC20Metadata token) public view returns (TokenMetadata memory) {
        return
            TokenMetadata({
                decimals: token.decimals(),
                name: token.name(),
                symbol: token.symbol(),
                totalSupply: token.totalSupply()
            });
    }

    function programs(uint256 from, uint256 to) public view returns (Program[] memory p) {
        uint256 length = to - from + 1;
        p = new Program[](length);
        for (uint256 i = 0; i < length; i++) {
            p[i] = _programs[i + from];
        }
    }

    function programs(uint256 last) external view returns (Program[] memory p, uint256 from) {
        uint256 pl = _programs.length;
        if (last > pl) last = pl;
        from = pl - last;
        p = programs(from, pl - 1);
    }

    function programs() external view returns (Program[] memory) {
        return _programs;
    }

    function participantsOf(uint256 index) external view returns (address[] memory) {
        return _participantsOf[index].values();
    }

    function participantsOf(uint256 index, address user) external view returns (bool) {
        return _participantsOf[index].contains(user);
    }

    // INTERNAL

    /// @return value that fits in [0, range)
    function _generateRandom(uint256 range, uint256 salt) internal view returns (uint256) {
        return uint256(keccak256(abi.encodePacked(block.timestamp, block.difficulty, salt))) % range;
    }

    function _validateParams(VestingParams memory vesting, ProgramParams memory params)
        internal
        view
        returns (uint32 filledDate)
    {
        require(!_tokensInvolved.contains(address(params.token)), '!REPEAT');
        // Amount consistency check
        uint256 totalAmount;
        filledDate = params.draw;
        for (uint256 i = 0; i < vesting.startPeriods.length; i++) {
            filledDate += vesting.startPeriods[i];
            totalAmount += vesting.startAmounts[i];
        }
        filledDate += vesting.mainPeriod;
        totalAmount += vesting.mainAmount;
        for (uint256 i = 0; i < vesting.finalPeriods.length; i++) {
            filledDate += vesting.finalPeriods[i];
            totalAmount += vesting.finalAmounts[i];
        }
        require(totalAmount == params.tokenAmount, '!AMOUNT');
        require(
            params.draw > params.registrationEnd &&
                params.registrationEnd > params.registrationStart &&
                params.registrationStart > (block.timestamp + 30 minutes),
            '!DATES'
        );
        require(
            params.busdAmount > 0 && params.tokenAmount > 0 && params.places > 0 && address(params.token) != address(0),
            '!ZERO'
        );
    }

    function _getCumulativeClaimable(uint256 index) internal view returns (uint256 amount) {
        ProgramParams storage params = _programs[index].params;
        VestingParams storage vesting = _programs[index].vesting;
        // If whole period passed already then return total
        uint256 _now = block.timestamp;
        if (_now >= _programs[index]._filledDate) return params.tokenAmount;
        uint256 _then = params.draw;
        // Periods before main (if any)
        for (uint256 i = 0; i < vesting.startPeriods.length; i++) {
            if (_now < _then) return amount;
            amount += vesting.startAmounts[i];
            _then += vesting.startPeriods[i];
        }
        // Main period
        if (_now < _then) return amount;
        uint256 timePassed = _now - _then;
        if (timePassed >= vesting.mainPeriod) {
            amount += vesting.mainAmount;
        } else {
            timePassed = (timePassed / vesting.mainStepTime) * vesting.mainStepTime;
            amount += (timePassed * vesting.mainAmount) / vesting.mainPeriod;
            return amount;
        }
        _then += vesting.mainPeriod;
        // Periods before main (if any)
        for (uint256 i = 0; i < vesting.finalPeriods.length; i++) {
            if (_now < _then) return amount;
            amount += vesting.finalAmounts[i];
            _then += vesting.finalPeriods[i];
        }
    }

    function _isWinner(uint256 index, address user) internal view returns (bool winner) {
        Program storage program = _programs[index];
        // Dismiss if draw not happened OR user hasn't even registered
        if (!program.drawn || _userInfos[index][user].tickets == 0) return false;
        // User is considered winner either:
        // A. If user's ticket was chosen during draw
        // B. Or if everyone won because participants count is not higher that winner quota
        bool A = _userInfos[index][user].winner;
        bool B = _participantsOf[index].length() <= program.params.places;
        return A || B;
    }

    /**
     * Most cost-efficient way is to go backwards in "for" and check i
     * at the end of each iteration
     * @param index program index
     * @param userIndex perticipant's index in _participantsOf[index] set
     * @param ticketCount how many tickets user has. (needed to reduce gas costs)
     */
    function _removeTickets(
        uint256 index,
        uint16 userIndex,
        uint256 ticketCount
    ) internal {
        uint16[] storage tickets = _ticketsAt[index];
        for (uint256 i = tickets.length - 1; ticketCount > 0; i--) {
            if (tickets[i] == userIndex) {
                tickets[i] = tickets[tickets.length - 1];
                tickets.pop();
                ticketCount--;
            }
            if (i == 0) break;
        }
    }
}
