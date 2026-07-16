// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;
interface IERC20 {
    function balanceOf(address account) external view returns (uint256);
    function transfer(address recipient, uint256 amount) external returns (bool);
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);
}

contract Staking {
    address public owner;
    IERC20 public TKN;

    uint256[3] public periods = [30 days, 90 days, 150 days];
    uint8[3] public rates = [106, 121, 140];
    uint256[2][3] public amounts = [[100 ether, 300 ether], [300 ether, 500 ether], [500 ether, 1000 ether + 1]];
    uint256 public limit = 1500000 ether;
    uint256 public MAX_STAKES = 1;
    uint256 public finish_timestamp = 1640390400;

    struct Stake {
        uint8 class;
        uint8 cycle;
        uint256 initialAmount;
        uint256 finalAmount;
        uint256 timestamp;
        bool unstaked;
    }

    Stake[] public stakes;
    mapping(address => uint256[]) public stakesOf;
    mapping(uint256 => address) public ownerOf;

    event Staked(address indexed sender, uint8 indexed class, uint256 amount, uint256 finalAmount);
    event Prolonged(address indexed sender, uint8 indexed class, uint8 cycle, uint256 newAmount, uint256 newFinalAmount);
    event Unstaked(address indexed sender, uint8 indexed class, uint8 cycle, uint256 amount);
    event TransferOwnership(address indexed previousOwner, address indexed newOwner);

    modifier restricted {
        require(msg.sender == owner, 'This function is restricted to owner');
        _;
    }

    function stakesInfo(uint256 _from, uint256 _to) public view returns (Stake[] memory s) {
        s = new Stake[](_to - _from);
        for (uint256 i = _from; i <= _to; i++) s[i - _from] = stakes[i];
    }

    function stakesInfoAll() public view returns (Stake[] memory s) {
        s = new Stake[](stakes.length);
        for (uint256 i = 0; i < stakes.length; i++) s[i] = stakes[i];
    }

    function stakesLength() public view returns (uint256) {
        return stakes.length;
    }

    function myStakes(address _me) public view returns (Stake[] memory s, uint256[] memory indexes) {
        s = new Stake[](stakesOf[_me].length);
        indexes = new uint256[](stakesOf[_me].length);
        for (uint256 i = 0; i < stakesOf[_me].length; i++) {
            indexes[i] = stakesOf[_me][i];
            s[i] = stakes[indexes[i]];
        }
    }

    function myActiveStakesCount(address _me) public view returns (uint256 l) {
        uint256[] storage _s = stakesOf[_me];
        for (uint256 i = 0; i < _s.length; i++) if (!stakes[_s[i]].unstaked) l++;
    }

    function stake(uint8 _class, uint256 _amount) public {
        require((_class < 3) && (_amount >= amounts[_class][0]) && (_amount < amounts[_class][1]), "Wrong amount"); // data valid
        require(myActiveStakesCount(msg.sender) < MAX_STAKES, "MAX_STAKES overflow"); // has space for new active stake
        require(finish_timestamp > block.timestamp + periods[_class], "Program will finish before this stake does"); // not staking in the end of program
        uint256 _finalAmount = (_amount * rates[_class]) / 100;
        limit -= _finalAmount - _amount;
        require(TKN.transferFrom(msg.sender, address(this), _amount));
        uint256 _index = stakes.length;
        stakesOf[msg.sender].push(_index);
        stakes.push(Stake({
            class: _class,
            cycle: 1,
            initialAmount: _amount,
            finalAmount: _finalAmount,
            timestamp: block.timestamp,
            unstaked: false
        }));
        ownerOf[_index] = msg.sender;
        emit Staked(msg.sender, _class, _amount, _finalAmount);
    }

    function prolong(uint256 _index) public {
        require(msg.sender == ownerOf[_index]);
        Stake storage _s = stakes[_index];
        require(!_s.unstaked); // not unstaked yet
        require(block.timestamp >= _s.timestamp + periods[_s.class]); // staking period finished
        require(finish_timestamp > block.timestamp + periods[_s.class]); // not prolonging in the end of program
        uint256 _newFinalAmount = (_s.finalAmount * rates[_s.class]) / 100;
        limit -= _newFinalAmount - _s.finalAmount;
        _s.timestamp = block.timestamp;
        _s.cycle++;
        emit Prolonged(msg.sender, _s.class, _s.cycle, _s.finalAmount, _newFinalAmount);
        _s.finalAmount = _newFinalAmount;
    }

    function unstake(uint256 _index) public {
        require(msg.sender == ownerOf[_index]);
        Stake storage _s = stakes[_index];
        require(!_s.unstaked); // not unstaked yet
        require(block.timestamp >= _s.timestamp + periods[_s.class]); // staking period finished
        require(TKN.transfer(msg.sender, _s.finalAmount));
        _s.unstaked = true;
        emit Unstaked(msg.sender, _s.class, _s.cycle, _s.finalAmount);
    }

    function transferOwnership(address _newOwner) public restricted {
        require(_newOwner != address(0), 'Invalid address: should not be 0x0');
        emit TransferOwnership(owner, _newOwner);
        owner = _newOwner;
    }

    function drain(address _recipient) public restricted {
        require(block.timestamp > finish_timestamp); // after 24st Oct
        require(TKN.transfer(_recipient, limit));
        limit = 0;
    }

    function drainFull(address _recipient) public restricted {
        require(block.timestamp > finish_timestamp + 31 days); // After 24st Nov
        uint256 _amount = TKN.balanceOf(address(this));
        require(TKN.transfer(_recipient, _amount));
        limit = 0;
    }

    function returnAccidentallySent(IERC20 _TKN) public restricted {
        require(address(_TKN) != address(TKN));
        uint256 _amount = _TKN.balanceOf(address(this));
        require(TKN.transfer(msg.sender, _amount));
    }

    function updateMax(uint256 _max) public restricted {
        MAX_STAKES = _max;
    }

    constructor(IERC20 _TKN) {
        owner = msg.sender;
        TKN = _TKN;
    }
}

contract SHO1 {
    address public owner;
    Staking public STK;
    IERC20 public BUSD;
    IERC20 public AMC;

    uint32 public constant REGISTRATION_DATE = 1624777200;
    uint32 public constant REST_DATE = 1625086800;
    uint32 public constant DRAW_DATE = 1625157000;
    uint32 public constant FILLED_DATE = 1625761800;
    bool public WHITELIST_ACTIVE = false;
    bool public DRAW_DONE = false;
    uint256 public constant PLACES = 300;
    uint256 public constant WIN_AMOUNT = 1000e18;
    uint256 public constant TOTAL_WIN_AMOUNT = 250000e18;
    uint256 public CLAIMED;
    uint256 public constant STAKED_PER_TICKET = 100e18;

    address[] public participants;
    address[] public list;
    mapping(address => bool) public hasRegistered;
    mapping(address => bool) public hasClaimed;
    mapping(address => bool) public isWinner;
    mapping(address => bool) public isWhitelisted;

    modifier restricted {
        require(msg.sender == owner, 'This function is restricted to owner');
        _;
    }

    function register(uint256 _stake) public {
        require(msg.sender == STK.ownerOf(_stake), 'this is not your stake');
        require(block.timestamp >= REGISTRATION_DATE, 'registration not open yet');
        require(block.timestamp < REST_DATE, 'registration is closed already');
        (uint8 _class, , , uint256 _amount, uint256 _timestamp, ) = STK.stakes(_stake);
        require(!hasRegistered[msg.sender], 'you have already registered');
        require(uint32(_timestamp) + STK.periods(_class) > DRAW_DATE, 'your stake finishes before draw date');
        participants.push(msg.sender);
        _addToList(msg.sender, ((_amount * 100) / STK.rates(_class)) / STAKED_PER_TICKET);
        hasRegistered[msg.sender] = true;
    }

    function _addToList(address _user, uint256 _count) internal {
        for (uint256 i = 0; i < _count; i++) list.push(_user);
    }

    function draw() public restricted {
        require(block.timestamp >= DRAW_DATE, 'draw not allowed yet');
        require(!DRAW_DONE, 'draw already done');
        uint256 _places_left = PLACES;
        for (uint256 i = 0; i < participants.length && _places_left > 0; i++) {
            address _winner = _getRandomAddressFromList(i);
            isWinner[_winner] = true;
            _removeFromList(_winner);
            _places_left--;
        }
        DRAW_DONE = true;
    }

    function _getRandomAddressFromList(uint256 _salt) internal view returns (address) {
        uint256 _index = _generateRandom(list.length, _salt);
        return list[_index];
    }

    function _generateRandom(uint256 range, uint256 salt) internal view returns (uint256) {
        return uint256(keccak256(abi.encodePacked(block.timestamp, block.difficulty, salt))) % range;
    }

    function _removeFromList(address _user) internal {
        for (uint256 i = 0; i < list.length; i++)
            if (list[i] == _user) {
                participants[i] = participants[participants.length - 1];
                participants.pop();
            }
    }

    function claim() public {
        require(DRAW_DONE, 'draw not done yet');
        require(isWinner[msg.sender], 'you did not win a place');
        require(!WHITELIST_ACTIVE || isWhitelisted[msg.sender], 'you are not whitelisted');
        require(!hasClaimed[msg.sender], 'you have claimed already');
        require(CLAIMED + WIN_AMOUNT <= TOTAL_WIN_AMOUNT, 'whole reserve has been already claimed');
        BUSD.transferFrom(msg.sender, address(this), WIN_AMOUNT);
        AMC.transfer(msg.sender, WIN_AMOUNT);
        hasClaimed[msg.sender] = true;
        CLAIMED += WIN_AMOUNT;
    }

    function takeBUSD(uint256 _amount) public restricted {
        BUSD.transfer(msg.sender, _amount > 0 ? _amount : BUSD.balanceOf(address(this)));
    }

    function take(IERC20 _TKN, uint256 _amount) public restricted {
        require(block.timestamp >= FILLED_DATE, '1 week must pass since the draw');
        _TKN.transfer(msg.sender, _amount > 0 ? _amount : _TKN.balanceOf(address(this)));
    }

    function enableWhitelist() public restricted {
        WHITELIST_ACTIVE = true;
    }

    function disableWhitelist() public restricted {
        WHITELIST_ACTIVE = false;
    }

    function allowToWhiteList(address[] memory _users) public restricted {
        for (uint256 i = 0; i < _users.length; i++) isWhitelisted[_users[i]] = true;
    }

    function getWinnerList() public view returns (address[] memory winners, bool[] memory claimed) {
        uint256 _winners = 0;
        for (uint256 i = 0; i < participants.length; i++) if (isWinner[participants[i]]) _winners++;
        winners = new address[](_winners);
        claimed = new bool[](_winners);
        for (uint256 i = 0; i < participants.length; i++)
            if (isWinner[participants[i]]) {
                winners[i] = participants[i];
                claimed[i] = hasClaimed[participants[i]];
            }
    }

    function infoBundle(address _user)
        public
        view
        returns (
            uint256 claimed,
            bool draw_done,
            uint256 busd,
            uint256 amc,
            bool uRegistered,
            bool uWinner,
            bool uClaimed
        )
    {
        claimed = CLAIMED;
        draw_done = DRAW_DONE;
        busd = BUSD.balanceOf(_user);
        amc = AMC.balanceOf(_user);
        uRegistered = hasRegistered[_user];
        uWinner = isWinner[_user];
        uClaimed = hasClaimed[_user];
    }

    function transferOwnership(address _newOwner) public restricted {
        require(_newOwner != address(0), 'Invalid address: should not be 0x0');
        owner = _newOwner;
    }

    constructor(
        Staking _STK,
        IERC20 _BUSD,
        IERC20 _AMC
    ) {
        owner = msg.sender;
        STK = _STK;
        BUSD = _BUSD;
        AMC = _AMC;
    }
}
contract SHO2 {
    address public owner;
    Staking public STK;
    SHO1 public SHOOLD;
    IERC20 public BUSD;
    IERC20 public AMC;

    uint32 public constant REGISTRATION_DATE = 1624777200;
    uint32 public constant REST_DATE = 1625086800;
    uint32 public constant DRAW_DATE = 1625157000;
    uint32 public constant FILLED_DATE = 1625761800;
    bool public WHITELIST_ACTIVE = false;
    bool public DRAW_DONE = false;
    uint256 public constant PLACES = 300;
    uint256 public constant WIN_AMOUNT = 1000e18;
    uint256 public constant TOTAL_WIN_AMOUNT = 250000e18;
    uint256 public CLAIMED;
    uint256 public constant STAKED_PER_TICKET = 100e18;

    address[] public participants;
    address[] public list;
    mapping(address => bool) public hasRegistered;
    mapping(address => bool) public hasClaimed;
    mapping(address => bool) public isWinner;
    mapping(address => bool) public isWhitelisted;

    modifier restricted {
        require(msg.sender == owner, 'This function is restricted to owner');
        _;
    }

    function register(uint256 _stake) public {
        require(msg.sender == STK.ownerOf(_stake), 'this is not your stake');
        require(block.timestamp >= REGISTRATION_DATE, 'registration not open yet');
        require(block.timestamp < REST_DATE, 'registration is closed already');
        (uint8 _class, , , uint256 _amount, uint256 _timestamp, ) = STK.stakes(_stake);
        require(!hasRegistered[msg.sender], 'you have already registered');
        require(uint32(_timestamp) + STK.periods(_class) > DRAW_DATE, 'your stake finishes before draw date');
        participants.push(msg.sender);
        _addToList(msg.sender, ((_amount * 100) / STK.rates(_class)) / STAKED_PER_TICKET);
        hasRegistered[msg.sender] = true;
    }

    function _addToList(address _user, uint256 _count) internal {
        for (uint256 i = 0; i < _count; i++) list.push(_user);
    }

    function draw() public restricted {
        require(block.timestamp >= DRAW_DATE, 'draw not allowed yet');
        require(!DRAW_DONE, 'draw already done');
        uint256 _places_left = PLACES;
        for (uint256 i = 0; i < participants.length && _places_left > 0; i++) {
            address _winner = _getRandomAddressFromList(i);
            isWinner[_winner] = true;
            _removeFromList(_winner);
            _places_left--;
        }
        DRAW_DONE = true;
    }

    function _getRandomAddressFromList(uint256 _salt) internal view returns (address) {
        uint256 _index = _generateRandom(list.length, _salt);
        return list[_index];
    }

    function _generateRandom(uint256 range, uint256 salt) internal view returns (uint256) {
        return uint256(keccak256(abi.encodePacked(block.timestamp, block.difficulty, salt))) % range;
    }

    function _removeFromList(address _user) internal {
        for (uint256 i = 0; i < list.length; i++)
            if (list[i] == _user) {
                participants[i] = participants[participants.length - 1];
                participants.pop();
            }
    }

    function claim() public {
        require(DRAW_DONE, 'draw not done yet');
        require(isWinner[msg.sender], 'you did not win a place');
        require(!WHITELIST_ACTIVE || isWhitelisted[msg.sender], 'you are not whitelisted');
        require(!hasClaimed[msg.sender], 'you have claimed already');
        require(CLAIMED + WIN_AMOUNT <= TOTAL_WIN_AMOUNT, 'whole reserve has been already claimed');
        BUSD.transferFrom(msg.sender, address(this), WIN_AMOUNT);
        AMC.transfer(msg.sender, WIN_AMOUNT);
        hasClaimed[msg.sender] = true;
        CLAIMED += WIN_AMOUNT;
    }

    function takeBUSD(uint256 _amount) public restricted {
        BUSD.transfer(msg.sender, _amount > 0 ? _amount : BUSD.balanceOf(address(this)));
    }

    function take(IERC20 _TKN, uint256 _amount) public restricted {
        require(block.timestamp >= FILLED_DATE, '1 week must pass since the draw');
        _TKN.transfer(msg.sender, _amount > 0 ? _amount : _TKN.balanceOf(address(this)));
    }

    function enableWhitelist() public restricted {
        WHITELIST_ACTIVE = true;
    }

    function disableWhitelist() public restricted {
        WHITELIST_ACTIVE = false;
    }

    function allowToWhiteList(address[] memory _users) public restricted {
        for (uint256 i = 0; i < _users.length; i++) isWhitelisted[_users[i]] = true;
    }

    function getWinnerList() public view returns (address[] memory winners, bool[] memory claimed) {
        uint256 _winners = 0;
        for (uint256 i = 0; i < participants.length; i++) if (isWinner[participants[i]]) _winners++;
        winners = new address[](_winners);
        claimed = new bool[](_winners);
        for (uint256 i = 0; i < participants.length; i++)
            if (isWinner[participants[i]]) {
                winners[i] = participants[i];
                claimed[i] = hasClaimed[participants[i]];
            }
    }

    function infoBundle(address _user)
        public
        view
        returns (
            uint256 claimed,
            bool draw_done,
            uint256 busd,
            uint256 amc,
            bool uRegistered,
            bool uWinner,
            bool uClaimed
        )
    {
        claimed = CLAIMED;
        draw_done = DRAW_DONE;
        busd = BUSD.balanceOf(_user);
        amc = AMC.balanceOf(_user);
        uRegistered = hasRegistered[_user];
        uWinner = isWinner[_user];
        uClaimed = hasClaimed[_user];
    }

    function transferOwnership(address _newOwner) public restricted {
        require(_newOwner != address(0), 'Invalid address: should not be 0x0');
        owner = _newOwner;
    }

    constructor(
        Staking _STK,
        IERC20 _BUSD,
        IERC20 _AMC,
        SHO1 _OLD,
        address _owner
    ) {
        for (uint256 i = 0; i < 28; i++) {
            address _user = _OLD.participants(i);
            isWinner[_user] = true;
            hasRegistered[_user] = true;
            participants.push(_user);
            DRAW_DONE = true;
        }
        owner = _owner;
        STK = _STK;
        BUSD = _BUSD;
        AMC = _AMC;
        SHOOLD = _OLD;
    }
}