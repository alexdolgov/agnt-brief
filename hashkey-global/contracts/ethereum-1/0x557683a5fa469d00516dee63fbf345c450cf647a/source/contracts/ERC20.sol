// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;
pragma abicoder v2;

import "@openzeppelin/contracts/utils/math/SafeCast.sol";
import "./interface/IERC20.sol";
import "./library/Vesting.sol";
import "./library/Mint.sol";
import "./BlackList.sol";

/// @title Implement ERC20 token of HashKey Platform Token.
abstract contract ERC20 is BlackList, IERC20 {
    using SafeCast for uint256;
    using Vesting for Vesting.Cliff;
    using Vesting for Vesting.Linear;

    /// @dev describe the account state of user, user's fund is consist of 3 parts
    struct AccountState {
        Vesting.Cliff[]         cliffVesting;
        Vesting.Linear[]        linearVesting;
        uint256                 available;
    }

    /// @dev describe the current cliff vesting schedule of user
    struct CliffVesting {
        Mint.Bucket             bucket;
        uint64                  expiration;
        uint256                 amount;
    }

    /// @dev describe the current linear vesting schedule of user
    struct LinearVesting {
        Mint.Bucket             bucket;
        uint64                  interval;
        uint64                  expiration;
        uint256                 amount;
    }

    string  private constant NAME            = "HashKey Platform Token";
    string  private constant SYMBOL          = "HSK";
    uint8   private constant DECIMALS        = 18;

    bytes32 public  constant ECO_GROWTH_ROLE = keccak256("Ecosystem Growth Role");
    bytes32 public  constant TEAM_ROLE       = keccak256("Team Role");
    bytes32 public  constant RESERVE_ROLE    = keccak256("Reserve Role");

    // It will cost less than 10,000 GAS to compute and refresh vesting state in
    // each loop step of `_updateAccountState()`.
    // Hereby we restrict a max schdules limit of 2000, which means it will
    // never exceed 20,000,000 GAS, abount 2/3 of a block gas limit (30,000,000).
    uint256 private constant MAX_SCHEDULES   = 2000;

    // set to true to prevent calling `init()` in implementation contract.
    bool    private _initialized             = true;
    uint256 private _ecoGrowthShare          = 650000000  * 10 ** DECIMALS;
    uint256 private _teamShare               = 300000000  * 10 ** DECIMALS;
    uint256 private _reserveShare            = 50000000   * 10 ** DECIMALS;
    uint256 private _totalSupply             = _ecoGrowthShare + _teamShare + _reserveShare;

    mapping(address => AccountState) private accounts;
    mapping(address => mapping(address => uint256)) private _allowances;

    event MintType1(
        Mint.Bucket indexed bucket,
        address indexed recipient,
        uint256 amount
    );
    event MintType2(
        Mint.Bucket indexed bucket,
        address indexed recipient,
        uint256 expiration,
        uint256 amount
    );
    event MintType3(
        Mint.Bucket indexed bucket,
        address indexed recipient,
        uint256 start,
        uint256 end,
        uint256 interval,
        uint256 amount
    );

    event ShrinkShare(Mint.Bucket indexed bucket, uint256 amount);
    event RecallTeamVesting(address indexed account, uint256 amount);
    event Burn(address indexed applicant, uint256 amount);
    event BurnFrom(address indexed applicant, address indexed from, uint256 amount);

    constructor() {
        // set owner to zero address.
        renounceOwnership();
    }

    /// @dev initialize token parameters.
    /// @notice this function is designed to be called by proxy contract.
    function init(address _owner) external {
        // not initialized in proxy
        require(!_initialized, "ERC20: Already initialized");

        _initialized        = true;
        _ecoGrowthShare     = 650000000  * 10 ** DECIMALS;
        _teamShare          = 300000000  * 10 ** DECIMALS;
        _reserveShare       = 50000000   * 10 ** DECIMALS;
        _totalSupply        = _ecoGrowthShare + _teamShare + _reserveShare;

        _transferOwnership(_owner);
    }

    ///////////////////////////// ERC20 methods /////////////////////////////

    /// @dev see in IERC20
    function name() public pure override returns (string memory) {
        return NAME;
    }

    /// @dev see in IERC20.
    function symbol() public pure override returns (string memory) {
        return SYMBOL;
    }

    /// @dev see in IERC20.
    function decimals() public pure override returns (uint8) {
        return DECIMALS;
    }

    /// @dev see in IERC20.
    function totalSupply() public view override returns (uint256) {
        return _totalSupply;
    }

    /// @dev see in IERC20.
    /// @notice balance is consist of 4 parts: available part and 3 vesting parts.
    function balanceOf(address _owner) public view override returns (uint256) {
        AccountState storage state = accounts[_owner];
        uint256 balance = state.available;

        uint256 length = state.cliffVesting.length;
        for (uint256 i = 0; i < length;) {
            Vesting.Cliff storage vesting = state.cliffVesting[i];
            if (vesting.active) {
                // solhint-disable-next-line not-rely-on-time
                (, uint256 released) = vesting.getCliff(block.timestamp);
                unchecked { balance += released; }
            }
            unchecked { i++; }
        }

        length = state.linearVesting.length;
        for (uint256 i = 0; i < length;) {
            Vesting.Linear storage vesting = state.linearVesting[i];
            if (vesting.active) {
                // solhint-disable-next-line not-rely-on-time
                (, uint256 released) = vesting.getLinear(block.timestamp);
                unchecked { balance += released; }
            }
            unchecked { i++; }
        }

        return balance;
    }

    /// @dev see in IERC20.
    function allowance(address _owner, address spender) public view override returns (uint256) {
        return _allowances[_owner][spender];
    }

    /// @dev see in IERC20.
    function transfer(address to, uint256 amount)
        public
        override
        notInBlackList(msg.sender)
        notInBlackList(to)
        returns (bool)
    {
        _transfer(msg.sender, to, amount);
        return true;
    }

    /// @dev see in IERC20.
    function approve(address spender, uint256 amount)
        public
        override
        notInBlackList(msg.sender)
        notInBlackList(spender)
        returns (bool)
    {
        _approve(msg.sender, spender, amount);
        return true;
    }

    /// @dev see in IERC20.
    /// @notice if _allowance is max of uint256, it means allowance is not limited.
    function transferFrom(address from, address to, uint256 amount)
        public
        override
        notInBlackList(msg.sender)
        notInBlackList(from)
        notInBlackList(to)
        returns (bool)
    {
        uint256 _allowance = allowance(from, msg.sender);
        if (_allowance != type(uint256).max) {
            require(amount <= _allowance, "ERC20: Insufficient allowance");
            _allowances[from][msg.sender] = _allowance - amount;
        }
        _transfer(from, to, amount);
        return true;
    }

    ///////////////////////////// HSK methods ///////////////////////////// 

    /// @dev batch execute transfer tokens.
    function batchTransfer(address[] memory tos, uint256[] memory amounts) external {
        require(tos.length == amounts.length, "ERC20: Unmatched array length");

        for (uint256 i = 0; i < tos.length; i++) {
            transfer(tos[i], amounts[i]);
        }
    }

    /// @dev batch execute transferFrom tokens.
    function batchTransferFrom(
        address from,
        address[] memory tos,
        uint256[] memory amounts
    ) external {
        require(tos.length == amounts.length, "ERC20: Unmatched array length");

        for (uint256 i = 0; i < tos.length; i++) {
            transferFrom(from, tos[i], amounts[i]);
        }
    }

    /// @dev return _ecoGrowthShare.
    function ecoGrowthShare() external view returns (uint256) {
        return _ecoGrowthShare;
    }

    /// @dev return _teamShare.
    function teamShare() external view returns (uint256) {
        return _teamShare;
    }

    /// @dev return _reserveShare.
    function reserveShare() external view returns (uint256) {
        return _reserveShare;
    }

    /// @dev total unlocked token amount of all vesting schedules.
    function vestingAmountOf(address _owner) external view returns (uint256) {
        AccountState storage state = accounts[_owner];
        uint256 amount = 0;

        uint256 length = state.cliffVesting.length;
        for (uint256 i = 0; i < length;) {
            Vesting.Cliff storage vesting = state.cliffVesting[i];
            if (vesting.active) {
                // solhint-disable-next-line not-rely-on-time
                (uint256 locking, ) = vesting.getCliff(block.timestamp);
                unchecked { amount += locking; }
            }
            unchecked { i++; }
        }

        length = state.linearVesting.length;
        for (uint256 i = 0; i < length;) {
            Vesting.Linear storage vesting = state.linearVesting[i];
            if (vesting.active) {
                // solhint-disable-next-line not-rely-on-time
                (uint256 locking, ) = vesting.getLinear(block.timestamp);
                unchecked { amount += locking; }
            }
            unchecked { i++; }
        }

        return amount;
    }

    /// @dev compute all cliff vesting schedules of `_owner`.
    function cliffVestingOf(address _owner) external view returns (CliffVesting[] memory) {
        AccountState storage state = accounts[_owner];
        
        uint256 num = 0;
        uint256 length = state.cliffVesting.length;
        uint256[] memory lockings = new uint256[](length);
        for (uint256 i = 0; i < length;) {
            Vesting.Cliff storage vesting = state.cliffVesting[i];
            if (vesting.active) {
                // solhint-disable-next-line not-rely-on-time
                (uint256 locking, ) = vesting.getCliff(block.timestamp);
                if (locking > 0) {
                    lockings[i] = locking;
                    unchecked { num++; }
                }
            }
            unchecked { i++; }
        }

        CliffVesting[] memory schedules = new CliffVesting[](num);
        num = 0;
        for (uint256 i = 0; i < length;) {
            uint256 locking = lockings[i];
            if (locking > 0) {
                Vesting.Cliff storage vesting = state.cliffVesting[i];
                schedules[num] = CliffVesting({
                    bucket: vesting.bucket,
                    expiration: vesting.expiration,
                    amount: locking
                });
                unchecked { num++; }
            }
            unchecked { i++; }
        }

        return schedules;
    }

    /// @dev compute all linear vesting schedules of `_owner`.
    function linearVestingOf(address _owner) external view returns (LinearVesting[] memory) {
        AccountState storage state = accounts[_owner];
        
        uint256 num = 0;
        uint256 length = state.linearVesting.length;
        uint256[] memory lockings = new uint256[](length);
        for (uint256 i = 0; i < length;) {
            Vesting.Linear storage vesting = state.linearVesting[i];
            if (vesting.active) {
                // solhint-disable-next-line not-rely-on-time
                (uint256 locking, ) = vesting.getLinear(block.timestamp);
                if (locking > 0) {
                    lockings[i] = locking;
                    unchecked { num++; }
                }
            }
            unchecked { i++; }
        }

        LinearVesting[] memory schedules = new LinearVesting[](num);
        num = 0;
        for (uint256 i = 0; i < length;) {
            uint256 locking = lockings[i];
            if (locking > 0) {
                Vesting.Linear storage vesting = state.linearVesting[i];
                schedules[num] = LinearVesting({
                    bucket: vesting.bucket,
                    interval: vesting.interval,
                    expiration: vesting.end,
                    amount: locking
                });
                unchecked { num++; }
            }
            unchecked { i++; }
        }

        return schedules;
    }

    /// @dev mint type 1: directly mint to account, without any vesting schedule.
    function mint1(Mint.Bucket bucket, address recipient, uint256 amount)
        public
        accessible(_selectRole(bucket))
        notInBlackList(recipient)
    {
        require(amount > 0, "ERC20: Amount is zero");
        _decreaseShare(bucket, amount);

        AccountState storage state = accounts[recipient];
        state.available += amount;

        emit MintType1(bucket, recipient, amount);
    }

    /// @dev batch execution of mint type 1.
    function batchMint1(
        Mint.Bucket[] memory buckets,
        address[] memory recipients,
        uint256[] memory amounts
    ) external {
        require(buckets.length == recipients.length, "ERC20: Unmatched array length");
        require(recipients.length == amounts.length, "ERC20: Unmatched array length");

        for (uint256 i = 0; i < recipients.length; i++) {
            mint1(buckets[i], recipients[i], amounts[i]);
        }
    }

    /// @dev mint type 2: mint to account with cliff vesting schedule.
    function mint2(Mint.Bucket bucket, address recipient, uint256 expiration, uint256 amount)
        public
        accessible(_selectRole(bucket))
        notInBlackList(recipient)
    {
        // solhint-disable-next-line not-rely-on-time
        require(expiration > block.timestamp, "ERC20: Expiration less than block time");
        require(amount > 0, "ERC20: Amount is zero");
        _decreaseShare(bucket, amount);

        AccountState storage state = accounts[recipient];
        require(
            state.cliffVesting.length + state.linearVesting.length < MAX_SCHEDULES,
            "ERC20: Too many vesting schedules"
        );
        state.cliffVesting.push(Vesting.Cliff({
            active: true,
            bucket: bucket,
            expiration: expiration.toUint64(),
            amount: amount
        }));

        emit MintType2(bucket, recipient, expiration, amount);
    }

    /// @dev batch execution of mint type 2.
    function batchMint2(
        Mint.Bucket[] memory buckets,
        address[] memory recipients,
        uint256[] memory expirations,
        uint256[] memory amounts
    ) external {
        require(buckets.length == recipients.length, "ERC20: Unmatched array length");
        require(recipients.length == expirations.length, "ERC20: Unmatched array length");
        require(expirations.length == amounts.length, "ERC20: Unmatched array length");

        for (uint256 i = 0; i < recipients.length; i++) {
            mint2(buckets[i], recipients[i], expirations[i], amounts[i]);
        }
    }

    /// @dev Mint type 3: mint to account with linear vesting schedule.
    function mint3(
        Mint.Bucket bucket,
        address recipient,
        uint256 start,
        uint256 end,
        uint256 interval,
        uint256 amount
    )
        public
        accessible(_selectRole(bucket))
        notInBlackList(recipient)
    {
        require(interval > 0, "ERC20: Interval is zero");
        // solhint-disable-next-line not-rely-on-time
        require(start > block.timestamp, "ERC20: Start less than block time");
        require(start < end, "ERC20: Start greater than end");
        require((end - start) % interval == 0, "ERC20: Interval is indivisible");
        require(amount > 0, "ERC20: Amount is zero");
        _decreaseShare(bucket, amount);

        AccountState storage state = accounts[recipient];
        require(
            state.cliffVesting.length + state.linearVesting.length < MAX_SCHEDULES,
            "ERC20: Too many vesting schedules"
        );
        state.linearVesting.push(Vesting.Linear({
            active: true,
            bucket: bucket,
            start: start.toUint64(),
            end: end.toUint64(),
            interval: interval.toUint64(),
            amount: amount
        }));

        emit MintType3(bucket, recipient, start, end, interval, amount);
    }

    /// @dev batch execution of mint type 3.
    function batchMint3(
        Mint.Bucket[] memory buckets,
        address[] memory recipients,
        uint256[] memory starts,
        uint256[] memory ends,
        uint256[] memory intervals,
        uint256[] memory amounts
    ) external {
        require(buckets.length == recipients.length, "ERC20: Unmatched array length");
        require(recipients.length == starts.length, "ERC20: Unmatched array length");
        require(starts.length == ends.length, "ERC20: Unmatched array length");
        require(ends.length == intervals.length, "ERC20: Unmatched array length");
        require(intervals.length == amounts.length, "ERC20: Unmatched array length");

        for (uint256 i = 0; i < recipients.length; i++) {
            mint3(buckets[i], recipients[i], starts[i], ends[i], intervals[i], amounts[i]);
        }
    }

    /// @dev recall vesting amount of a team member.
    function recallTeamVesting(address account) external accessible(TEAM_ROLE) {
        AccountState storage state = accounts[account];
        _updateAccountState(state);

        uint256 recycling = 0;
        uint256 length = state.cliffVesting.length;
        for (uint256 i = 0; i < length;) {
            Vesting.Cliff storage vesting = state.cliffVesting[i];
            if (vesting.active && vesting.bucket == Mint.Bucket.Team) {
                vesting.active = false;
                unchecked { recycling += vesting.amount; }
            }
            unchecked { i++; }
        }

        length = state.linearVesting.length;
        for (uint256 i = 0; i < length;) {
            Vesting.Linear storage vesting = state.linearVesting[i];
            if (vesting.active && vesting.bucket == Mint.Bucket.Team) {
                vesting.active = false;
                unchecked { recycling += vesting.amount; }
            }
            unchecked { i++; }
        }
        // recycle to teamShare
        _teamShare += recycling;

        emit RecallTeamVesting(account, recycling);
    }

    /// @dev reduce share of specified `bucket`, add reduce `_totalSupply`.
    function shrinkShare(Mint.Bucket bucket, uint256 amount) external onlyOwner {
        require(amount > 0, "ERC20: Amount is zero");
        _decreaseShare(bucket, amount);
        _totalSupply -= amount;

        emit ShrinkShare(bucket, amount);
    }

    ///////////////////////////// Internal Methods /////////////////////////////

    function _selectRole(Mint.Bucket bucket) internal pure returns (bytes32) {
        if (bucket == Mint.Bucket.EcoGrowth) {
            return ECO_GROWTH_ROLE;
        } else if (bucket == Mint.Bucket.Team) {
            return TEAM_ROLE;
        } else if (bucket == Mint.Bucket.Reserve) {
            return RESERVE_ROLE;
        } else {
            revert("ERC20: Invalid mint bucket");
        }
    }

    function _decreaseShare(Mint.Bucket bucket, uint256 amount) internal {
        if (bucket == Mint.Bucket.EcoGrowth) {
            require(amount <= _ecoGrowthShare, "ERC20: Insufficient share");
            _ecoGrowthShare -= amount;
        } else if (bucket == Mint.Bucket.Team) {
            require(amount <= _teamShare, "ERC20: Insufficient share");
            _teamShare -= amount;
        } else if (bucket == Mint.Bucket.Reserve) {
            require(amount <= _reserveShare, "ERC20: Insufficient share");
            _reserveShare -= amount;
        } else {
            revert("ERC20: Invalid mint bucket");
        }
    }

    /// @dev compute the releasing amount of vest part and even vest part.
    function _updateAccountState(AccountState storage state) internal {
        uint256 increased = 0;
        uint256 released;
        uint256 length = state.cliffVesting.length;
        for (uint256 i = 0; i < length;) {
            Vesting.Cliff storage vesting = state.cliffVesting[i];
            // solhint-disable-next-line not-rely-on-time
            released = vesting.updateCliff(block.timestamp);
            unchecked {
                increased += released;
                i++;
            }
        }

        length = state.linearVesting.length;
        for (uint256 i = 0; i < length;) {
            Vesting.Linear storage vesting = state.linearVesting[i];
            // solhint-disable-next-line not-rely-on-time
            released = vesting.updateLinear(block.timestamp);
            unchecked {
                increased += released;
                i++;
            }
        }

        state.available += increased;
    }

    /// @dev transfer {amount} from {_from} to {_to}.
    /// @notice update account state firstly.
    function _transfer(address from, address to, uint256 amount) internal {
        require(to != address(0), "ERC20: To address is zero");

        AccountState storage fromState = accounts[from];
        _updateAccountState(fromState);
        require(fromState.available >= amount, "ERC20: Insufficient balance");
        fromState.available -= amount;

        AccountState storage toState = accounts[to];
        toState.available += amount;

        emit Transfer(from, to, amount);
    }

    /// @dev approve {amount} of {spender} from {owner}
    function _approve(address _owner, address spender, uint256 amount) internal {
        require(spender != address(0), "ERC20: Spender address is zero");

        _allowances[_owner][spender] = amount;
        
        emit Approval(_owner, spender, amount);
    }

    /// @dev burn {amount} of {applicant}, and reduce _totalSupply.
    function _burn(address applicant, uint256 amount) internal {
        AccountState storage state = accounts[applicant];
        _updateAccountState(state);

        require(state.available >= amount, "ERC20: Insufficient balance");
        state.available -= amount;
        _totalSupply -= amount;

        emit Burn(applicant, amount);
    }

    /// @dev burn {amount} of {from} allowance for {applicant}, and reduce _totalSupply.
    function _burnFrom(address applicant, address from, uint256 amount) internal {
        uint256 _allowance = allowance(from, applicant);
        require(amount <= _allowance, "ERC20: Insufficient allowance");
        _allowances[from][applicant] = _allowance - amount;
        
        AccountState storage state = accounts[from];
        _updateAccountState(state);

        require(state.available >= amount, "ERC20: Insufficient balance");
        state.available -= amount;
        _totalSupply -= amount;

        emit BurnFrom(applicant, from, amount);
    }
}