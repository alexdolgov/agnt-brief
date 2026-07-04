// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import {IEntropyConsumer} from "@pythnetwork/entropy-sdk-solidity/IEntropyConsumer.sol";
import {IEntropyV2} from "@pythnetwork/entropy-sdk-solidity/IEntropyV2.sol";

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import {BeatPotWithdrawalQueue} from "./BeatPotWithdrawalQueue.sol";

contract BeatPot is
    Initializable,
    Ownable2StepUpgradeable,
    UUPSUpgradeable,
    IEntropyConsumer,
    ERC20Upgradeable
{

    using SafeERC20 for IERC20;

    // ========== RANDOMNESS (ENTROPY) ========== //

    IEntropyV2 private entropy;
    address private entropyProvider;
    /// @notice Gas limit for entropy callback function (0 uses default ~500k gas)
    uint32 public callbackGasLimit;

    struct Player {
        /// @notice Cumulative prize winnings available for withdrawal by this player
        uint256 prizesClaimable;
    }

    mapping(address => Player) public playersInfo;
    mapping(uint256 => mapping(address => uint256)) public playerEntriesByRoundId;
    mapping(uint256 => address[]) public playersByRoundId;
    mapping(uint256=> uint256) public totalEntriesByRoundId;

    // ========== BINARY INDEXED TREE (FENWICK TREE) ========== // 
    /// @dev fenwickTree[roundId][index] stores cumulative entries for efficient queries
    mapping(uint256 => mapping(uint256 => uint256)) private fenwickTree;
    /// @notice Maps player address to their index in the BIT for each round
    mapping(uint256 => mapping(address => uint256)) public playerIndexByRoundId;

    // ========== ROUND STATE ========== //
    /// @notice Price of a single entry in token base units (includes decimals)
    uint256 public entryPrice;
    /// @notice Duration of each round in seconds
    uint256 public roundDurationInSeconds;
    /// @notice Timestamp when the last round ended
    uint256 public lastRoundEndTime;
    /// @notice Total token amount currently allocated in the backer vault for active round
    uint256 public backerVaultTotal;
    /// @notice Maximum allowed backer vault allocation (caps total allocation, not individual deposits)
    uint256 public backerVaultCap;
    /// @notice Total token amount in player vault (entry fees minus protocol fees)
    uint256 public playerVaultTotal;
    /// @notice Address of the most recent round winner (address(0) if backers won)
    address public lastWinnerAddress;
    /// @notice Prevents concurrent round execution (true during execution, false otherwise)
    bool public roundLock;
    /// @notice Sequence number from the active entropy request (0 when no request pending)
    uint64 public currentSequenceNumber;
    /// @notice Round id
    uint256 public roundId;
    /// @notice Maximum number of concurrent active players per round
    uint256 public playerLimit;
    /// @notice withdrawal queue
    BeatPotWithdrawalQueue public withdrawalQueue;

    // ========== FEE CONFIGURATION ========== //

    uint256 public feeBps;
    /// @notice Cumulative total fees collected (backer fees + referral fees)
    uint256 public allFeesTotal;
    /// @notice Total backer fees pending distribution to backers
    uint256 public backerFeesTotal;
    /// @notice Referral fee in basis points (portion of total fee allocated to referrers)
    uint256 public referralFeeBps;
    /// @notice Cumulative referral fees allocated to all referrers
    uint256 public referralFeesTotal;
    /// @notice Claimable referral fees for each referrer address
    mapping(address => uint256) public referralFeesClaimable;
    /// @notice Address receiving protocol fees (10% of backer fees when threshold met)
    address public protocolFeeAddress;
    /// @notice Protocol fees available for withdrawal
    uint256 public protocolFeeClaimable;
    /// @notice Fallback winner address used if winner selection fails
    address public fallbackWinner;

    /// @notice Whether entry purchasing is currently allowed
    bool public allowPurchasing;
    /// @notice ERC20 token used for all deposits, prizes, and fees
    IERC20 public token;
    /// @notice Decimal places for the configured ERC20 token
    uint256 public tokenDecimals;
    /// @notice Minimum backer fee amount required before protocol takes its 10% share
    uint256 public protocolFeeThreshold;

    /// @notice Exchange rate from shares to tokens (scaled by 10 ** tokenDecimals)
    /// @dev For 18-decimal token: 1e18 = 1:1 ratio, 2e18 = 1 share worth 2 tokens
    /// @dev For 6-decimal token (USDC): 1e6 = 1:1 ratio, 2e6 = 1 share worth 2 tokens
    uint256 public exchangeRateStored;

    /// @dev Storage gap for future upgrades (UUPS pattern)
    uint256[50] private __gap;

    // ========== EVENTS ========== //

    /// @notice Emitted when a player purchases entries
    /// @param recipient Address receiving the entries
    /// @param entriesPurchasedBps Total entries for recipient in basis points
    /// @param referrer Address of referrer (address(0) if none)
    /// @param buyer Address that paid for the entries
    /// @param roundId Round id
    event PlayerEntryPurchase(
        address indexed recipient,
        uint256 entriesPurchasedBps,
        address indexed referrer,
        address indexed buyer,
        uint256 roundId
    );

    /// @notice Emitted when a player withdraws prize winnings
    /// @param player Address of the player
    /// @param amount Token amount withdrawn
    event PlayerPrizeWithdrawal(address indexed player, uint256 amount);

    /// @notice Emitted when a referrer withdraws referral fees
    /// @param player Address of the referrer
    /// @param amount Token amount withdrawn
    event PlayerReferralFeeWithdrawal(address indexed player, uint256 amount);

    /// @notice Emitted when protocol fees are withdrawn by owner
    /// @param amount Token amount withdrawn
    event ProtocolFeeWithdrawal(uint256 amount);

    /// @notice Emitted when a backer deposits capital
    /// @param backerAddress Address of the backer
    /// @param amount Token amount deposited
    event BackerDeposit(
        address indexed backerAddress,
        uint256 amount
    );

    /// @notice Emitted when round execution is initiated
    /// @param player Address that triggered execution
    event RoundExecutionRequested(address indexed player);

    /// @notice Emitted when round execution completes
    /// @param time Timestamp of round completion
    /// @param winner Winning player address (address(0) if backers won)
    /// @param winningEntry The winning entry number
    /// @param prizeAmount Total prize amount awarded
    /// @param entriesPurchasedTotalBps  total entries for the round in basis points
    /// @param roundId Round id
    event RoundExecuted(
        uint256 time,
        address winner,
        uint256 winningEntry,
        uint256 prizeAmount,
        uint256 entriesPurchasedTotalBps,
        uint256 roundId
    );

    /// @notice Emitted when entropy provides random number
    /// @param sequenceNumber Sequence number of the request
    /// @param randomNumber Generated random number
    event EntropyResult(uint64 sequenceNumber, bytes32 randomNumber);


    event BackerLiquidityTotalUpdated(uint256 total);


    /// @notice Emitted when exchange rate is updated
    /// @param newRate New exchange rate
    event ExchangeRateUpdated(uint256 newRate);


    // ========== ERRORS ========== //

    /// @notice Thrown when insufficient ETH sent for entropy fee
    error InsufficientEntropyFee();
    /// @notice Thrown when excess ETH refund fails
    error RefundFailed();
    /// @notice Thrown when entropy callback received without active execution
    error RoundExecutionNotInProgress();
    /// @notice Thrown when entropy callback sequence number doesn't match
    error SequenceNumberMismatch();
    /// @notice Thrown when attempting self-referral
    error CannotSelfReferral();
    /// @notice Thrown when deposit amount below entry price after flooring
    error DepositBelowEntryPrice();
    /// @notice Thrown when deposit would exceed backer vault cap
    error DepositExceedsVaultCap();
    /// @notice Thrown when deposit amount results in zero shares due to high exchange rate
    error DepositTooSmallForExchangeRate();
    /// @notice Thrown when fee basis points exceed 8000 (80%)
    error FeeBpsExceedsMaximum();
    /// @notice Thrown when purchase amount insufficient for single entry
    error InsufficientAmountForEntry();
    /// @notice Thrown when fee BPS doesn't maintain 5% margin over referral fee
    error InsufficientFeeBpsMargin();
    /// @notice Thrown when deposit amount is zero
    error InvalidDepositAmount();
 
    /// @notice Thrown when purchase amount is zero
    error InvalidPurchaseAmount();
    /// @notice Thrown when active player count reaches limit per round
    error MaxPlayerLimitReached();
    /// @notice Thrown when player has no prizes to withdraw
    error NoPrizesToWithdraw();
    /// @notice Thrown when no protocol fees available for withdrawal
    error NoProtocolFeesToWithdraw();
    /// @notice Thrown when referrer has no fees to withdraw
    error NoReferralFeesToWithdraw();
    /// @notice Thrown when protocol fee address not configured
    error ProtocolFeeAddressNotSet();
    /// @notice Thrown when purchasing is disabled by admin
    error PurchasingNotAllowed();
    /// @notice Thrown when referral fee BPS exceeds total fee BPS
    error ReferralFeeBpsExceedsFee();
    /// @notice Thrown when round execution already in progress
    error RoundCurrentlyExecuting();
    /// @notice Thrown when attempting execution before round duration elapsed
    error RoundDurationNotElapsed();
    /// @notice Thrown when operation requires withdrawal queue
    error OnlyWithdrawalQueue();
   
    modifier onlyWithdrawalQueue() {
        if (msg.sender != address(withdrawalQueue)) revert OnlyWithdrawalQueue();
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal override onlyOwner {}

    /// @notice Initializes the BeatPot contract (UUPS proxy pattern)
    /// @param _entropyAddress Address of the Entropy V2 contract
    /// @param _initialOwnerAddress Initial owner (should differ from deployer)
    /// @param _token Address of ERC20 token for prizes/deposits
    /// @param _entryPrice Price of single entry in token 
    function initialize(
        address _entropyAddress,
        address _initialOwnerAddress,
        address _token,
        uint256 _entryPrice
    ) public initializer {
        __Ownable_init(_initialOwnerAddress);
        __UUPSUpgradeable_init();
        __ERC20_init("BeatPot", "BPLPT");

        entropy = IEntropyV2(_entropyAddress);
        entropyProvider = entropy.getDefaultProvider();
        callbackGasLimit = 0;

        token = IERC20(_token);
        tokenDecimals = IERC20Metadata(_token).decimals();

        entryPrice = _entryPrice;
        feeBps = 1500;
        referralFeeBps = 500;
        roundDurationInSeconds = 1 days;
        allowPurchasing = true;
        lastRoundEndTime = block.timestamp;
        fallbackWinner = _initialOwnerAddress;
        playerLimit = 1500;
        roundId = 1;
        backerVaultCap = entryPrice * 100000;
        protocolFeeThreshold = entryPrice * 1000;
    }

    // ========== ENTROPY (RANDOMNESS) ========== //

    /// @notice Returns the entropy contract address for callback authorization
    /// @return Address of the Entropy V2 contract
    function getEntropy() internal view override returns (address) {
        return address(entropy);
    }

    /// @notice Callback function invoked by Entropy contract with random number
    /// @dev Validates sequence number and completes round execution
    /// @param sequenceNumber Unique identifier for this randomness request
    /// @param randomNumber Generated random bytes32 value
    function entropyCallback(
        uint64 sequenceNumber,
        address,
        bytes32 randomNumber
    ) internal override {
        emit EntropyResult(sequenceNumber, randomNumber);

        if (!roundLock) revert RoundExecutionNotInProgress();
        if (currentSequenceNumber != sequenceNumber) revert SequenceNumberMismatch();

        selectWinnerAndRebalance(randomNumber);

        roundLock = false;
        currentSequenceNumber = 0;
    }

    // ========== ROUND EXECUTION ========== //

    /// @dev Distributes backer fees to backers proportional to their allocation
    function distributeBackerFeesToBackers() private {
        if (backerVaultTotal == 0) {
            playerVaultTotal += backerFeesTotal;
            backerFeesTotal = 0;
            return;
        }

        if (
            protocolFeeAddress != address(0) &&
            backerFeesTotal >= protocolFeeThreshold
        ) {
            uint256 protocolFee = backerFeesTotal / 10;
            backerFeesTotal -= protocolFee;
            protocolFeeClaimable += protocolFee;
        }

        backerVaultTotal += backerFeesTotal;
        backerFeesTotal = 0;

        // Update exchange rate after vault increase
        _updateExchangeRate();
    }

    // Distribute the player vault to backers according to their allocation share of the backer vault
    function distributePlayerVaultToBackers() private {
        backerVaultTotal += playerVaultTotal;
        playerVaultTotal = 0;

        // Update exchange rate after vault increase
        _updateExchangeRate();
    }
 

    // Get the fee for making the entropy contract call
    function getEntropyFee() public view returns (uint128 fee) {
        if (callbackGasLimit > 0) {
            fee = entropy.getFeeV2(entropyProvider, callbackGasLimit);
        } else {
            fee = entropy.getFeeV2();
        }
    }

    // MAIN PUBLIC FUNCTION TO EXECUTE THE ROUND
    // Executes the round
    function executeRound(bytes32 userRandomNumber) external payable {
        // TIMELOCK
        if (block.timestamp < lastRoundEndTime + roundDurationInSeconds) revert RoundDurationNotElapsed();

        if (roundLock) revert RoundCurrentlyExecuting();

        // acquire round lock
        roundLock = true;

        uint128 fee = getEntropyFee();
        if (msg.value < fee) revert InsufficientEntropyFee();
        if (msg.value > fee) {
            (bool success, ) = msg.sender.call{value: msg.value - fee}("");
            if (!success) revert RefundFailed();
        }

        // Request the random number from the Entropy protocol. The call returns a sequence number that uniquely
        // identifies the generated random number. Store it for verification in the callback.
        uint64 sequenceNumber = entropy.requestV2{value: fee}(
            entropyProvider,
            userRandomNumber,
            callbackGasLimit
        );

        currentSequenceNumber = sequenceNumber;

        emit RoundExecutionRequested(msg.sender);
    }

    function getWinningEntry(
        bytes32 rawRandomNumber,
        uint256 max
    ) private pure returns (uint256) {
        return (uint256(rawRandomNumber) % max) + 1;
    }

    // ========== BINARY INDEXED TREE FUNCTIONS ========== //

    /// @notice Update Binary Indexed Tree with entry delta for a player
    /// @param _roundId Round ID
    /// @param index Player index in BIT (1-indexed)
    /// @param delta Change in entry count
    function _updateBIT(uint256 _roundId, uint256 index, uint256 delta) private {
        uint256 treeSize = playerLimit + 1;
        while (index < treeSize) {
            fenwickTree[_roundId][index] += delta;
            index += index & (~index + 1); // Add LSB
        }
    }

    /// @notice Query cumulative entries up to index in BIT
    /// @param _roundId Round ID
    /// @param index Query up to this index (1-indexed)
    /// @return Cumulative entries from index 1 to index
    function _queryBIT(uint256 _roundId, uint256 index) private view returns (uint256) {
        uint256 sum = 0;
        while (index > 0) {
            sum += fenwickTree[_roundId][index];
            index -= index & (~index + 1); // Remove LSB
        }
        return sum;
    }

    /// @notice Find player index using binary search on BIT
    /// @param _roundId Round ID
    /// @param targetEntry Target cumulative entry (1-indexed)
    /// @return Player index (1-indexed) whose cumulative range contains targetEntry
    function _findWinnerIndexBIT(uint256 _roundId, uint256 targetEntry) private view returns (uint256) {
        uint256 left = 1;
        uint256 right = playersByRoundId[_roundId].length;
        uint256 result = 0;

        while (left <= right) {
            uint256 mid = (left + right) / 2;
            uint256 cumulative = _queryBIT(_roundId, mid);

            if (cumulative >= targetEntry) {
                result = mid;
                right = mid - 1;
            } else {
                left = mid + 1;
            }
        }

        return result;
    }

    /// @notice Find winner address using BIT (O(log n) complexity)
    /// @param winningEntry The winning entry number
    /// @return Winner's address
    function findWinnerFromPlayers(
        uint256 winningEntry
    ) private view returns (address) {
        if (playersByRoundId[roundId].length == 0) {
            return fallbackWinner;
        }

        uint256 winnerIndex = _findWinnerIndexBIT(roundId, winningEntry);

        if (winnerIndex == 0 || winnerIndex > playersByRoundId[roundId].length) {
            return fallbackWinner;
        }

        // Convert from 1-indexed BIT to 0-indexed array
        return playersByRoundId[roundId][winnerIndex - 1];
    }

    // Determines a winner, and adjusts backer capital/allocation accordingly
    function selectWinnerAndRebalance(bytes32 randomNumber) private {
        lastRoundEndTime = block.timestamp;

        // No entries bought
        if (playersByRoundId[roundId].length == 0) {
            emit RoundExecuted(lastRoundEndTime, address(0), 0, backerVaultTotal, 0, roundId);
            _processWithdrawalsForRound();
            roundId++; 
            return;
        }

        // Distribute backer fees to backers
        distributeBackerFeesToBackers();

        if (playerVaultTotal >= backerVaultTotal) {
            // Round is fully funded by players, so winner gets the player vault and backers get the backer vault
            uint256 winningEntry = getWinningEntry(
                randomNumber,
                totalEntriesByRoundId[roundId]
            );
            lastWinnerAddress = findWinnerFromPlayers(winningEntry);
            // Calculate and store prize amount, which is player vault, fees are already deducted
            uint256 prizeAmount = playerVaultTotal;
            Player storage winner = playersInfo[lastWinnerAddress];
            winner.prizesClaimable += prizeAmount;
            playerVaultTotal = 0;
            emit RoundExecuted(
                lastRoundEndTime,
                lastWinnerAddress,
                winningEntry,
                prizeAmount,
                totalEntriesByRoundId[roundId],
                roundId
            );
        } else {
            // Round is not fully funded by players, i.e. partially funded by backers
            uint256 winningEntry = getWinningEntry(
                randomNumber,
                (backerVaultTotal * 10000 / entryPrice) 
            );
            if (winningEntry <= totalEntriesByRoundId[roundId]) {
                // Round is won by a player, so winner gets the backer vault and backers get the player vault (but lose the backer vault)
                lastWinnerAddress = findWinnerFromPlayers(winningEntry);
                // Distribute backer vault
                uint256 prizeAmount = backerVaultTotal;
                Player storage winner = playersInfo[lastWinnerAddress];
                winner.prizesClaimable += prizeAmount;
                backerVaultTotal = 0;
                // Distribute player vault to the backers
                distributePlayerVaultToBackers();
                emit RoundExecuted(
                    lastRoundEndTime,
                    lastWinnerAddress,
                    winningEntry,
                    prizeAmount,
                    totalEntriesByRoundId[roundId],
                    roundId
                );
            } else {
                // Round is won by backers, so backers get both the player vault and backer vault
                lastWinnerAddress = address(0);
                // Distribute player vault to the backers
                distributePlayerVaultToBackers();

                emit RoundExecuted(
                    lastRoundEndTime,
                    lastWinnerAddress,
                    winningEntry,
                    backerVaultTotal,
                    totalEntriesByRoundId[roundId],
                    roundId
                );
            }
        }

     
        // Reset fee accumulators, backer fee total reset in its own function
        allFeesTotal = 0;
        referralFeesTotal = 0;
        _processWithdrawalsForRound();
        roundId++;
        emit BackerLiquidityTotalUpdated(backerVaultTotal);
    }

    // Helper function to handle fee calculations
    function _calculateFees(
        uint256 usedAmount,
        address referrer
    )
        internal
        view
        returns (
            uint256 allFeeAmount,
            uint256 referralFeeAmount,
            uint256 backerFeeAmount
        )
    {
        allFeeAmount = (usedAmount * feeBps) / 10000;
        referralFeeAmount = (referrer != address(0))
            ? (usedAmount * referralFeeBps) / 10000
            : 0;
        backerFeeAmount = allFeeAmount - referralFeeAmount;
        return (allFeeAmount, referralFeeAmount, backerFeeAmount);
    }

    // Helper function to update fee totals
    function _updateFeeTotals(
        uint256 allFeeAmount,
        uint256 referralFeeAmount,
        uint256 backerFeeAmount,
        address referrer
    ) internal {
        allFeesTotal += allFeeAmount;
        if (referrer != address(0)) {
            referralFeesClaimable[referrer] += referralFeeAmount;
            referralFeesTotal += referralFeeAmount;
        }
        backerFeesTotal += backerFeeAmount;
    }

    // Helper function to process the entry purchase
    function _processEntryPurchase(
        uint256 actualReceived,
        address playerAddress
    ) internal returns ( uint256 entriesPurchasedBps, uint256 usedAmount) {
        uint256 entryCount = actualReceived / entryPrice;
        if (entryCount == 0) revert InsufficientAmountForEntry();

        entriesPurchasedBps = entryCount * (10000 - feeBps);
        uint256 playerIndex;

        if (playerEntriesByRoundId[roundId][playerAddress] == 0) {
            // New player - check limit and add to array
            if (playersByRoundId[roundId].length >= playerLimit) revert MaxPlayerLimitReached();
            playersByRoundId[roundId].push(playerAddress);

            // Assign 1-indexed position in BIT (array length is now the index)
            playerIndex = playersByRoundId[roundId].length;
            playerIndexByRoundId[roundId][playerAddress] = playerIndex;
        } else {
            // Existing player - get their index
            playerIndex = playerIndexByRoundId[roundId][playerAddress];
        }

        // Update player's entry count
        playerEntriesByRoundId[roundId][playerAddress] += entriesPurchasedBps;
        totalEntriesByRoundId[roundId] += entriesPurchasedBps;

        // Update BIT with the delta
        _updateBIT(roundId, playerIndex, entriesPurchasedBps);

        usedAmount = entryCount * entryPrice;
    }


    /// @notice Updates the exchange rate based on current vault total and share supply
    /// @dev Called after any operation that changes backerVaultTotal
    /// @dev Rate reflects actual vault value - can increase or decrease
    function _updateExchangeRate() private {
        uint256 supply = totalSupply();
        if (supply == 0) return; // No shares exist yet

        // Calculate new exchange rate: tokens per share (scaled by token decimals)
        uint256 newRate = (backerVaultTotal * (10 ** tokenDecimals)) / supply;

        // Always update to reflect actual vault value
        // Rate CAN decrease when players win (backers take risk)
        exchangeRateStored = newRate;

        emit ExchangeRateUpdated(newRate);
    }

    function _processWithdrawalsForRound() private {
        uint256 _roundId = roundId;
        uint256 totalShares = withdrawalQueue.withdrawalShares(_roundId);
        if (totalShares == 0) return;
        uint256 supply = totalSupply();
        if (supply == 0) return;

        // Use stored exchange rate for precise calculation
        uint256 tokenAmount = (totalShares * exchangeRateStored) / (10 ** tokenDecimals);

        withdrawalQueue.updateTotalWithdrawalAmount(_roundId, tokenAmount);
        token.safeTransfer(address(withdrawalQueue), tokenAmount);
        backerVaultTotal -= tokenAmount;

        // Update exchange rate after withdrawal
        _updateExchangeRate();

        emit BackerLiquidityTotalUpdated(backerVaultTotal);
    }

    // ========== PUBLIC FUNCTIONS ========== //

    /// @notice Deposit capital as a backer or add to existing position
    /// @dev Capital and exposure rate update immediately; allocation occurs at next round
    /// @dev Supports fee-on-transfer tokens, refunds excess, floors to entry price
    /// @param value Token amount to deposit
    function backerDeposit(uint256 value) public {
        if (roundLock) revert RoundCurrentlyExecuting();
        if (value == 0) revert InvalidDepositAmount();

        uint256 balanceBefore = token.balanceOf(address(this));
        token.safeTransferFrom(msg.sender, address(this), value);
        uint256 balanceAfter = token.balanceOf(address(this));
        uint256 actualReceived = balanceAfter - balanceBefore;
        uint256 flooredValue = (actualReceived / entryPrice) * entryPrice;

      
        if (flooredValue < entryPrice) revert DepositBelowEntryPrice();
        if (backerVaultTotal + flooredValue > backerVaultCap) revert DepositExceedsVaultCap();

        // Calculate shares using stored exchange rate
        uint256 shares;
        if (totalSupply() == 0) {
            // First deposit: establish 1:1 ratio
            shares = flooredValue;
            exchangeRateStored = 10 ** tokenDecimals;
        } else {
            // Subsequent deposits: use stored exchange rate
            // shares = depositAmount * (10 ** tokenDecimals) / exchangeRateStored
            uint256 flooredValueScaled = flooredValue * (10 ** tokenDecimals);
            if (flooredValueScaled < exchangeRateStored) revert DepositTooSmallForExchangeRate();
            shares = flooredValueScaled / exchangeRateStored;

            // Safety: prevent zero-share minting
            if (shares == 0) revert DepositTooSmallForExchangeRate();
        }

        _mint(msg.sender, shares);
        backerVaultTotal += flooredValue;

        // Update exchange rate after deposit
        _updateExchangeRate();

        uint256 remainder = actualReceived - flooredValue;
        if (remainder > 0) {
            token.safeTransfer(msg.sender, remainder);
        }

        emit BackerDeposit(msg.sender, flooredValue);
        emit BackerLiquidityTotalUpdated(backerVaultTotal);
    }

   

    /**
     * @notice Purchase lottery entries for a player (self or recipient)
     * @dev Supports fee-on-transfer tokens, calculates fees, refunds excess amounts
     * @dev Recipient enables gifting entries and cross-chain/fiat payment flows
     * @param referrer Address of referrer (address(0) if none), cannot be msg.sender
     * @param value Token amount to spend on entries
     * @param recipient Address receiving entries (address(0) or msg.sender for self-purchase)
     */
    function purchaseEntries(
        address referrer,
        uint256 value,
        address recipient
    ) public {
        if (!allowPurchasing) revert PurchasingNotAllowed();
        if (value == 0) revert InvalidPurchaseAmount();
        if (roundLock) revert RoundCurrentlyExecuting();
        if (referrer == msg.sender) revert CannotSelfReferral();

        uint256 balanceBefore = token.balanceOf(address(this));
        token.safeTransferFrom(msg.sender, address(this), value);
        uint256 actualReceived = token.balanceOf(address(this)) - balanceBefore;

        address playerAddress = (recipient == address(0) ||
            recipient == msg.sender)
            ? msg.sender
            : recipient;

        (
            uint256 entriesPurchasedBps,
            uint256 usedAmount
        ) = _processEntryPurchase(actualReceived, playerAddress);

        (
            uint256 allFeeAmount,
            uint256 referralFeeAmount,
            uint256 backerFeeAmount
        ) = _calculateFees(usedAmount, referrer);
        _updateFeeTotals(
            allFeeAmount,
            referralFeeAmount,
            backerFeeAmount,
            referrer
        );

        playerVaultTotal += usedAmount - allFeeAmount;

        uint256 remainder = actualReceived - usedAmount;
        if (remainder > 0) {
            token.safeTransfer(msg.sender, remainder);
        }

        emit PlayerEntryPurchase(
            playerAddress,
            entriesPurchasedBps,
            referrer,
            msg.sender,
            roundId
        );
    }


    function burnShares(address backerAddress, uint256 sharesAmount) public onlyWithdrawalQueue {
      _burn(backerAddress, sharesAmount);
    }

    // ========== WITHDRAWAL FUNCTIONS ========== //

    /**
     * @notice Withdraw accumulated prize winnings
     * @dev Resets claimable amount before transfer to prevent reentrancy
     */
    function withdrawPrizes() public {
        Player storage player = playersInfo[msg.sender];

        if (player.prizesClaimable == 0) revert NoPrizesToWithdraw();

        uint256 transferAmount = player.prizesClaimable;
        emit PlayerPrizeWithdrawal(msg.sender, transferAmount);
        player.prizesClaimable = 0;

        token.safeTransfer(msg.sender, transferAmount);
    }

    /**
     * @notice Withdraw accumulated referral fee earnings
     * @dev Resets claimable amount before transfer to prevent reentrancy
     */
    function withdrawReferralFees() public {
        if (referralFeesClaimable[msg.sender] == 0) revert NoReferralFeesToWithdraw();

        uint256 transferAmount = referralFeesClaimable[msg.sender];
        referralFeesClaimable[msg.sender] = 0;

        token.safeTransfer(msg.sender, transferAmount);

        emit PlayerReferralFeeWithdrawal(msg.sender, transferAmount);
    }

    /**
     * @notice Withdraw protocol fees to configured fee address (admin onlybackerDeposit)
     * @dev Requires protocolFeeAddress to be set, resets claimable before transfer
     */
    function withdrawProtocolFees() external onlyOwner {
        if (protocolFeeClaimable == 0) revert NoProtocolFeesToWithdraw();

        uint256 transferProtocolFeeAmount = protocolFeeClaimable;
        protocolFeeClaimable = 0;

        if (protocolFeeAddress == address(0)) revert ProtocolFeeAddressNotSet();

        token.safeTransfer(protocolFeeAddress, transferProtocolFeeAmount);

        emit ProtocolFeeWithdrawal(transferProtocolFeeAmount);
    }

    // ========== VIEW FUNCTIONS ========== //

    /// @notice Calculate the token value of a user's share balance
    /// @param user Address to query
    /// @return Token amount the user can withdraw
    function userLiquidityBalance(address user) public view returns (uint256) {
        uint256 supply = totalSupply();
        if (supply == 0) return 0;

        // Use stored exchange rate for consistency
        return (balanceOf(user) * exchangeRateStored) / (10 ** tokenDecimals);
    }

    /// @notice Get the current exchange rate (tokens per share)
    /// @return Exchange rate scaled by 10 ** tokenDecimals
    /// @dev For 18-decimal token: 1.5e18 = 1 share worth 1.5 tokens
    /// @dev For 6-decimal token (USDC): 1.5e6 = 1 share worth 1.5 tokens
    function currentExchangeRate() external view returns (uint256) {
        return exchangeRateStored;
    }

    /// @notice Convert share amount to token amount using current exchange rate
    /// @param shareAmount Amount of shares to convert
    /// @return Token amount equivalent
    function sharesToTokens(uint256 shareAmount) external view returns (uint256) {
        return (shareAmount * exchangeRateStored) / (10 ** tokenDecimals);
    }

    /// @notice Convert token amount to share amount using current exchange rate
    /// @param tokenAmount Amount of tokens to convert
    /// @return Share amount equivalent
    function tokensToShares(uint256 tokenAmount) external view returns (uint256) {
        if (exchangeRateStored == 0) return tokenAmount; // 1:1 if not initialized
        return (tokenAmount * (10 ** tokenDecimals)) / exchangeRateStored;
    }

    /// @notice Get exchange rate as human-readable ratio
    /// @return numerator Tokens (numerator)
    /// @return denominator Shares (denominator, always 10 ** tokenDecimals)
    function exchangeRateRatio() external view returns (uint256 numerator, uint256 denominator) {
        return (exchangeRateStored, 10 ** tokenDecimals);
    }
        

    // ========== ADMIN FUNCTIONS ========== //

    /// @notice Update the entry price (admin only)
    function setEntryPrice(uint256 _newEntryPrice) external onlyOwner {
        if (roundLock) revert RoundCurrentlyExecuting();
        if (totalEntriesByRoundId[roundId] > 0) revert RoundCurrentlyExecuting();
        entryPrice = _newEntryPrice;
    }

    /// @notice Update the round duration in seconds (admin only)
    function setRoundDurationInSeconds(
        uint256 _newDuration
    ) external onlyOwner {
        roundDurationInSeconds = _newDuration;
    }

    /**
     * @notice Update referral fee in basis points (admin only)
     * @dev Cannot exceed total fee basis points
     */
    function setReferralFeeBps(uint256 _referralFeeBps) external onlyOwner {
        if (_referralFeeBps > feeBps) revert ReferralFeeBpsExceedsFee();
        if (_referralFeeBps + 500 > feeBps) revert InsufficientFeeBpsMargin();
        referralFeeBps = _referralFeeBps;
    }

    /**
     * @notice Update total fee in basis points (admin only)
     * @dev Maximum 80%, must maintain 5% margin above referral fee
     */
    function setFeeBps(uint256 _feeBps) external onlyOwner {
        if (_feeBps > 8000) revert FeeBpsExceedsMaximum();
        if (referralFeeBps + 500 > _feeBps) revert InsufficientFeeBpsMargin();
        feeBps = _feeBps;
    }

    

    /// @notice Update backer vault allocation cap (admin only)
    function setBackerVaultCap(uint256 _cap) external onlyOwner {
        backerVaultCap = _cap;
    }

    /// @notice Update protocol fee recipient address (admin only)
    function setProtocolFeeAddress(
        address _protocolFeeAddress
    ) external onlyOwner {
        protocolFeeAddress = _protocolFeeAddress;
    }

    /// @notice Update protocol fee withdrawal threshold (admin only)
    function setProtocolFeeThreshold(
        uint256 _protocolFeeThreshold
    ) external onlyOwner {
        protocolFeeThreshold = _protocolFeeThreshold;
    }

    /// @notice Update withdrawal queue address (admin only)
    function setWithdrawalQueue(address _withdrawalQueue) external onlyOwner {
        withdrawalQueue = BeatPotWithdrawalQueue(_withdrawalQueue);
    }

    /**
     * @notice Emergency unlock if Entropy callback fails (admin only)
     * @dev Break-glass mechanism to recover from stuck round state
     */
    function forceReleaseRoundLock() external onlyOwner {
        roundLock = false;
        currentSequenceNumber = 0;
    }

    /// @notice Toggle entry purchasing on/off (admin only)
    function setAllowPurchasing(bool _allow) external onlyOwner {
        allowPurchasing = _allow;
    }

    /**
     * @notice Set Entropy callback gas limit (admin only)
     * @param _gasLimit Gas limit for callback (0 = use default 500k, or set higher like 2500000)
     * @dev Higher gas limits require higher fees but allow more participants
     */
    function setCallbackGasLimit(uint32 _gasLimit) external onlyOwner {
        callbackGasLimit = _gasLimit;
    }

    /// @notice Set fallback winner address used when no players entered (admin only)
    function setFallbackWinner(address _fallbackWinner) external onlyOwner {
        fallbackWinner = _fallbackWinner;
    }

    /// @notice Update maximum number of concurrent active players per round (admin only)
    function setPlayerLimit(uint256 _playerLimit) external onlyOwner {
        playerLimit = _playerLimit;
    }
}
