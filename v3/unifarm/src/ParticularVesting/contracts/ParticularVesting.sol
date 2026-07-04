// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {SafeERC20, IERC20} from '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import {IERC20Metadata} from '@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol';
import {Ownable} from '@openzeppelin/contracts/access/Ownable.sol';
import '@openzeppelin/contracts/utils/structs/EnumerableSet.sol';

contract ParticularVesting is Ownable {
    using SafeERC20 for IERC20;
    using EnumerableSet for EnumerableSet.AddressSet;

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
        uint256 amount;
        address receiver;
        IERC20 token;
        uint32 start;
    }

    struct Program {
        VestingParams vesting;
        ProgramParams params;
        uint256 claimed;
        bool supplied;
        address supplier;
        address admin;
        bool cancelled;
        uint32 _filledDate; // calculated during adding
    }

    Program[] _programs;
    /**
     * Just to track tokens that are involved in NOT CANCELLED AND NOT FINISHED, SO in ACTIVE IDO's
     * @notice SHALL USE ONLY add(), remove(), contains() - NOT RELY ON INDEXES
     */
    EnumerableSet.AddressSet _tokensInvolved;
    mapping(address => uint256) _tokensInvolvedTimes;

    EnumerableSet.AddressSet _admins;

    event ProgramAdded(uint256 indexed index, IERC20 indexed token);
    event ProgramEdited(uint256 indexed index, IERC20 indexed token);
    event ProgramCancelled(uint256 indexed index, string reason);
    event Claimed(uint256 indexed index, address indexed receiver, uint256 amount, bool finished);
    event TokensTaken(IERC20 indexed token, uint256 amount);

    modifier onlyAdmins() {
        require(_admins.contains(msg.sender) || msg.sender == owner(), 'Only admins or owner');
        _;
    }

    // SUPPLIER ACTIONS

    function supply(uint256 index) public {
        Program storage program = _programs[index];
        ProgramParams storage params = program.params;
        IERC20 token = params.token;
        require(!program.supplied, 'supplied');
        require(token.allowance(msg.sender, address(this)) >= params.amount, 'not approved enough');
        token.safeTransferFrom(msg.sender, address(this), params.amount);
        program.supplier = msg.sender;
        program.supplied = true;
        _trackTokenInvolvement(params.token, true);
    }

    // RECEIVER ACTIONS

    function claim(uint256 index) external {
        Program storage program = _programs[index];
        ProgramParams storage params = program.params;
        IERC20 token = params.token;
        require(msg.sender == params.receiver, 'not receiver');
        require(program.supplied, 'not supplied');
        require(!program.cancelled, 'cancelled');

        uint256 claimable = getClaimable(index);
        require(claimable > 0, 'nothing to claim');
        token.safeTransfer(msg.sender, claimable);
        program.claimed += claimable;
        bool finished = program.claimed == params.amount;
        if (finished) {
            _trackTokenInvolvement(token, false);
        }
        emit Claimed(index, msg.sender, claimable, finished);
    }

    function delegate(uint256 index, address to) external {
        require(msg.sender == _programs[index].params.receiver, 'not receiver');
        _programs[index].params.receiver = to;
    }

    // ADMIN ACTIONS

    function addProgram(
        VestingParams memory vesting,
        ProgramParams memory params,
        bool alsoSupply
    ) external onlyAdmins returns (uint256 index) {
        uint32 _filledDate = _validateParams(vesting, params);
        index = _programs.length;
        _programs.push(
            Program({
                vesting: vesting,
                params: params,
                supplier: address(0),
                admin: msg.sender,
                claimed: 0,
                supplied: false,
                cancelled: false,
                _filledDate: _filledDate
            })
        );
        emit ProgramAdded(index, params.token);
        if (alsoSupply) supply(index);
    }

    function editProgram(
        uint256 index,
        VestingParams memory vesting,
        ProgramParams memory params
    ) external {
        require(msg.sender == _programs[index].admin || msg.sender == owner(), 'not admin');
        require(index < _programs.length, 'invalid index');
        require(!_programs[index].supplied, 'vesting supplied');
        uint32 _filledDate = _validateParams(vesting, params);
        _programs[index].vesting = vesting;
        _programs[index].params = params;
        _programs[index]._filledDate = _filledDate;
        emit ProgramEdited(index, params.token);
    }

    function cancelProgram(uint256 index, string memory reason) external {
        Program storage program = _programs[index];
        ProgramParams storage params = program.params;
        IERC20 token = params.token;
        require(msg.sender == _programs[index].admin || msg.sender == owner(), 'not admin');
        require(!program.cancelled, 'cancelled');
        program.cancelled = true;
        if (program.supplied) {
            uint256 toSend = params.amount - program.claimed;
            uint256 balance = token.balanceOf(address(this));
            if (toSend > balance) toSend = balance; // May happen if token (or its admin) is weird
            if (toSend > 0) token.safeTransfer(program.supplier, toSend);
        }
        _trackTokenInvolvement(params.token, false);
        emit ProgramCancelled(index, reason);
    }

    // OWNER ACTIONS

    function takeByAddress(IERC20 token, uint256 amount) public onlyOwner {
        // Tokens currently involved in supplied, unfinished & not cancelled vesting(s)
        // are to be withdrawn only automatically when cancelled
        // or manually by admin after finished
        // For the convenience of supplier(s)
        require(!_tokensInvolved.contains(address(token)), 'involved');
        if (amount == 0) amount = token.balanceOf(address(this));
        token.safeTransfer(msg.sender, amount);
        emit TokensTaken(token, amount);
    }

    // GETTERS

    function admins() external view returns (address[] memory) {
        return _admins.values();
    }

    function getClaimable(uint256 index) public view returns (uint256 amount) {
        return _getCumulativeClaimable(index) - _programs[index].claimed;
    }

    struct TokenMetadata {
        uint8 decimals;
        string name;
        string symbol;
        uint256 totalSupply;
    }

    function getTokenMetadata(IERC20Metadata token) public view returns (TokenMetadata memory) {
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

    function tokensInvolved() external view returns (address[] memory tokens, uint256[] memory times) {
        tokens = _tokensInvolved.values();
        times = new uint256[](tokens.length);
        for (uint256 i = 0; i < tokens.length; i++) times[i] = _tokensInvolvedTimes[tokens[i]];
    }

    // INTERNAL

    function _trackTokenInvolvement(IERC20 token_, bool add) internal {
        address t = address(token_);
        if (add) {
            _tokensInvolvedTimes[t]++;
            _tokensInvolved.add(t);
        } else {
            _tokensInvolvedTimes[t]--;
            if (_tokensInvolvedTimes[t] == 0) _tokensInvolved.remove(t);
        }
    }

    function _validateParams(VestingParams memory vesting, ProgramParams memory params)
        internal
        pure
        returns (uint32 filledDate)
    {
        // Amount consistency check
        uint256 totalAmount;
        filledDate = params.start;
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
        require(totalAmount == params.amount, '!AMOUNT');
        // Non-zero checks
        require(params.amount > 0 && address(params.token) != address(0), '!ZERO');
    }

    function _getCumulativeClaimable(uint256 index) internal view returns (uint256 amount) {
        ProgramParams storage params = _programs[index].params;
        VestingParams storage vesting = _programs[index].vesting;
        // If whole period passed already then return total
        uint256 _now = block.timestamp;
        if (_now >= _programs[index]._filledDate) return params.amount;
        uint256 _then = params.start;
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
        // Periods after main (if any)
        for (uint256 i = 0; i < vesting.finalPeriods.length; i++) {
            if (_now < _then) return amount;
            amount += vesting.finalAmounts[i];
            _then += vesting.finalPeriods[i];
        }
    }
}
