// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }
}

abstract contract Ownable is Context {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor() {
        _transferOwnership(_msgSender());
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
        _;
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
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

/** ****************************************************************************
 * @notice Interface for contracts using VRF randomness
 * *****************************************************************************
 * @dev PURPOSE
 *
 * @dev Reggie the Random Oracle (not his real job) wants to provide randomness
 * @dev to Vera the verifier in such a way that Vera can be sure he's not
 * @dev making his output up to suit himself. Reggie provides Vera a public key
 * @dev to which he knows the secret key. Each time Vera provides a seed to
 * @dev Reggie, he gives back a value which is computed completely
 * @dev deterministically from the seed and the secret key.
 *
 * @dev Reggie provides a proof by which Vera can verify that the output was
 * @dev correctly computed once Reggie tells it to her, but without that proof,
 * @dev the output is indistinguishable to her from a uniform random sample
 * @dev from the output space.
 *
 * @dev The purpose of this contract is to make it easy for unrelated contracts
 * @dev to talk to Vera the verifier about the work Reggie is doing, to provide
 * @dev simple access to a verifiable source of randomness. It ensures 2 things:
 * @dev 1. The fulfillment came from the VRFCoordinator
 * @dev 2. The consumer contract implements fulfillRandomWords.
 * *****************************************************************************
 * @dev USAGE
 *
 * @dev Calling contracts must inherit from VRFConsumerBase, and can
 * @dev initialize VRFConsumerBase's attributes in their constructor as
 * @dev shown:
 *
 * @dev   contract VRFConsumer {
 * @dev     constructor(<other arguments>, address _vrfCoordinator, address _link)
 * @dev       VRFConsumerBase(_vrfCoordinator) public {
 * @dev         <initialization with other arguments goes here>
 * @dev       }
 * @dev   }
 *
 * @dev The oracle will have given you an ID for the VRF keypair they have
 * @dev committed to (let's call it keyHash). Create subscription, fund it
 * @dev and your consumer contract as a consumer of it (see VRFCoordinatorInterface
 * @dev subscription management functions).
 * @dev Call requestRandomWords(keyHash, subId, minimumRequestConfirmations,
 * @dev callbackGasLimit, numWords),
 * @dev see (VRFCoordinatorInterface for a description of the arguments).
 *
 * @dev Once the VRFCoordinator has received and validated the oracle's response
 * @dev to your request, it will call your contract's fulfillRandomWords method.
 *
 * @dev The randomness argument to fulfillRandomWords is a set of random words
 * @dev generated from your requestId and the blockHash of the request.
 *
 * @dev If your contract could have concurrent requests open, you can use the
 * @dev requestId returned from requestRandomWords to track which response is associated
 * @dev with which randomness request.
 * @dev See "SECURITY CONSIDERATIONS" for principles to keep in mind,
 * @dev if your contract could have multiple requests in flight simultaneously.
 *
 * @dev Colliding `requestId`s are cryptographically impossible as long as seeds
 * @dev differ.
 *
 * *****************************************************************************
 * @dev SECURITY CONSIDERATIONS
 *
 * @dev A method with the ability to call your fulfillRandomness method directly
 * @dev could spoof a VRF response with any random value, so it's critical that
 * @dev it cannot be directly called by anything other than this base contract
 * @dev (specifically, by the VRFConsumerBase.rawFulfillRandomness method).
 *
 * @dev For your users to trust that your contract's random behavior is free
 * @dev from malicious interference, it's best if you can write it so that all
 * @dev behaviors implied by a VRF response are executed *during* your
 * @dev fulfillRandomness method. If your contract must store the response (or
 * @dev anything derived from it) and use it later, you must ensure that any
 * @dev user-significant behavior which depends on that stored value cannot be
 * @dev manipulated by a subsequent VRF request.
 *
 * @dev Similarly, both miners and the VRF oracle itself have some influence
 * @dev over the order in which VRF responses appear on the blockchain, so if
 * @dev your contract could have multiple VRF requests in flight simultaneously,
 * @dev you must ensure that the order in which the VRF responses arrive cannot
 * @dev be used to manipulate your contract's user-significant behavior.
 *
 * @dev Since the block hash of the block which contains the requestRandomness
 * @dev call is mixed into the input to the VRF *last*, a sufficiently powerful
 * @dev miner could, in principle, fork the blockchain to evict the block
 * @dev containing the request, forcing the request to be included in a
 * @dev different block with a different hash, and therefore a different input
 * @dev to the VRF. However, such an attack would incur a substantial economic
 * @dev cost. This cost scales with the number of blocks the VRF oracle waits
 * @dev until it calls responds to a request. It is for this reason that
 * @dev that you can signal to an oracle you'd like them to wait longer before
 * @dev responding to the request (however this is not enforced in the contract
 * @dev and so remains effective only in the case of unmodified oracle software).
 */
abstract contract VRFConsumerBaseV2 {
  error OnlyCoordinatorCanFulfill(address have, address want);
  // solhint-disable-next-line chainlink-solidity/prefix-immutable-variables-with-i
  address private immutable vrfCoordinator;

  /**
   * @param _vrfCoordinator address of VRFCoordinator contract
   */
  constructor(address _vrfCoordinator) {
    vrfCoordinator = _vrfCoordinator;
  }

  /**
   * @notice fulfillRandomness handles the VRF response. Your contract must
   * @notice implement it. See "SECURITY CONSIDERATIONS" above for important
   * @notice principles to keep in mind when implementing your fulfillRandomness
   * @notice method.
   *
   * @dev VRFConsumerBaseV2 expects its subcontracts to have a method with this
   * @dev signature, and will call it once it has verified the proof
   * @dev associated with the randomness. (It is triggered via a call to
   * @dev rawFulfillRandomness, below.)
   *
   * @param requestId The Id initially returned by requestRandomness
   * @param randomWords the VRF output expanded to the requested number of words
   */
  // solhint-disable-next-line chainlink-solidity/prefix-internal-functions-with-underscore
  function fulfillRandomWords(uint256 requestId, uint256[] memory randomWords) internal virtual;

  // rawFulfillRandomness is called by VRFCoordinator when it receives a valid VRF
  // proof. rawFulfillRandomness then calls fulfillRandomness, after validating
  // the origin of the call
  function rawFulfillRandomWords(uint256 requestId, uint256[] memory randomWords) external {
    if (msg.sender != vrfCoordinator) {
      revert OnlyCoordinatorCanFulfill(msg.sender, vrfCoordinator);
    }
    fulfillRandomWords(requestId, randomWords);
  }
}

interface VRFCoordinatorV2Interface {
  /**
   * @notice Get configuration relevant for making requests
   * @return minimumRequestConfirmations global min for request confirmations
   * @return maxGasLimit global max for request gas limit
   * @return s_provingKeyHashes list of registered key hashes
   */
  function getRequestConfig() external view returns (uint16, uint32, bytes32[] memory);

  /**
   * @notice Request a set of random words.
   * @param keyHash - Corresponds to a particular oracle job which uses
   * that key for generating the VRF proof. Different keyHash's have different gas price
   * ceilings, so you can select a specific one to bound your maximum per request cost.
   * @param subId  - The ID of the VRF subscription. Must be funded
   * with the minimum subscription balance required for the selected keyHash.
   * @param minimumRequestConfirmations - How many blocks you'd like the
   * oracle to wait before responding to the request. See SECURITY CONSIDERATIONS
   * for why you may want to request more. The acceptable range is
   * [minimumRequestBlockConfirmations, 200].
   * @param callbackGasLimit - How much gas you'd like to receive in your
   * fulfillRandomWords callback. Note that gasleft() inside fulfillRandomWords
   * may be slightly less than this amount because of gas used calling the function
   * (argument decoding etc.), so you may need to request slightly more than you expect
   * to have inside fulfillRandomWords. The acceptable range is
   * [0, maxGasLimit]
   * @param numWords - The number of uint256 random values you'd like to receive
   * in your fulfillRandomWords callback. Note these numbers are expanded in a
   * secure way by the VRFCoordinator from a single random value supplied by the oracle.
   * @return requestId - A unique identifier of the request. Can be used to match
   * a request to a response in fulfillRandomWords.
   */
  function requestRandomWords(
    bytes32 keyHash,
    uint64 subId,
    uint16 minimumRequestConfirmations,
    uint32 callbackGasLimit,
    uint32 numWords
  ) external returns (uint256 requestId);

  /**
   * @notice Create a VRF subscription.
   * @return subId - A unique subscription id.
   * @dev You can manage the consumer set dynamically with addConsumer/removeConsumer.
   * @dev Note to fund the subscription, use transferAndCall. For example
   * @dev  LINKTOKEN.transferAndCall(
   * @dev    address(COORDINATOR),
   * @dev    amount,
   * @dev    abi.encode(subId));
   */
  function createSubscription() external returns (uint64 subId);

  /**
   * @notice Get a VRF subscription.
   * @param subId - ID of the subscription
   * @return balance - LINK balance of the subscription in juels.
   * @return reqCount - number of requests for this subscription, determines fee tier.
   * @return owner - owner of the subscription.
   * @return consumers - list of consumer address which are able to use this subscription.
   */
  function getSubscription(
    uint64 subId
  ) external view returns (uint96 balance, uint64 reqCount, address owner, address[] memory consumers);

  /**
   * @notice Request subscription owner transfer.
   * @param subId - ID of the subscription
   * @param newOwner - proposed new owner of the subscription
   */
  function requestSubscriptionOwnerTransfer(uint64 subId, address newOwner) external;

  /**
   * @notice Request subscription owner transfer.
   * @param subId - ID of the subscription
   * @dev will revert if original owner of subId has
   * not requested that msg.sender become the new owner.
   */
  function acceptSubscriptionOwnerTransfer(uint64 subId) external;

  /**
   * @notice Add a consumer to a VRF subscription.
   * @param subId - ID of the subscription
   * @param consumer - New consumer which can use the subscription
   */
  function addConsumer(uint64 subId, address consumer) external;

  /**
   * @notice Remove a consumer from a VRF subscription.
   * @param subId - ID of the subscription
   * @param consumer - Consumer to remove from the subscription
   */
  function removeConsumer(uint64 subId, address consumer) external;

  /**
   * @notice Cancel a subscription
   * @param subId - ID of the subscription
   * @param to - Where to send the remaining LINK to
   */
  function cancelSubscription(uint64 subId, address to) external;

  /*
   * @notice Check to see if there exists a request commitment consumers
   * for all consumers and keyhashes for a given sub.
   * @param subId - ID of the subscription
   * @return true if there exists at least one unfulfilled request for the subscription, false
   * otherwise.
   */
  function pendingRequestExists(uint64 subId) external view returns (bool);
}

/**
 * @dev Interface of the ERC-20 standard as defined in the ERC.
 */
interface IERC20 {
    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);

    /**
     * @dev Returns the value of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the value of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves a `value` amount of tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 value) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets a `value` amount of tokens as the allowance of `spender` over the
     * caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 value) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to` using the
     * allowance mechanism. `value` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 value) external returns (bool);
}

interface IJoePair {
    function token0() external view returns (address);
    function token1() external view returns (address);
    function getReserves() external view returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);
}

interface IKovinJeckpot {
    function getPlayersForGame(uint256 gameId) external view returns (address[] memory);
    function getPlayersForEpoch(uint256 epochId) external view returns (address[] memory);
    function getPlayerInfos(address player) external view returns (structs.PlayerInfos memory);
    function getVolumeForPlayer(address player) external view returns (uint256);
    function getPointsForPlayer(address player) external view returns (uint256);
    function getWinAmountForPlayer(address player) external view returns (uint256);
    function getPlayerInGame(uint256 gameId, address player) external view returns (bool);
    function getPlayerInEpoch(uint256 epochId, address player) external view returns (bool);
    function game() external view returns (uint256);
    function epoch() external view returns (uint256);
    function pvp() external view returns (uint256);
}

library events {

    event GameStarted(uint256 indexed gameId, uint256 indexed startTime, uint256 indexed gameDuration);
    event PVPStarted(uint256 indexed PVPId, address indexed userA, address indexed userB, uint256 amount);
    event GameEnded(uint256 indexed gameId, address indexed winnerWallet, string winnerUserName, uint256 indexed amountWon);
    event PVPEnded(uint256 indexed PVPId, address indexed winnerWallet, string winnerUserName, uint256 indexed amountWon);
    event PlayerBet(uint256 indexed gameId, address indexed playerWallet, uint256 indexed amountBet);
    event EpochStarted(uint256 indexed epochId, structs.GamePoints indexed epPoint);
}

library structs {

    struct GameStats {
        uint256 startTime;
        uint256 gameDuration;
        uint256 totWag;
        KovinJeckpot.GameState state;
        address[] players;
        address winner;
        string winnerUsername;
        uint256 requestId;
        uint256 random;
    }

    struct PVPStats {
        address walA;
        address walB;
        string nameA;
        string nameB;
        uint256 wag;
        uint256 totWag;
        KovinJeckpot.GameState state;
        uint256 startTime;
        address winner;
        string winnerUsername;
        uint256 requestId;
        uint256 random;
    }

    struct GamePoints {
        uint256 winPoints;
        uint256[] amountHold;
        uint256[] holderBonus;
        uint256 amountVolumePerPoint;
        bool editable;
    }

    struct PlayerInfos { 
        uint256 lastGame;
        uint256 lastTimePVP;
        uint256 amountPlayed;
        uint256 points;
        uint256 volume;
        uint256 lastHoldAmount;
        uint256 totalWin;
        string username;
    }
}

contract KovinJeckpotData is Ownable {

    enum LeaderboardType { 
        Points,
        Volume,
        WinAmount
    }
    address public kovinJeckpotAddr;
    IKovinJeckpot public kovinJeckpot;
    
    constructor(address _kovinJeckpot) {
        kovinJeckpot = IKovinJeckpot(_kovinJeckpot);
        kovinJeckpotAddr = _kovinJeckpot;
    }

    address public KOVIN = 0x694200a68B18232916353250955bE220e88c5cBB;
    address private _factoryTJ = 0x9Ad6C38BE94206cA50bb0d90783181662f0Cfa10;
    address private _WAVAXUSDC = 0xf4003F4efBE8691B60249E6afbD307aBE7758adb;
    address private _KOVINWAVAX = 0x96BbDb6811d47B1199D444D507De623a905D63f3;

    function getPriceAndBalance(address user) public view returns (uint256 balanceAVAX, uint256 balanceKOVIN, uint256 allowance, uint112 reserveAVAXUSDC, uint112 reserveUSDC, uint112 reserveKOVIN, uint112 reserveAVAXKOVIN, uint256 points, uint256 volume) {
        balanceAVAX = user.balance;
        balanceKOVIN = IERC20(KOVIN).balanceOf(user);
        allowance = IERC20(KOVIN).allowance(user, kovinJeckpotAddr);
        (uint112 reserve0, uint112 reserve1,) = IJoePair(_WAVAXUSDC).getReserves();
        if(reserve0 > reserve1){
            reserveAVAXUSDC = reserve0;
            reserveUSDC = reserve1;
        }
        else{
            reserveAVAXUSDC = reserve1;
            reserveUSDC = reserve0;
        }
        (reserve0, reserve1,) = IJoePair(_KOVINWAVAX).getReserves();
        if(reserve0 > reserve1){
            reserveKOVIN = reserve0;
            reserveAVAXKOVIN = reserve1;
        }
        else{
            reserveKOVIN = reserve1;
            reserveAVAXKOVIN = reserve0;
        }
        points = kovinJeckpot.getPointsForPlayer(user);
        volume = kovinJeckpot.getVolumeForPlayer(user);
    
    }

    function getCamembert(address player) public view returns (uint256[] memory) {
        uint256 game = kovinJeckpot.game();
        address[] memory players = kovinJeckpot.getPlayersForGame(game);
        uint256 finalSize = kovinJeckpot.getPlayerInGame(game, player) ? players.length : players.length + 1;
        uint256[] memory amounts = new uint256[](finalSize);
        structs.PlayerInfos memory infos = kovinJeckpot.getPlayerInfos(player);
        amounts[0] = infos.lastGame == game ? infos.amountPlayed : 0;
        
        uint256 index = 1;

        for (uint256 i = 0; i < players.length; i++) {
            if(players[i] != player) {
                infos = kovinJeckpot.getPlayerInfos(players[i]);
                amounts[index] = infos.amountPlayed;
                index++;
            }
        }

        return amounts;
    }

    function getLeaderBoard(uint256 topN, LeaderboardType leaderboardType) public view returns (address[] memory, uint256[] memory, string[] memory) {
        uint256 epoch = kovinJeckpot.epoch();
        address[] memory players = kovinJeckpot.getPlayersForEpoch(epoch);
        if (topN > players.length) {
            topN = players.length;
        }
        address[] memory leaderBoard = new address[](topN);
        uint256[] memory leaderMetrics = new uint256[](topN);
        string[] memory leaderUsernames = new string[](topN);

        uint256[] memory metrics = new uint256[](players.length);

        for (uint256 i = 0; i < players.length; i++) {
            structs.PlayerInfos memory infos = kovinJeckpot.getPlayerInfos(players[i]);
            if (leaderboardType == LeaderboardType.Points) {
                metrics[i] = infos.points;
            } else if (leaderboardType == LeaderboardType.Volume) {
                metrics[i] = infos.volume;
            } else if (leaderboardType == LeaderboardType.WinAmount) {
                metrics[i] = infos.totalWin;
            }
        }

        for (uint256 i = 0; i < topN; i++) {
            uint256 maxIndex = i;
            for (uint256 j = i + 1; j < players.length; j++) {
                if (metrics[j] > metrics[maxIndex]) {
                    maxIndex = j;
                }
         }

            if (maxIndex != i) {
                (metrics[i], metrics[maxIndex]) = (metrics[maxIndex], metrics[i]);
                (players[i], players[maxIndex]) = (players[maxIndex], players[i]);
            }
            structs.PlayerInfos memory infosB = kovinJeckpot.getPlayerInfos(players[i]);
            leaderBoard[i] = players[i];
            leaderMetrics[i] = metrics[i];
            leaderUsernames[i] = infosB.username;
        }

        return (leaderBoard, leaderMetrics, leaderUsernames);
    }

    function changeJeckpotContract(address _newSC) public onlyOwner {
        kovinJeckpot = IKovinJeckpot(_newSC);
        kovinJeckpotAddr = _newSC;
    }

}

contract KovinJeckpot is Ownable, VRFConsumerBaseV2 {

    uint64 s_subscriptionId;
    VRFCoordinatorV2Interface COORDINATOR;
    address vrfCoordinator = 0xd5D517aBE5cF79B7e95eC98dB0f0277788aFF634;
    bytes32 s_keyHash = 0x89630569c9567e43c4fe7b1633258df9f2531b62f2352fa721cf3162ee4ecb46;
    //address vrfCoordinator = 0x2eD832Ba664535e5886b75D64C46EB9a228C2610; //TESTNET
    //bytes32 s_keyHash = 0x354d2f95da55398f44b7cff77da56283d9c6c829a4bdf1bbcaf2ad6a4d081f61; //TESTNET
    uint32 callbackGasLimit = 2500000;
    uint16 requestConfirmations = 2;
    uint32 numWords = 1;
    
    mapping(address => structs.PlayerInfos) private plInfo;
    mapping(uint256 => structs.GameStats) public gmStat;
    mapping(uint256 => structs.PVPStats) public pvStat;
    mapping(uint256 => address[]) public epInfo;
    mapping(uint256 => structs.GamePoints) public epPoint;
	mapping(uint256 => VRFRequestType) private _vrfRequestType;
    mapping(uint256 => uint256) private _vrfRequestPvp;
    mapping(uint => mapping(address => bool)) public isPlayerInEpoch;
    mapping(uint => mapping(address => bool)) public isPlayerInGame;
    
    mapping(uint => mapping(address => uint256)) public dailyWagers;
    mapping(uint => mapping(address => uint256)) public weeklyWagers;
    mapping(uint => mapping(address => uint256)) public epochWagers;

    address public KOVIN = 0x694200a68B18232916353250955bE220e88c5cBB;
    address private _factoryTJ = 0x9Ad6C38BE94206cA50bb0d90783181662f0Cfa10;
    address private _WAVAXUSDC = 0xf4003F4efBE8691B60249E6afbD307aBE7758adb;
    address private _KOVINWAVAX = 0x96BbDb6811d47B1199D444D507De623a905D63f3;
    uint256 public game;
    uint256 public epoch;
    uint256 public pvp;
    uint256 public pvpReservedAmount;
    uint256 public gameDuration = 180;
    uint256 public burnFee = 0;
    address public burnAddress = 0x000000000000000000000000000000000000dEaD;
    address public marketingAddress;
    uint256 public marketingFee = 5;
    uint256 public taxTx = 0.003*10**18;
    uint256 public minBet = 100000*10**18;
    uint256 public maxBet = 1000000000*10**18;
    uint256 private POINTS_PRECISION = 1000;

    enum LeaderboardType { 
        Points,
        Volume,
        WinAmount
    }

    enum GameState {
        IDLE,
        STARTED,
        VRF_REQUESTED,
        FINISHED
    }
    
    enum VRFRequestType {
        Game,
        PVP
    }


    constructor(uint64 subscriptionId) VRFConsumerBaseV2(vrfCoordinator) {
        COORDINATOR = VRFCoordinatorV2Interface(vrfCoordinator);
        marketingAddress = msg.sender;
        s_subscriptionId = subscriptionId;
        game++;
        gmStat[game].state = GameState.STARTED;
    }

    function getDailyWager(address user) public view returns (uint256) {
        return dailyWagers[returnDay(block.timestamp)][user];
    }

    function getWeeklyWager(address user) public view returns (uint256) {
        return weeklyWagers[returnWeek(block.timestamp)][user];
    }
    
    function getEpochWager(address user) public view returns (uint256) {
        return epochWagers[epoch][user];
    }
    
    function returnDay(uint256 timestamp) public pure returns (uint256 day) {
        return timestamp/86400;
    }

    function returnWeek(uint256 timestamp) public pure returns (uint256 week) {
        return (timestamp-86400*3)/(86400*7);
    }

    function recordWagers(address user, uint256 amount) internal {
        uint256 timestampWeekly = returnWeek(block.timestamp);
        uint256 timestampDaily = returnDay(block.timestamp);
        dailyWagers[timestampDaily][user] += amount;
        weeklyWagers[timestampWeekly][user] += amount;
        epochWagers[epoch][user] += amount;
    }

    function getPlayersForGame(uint256 gameId) public view returns (address[] memory) {
        return gmStat[gameId].players;
    }

    function getPlayersForEpoch(uint256 epochId) public view returns (address[] memory) {
        return epInfo[epochId];
    }

    function getPlayerInGame(uint256 gameId, address player) public view returns (bool) {
        return isPlayerInGame[gameId][player];
    }

    function getPlayerInEpoch(uint256 epochId, address player) public view returns (bool) {
        return isPlayerInEpoch[epochId][player];
    }
    
    function getPlayerInfos(address player) public view returns (structs.PlayerInfos memory) {
        return plInfo[player];
    }

    function getVolumeForPlayer(address player) public view returns (uint256) {
        structs.PlayerInfos memory infos = plInfo[player];
        return infos.volume;
    }

    function getPointsForPlayer(address player) public view returns (uint256) {
        structs.PlayerInfos memory infos = plInfo[player];
        return infos.points;
    }

    function getWinAmountForPlayer(address player) public view returns (uint256) {
        structs.PlayerInfos memory infos = plInfo[player];
        return infos.totalWin;
    }

    function getPlayersForLastGame() public view returns (address[] memory, uint256[] memory, string[] memory) {
        address[] memory players = gmStat[game].players;

        uint256 topN = players.length;
        
        address[] memory playersWallets = new address[](topN);
        uint256[] memory playersAmounts = new uint256[](topN);
        string[] memory playersUsernames = new string[](topN);

        uint256[] memory amounts = new uint256[](players.length);

        for (uint256 i = 0; i < players.length; i++) {
            amounts[i] = plInfo[players[i]].amountPlayed;
        }

        for (uint256 i = 0; i < topN; i++) {
            uint256 maxIndex = i;
            for (uint256 j = i + 1; j < players.length; j++) {
                if (amounts[j] > amounts[maxIndex]) {
                    maxIndex = j;
                }
            }

            if (maxIndex != i) {
                (amounts[i], amounts[maxIndex]) = (amounts[maxIndex], amounts[i]);
                (players[i], players[maxIndex]) = (players[maxIndex], players[i]);
            }

            playersWallets[i] = players[i];
            playersAmounts[i] = amounts[i];
            playersUsernames[i] = plInfo[players[i]].username;
        }

        return (playersWallets, playersAmounts, playersUsernames);
    }

    function checkAllowanceAndBalance(address _player, uint256 _amount) internal view {
        require(
            IERC20(KOVIN).allowance(_player, address(this)) >= _amount,
            "APPROVE more"
        );
        require(
            IERC20(KOVIN).balanceOf(_player) >= _amount,
            "Not enough KOVIN"
        );
    }

    function checkEOA() internal view {
        require(
            msg.sender == tx.origin,
            "onlyEOA"
        );
    }

    function getGame(address user) public view returns (uint256 currentGame, uint256 lastGame, structs.GameStats memory lastGameStats, structs.GameStats memory currentGameStats, address[] memory playersWallets, uint256[] memory playersAmounts, string[] memory playersUsernames, structs.PlayerInfos memory playerInfos) {
        currentGame = game;
	    lastGame = game-1;
        lastGameStats = gmStat[lastGame];
	    currentGameStats = gmStat[currentGame];
        (playersWallets, playersAmounts, playersUsernames) = getPlayersForLastGame();
        playerInfos = plInfo[user];
    }

    function getPointsForWager(uint256 wag, uint256 balanceUser) public view returns (uint256 points) {

        uint256 pointsForVolume = (POINTS_PRECISION * wag)/epPoint[epoch].amountVolumePerPoint;
        uint256 userBonus = 0;
        for(uint256 i=0; i<epPoint[epoch].amountHold.length; i++){
            if(balanceUser >= epPoint[epoch].amountHold[i]) {
                userBonus = epPoint[epoch].holderBonus[i];
            } else {
                break;
            }
        }

        points = pointsForVolume + (pointsForVolume * userBonus)/POINTS_PRECISION;

    }

    function getWinner(uint256 winAmount) internal view returns(address winner, string memory winnerUsername){
        uint256 totalAmount = 0;
        for(uint256 i=0; i<gmStat[game].players.length; i++){
            uint256 amountWageredByPlayer = plInfo[gmStat[game].players[i]].amountPlayed;
            totalAmount += amountWageredByPlayer;
            if(winAmount <= totalAmount){
                return (gmStat[game].players[i], plInfo[gmStat[game].players[i]].username);
            }
        }
    }

    function checkPlayerInEpoch(address _player) internal {
        if (!isPlayerInEpoch[epoch][_player]) {
            isPlayerInEpoch[epoch][_player] = true;
            epInfo[epoch].push(_player);
        }
    }

    function fulfillRandomWords(uint256 requestId, uint256[] memory randomWords) internal override {
        if(_vrfRequestType[requestId] == VRFRequestType.Game){
			require(gmStat[game].state == GameState.VRF_REQUESTED && gmStat[game].requestId == requestId, "GAME VRF error");
			uint256 totWag = gmStat[game].totWag;
		
			uint256 winAmount = (randomWords[0] % totWag) + 1;
			gmStat[game].random = winAmount;
			(address winner, string memory winnerUsername) = getWinner(winAmount);
			gmStat[game].winner = winner;
			gmStat[game].winnerUsername = winnerUsername;
			plInfo[winner].points += epPoint[epoch].winPoints;
			plInfo[winner].totalWin += totWag;
			gmStat[game].state = GameState.FINISHED;
			IERC20(KOVIN).transfer(winner, totWag);

			emit events.GameEnded(game, winner, winnerUsername, totWag);
			game++;
			gmStat[game].state = GameState.STARTED;
        }
        else if(_vrfRequestType[requestId] == VRFRequestType.PVP) {
        	uint256 PVPId = _vrfRequestPvp[requestId];
            require(pvStat[PVPId].state == GameState.VRF_REQUESTED && pvStat[PVPId].requestId == requestId, "PVP VRF error");
            uint256 totWag = pvStat[PVPId].totWag;
            uint256 winAmount = (randomWords[0] % 2);
            pvStat[PVPId].random = winAmount;
            if(winAmount == 0){
                pvStat[PVPId].winner = pvStat[PVPId].walA;
                pvStat[PVPId].winnerUsername = pvStat[PVPId].nameA;
            }
            else{
                pvStat[PVPId].winner = pvStat[PVPId].walB;
                pvStat[PVPId].winnerUsername = pvStat[PVPId].nameB;
            }
            pvStat[PVPId].state = GameState.FINISHED;
            plInfo[pvStat[PVPId].winner].points += epPoint[epoch].winPoints;
            plInfo[pvStat[PVPId].winner].totalWin += totWag;
            pvpReservedAmount -= totWag;
            IERC20(KOVIN).transfer(pvStat[PVPId].winner, totWag);
            emit events.PVPEnded(PVPId, pvStat[PVPId].winner, pvStat[PVPId].winnerUsername, totWag);
        }
        
    }

    function enterGame(uint256 amount, string memory userName) public payable {
        checkEOA();
        require(msg.value == taxTx, "TAX error");
        //Record startTimestamp and gameDuration when 2nd player enters game
        if(gmStat[game].players.length == 1){
            gmStat[game].startTime = block.timestamp;
            gmStat[game].gameDuration = gameDuration;
            emit events.GameStarted(game, block.timestamp, gameDuration);
        }

        uint256 amountCommitted = amount*10**18;
        require(amountCommitted >= minBet, "BET <");
        require(amountCommitted <= maxBet, "BET >");
        require(gmStat[game].state == GameState.STARTED, "GAME not started");
        require(block.timestamp <= gmStat[game].startTime + gameDuration || gmStat[game].startTime == 0, "GAME ended");
        
        uint256 holdAmount = IERC20(KOVIN).balanceOf(msg.sender);
        checkAllowanceAndBalance(msg.sender, amountCommitted);
        
        IERC20(KOVIN).transferFrom(msg.sender, address(this), amountCommitted);
        uint256 burnAmount = (amountCommitted*burnFee)/100;
        uint256 marketingAmount = (amountCommitted*marketingFee)/100;
        uint256 gameAmount = amountCommitted-burnAmount-marketingAmount;
        IERC20(KOVIN).transfer(burnAddress, burnAmount);
        IERC20(KOVIN).transfer(marketingAddress, marketingAmount);
        //UPDATE player Infos
        if(plInfo[msg.sender].lastGame == game){
            plInfo[msg.sender].amountPlayed += gameAmount;
        }
        else{
            plInfo[msg.sender].amountPlayed = 0;
            plInfo[msg.sender].amountPlayed += gameAmount;
        }
        plInfo[msg.sender].volume += amountCommitted;
        recordWagers(msg.sender, amountCommitted);
        plInfo[msg.sender].points += getPointsForWager(amountCommitted, holdAmount);
        plInfo[msg.sender].lastGame = game;
        plInfo[msg.sender].username = userName;
        //UPDATE game Infos
        gmStat[game].totWag += gameAmount;
        if(!isPlayerInGame[game][msg.sender]){
            isPlayerInGame[game][msg.sender] = true;
            gmStat[game].players.push(msg.sender);
        }
        checkPlayerInEpoch(msg.sender);
        emit events.PlayerBet(game, msg.sender, gameAmount);

    }

    function finishGame() public payable returns (uint256 requestId) {
        checkEOA();
        require(msg.value == taxTx, "TAX error");
        require(gmStat[game].state != GameState.VRF_REQUESTED, "VRF already");
        require(gmStat[game].state == GameState.STARTED && gmStat[game].startTime != 0 && block.timestamp > gmStat[game].startTime + gameDuration, "GAME not ended");
        
        if(gmStat[game].players.length > 0){
        
        // Will revert if subscription is not set and funded.
            requestId = COORDINATOR.requestRandomWords(
                s_keyHash,
                s_subscriptionId,
                requestConfirmations,
                callbackGasLimit,
                numWords
            );

            gmStat[game].requestId = requestId;
            gmStat[game].state = GameState.VRF_REQUESTED;
            _vrfRequestType[requestId] = VRFRequestType.Game;
        }
        else{
            gmStat[game].state = GameState.FINISHED;
        }
        
    }
    
    function enterPVP(address userA, address userB, string memory nameA, string memory nameB, uint256 wag) public payable returns (uint256 PVPId) {
        checkEOA();
        uint256 amountCommitted = wag*10**18;
        //require(block.timestamp >= plInfo[msg.sender].lastTimePVP + gameDuration, "Calm down");
        require(msg.sender == userA, "PVP not user A");
        require(userA != userB, "PVP not yourself");
        require(amountCommitted >= minBet, "BET <");
        require(amountCommitted <= maxBet, "BET >");
        checkAllowanceAndBalance(msg.sender, amountCommitted);
        require(msg.value == (taxTx*150)/100, "TAX error");
        IERC20(KOVIN).transferFrom(msg.sender, address(this), amountCommitted);
        pvpReservedAmount += amountCommitted;
        uint256 burnAmount = (amountCommitted*burnFee)/100;
        uint256 marketingAmount = (amountCommitted*marketingFee)/100;
        uint256 gameAmount = amountCommitted-burnAmount-marketingAmount;
        uint256 holdAmount = IERC20(KOVIN).balanceOf(msg.sender);
        //UPDATE player Infos
        plInfo[msg.sender].username = nameA;
        plInfo[msg.sender].lastTimePVP = block.timestamp;
        plInfo[msg.sender].lastHoldAmount = holdAmount;
        //UPDATE game Infos
        pvp++;
        pvStat[pvp].walA = userA;
        pvStat[pvp].walB = userB;
        pvStat[pvp].nameA = nameA;
        pvStat[pvp].nameB = nameB;
        pvStat[pvp].wag = amountCommitted;
        pvStat[pvp].totWag = gameAmount;
        pvStat[pvp].state = GameState.STARTED;
        pvStat[pvp].startTime = block.timestamp;
        emit events.PVPStarted(pvp, msg.sender, userB, gameAmount);
        return pvp;
    }
    
    function acceptPVP(uint256 PVPId) public payable returns (uint256 requestId){
        checkEOA();
        require(pvStat[PVPId].state == GameState.STARTED, "PVP state");
        require(block.timestamp <= pvStat[PVPId].startTime + gameDuration, "Too late");
        require(msg.sender == pvStat[PVPId].walB, "PVP not user B");
        checkAllowanceAndBalance(msg.sender, pvStat[PVPId].wag);
        require(msg.value == (taxTx*150)/100, "TAX error");
        IERC20(KOVIN).transferFrom(msg.sender, address(this), pvStat[PVPId].wag);
        uint256 amountCommitted = pvStat[PVPId].wag;
        uint256 holdAmount = IERC20(KOVIN).balanceOf(msg.sender);
        //UPDATE player Infos
        plInfo[msg.sender].username = pvStat[PVPId].nameB;
        pvpReservedAmount -= amountCommitted;
        uint256 burnAmount = 2*(amountCommitted*burnFee)/100;
        uint256 marketingAmount = 2*(amountCommitted*marketingFee)/100;
        uint256 gameAmount = 2*amountCommitted-burnAmount-marketingAmount;
        plInfo[pvStat[PVPId].walA].volume += amountCommitted;
        plInfo[pvStat[PVPId].walB].volume += amountCommitted;
        recordWagers(pvStat[PVPId].walA, amountCommitted);
        recordWagers(pvStat[PVPId].walB, amountCommitted);
        plInfo[pvStat[PVPId].walA].points += getPointsForWager(amountCommitted, plInfo[pvStat[PVPId].walA].lastHoldAmount);
        plInfo[pvStat[PVPId].walB].points += getPointsForWager(amountCommitted, holdAmount);
        checkPlayerInEpoch(pvStat[PVPId].walA);
        checkPlayerInEpoch(pvStat[PVPId].walB);
        IERC20(KOVIN).transfer(burnAddress, burnAmount);
        IERC20(KOVIN).transfer(marketingAddress, marketingAmount);
        //UPDATE game Infos
        pvStat[PVPId].totWag = gameAmount;
        pvpReservedAmount += gameAmount;
        emit events.PlayerBet(PVPId, pvStat[PVPId].walA, gameAmount/2);
        emit events.PlayerBet(PVPId, pvStat[PVPId].walB, gameAmount/2);
        //VRF
        requestId = COORDINATOR.requestRandomWords(
                s_keyHash,
                s_subscriptionId,
                requestConfirmations,
                callbackGasLimit,
                numWords
            );
        pvStat[PVPId].state = GameState.VRF_REQUESTED;
        pvStat[PVPId].requestId = requestId;
        _vrfRequestType[requestId] = VRFRequestType.PVP;
        _vrfRequestPvp[requestId] = PVPId;
    }

    function cancellationPVP(uint256 PVPId) internal {
        checkEOA();
        require(pvStat[PVPId].state == GameState.STARTED, "PVP state");
        IERC20(KOVIN).transfer(pvStat[PVPId].walA, pvStat[PVPId].wag);
        pvpReservedAmount -= pvStat[PVPId].wag;
        pvStat[PVPId].wag = 0;
        pvStat[PVPId].totWag = 0;
        pvStat[PVPId].state = GameState.FINISHED;
    }

    function declinePVP(uint256 PVPId) public {
        require(block.timestamp <= pvStat[PVPId].startTime + gameDuration, "Too late");
        require(msg.sender == pvStat[PVPId].walB, "PVP not user B");
        cancellationPVP(PVPId);
    }

    function cancelPVP(uint256 PVPId) public {
        require(block.timestamp > pvStat[PVPId].startTime + gameDuration, "PVP cancel early");
        cancellationPVP(PVPId);
    }

    function cancelBatchPVP(uint256[] memory PVPIds) public onlyOwner{
        for(uint256 i=0; i<PVPIds.length; i++){
            cancelPVP(PVPIds[i]);
        }
    }

    function startEpoch(uint256 _winPoints, uint256[] memory _amountHold, uint256[] memory _holderBonus, uint256 _amountVolumePerPoint, bool _editable) public onlyOwner {

        address[] memory players = epInfo[epoch];
        for (uint256 i = 0; i < players.length; i++) {
            plInfo[players[i]].points = 0;
            plInfo[players[i]].volume = 0;
            plInfo[players[i]].totalWin = 0;
        }
        epoch++;
        epPoint[epoch].winPoints = _winPoints;
        epPoint[epoch].amountHold = _amountHold;
        epPoint[epoch].holderBonus = _holderBonus;
        epPoint[epoch].amountVolumePerPoint = _amountVolumePerPoint;
        epPoint[epoch].editable = _editable;
        
        emit events.EpochStarted(epoch, epPoint[epoch]);
    }

    function updateLeaderboard(address[] memory players, string[] memory _usernames, uint256[] memory _point, uint256[] memory _volume, uint256[] memory _totalWin, bool _editable) public onlyOwner {
        require(epPoint[epoch].editable == true);
        for(uint256 i=0; i<players.length; i++){
            plInfo[players[i]].points = _point[i];
            plInfo[players[i]].volume = _volume[i];
            plInfo[players[i]].totalWin = _totalWin[i];
            plInfo[players[i]].username = _usernames[i];
            epInfo[epoch].push(players[i]);
            isPlayerInEpoch[epoch][players[i]] = true;
        }
        epPoint[epoch].editable = _editable;
    }

    function updateLeaderboardFromSC(address oldSC, uint256 epochID, address[] memory players, bool _editable) public onlyOwner {
        require(epPoint[epoch].editable == true);
        if(players.length == 0){
            players = IKovinJeckpot(oldSC).getPlayersForEpoch(epochID);
        }
        for(uint256 i=0; i<players.length; i++){
            structs.PlayerInfos memory infos = IKovinJeckpot(oldSC).getPlayerInfos(players[i]);
            plInfo[players[i]].points = infos.points;
            plInfo[players[i]].volume = infos.volume;
            plInfo[players[i]].totalWin = infos.totalWin;
            plInfo[players[i]].username = infos.username;
            epInfo[epoch].push(players[i]);
            isPlayerInEpoch[epoch][players[i]] = true;
        }
        epPoint[epoch].editable = _editable;
    }

    function changeTaxes(uint256 _newBurnFee, uint256 _newMarketingFee, uint256 _newTaxTx) public onlyOwner {
        burnFee = _newBurnFee;
        marketingFee = _newMarketingFee;
        taxTx = _newTaxTx;
    }

    function changeDuration(uint256 _newGameDuration) public onlyOwner {
        gameDuration = _newGameDuration;
    }

    function changeBet(uint256 _newMinBet, uint256 _newMaxBet) public onlyOwner {
        minBet = _newMinBet;
        maxBet = _newMaxBet;
    }

    function withdrawAVAX() public onlyOwner() {
        payable(msg.sender).transfer(address(this).balance);
    }
    
    function withdrawToken(address token) public onlyOwner {
        if(token == KOVIN){
            IERC20(token).transfer(msg.sender, IERC20(token).balanceOf(address(this))-gmStat[game].totWag-pvpReservedAmount);
        }
        else{
            IERC20(token).transfer(msg.sender, IERC20(token).balanceOf(address(this)));
        }
    }

}