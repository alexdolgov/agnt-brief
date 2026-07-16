// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;
pragma experimental ABIEncoderV2;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Pausable.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

import "./interfaces/AggregatorV3Interface.sol";

contract DfynPricePrediction is Ownable, Pausable {
    using SafeMath for uint256;

    struct Round {
        uint256 epoch;
        uint256 startTime;
        uint256 lockTime;
        uint256 endTime;
        int256 lockPrice;
        int256 closePrice;
        uint256 totalAmount;
        uint256 bullAmount;
        uint256 bearAmount;
        uint256 rewardBaseCalAmount;
        uint256 rewardAmount;
        bool oracleCalled;
    }

    enum Position {
        Bull,
        Bear
    }

    struct BetInfo {
        Position position;
        uint256 amount;
        bool claimed; // default false
    }

    mapping(uint256 => Round) public rounds;
    mapping(uint256 => mapping(address => BetInfo)) public ledger;
    mapping(address => uint256[]) public userRounds;
    uint256 public currentEpoch;
    uint256 public interval;
    uint256 public buffer;
    address public adminAddress;
    address public operatorAddress;
    uint256 public treasuryAmount;
    AggregatorV3Interface internal oracle;
    uint256 public oracleLatestRoundId;

    uint256 public constant TOTAL_RATE = 100; // 100%
    uint256 public rewardRate = 90; // 90%
    uint256 public treasuryRate = 10; // 10%
    uint256 public minBetAmount;
    uint256 public oracleUpdateAllowance; // seconds

    bool public genesisStartOnce = false;
    bool public genesisLockOnce = false;

    event StartRound(uint256 indexed epoch, uint256 time);
    event LockRound(uint256 indexed epoch, uint256 time, int256 price);
    event EndRound(uint256 indexed epoch, uint256 time, int256 price);
    event BetBull(
        address indexed sender,
        uint256 indexed currentEpoch,
        uint256 amount
    );
    event BetBear(
        address indexed sender,
        uint256 indexed currentEpoch,
        uint256 amount
    );
    event Claim(
        address indexed sender,
        uint256 indexed currentEpoch,
        uint256 amount
    );
    event ClaimTreasury(uint256 amount);
    event RatesUpdated(
        uint256 indexed epoch,
        uint256 rewardRate,
        uint256 treasuryRate
    );
    event MinBetAmountUpdated(uint256 indexed epoch, uint256 minBetAmount);
    event RewardsCalculated(
        uint256 indexed epoch,
        uint256 rewardBaseCalAmount,
        uint256 rewardAmount,
        uint256 treasuryAmount
    );
    event Pause(uint256 epoch);
    event Unpause(uint256 epoch);
    event Reset(uint256 epoch);

    constructor(
        AggregatorV3Interface _oracle,
        address _adminAddress,
        address _operatorAddress,
        uint256 _interval,
        uint256 _buffer,
        uint256 _minBetAmount,
        uint256 _oracleUpdateAllowance
    ) public {
        oracle = _oracle;
        adminAddress = _adminAddress;
        operatorAddress = _operatorAddress;
        interval = _interval;
        buffer = _buffer;
        minBetAmount = _minBetAmount;
        oracleUpdateAllowance = _oracleUpdateAllowance;
    }

    modifier onlyAdmin() {
        require(msg.sender == adminAddress, "admin: wut?");
        _;
    }

    modifier onlyOperator() {
        require(msg.sender == operatorAddress, "operator: wut?");
        _;
    }

    modifier onlyAdminOrOperator() {
        require(
            msg.sender == adminAddress || msg.sender == operatorAddress,
            "admin | operator: wut?"
        );
        _;
    }

    modifier notContract() {
        require(!_isContract(msg.sender), "contract not allowed");
        require(msg.sender == tx.origin, "proxy contract not allowed");
        _;
    }

    /**
     * @dev set admin address
     * callable by owner
     */
    function setAdmin(address _adminAddress) external onlyOwner {
        require(_adminAddress != address(0), "Cannot be zero address");
        adminAddress = _adminAddress;
    }

    /**
     * @dev set operator address
     * callable by admin
     */
    function setOperator(address _operatorAddress) external onlyAdmin {
        require(_operatorAddress != address(0), "Cannot be zero address");
        operatorAddress = _operatorAddress;
    }

    /**
     * @dev set interval in seconds
     * callable by admin
     */
    function setInterval(uint256 _interval) external onlyAdmin {
        interval = _interval;
    }

    /**
     * @dev set buffer in seconds
     * callable by admin
     */
    function setBuffer(uint256 _buffer) external onlyAdmin {
        require(_buffer <= interval, "Cannot be more than interval");
        buffer = _buffer;
    }

    /**
     * @dev set Oracle address
     * callable by admin
     */
    function setOracle(address _oracle) external onlyAdmin {
        require(_oracle != address(0), "Cannot be zero address");
        oracle = AggregatorV3Interface(_oracle);
    }

    /**
     * @dev set oracle update allowance
     * callable by admin
     */
    function setOracleUpdateAllowance(uint256 _oracleUpdateAllowance)
        external
        onlyAdmin
    {
        oracleUpdateAllowance = _oracleUpdateAllowance;
    }

    /**
     * @dev set reward rate
     * callable by admin
     */
    function setRewardRate(uint256 _rewardRate) external onlyAdmin {
        require(
            _rewardRate <= TOTAL_RATE,
            "rewardRate cannot be more than 100%"
        );
        rewardRate = _rewardRate;
        treasuryRate = TOTAL_RATE.sub(_rewardRate);

        emit RatesUpdated(currentEpoch, rewardRate, treasuryRate);
    }

    /**
     * @dev set treasury rate
     * callable by admin
     */
    function setTreasuryRate(uint256 _treasuryRate) external onlyAdmin {
        require(
            _treasuryRate <= TOTAL_RATE,
            "treasuryRate cannot be more than 100%"
        );
        rewardRate = TOTAL_RATE.sub(_treasuryRate);
        treasuryRate = _treasuryRate;

        emit RatesUpdated(currentEpoch, rewardRate, treasuryRate);
    }

    /**
     * @dev set minBetAmount
     * callable by admin
     */
    function setMinBetAmount(uint256 _minBetAmount) external onlyAdmin {
        minBetAmount = _minBetAmount;

        emit MinBetAmountUpdated(currentEpoch, minBetAmount);
    }

    /**
     * @dev Start genesis round
     */
    function genesisStartRound() external onlyOperator whenNotPaused {
        require(!genesisStartOnce, "Can only run genesisStartRound once");

        currentEpoch = currentEpoch + 1;
        _startRound(currentEpoch);
        genesisStartOnce = true;
    }

    /**
     * @dev Lock genesis round
     */
    function genesisLockRound() external onlyOperator whenNotPaused {
        require(
            genesisStartOnce,
            "Can only run after genesisStartRound is triggered"
        );
        require(!genesisLockOnce, "Can only run genesisLockRound once");
        require(
            block.timestamp <= rounds[currentEpoch].lockTime.add(buffer),
            "Can only lock round within buffer"
        );

        int256 currentPrice = _getPriceFromOracle();
        _safeLockRound(currentEpoch, currentPrice);

        currentEpoch = currentEpoch + 1;
        _startRound(currentEpoch);
        genesisLockOnce = true;
    }

    /**
     * @dev Start the next round n, lock price for round n-1, end round n-2
     */
    function executeRound() external onlyOperator whenNotPaused {
        require(
            genesisStartOnce && genesisLockOnce,
            "Can only run after genesisStartRound and genesisLockRound is triggered"
        );

        int256 currentPrice = _getPriceFromOracle();
        // CurrentEpoch refers to previous round (n-1)
        _safeLockRound(currentEpoch, currentPrice);
        _safeEndRound(currentEpoch - 1, currentPrice);
        _calculateRewards(currentEpoch - 1);

        // Increment currentEpoch to current round (n)
        currentEpoch = currentEpoch + 1;
        _safeStartRound(currentEpoch);
    }

    /**
     * @dev Bet bear position
     */
    function betBear() external payable whenNotPaused notContract {
        require(_bettable(currentEpoch), "Round not bettable");
        require(
            msg.value >= minBetAmount,
            "Bet amount must be greater than minBetAmount"
        );
        require(
            ledger[currentEpoch][msg.sender].amount == 0,
            "Can only bet once per round"
        );

        // Update round data
        uint256 amount = msg.value;
        Round storage round = rounds[currentEpoch];
        round.totalAmount = round.totalAmount.add(amount);
        round.bearAmount = round.bearAmount.add(amount);

        // Update user data
        BetInfo storage betInfo = ledger[currentEpoch][msg.sender];
        betInfo.position = Position.Bear;
        betInfo.amount = amount;
        userRounds[msg.sender].push(currentEpoch);

        emit BetBear(msg.sender, currentEpoch, amount);
    }

    /**
     * @dev Bet bull position
     */
    function betBull() external payable whenNotPaused notContract {
        require(_bettable(currentEpoch), "Round not bettable");
        require(
            msg.value >= minBetAmount,
            "Bet amount must be greater than minBetAmount"
        );
        require(
            ledger[currentEpoch][msg.sender].amount == 0,
            "Can only bet once per round"
        );

        // Update round data
        uint256 amount = msg.value;
        Round storage round = rounds[currentEpoch];
        round.totalAmount = round.totalAmount.add(amount);
        round.bullAmount = round.bullAmount.add(amount);

        // Update user data
        BetInfo storage betInfo = ledger[currentEpoch][msg.sender];
        betInfo.position = Position.Bull;
        betInfo.amount = amount;
        userRounds[msg.sender].push(currentEpoch);

        emit BetBull(msg.sender, currentEpoch, amount);
    }

    /**
     * @dev Claim reward
     */
    function claim(uint256 epoch) external notContract {
        require(rounds[epoch].startTime != 0, "Round has not started");
        require(block.timestamp > rounds[epoch].endTime, "Round has not ended");
        require(!ledger[epoch][msg.sender].claimed, "Rewards claimed");

        uint256 reward;
        // Round valid, claim rewards
        if (rounds[epoch].oracleCalled) {
            require(claimable(epoch, msg.sender), "Not eligible for claim");
            Round memory round = rounds[epoch];
            reward = ledger[epoch][msg.sender]
            .amount
            .mul(round.rewardAmount)
            .div(round.rewardBaseCalAmount);
        }
        // Round invalid, refund bet amount
        else {
            require(refundable(epoch, msg.sender), "Not eligible for refund");
            reward = ledger[epoch][msg.sender].amount;
        }

        BetInfo storage betInfo = ledger[epoch][msg.sender];
        betInfo.claimed = true;
        _safeTransferToken(address(msg.sender), reward);

        emit Claim(msg.sender, epoch, reward);
    }

    /**
     * @dev Claim all rewards in treasury
     * callable by admin
     */
    function claimTreasury() external onlyAdmin {
        uint256 currentTreasuryAmount = treasuryAmount;
        treasuryAmount = 0;
        _safeTransferToken(adminAddress, currentTreasuryAmount);

        emit ClaimTreasury(currentTreasuryAmount);
    }

    /**
     * @dev Return round epochs that a user has participated
     */
    function getUserRounds(
        address user,
        uint256 cursor,
        uint256 size
    ) external view returns (uint256[] memory, uint256) {
        uint256 length = size;
        if (length > userRounds[user].length - cursor) {
            length = userRounds[user].length - cursor;
        }

        uint256[] memory values = new uint256[](length);
        for (uint256 i = 0; i < length; i++) {
            values[i] = userRounds[user][cursor + i];
        }

        return (values, cursor + length);
    }

    /**
     * @dev called by the admin to pause, triggers stopped state
     */
    function pause() public onlyAdminOrOperator whenNotPaused {
        _pause();

        emit Pause(currentEpoch);
    }

    /**
     * @dev called by the admin to unpause, returns to normal state
     * Reset genesis state. Once paused, the rounds would need to be kickstarted by genesis
     */
    function unpause() public onlyAdmin whenPaused {
        genesisStartOnce = false;
        genesisLockOnce = false;
        _unpause();

        emit Unpause(currentEpoch);
    }

    function reset() public onlyAdmin whenNotPaused {
        pause();
        unpause();

        emit Reset(currentEpoch);
    }

    /**
     * @dev Get the claimable stats of specific epoch and user account
     */
    function claimable(uint256 epoch, address user) public view returns (bool) {
        BetInfo memory betInfo = ledger[epoch][user];
        Round memory round = rounds[epoch];
        if (round.lockPrice == round.closePrice) {
            return false;
        }
        return
            round.oracleCalled &&
            ((round.closePrice > round.lockPrice &&
                betInfo.position == Position.Bull) ||
                (round.closePrice < round.lockPrice &&
                    betInfo.position == Position.Bear));
    }

    function lastRound() public view returns (Round memory round) {
        return rounds[currentEpoch];
    }

    /**
     * @dev Get the refundable stats of specific epoch and user account
     */
    function refundable(uint256 epoch, address user)
        public
        view
        returns (bool)
    {
        BetInfo memory betInfo = ledger[epoch][user];
        Round memory round = rounds[epoch];
        return
            !round.oracleCalled &&
            block.timestamp > round.endTime.add(buffer) &&
            betInfo.amount != 0;
    }

    /**
     * @dev Start round
     * Previous round n-2 must end
     */
    function _safeStartRound(uint256 epoch) internal {
        require(
            genesisStartOnce,
            "Can only run after genesisStartRound is triggered"
        );
        require(
            rounds[epoch - 2].endTime != 0,
            "Can only start round after round n-2 has ended"
        );
        require(
            block.timestamp >= rounds[epoch - 2].endTime,
            "Can only start new round after round n-2 endTime"
        );
        _startRound(epoch);
    }

    function _startRound(uint256 epoch) internal {
        Round storage round = rounds[epoch];
        round.startTime = block.timestamp;
        round.lockTime = block.timestamp.add(interval);
        round.endTime = block.timestamp.add(interval * 2);
        round.epoch = epoch;
        round.totalAmount = 0;

        emit StartRound(epoch, block.timestamp);
    }

    /**
     * @dev Lock round
     */
    function _safeLockRound(uint256 epoch, int256 price) internal {
        require(
            rounds[epoch].startTime != 0,
            "Can only lock round after round has started"
        );
        require(
            block.timestamp >= rounds[epoch].lockTime,
            "Can only lock round after lockTime"
        );
        require(
            block.timestamp <= rounds[epoch].lockTime.add(buffer),
            "Can only lock round within buffer"
        );
        _lockRound(epoch, price);
    }

    function _lockRound(uint256 epoch, int256 price) internal {
        Round storage round = rounds[epoch];
        round.lockPrice = price;

        emit LockRound(epoch, block.timestamp, round.lockPrice);
    }

    /**
     * @dev End round
     */
    function _safeEndRound(uint256 epoch, int256 price) internal {
        require(
            rounds[epoch].lockTime != 0,
            "Can only end round after round has locked"
        );
        require(
            block.timestamp >= rounds[epoch].endTime,
            "Can only end round after endTime"
        );
        require(
            block.timestamp <= rounds[epoch].endTime.add(buffer),
            "Can only end round within buffer"
        );
        _endRound(epoch, price);
    }

    function _endRound(uint256 epoch, int256 price) internal {
        Round storage round = rounds[epoch];
        round.closePrice = price;
        round.oracleCalled = true;

        emit EndRound(epoch, block.timestamp, round.closePrice);
    }

    /**
     * @dev Calculate rewards for round
     */
    function _calculateRewards(uint256 epoch) internal {
        require(
            rewardRate.add(treasuryRate) == TOTAL_RATE,
            "rewardRate and treasuryRate must add up to TOTAL_RATE"
        );
        require(
            rounds[epoch].rewardBaseCalAmount == 0 &&
                rounds[epoch].rewardAmount == 0,
            "Rewards calculated"
        );
        Round storage round = rounds[epoch];
        uint256 rewardBaseCalAmount;
        uint256 rewardAmount;
        uint256 treasuryAmt;
        // Bull wins
        if (round.closePrice > round.lockPrice) {
            rewardBaseCalAmount = round.bullAmount;
            rewardAmount = round.totalAmount.mul(rewardRate).div(TOTAL_RATE);
            treasuryAmt = round.totalAmount.mul(treasuryRate).div(TOTAL_RATE);
        }
        // Bear wins
        else if (round.closePrice < round.lockPrice) {
            rewardBaseCalAmount = round.bearAmount;
            rewardAmount = round.totalAmount.mul(rewardRate).div(TOTAL_RATE);
            treasuryAmt = round.totalAmount.mul(treasuryRate).div(TOTAL_RATE);
        }
        // House wins
        else {
            rewardBaseCalAmount = 0;
            rewardAmount = 0;
            treasuryAmt = round.totalAmount;
        }
        round.rewardBaseCalAmount = rewardBaseCalAmount;
        round.rewardAmount = rewardAmount;

        // Add to treasury
        treasuryAmount = treasuryAmount.add(treasuryAmt);

        emit RewardsCalculated(
            epoch,
            rewardBaseCalAmount,
            rewardAmount,
            treasuryAmt
        );
    }

    /**
     * @dev Get latest recorded price from oracle
     * If it falls below allowed buffer or has not updated, it would be invalid
     */
    function _getPriceFromOracle() internal returns (int256) {
        uint256 leastAllowedTimestamp = block.timestamp.add(
            oracleUpdateAllowance
        );
        (uint80 roundId, int256 price, , uint256 timestamp, ) = oracle
        .latestRoundData();
        require(
            timestamp <= leastAllowedTimestamp,
            "Oracle update exceeded max timestamp allowance"
        );
        require(
            roundId >= oracleLatestRoundId,
            "Oracle update roundId must be larger than oracleLatestRoundId"
        );
        oracleLatestRoundId = uint256(roundId);
        return price;
    }

    function isRefundable() public view returns (bool) {
        return
            (block.timestamp >= rounds[currentEpoch - 1].endTime.add(buffer)) &&
            (block.timestamp >= rounds[currentEpoch].lockTime.add(buffer)) &&
            !rounds[currentEpoch].oracleCalled;
    }

    function _safeTransferToken(address to, uint256 value) internal {
        (bool success, ) = to.call{gas: 23000, value: value}("");
        require(success, "TransferHelper: CURRENCY_TRANSFER_FAILED");
    }

    function _isContract(address addr) internal view returns (bool) {
        uint256 size;
        assembly {
            size := extcodesize(addr)
        }
        return size > 0;
    }

    /**
     * @dev Determine if a round is valid for receiving bets
     * Round must have started and locked
     * Current time must be within startTime and endTime
     */
    function _bettable(uint256 epoch) internal view returns (bool) {
        return
            rounds[epoch].startTime != 0 &&
            rounds[epoch].lockTime != 0 &&
            block.timestamp > rounds[epoch].startTime &&
            block.timestamp < rounds[epoch].lockTime;
    }
}
