//SPDX-License-Identifier: UNLICENSED
pragma solidity =0.8.4;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/interfaces/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";


import "../interfaces/IRandomNumberGenerator.sol";
import "../interfaces/IMultiOracle.sol";


contract PandoPotV3 is Ownable, ReentrancyGuard, Pausable {
    using EnumerableSet for EnumerableSet.UintSet;
    using SafeERC20 for IERC20;

    enum PRIZE_STATUS {AVAILABLE, CLAIMED, LIQUIDATED}
    enum PRIZE_TYPE {LEADERBOARD, MEGA, MINOR, MINI}

    uint256 public maxTypes = 4;
    uint256 public totalPrizePercentage = 0;
    mapping(PRIZE_TYPE => TypePrize) public typePrize;

    struct TypePrize {
        PRIZE_TYPE types;
        uint256 sampleSpace;
        uint256 winners;
        uint256 percentage;
        string name;
    }

    // 0 : mega, 1 : minor, 2 : leaderboard
    struct PrizeInfo {
        uint256 USD;
        uint256 PSR;
        uint256 PAN;
        uint256 expire;
        uint256 nClaimed;
        uint256 totalWinner;
    }

    struct LeaderboardPrizeInfo {
        uint256 USD;
        uint256 PSR;
        uint256 PAN;
        uint256 expire;
        PRIZE_STATUS status;
    }

    struct RoundInfo {
        //type => numbers
        mapping(PRIZE_TYPE => EnumerableSet.UintSet) numbers;
        uint256 finishedAt;
        uint256 status; //0 : need Update prizeInfo
    }

    address public USD;
    address public PSR;
    address public PAN;
    address public randomNumberGenerator;
    address public multiOracle;

    uint256 public constant unlockPeriod = 2 * 365 * 1 days;
    uint256 public constant ONE_HUNDRED_PERCENT = 1000000;
    uint256 public timeBomb = 2 * 30 * 1 days;
    uint256 public prizeExpireTime = 14 * 1 days;
    uint256 public timeBombPrizePercentage = 250000;
    uint256 public roundDuration = 1 hours;

    uint256 public lastJackpot;
    uint256 public totalPSRAllocated;
    uint256 public lastUpdatePot;

    uint256 public USDForCurrentPot;
    uint256 public PSRForCurrentPot;
    uint256 public PANForCurrentPot;

    uint256 public USDForTimeBomb;
    uint256 public PSRForTimeBomb;
    uint256 public PANForTimeBomb;

    uint256 public currentRoundId;
    uint256 public currentDistributeId;

    uint256 public panBurnPercent = 500000;
    uint256 public ticketPrice = 0.3 * 1e18;

    // round => type => number => address => quantity // ticket mapping with users
    mapping(uint256 => mapping (PRIZE_TYPE => mapping(uint256 => mapping(address => uint)))) public tickets;
    mapping(uint256 => mapping (PRIZE_TYPE => mapping(uint256 => mapping(address => bool)))) public isClaimed;

    //user
    mapping(address => bool) public isReceivedFreeTicket;
    uint256 public numFreeTicket = 1;

    // round => type => number => quantity
    mapping(uint256 => mapping(PRIZE_TYPE => mapping (uint256 => uint))) public nTickets; // number of tickets mapping with round

    // round => type => prize
    mapping(uint256 => mapping(PRIZE_TYPE => PrizeInfo)) public prizes;

    //round => address => prize
    mapping (uint256 => mapping(address => LeaderboardPrizeInfo)) public leaderboardPrize;
    mapping (uint256 => RoundInfo) roundInfo;

    mapping (address => bool) public whitelist;

    uint256 public pendingUSD;
    uint256 public pendingPAN;

    uint256[21] public discountPercentages;
//    uint256 public discountPerAmount = 1e16;

    /*----------------------------CONSTRUCTOR----------------------------*/
    constructor (address _USD, address _PSR, address _PAN, address _randomNumberGenerator, address _router, address _multiOracle, uint256 _lastUpdated) {
        USD = _USD;
        PSR = _PSR;
        PAN = _PAN;
        multiOracle = _multiOracle;
        randomNumberGenerator = _randomNumberGenerator;
        lastJackpot = _lastUpdated;
        lastUpdatePot = _lastUpdated;
        currentRoundId = 1;
        roundInfo[0].finishedAt = block.timestamp;
        roundInfo[0].status = 1;
        whitelist[_router] = true;
        _initPrize();

        for(uint i = 0; i < 21; i++) {
            if(i < 5){
                discountPercentages[i] = 0;
            }else if(i < 10){
                discountPercentages[i] = 30000;
            }else if(i <15){
                discountPercentages[i] = 70000;
            }else if(i < 20){
                discountPercentages[i] = 110000;
            }else{
                discountPercentages[i] = 150000;
            }
        }
    }

    /*----------------------------INTERNAL FUNCTIONS----------------------------*/

    function _transferToken(address _token, address _receiver, uint256 _amount) internal {
        if (_amount > 0) {
            IERC20(_token).safeTransfer(_receiver, _amount);
        }
    }

    function _generateTicket(uint256 _rand, uint256 _sample, uint256 _salt) internal view returns(uint256) {
        return uint256(keccak256(abi.encodePacked(_rand, _salt)))% _sample;
    }

    function _updateRound(uint256 _id) internal {
        RoundInfo storage _roundInfo = roundInfo[_id];
        uint256 _expire = _roundInfo.finishedAt + prizeExpireTime;
        if (_roundInfo.status == 0) {
            _roundInfo.status = 1;
            _updateLuckyNumber(_id, _roundInfo);
            (uint256 _usd, uint256 _psr, uint256 _pan) = _updatePrize(_id, _roundInfo, _expire);
            if (_psr + _usd + _pan > 0) {
                pendingUSD += _usd;
                pendingPAN += _pan;
                PSRForCurrentPot -= _psr;
            }
            emit RoundCompleted(_id, _expire,_roundInfo.numbers[PRIZE_TYPE.MEGA].values(), _roundInfo.numbers[PRIZE_TYPE.MINOR].values(), _roundInfo.numbers[PRIZE_TYPE.MINI].values());
        }
    }

    function _updateLuckyNumber(uint256 _id, RoundInfo storage _roundInfo) internal  {
        uint256[] memory _numbers = IRandomNumberGenerator(randomNumberGenerator).getNumber(_id);
        for(uint256 i = 1; i < maxTypes; i++) {
            {
                uint256 _winners = typePrize[PRIZE_TYPE(i)].winners;
                _calculateNumbers(_numbers[0], _numbers[1], _numbers[2], PRIZE_TYPE(i), _winners, _roundInfo.numbers[PRIZE_TYPE(i)]);
            }
        }
    }

    function _updatePrize(uint256 _id, RoundInfo storage _roundInfo, uint256 _expire) internal returns(uint, uint, uint) {
        uint256 _totalUSD = 0;
        uint256 _totalPSR = 0;
        uint256 _totalPAN = 0;

        uint256 _usd;
        uint256 _psr;
        uint256 _pan;
        for(uint256 i = 1; i < maxTypes; i++) {
            {
                (_usd, _psr, _pan)= _calcPrize(_id, _roundInfo.numbers[PRIZE_TYPE(i)].values(), _expire, PRIZE_TYPE(i));
                _totalUSD += _usd;
                _totalPSR += _psr;
                _totalPAN += _pan;
            }
        }
        return (_totalUSD, _totalPSR, _totalPAN);
    }

    function _calculateNumbers(uint256 _number1, uint256 _number2, uint256 _number3, PRIZE_TYPE _type, uint256 _quantity, EnumerableSet.UintSet storage _set) internal {
        uint256 _seed = (block.timestamp + block.number + uint256(_type) + _quantity ) % 256;
        uint256 _rand = uint256(keccak256(abi.encodePacked(_number1 >> _seed, _number2, _number3 >> (256 - _seed ), _type, _quantity)));

        uint256 _value;
        for(uint256 i = 0; i < _quantity; i++) {
            _value = uint256(keccak256(abi.encodePacked(_rand, i))) % typePrize[_type].sampleSpace;
            while(!_set.add(_value)){
                _value += 1;
            }
        }
    }

    function _countWinners(uint256 _roundId, uint256[] memory _numbers, PRIZE_TYPE _type) internal view returns (uint) {
        uint256 _count = 0;
        for(uint256 i = 0; i < _numbers.length; i++) {
            _count += nTickets[_roundId][_type][_numbers[i]];
        }
        return _count;
    }

    function _calcPrize(uint256 _roundId, uint256[] memory _numbers, uint256 _expire, PRIZE_TYPE _type) internal returns(uint256, uint256, uint256) {
        PrizeInfo memory _prize = PrizeInfo({
            USD : 0,
            PSR : 0,
            PAN : 0,
            expire : _expire,
            nClaimed : 0,
            totalWinner : 0
        });
        uint256 _percentage = typePrize[_type].percentage;

        uint256 _USDForWinner = USDForCurrentPot * _percentage / ONE_HUNDRED_PERCENT;
        uint256 _PSRForWinner = PSRForCurrentPot * _percentage / ONE_HUNDRED_PERCENT;
        uint256 _PANForWinner = PANForCurrentPot * _percentage / ONE_HUNDRED_PERCENT;

        _prize.totalWinner = _countWinners(_roundId, _numbers, _type);
        if (_prize.totalWinner > 0) {
            _prize.USD = _USDForWinner;
            _prize.PSR = _PSRForWinner;
            _prize.PAN = _PANForWinner;
            if(_type == PRIZE_TYPE.MEGA) {
                lastJackpot = _expire - prizeExpireTime;
            }
        }
        prizes[_roundId][_type] = _prize;

        emit PriceForWinner(_roundId, _type, _USDForWinner, _PSRForWinner, _PANForWinner);
        return (_prize.USD, _prize.PSR, _prize.PAN);
    }


    // 0: leaderboard // 1 : mega // 2: minor // 3: mini
    function _liquidate(PRIZE_TYPE _type, uint256 _roundId, address _owner) internal {
        uint256 _totalUSD = 0;
        uint256 _totalPSR = 0;
        uint256 _totalPAN = 0;

        if (_type != PRIZE_TYPE.LEADERBOARD) {
            PrizeInfo storage _prize = prizes[_roundId][_type];
            require(_prize.expire < block.timestamp , 'PandoPot: !expire');
            if(_prize.totalWinner > _prize.nClaimed) {
                _totalUSD = _prize.USD * (_prize.totalWinner - _prize.nClaimed) / _prize.totalWinner;
                _totalPSR = _prize.PSR * (_prize.totalWinner - _prize.nClaimed) / _prize.totalWinner;
                _totalPAN = _prize.PAN * (_prize.totalWinner - _prize.nClaimed) / _prize.totalWinner;
                _prize.nClaimed = _prize.totalWinner;
            }
        } else {
            LeaderboardPrizeInfo storage _prize = leaderboardPrize[_roundId][_owner];
            require(_prize.expire < block.timestamp, 'PandoPot: !expire');
            require(_prize.status == PRIZE_STATUS.AVAILABLE, 'PandoPot: !AVAILABLE');
            _prize.status = PRIZE_STATUS.LIQUIDATED;
            _totalUSD = _prize.USD;
            _totalPSR = _prize.PSR;
            _totalPAN = _prize.PAN;
        }
        pendingUSD -= _totalUSD;
        pendingPAN -= _totalPAN;
        PSRForCurrentPot += _totalPSR;
        emit Liquidated(_type, _roundId, _owner, _totalUSD, _totalPSR, _totalPAN);
    }

    function _addTicket(address _receiver, uint256 _mega, uint256 _minor, uint256 _mini, uint256 _roundId) internal{
        tickets[_roundId][PRIZE_TYPE.MEGA][_mega][_receiver]++;
        tickets[_roundId][PRIZE_TYPE.MINOR][_minor][_receiver]++;
        tickets[_roundId][PRIZE_TYPE.MINI][_mini][_receiver]++;

        nTickets[_roundId][PRIZE_TYPE.MEGA][_mega]++;
        nTickets[_roundId][PRIZE_TYPE.MINOR][_minor]++;
        nTickets[_roundId][PRIZE_TYPE.MINI][_mini]++;

    }

    function _randomTicket(address _receiver, uint256 _rand, uint256 _quantity) internal {
        uint256[] memory _tickets = new uint[](_quantity);
        uint256 _ticketNumber;
        uint256 _megaSpace = typePrize[PRIZE_TYPE.MEGA].sampleSpace; // mega sampleSpace
        uint256 _minorSpace = typePrize[PRIZE_TYPE.MINOR].sampleSpace;
        uint256 _miniSpace =  typePrize[PRIZE_TYPE.MINI].sampleSpace;
        uint256 _seed = uint256(keccak256(abi.encodePacked(_rand, block.timestamp)));
        for (uint256 i = 0; i < _quantity; i++) {
            if (_seed > _megaSpace) {
                _ticketNumber = _seed % _megaSpace;
                _seed = _seed / _megaSpace;
            } else {
                _seed = uint256(keccak256(abi.encodePacked(_rand, i, _seed)));
            }
            uint256 _minor = _ticketNumber % _minorSpace;
            uint256 _mini = _ticketNumber % _miniSpace;

           _addTicket(_receiver, _ticketNumber, _minor, _mini, currentRoundId);

            _tickets[i] = _ticketNumber;
        }
        emit NewTicket(currentRoundId, _receiver, _tickets, 1);
    }

    function _getPriceOfTickets(uint256 _quantity) internal view returns (uint256) {
        return ticketPrice * _quantity * (ONE_HUNDRED_PERCENT - discountPercentages[_quantity]) / ONE_HUNDRED_PERCENT;
    }

    function _checkAndTransferPan(uint256 _quantity) internal{
        require(_quantity > 0,"PandoPot: Quantity ticket buy must more than zero");
        uint256 _amount_PAN = getAmountPan(_quantity);
        if(_amount_PAN > 0){
            IERC20(PAN).safeTransferFrom(msg.sender, address(this), _amount_PAN);
            if(panBurnPercent > 0){
                ERC20Burnable(PAN).burn(_amount_PAN * panBurnPercent / ONE_HUNDRED_PERCENT);
            }
        }
    }

    function _addNewPrize(uint256 _sampleSpace, uint256 _numberOfWinner, uint256 _percentage, string memory _name, PRIZE_TYPE _types) internal {
        require(_percentage + totalPrizePercentage <= ONE_HUNDRED_PERCENT, "PandoPot: percentage over");
        require(_numberOfWinner > 0 , "PandoPot: _numberOfWinner zero");
        require(_sampleSpace > 0 , "PandoPot: _sampleSpace zero");
        TypePrize storage _typePrize = typePrize[_types];
        _typePrize.sampleSpace = _sampleSpace;
        _typePrize.winners = _numberOfWinner;
        _typePrize.percentage = _percentage;
        _typePrize.name = _name;
        _typePrize.types = _types;
        totalPrizePercentage += _percentage;
        emit NewPrize(_types, _sampleSpace, _numberOfWinner, _percentage, _name);
    }

    function _checkTicketInRound(PRIZE_TYPE _type, uint256 _roundId, uint256 _ticketNumber) internal view returns (bool) {
        return roundInfo[_roundId].numbers[_type].contains(_ticketNumber);

    }

    function _claim(PRIZE_TYPE _type, uint256 _roundId, uint256 _ticketNumber, address _receiver) internal {
        require(uint256(_type) <  maxTypes, 'PandoPot: Invalid type');

        uint256 _USDAmount = 0;
        uint256 _PANAmount = 0;
        uint256 _PSRAmount = 0;

        if (_type != PRIZE_TYPE.LEADERBOARD) {
            uint256 _roundInfoStatus = roundInfo[_roundId].status;
            require(_roundInfoStatus == 1, 'PandoPot: Round hasnt been finished yet');
            
            uint256 _number = _ticketNumber % typePrize[_type].sampleSpace;
            require(tickets[_roundId][_type][_number][msg.sender] > 0 && _checkTicketInRound(_type, _roundId, _number), 'PandoPot: no prize');
           
            require(!isClaimed[_roundId][_type][_ticketNumber][msg.sender], 'Pandot:  claimed');
            isClaimed[_roundId][_type][_ticketNumber][msg.sender] = true;

            PrizeInfo storage _prizeInfo = prizes[_roundId][_type];
            if (_prizeInfo.expire >= block.timestamp) {
               
                uint256 _nWiningTicket = tickets[_roundId][PRIZE_TYPE.MEGA][_ticketNumber][msg.sender];
                uint256 _totalWinner = _prizeInfo.totalWinner;
                
                _USDAmount = _prizeInfo.USD * _nWiningTicket / _totalWinner;
                _PSRAmount = _prizeInfo.PSR * _nWiningTicket / _totalWinner;
                _PANAmount = _prizeInfo.PAN * _nWiningTicket / _totalWinner;
                
                _prizeInfo.nClaimed +=_nWiningTicket;
            } else {
                _liquidate(_type, _roundId, msg.sender);
            }
        } else {
            LeaderboardPrizeInfo storage _prize = leaderboardPrize[_roundId][msg.sender];
            require(_prize.USD + _prize.PSR > 0, 'PandoPot: no prize');
            if (_prize.expire >= block.timestamp) {
                require(_prize.status == PRIZE_STATUS.AVAILABLE, 'PandoPot: prize not available');
                _prize.status = PRIZE_STATUS.CLAIMED;
                _USDAmount = _prize.USD;
                _PSRAmount = _prize.PSR;
                _PANAmount = _prize.PAN;
            } else {
                _liquidate(_type, _roundId, msg.sender);
            }
        }
        pendingUSD -= _USDAmount;
        pendingPAN -= _PANAmount;

        _transferToken(USD, _receiver, _USDAmount);
        _transferToken(PSR, _receiver, _PSRAmount);
        _transferToken(PAN, _receiver, _PANAmount);
        emit Claimed(_type, _roundId, _ticketNumber, _USDAmount, _PSRAmount, _PANAmount, _receiver);
    }


    function _initPrize() internal {
        _addNewPrize(1e6, 2, 250000, "Mega", PRIZE_TYPE.MEGA); // 6 digits
        _addNewPrize(1e4, 2, 5000, "Minor", PRIZE_TYPE.MINOR); // 4 digits
        _addNewPrize(1e3, 4, 750, "Mini", PRIZE_TYPE.MINI); // 3 digits
    }

    function _computerSeed() internal view returns (uint256) {
        uint256 seed =
        uint256(
            keccak256(
                abi.encodePacked(
                    (block.timestamp),
                    block.gaslimit,
                    blockhash(block.number - 1),
                    block.coinbase,
                    tx.origin
                )
            )
        );
        return seed;
    }
    /*----------------------------EXTERNAL FUNCTIONS----------------------------*/

    function getRoundDuration() external view returns(uint256) {
        return roundDuration;
    }

    function getAmountPan(uint256 _quantityTicket) public view returns(uint256) {
        uint256 _priceTicket = _getPriceOfTickets(_quantityTicket);
        if(_priceTicket > 0){
            uint256 _price_PAN = IMultiOracle(multiOracle).consult(address(PAN));
            uint256 _price_USD = IMultiOracle(multiOracle).consult(address(USD));
            if (_price_PAN > 0 && _price_USD > 0) {
                return _priceTicket * _price_USD / _price_PAN;
            }
        }
        return 0;
    }

    function buyTickets(address _receiver, uint256[] memory _tickets) external availableBuyTicket(_receiver) onlyEOA whenNotPaused nonReentrant{
        require(0 < _tickets.length && _tickets.length < 21,"PandoPot: Quantity ticket buy must more than zero or maximum 20 tickets");
        uint256 _roundId = currentRoundId;
        _checkAndTransferPan(_tickets.length);

        uint256 _megaSampleSpace = typePrize[PRIZE_TYPE.MEGA].sampleSpace;
        uint256 _minorSampleSpace = typePrize[PRIZE_TYPE.MINOR].sampleSpace;
        uint256 _miniSampleSpace = typePrize[PRIZE_TYPE.MINI].sampleSpace;

        uint256 _megaNumber;
        uint256 _minorNumber;
        uint256 _miniNumber;
        for (uint256 i = 0; i < _tickets.length; i++) {
            _megaNumber = _tickets[i] % _megaSampleSpace;
            _minorNumber = _tickets[i] % _minorSampleSpace;
            _miniNumber = _tickets[i] % _miniSampleSpace;

            _addTicket(_receiver, _megaNumber, _minorNumber, _miniNumber, _roundId);
        }

        if(!isReceivedFreeTicket[_receiver]){
            isReceivedFreeTicket[_receiver] = true;
            _randomTicket(_receiver, _computerSeed(), numFreeTicket);
        }

        emit NewTicket(_roundId, _receiver, _tickets, 0);
    }

    function enter(address _receiver, uint256 _rand, uint256 _quantity) external whenNotPaused nonReentrant onlyWhitelist() {
        _randomTicket(_receiver, _rand, _quantity); // mega
    }

    function enterWithoutRand(address _receiver, uint256[] memory _tickets) external whenNotPaused nonReentrant onlyWhitelist() {
        uint256 _len = _tickets.length;
        uint256 _roundId = currentRoundId;
        uint256 _megaSampleSpace = typePrize[PRIZE_TYPE.MEGA].sampleSpace;
        uint256 _minorSampleSpace = typePrize[PRIZE_TYPE.MINOR].sampleSpace;
        uint256 _miniSampleSpace = typePrize[PRIZE_TYPE.MINI].sampleSpace;

        for (uint256 i = 0; i < _len; i++) {
            uint256 _ticketNumber = _tickets[i];
            _addTicket(_receiver, _ticketNumber % _megaSampleSpace, _ticketNumber % _minorSampleSpace, _ticketNumber % _miniSampleSpace, _roundId);
        }
        emit NewTicket(_roundId, _receiver, _tickets, 0);
    }

    function claim(PRIZE_TYPE _type, uint256 _roundId, uint256 _ticketNumber, address _receiver) external whenNotPaused nonReentrant {
        _claim(_type, _roundId, _ticketNumber, _receiver);
    }

    function distribute(address[] memory _leaderboards, uint256[] memory ratios) external onlyOwner whenNotPaused {
        require(_leaderboards.length == ratios.length, 'PandoPot: leaderboards != ratios');
        require(block.timestamp - lastJackpot >= timeBomb, 'PandoPot: not enough timebomb');
        uint256 _cur = 0;
        for (uint256 i = 0; i < ratios.length; i++) {
            _cur += ratios[i];
        }
        require(_cur == ONE_HUNDRED_PERCENT, 'PandoPot: ratios incorrect');
        currentDistributeId++;
        updatePandoPot();
        require(USDForTimeBomb + PSRForTimeBomb + PANForTimeBomb > 0, 'PandoPot: no prize');
        uint256 _nRatios = ratios.length;
        uint256[] memory _usdAmounts = new uint256[](_nRatios);
        uint256[] memory _psrAmounts = new uint256[](_nRatios);
        uint256[] memory _panAmounts = new uint256[](_nRatios);

        for (uint256 i = 0; i < _leaderboards.length; i++) {
            uint256 _USDAmount = USDForTimeBomb * ratios[i] / ONE_HUNDRED_PERCENT;
            uint256 _PSRAmount = PSRForTimeBomb * ratios[i] / ONE_HUNDRED_PERCENT;
            uint256 _PANAmount = PANForTimeBomb * ratios[i] / ONE_HUNDRED_PERCENT;
            LeaderboardPrizeInfo memory _prize = LeaderboardPrizeInfo({
                USD : _USDAmount,
                PSR : _PSRAmount,
                PAN : _PANAmount,
                expire : block.timestamp + prizeExpireTime,
                status : PRIZE_STATUS.AVAILABLE
            });
            leaderboardPrize[currentDistributeId][_leaderboards[i]] = _prize;
            _usdAmounts[i] = _USDAmount;
            _psrAmounts[i] = _PSRAmount;
            _panAmounts[i] = _PANAmount;
        }
        pendingUSD += USDForTimeBomb;
        pendingPAN += PANForTimeBomb;
        USDForTimeBomb = 0;
        PSRForTimeBomb = 0;
        PANForTimeBomb = 0;
        emit Distributed(currentDistributeId, block.timestamp + prizeExpireTime, _leaderboards, _usdAmounts, _psrAmounts, _panAmounts);
    }

    function updatePandoPot() public {
        _updateRound(currentRoundId - 1);

        PSRForCurrentPot += totalPSRAllocated * (block.timestamp - lastUpdatePot) / unlockPeriod;
        USDForCurrentPot = IERC20(USD).balanceOf(address(this)) - USDForTimeBomb - pendingUSD;
        PANForCurrentPot = IERC20(PAN).balanceOf(address(this)) - PANForTimeBomb - pendingPAN;

        if (block.timestamp - lastJackpot >= timeBomb) {
            if (PSRForTimeBomb == 0 && USDForTimeBomb == 0 && PANForTimeBomb == 0) {
                USDForTimeBomb = USDForCurrentPot * timeBombPrizePercentage / ONE_HUNDRED_PERCENT;
                PSRForTimeBomb = PSRForCurrentPot * timeBombPrizePercentage / ONE_HUNDRED_PERCENT;
                PANForTimeBomb = PANForCurrentPot * timeBombPrizePercentage / ONE_HUNDRED_PERCENT;
                PSRForCurrentPot -= PSRForTimeBomb;
            }
        }
        lastUpdatePot = block.timestamp;
    }

    function liquidate(PRIZE_TYPE _type, uint256 _roundId, address[] memory _owners) external whenNotPaused {
        require(uint256(_type) <  maxTypes, 'PandoPot: Invalid type');
        for(uint256 i = 0; i < _owners.length; i++){
            _liquidate(_type, _roundId, _owners[i]);
        }
        updatePandoPot();
    }

    function currentPot() external view returns(uint256, uint256, uint256) {
        uint256 _USD = IERC20(USD).balanceOf(address(this)) - USDForTimeBomb - pendingUSD;
        uint256 _PAN = IERC20(PAN).balanceOf(address(this)) - PANForTimeBomb - pendingPAN;
        uint256 _PSR = totalPSRAllocated * (block.timestamp - lastUpdatePot) / unlockPeriod + PSRForCurrentPot;

        if (currentRoundId > 1) {
            uint256 _preRound = currentRoundId - 1;
            if (roundInfo[_preRound].status == 0) {
                for(uint256 i = 1; i < maxTypes; i++) {
                    if(_countWinners(_preRound, roundInfo[_preRound].numbers[PRIZE_TYPE(i)].values(), PRIZE_TYPE(i)) > 0) {
                        _USD -= USDForCurrentPot * typePrize[PRIZE_TYPE(i)].percentage / ONE_HUNDRED_PERCENT;
                        _PSR -= PSRForCurrentPot * typePrize[PRIZE_TYPE(i)].percentage / ONE_HUNDRED_PERCENT;
                        _PAN -= PANForCurrentPot * typePrize[PRIZE_TYPE(i)].percentage / ONE_HUNDRED_PERCENT;
                    }
                }
            }
        }
        return (_USD, _PSR, _PAN);
    }

    function finishRound() external onlyRNG {
        require(block.timestamp > roundDuration + roundInfo[currentRoundId - 1].finishedAt, 'PandoPot: < roundDuration');
        roundInfo[currentRoundId].finishedAt = block.timestamp;
        emit RoundFinished(currentRoundId);
        currentRoundId++;
    }

    // 0: wrong
    // 1: valid
    // 2: expired
    // 3: claimed
    // 4: you is not winner
    //_type: 0: distribute 1: mega 2: minor 3: mini
    function checkTicketStatus(uint256 _roundId, PRIZE_TYPE _type, address _owner, uint256 _ticketNumber) external view returns (uint256) {
        if (roundInfo[_roundId].numbers[_type].contains(_ticketNumber)) {
            if (roundInfo[_roundId].finishedAt + prizeExpireTime < block.timestamp) {
                return 2;
            }
            if(tickets[_roundId][_type][_ticketNumber][_owner] == 0){
                return 4;
            }
            if (!isClaimed[_roundId][_type][_ticketNumber][_owner]) {
                return 1;
            }
            return 3;
        }
        return 0;
    }

    function getDiscountPercentage(uint256 _quantity) external view returns (uint256) {
        require(_quantity <= 20);
        return discountPercentages[_quantity];
    }

    function getWinningNumbers(uint _roundId) public view returns (uint256[] memory, uint256[] memory, uint256[] memory) {
        return (roundInfo[_roundId].numbers[PRIZE_TYPE.MEGA].values(), roundInfo[_roundId].numbers[PRIZE_TYPE.MINOR].values(), roundInfo[_roundId].numbers[PRIZE_TYPE.MINI].values());
    }

    function getRoundInfo(uint256 _roundId) public view returns (uint256[] memory, uint256[] memory, uint256[] memory, uint256 finishedAt, uint256 status) {
        return (roundInfo[_roundId].numbers[PRIZE_TYPE.MEGA].values(), roundInfo[_roundId].numbers[PRIZE_TYPE.MINOR].values(), roundInfo[_roundId].numbers[PRIZE_TYPE.MINI].values(), roundInfo[_roundId].finishedAt, roundInfo[_roundId].status);
    }

    /*----------------------------RESTRICTED FUNCTIONS----------------------------*/
    modifier availableBuyTicket(address _receive) {
        require( _receive != address(0), "PandoPot: Receiver must different address zero");
        _;
    }

    modifier onlyEOA() {
        // Try to make flash-loan exploit harder to do by only allowing externally owned addresses.
        require(msg.sender == tx.origin, "PandoPot: must use EOA");
        _;
    }

    modifier onlyWhitelist() {
        require(whitelist[msg.sender], 'PandoPot: caller is not in the whitelist');
        _;
    }

    modifier onlyRNG() {
        require(msg.sender == randomNumberGenerator, 'PandoPot: !RNG');
        _;
    }

    function toggleWhitelist(address _addr) external onlyOwner {
        whitelist[_addr] = !whitelist[_addr];
        emit WhitelistChanged(_addr, whitelist[_addr]);
    }

    function allocatePSR(uint256 _amount) external onlyOwner {
        totalPSRAllocated += _amount;
        IERC20(PSR).safeTransferFrom(msg.sender, address(this), _amount);
        emit PSRAllocated(_amount);
    }

    function changeTimeBomb(uint256 _second) external onlyOwner {
        uint256 oldSecond = timeBomb;
        timeBomb = _second;
        emit TimeBombChanged(oldSecond, _second);
    }

    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }

    function emergencyWithdraw() external onlyOwner whenPaused {
        IERC20 _USD = IERC20(USD);
        IERC20 _PSR = IERC20(PSR);
        IERC20 _PAN = IERC20(PAN);
        uint256 _USDAmount = _USD.balanceOf(address(this));
        uint256 _PSRAmount = _PSR.balanceOf(address(this));
        uint256 _PANAmount = _PAN.balanceOf(address(this));
        _USD.safeTransfer(owner(), _USDAmount);
        _PSR.safeTransfer(owner(), _PSRAmount);
        _PAN.safeTransfer(owner(), _PANAmount);
        emit EmergencyWithdraw(owner(), _USDAmount, _PSRAmount, _PANAmount);
    }

    function changeRewardExpireTime(uint256 _newExpireTime) external onlyOwner whenPaused {
        uint256 _oldExpireTIme = prizeExpireTime;
        prizeExpireTime = _newExpireTime;
        emit RewardExpireTimeChanged(_oldExpireTIme, _newExpireTime);
    }

    function changeRandomNumberGenerator(address _rng) external onlyOwner whenPaused {
        address _oldRNG = randomNumberGenerator;
        randomNumberGenerator = _rng;
        emit RandomNumberGeneratorChanged(_oldRNG, _rng);
    }

    function changeRoundDuration(uint256 _newDuration) external onlyOwner whenPaused {
        uint256 _oldDuration = roundDuration;
        roundDuration = _newDuration;
        emit RoundDurationChanged(_oldDuration, _newDuration);
    }

    function changeMultiOracle(address _newOracle) external onlyOwner {
        address  _oldOracle = multiOracle;
        multiOracle = _newOracle;
        emit MultiOracleChanged(_oldOracle, _newOracle);
    }


    function changePanBurnPercent(uint256 _newPercent) external onlyOwner {
        uint256 _oldPercent = panBurnPercent;
        panBurnPercent = _newPercent;
        emit PanBurnPercentChanged(_oldPercent, _newPercent);
    }

//    function changeDiscount(uint256 _percentage, uint256 _usd) external onlyOwner {
//        require(_percentage <= ONE_HUNDRED_PERCENT, "PandoPot: over 100 percentage");
//        require(_usd <=  ticketPrice, "PandoPot: over price");
//        discountPercentage = _percentage;
//        discountPerAmount = _usd;
//        emit DiscountChange(discountPercentage, discountPerAmount);
//    }

    function changePriceTicket(uint256 _value) external onlyOwner {
        uint256 _old = ticketPrice;
        ticketPrice = _value;
        emit PriceTicketChanged(_old, ticketPrice);
    }

    function changeNumberFreeTicket(uint256 _value) external onlyOwner {
        uint256 _old = numFreeTicket;
        numFreeTicket = _value;
        emit NumberFreeTicketChanged(_old, numFreeTicket);
    }

    function updatePrizeInfo(uint256 _sampleSpace, uint256 _numberOfWinner, uint256 _percentage, string memory _name, PRIZE_TYPE _types) external onlyOwner whenPaused {
        require(_percentage + totalPrizePercentage <= ONE_HUNDRED_PERCENT, "PandoPot: percentage over");
        require(_numberOfWinner > 0 , "PandoPot: _numberOfWinner zero");
        require(_sampleSpace > 0 , "PandoPot: _sampleSpace zero");
        TypePrize storage _typePrize = typePrize[_types];
        totalPrizePercentage += _percentage - _typePrize.percentage;
        _typePrize.sampleSpace = _sampleSpace;
        _typePrize.winners = _numberOfWinner;
        _typePrize.percentage = _percentage;
        _typePrize.name = _name;
        _typePrize.types = _types;
        emit PrizeUpdated(_types, _sampleSpace, _numberOfWinner, _percentage, _name);
    }

    function changeDiscountPercentage(uint256[] memory _percentages) external onlyOwner {
        require(_percentages.length == 21, "PandoPot: Overflow");
        for(uint i = 0; i < _percentages.length; i++) {
            require(_percentages[i] < ONE_HUNDRED_PERCENT, "PandoPot: over 100 percent");
            discountPercentages[i] = _percentages[i];
        }
        emit DiscountChange(_percentages);
    }
    /*----------------------------EVENTS----------------------------*/

    event PriceForWinner(uint256 _roundId, PRIZE_TYPE _type, uint256 USDForWinner, uint256 PSRForWinner, uint256 PANForWinner);
    event NewTicket(uint256 indexed roundId, address indexed user, uint256[] numbers, uint256 indexed _type);//_type: 0-BuyTicket, 1-EnterTicket
    event Claimed(PRIZE_TYPE _type, uint256 roundId, uint256 ticketNumber, uint256 USD, uint256 PSR,uint256 PAN, address receiver);
    event Liquidated(PRIZE_TYPE _type, uint256 id, address owner, uint256 USD, uint256 PSR, uint256 PAN);
    event WhitelistChanged(address indexed whitelist, bool status);
    event PSRAllocated(uint256 amount);
    event TimeBombChanged(uint256 oldValueSecond, uint256 newValueSecond);
    event EmergencyWithdraw(address owner, uint256 USD, uint256 PSR, uint256 PAN);
    event RewardExpireTimeChanged(uint256 oldExpireTime, uint256 newExpireTime);
    event RandomNumberGeneratorChanged(address indexed _oldRNG, address indexed _RNG);
    event RoundCompleted(uint256 roundId, uint256 expireTime, uint256[] mega, uint256[] minor, uint256[] mini);
    event RoundFinished(uint256 newRoundId);
    event Distributed(uint256 distributeId, uint256 expire, address[] leaderboards, uint256[] usdAmounts, uint[] psrAmounts, uint[] panAmounts);
    event RoundDurationChanged(uint256 oldDuration, uint256 newDuration);
    event MultiOracleChanged(address oldOracle, address newOracle);
    event PriceTicketChanged(uint256 oldPrice, uint256 newPrice);
    event NumberFreeTicketChanged(uint256 oldTicket, uint256 newTicket);
    event PanBurnPercentChanged(uint256 oldPercent, uint256 newPercent);
    event NewPrize(PRIZE_TYPE _type, uint256 _sampleSpace, uint256 _numberOfWinner, uint256 _percentage, string  _name);
    event DiscountChange(uint256[] percentages);
    event PrizeUpdated(PRIZE_TYPE _type, uint256 _sampleSpace, uint256 _numberOfWinner, uint256 _percentage, string  _name);
}
