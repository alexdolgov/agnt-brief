pragma solidity =0.8.10 ^0.8.0;

// src/core/dependencies/chainlink/AggregatorInterface.sol

// Chainlink Contracts v0.8

interface AggregatorInterface {
  function latestAnswer() external view returns (int256);

  function latestTimestamp() external view returns (uint256);

  function latestRound() external view returns (uint256);

  function getAnswer(uint256 roundId) external view returns (int256);

  function getTimestamp(uint256 roundId) external view returns (uint256);

  event AnswerUpdated(int256 indexed current, uint256 indexed roundId, uint256 updatedAt);

  event NewRound(uint256 indexed roundId, address indexed startedBy, uint256 startedAt);
}

// src/core/dependencies/openzeppelin/contracts/Context.sol

/*
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with GSN meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
  function _msgSender() internal view virtual returns (address payable) {
    return payable(msg.sender);
  }

  function _msgData() internal view virtual returns (bytes memory) {
    this; // silence state mutability warning without generating bytecode - see https://github.com/ethereum/solidity/issues/2691
    return msg.data;
  }
}

// src/core/dependencies/openzeppelin/contracts/Ownable.sol

/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * By default, the owner account will be the one that deploys the contract. This
 * can later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
contract Ownable is Context {
  address private _owner;

  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

  /**
   * @dev Initializes the contract setting the deployer as the initial owner.
   */
  constructor() {
    address msgSender = _msgSender();
    _owner = msgSender;
    emit OwnershipTransferred(address(0), msgSender);
  }

  /**
   * @dev Returns the address of the current owner.
   */
  function owner() public view returns (address) {
    return _owner;
  }

  /**
   * @dev Throws if called by any account other than the owner.
   */
  modifier onlyOwner() {
    require(_owner == _msgSender(), 'Ownable: caller is not the owner');
    _;
  }

  /**
   * @dev Leaves the contract without owner. It will not be possible to call
   * `onlyOwner` functions anymore. Can only be called by the current owner.
   *
   * NOTE: Renouncing ownership will leave the contract without an owner,
   * thereby removing any functionality that is only available to the owner.
   */
  function renounceOwnership() public virtual onlyOwner {
    emit OwnershipTransferred(_owner, address(0));
    _owner = address(0);
  }

  /**
   * @dev Transfers ownership of the contract to a new account (`newOwner`).
   * Can only be called by the current owner.
   */
  function transferOwnership(address newOwner) public virtual onlyOwner {
    require(newOwner != address(0), 'Ownable: new owner is the zero address');
    emit OwnershipTransferred(_owner, newOwner);
    _owner = newOwner;
  }
}

// src/core/misc/pumpBTCPriceAdaptor.sol

interface IRedStoneFeed {
    function latestAnswer() external view returns(int256);
    function latestRoundData() external view returns(
        uint80 roundId,  int256 answer, uint256 startAt, uint256 updatedAt, uint80 answerInRound
    );
    function getRoundData(uint80) external view returns(
        uint80 roundId,  int256 answer, uint256 startAt, uint256 updatedAt, uint80 answerInRound
    );
    function getPriceFeedAdapter() external view returns(address);
}   

interface ITWAPAggregator {
    function getTWAP() external view returns (uint256);
}

// make use of redstone pumpBTC/BTC price feed and chainlink BTC feed
contract pumpBTCPriceAdaptor is Ownable, AggregatorInterface {
    AggregatorInterface public constant btcOracle = AggregatorInterface(0xF4030086522a5bEEa4988F8cA5B36dbC97BeE88c);
    IRedStoneFeed public constant redstoneOracle = IRedStoneFeed(0x85C4F855Bc0609D2584405819EdAEa3aDAbfE97D);
    int256 public  maxFallbackThreshold = 0;
    address public twapAggregatorAddress;

    event SetTWAPAggregatorAddress(address twapAggregatorAddress);
    event SetMaxFallbackThreshold(int256 maxFallbackThreshold);

    constructor() public {
    }
    function aggregator() external view returns(address) {
        return redstoneOracle.getPriceFeedAdapter();
    }
    function setTWAPAggregatorAddress(address _twapAggregatorAddress) external onlyOwner {
        twapAggregatorAddress = _twapAggregatorAddress;
        emit SetTWAPAggregatorAddress(_twapAggregatorAddress);
    }

    function setMaxFallbackThreshold(int256 _maxFallbackThreshold) external onlyOwner {
        maxFallbackThreshold = _maxFallbackThreshold;
        emit SetMaxFallbackThreshold(_maxFallbackThreshold);
    }

    function BTC_TO_BASE() internal view returns(int256) {
        return btcOracle.latestAnswer();
    }
    /**
     * @dev Converts an unsigned uint256 into a signed int256.
     *
     * Requirements:
     *
     * - input must be less than or equal to maxInt256.
     */
    function toInt256(uint256 value) internal pure returns (int256) {
        require(value < 2**255, "SafeCast: value doesn't fit in an int256");
        return int256(value);
    }
    function getTWAP() public view returns (int256) {
        return toInt256(ITWAPAggregator(twapAggregatorAddress).getTWAP());
    }

    // need to gaurantee to return
    function latestAnswer() external view returns (int256) {
        int256 btcPrice = BTC_TO_BASE();
        int256 hardCap = btcPrice * 102 / 100;
        int256 twap;
         try redstoneOracle.latestAnswer() returns (int256 ratio) {
            if (_shouldFallbackToTwap(ratio)) {
                twap = getTWAP() * btcPrice / 1e8;
                return _hardcap(twap, hardCap);
            }
            return ratio * btcPrice / 1e8;
        } catch {
            twap = getTWAP() * btcPrice / 1e8;
            return _hardcap(twap, hardCap);
        }
    }

    function latestTimestamp() external view returns (uint256) {
            (,,,uint256 updatedAt,) = redstoneOracle.latestRoundData();
            return updatedAt;
    }

    function latestRound() external view returns (uint256) {
        (,,,,uint80 answeredInRound) = redstoneOracle.latestRoundData();
        return uint256(answeredInRound);
    }

    // return the redStone rate * latestETHPrice
    function getAnswer(uint256 roundId) external view returns (int256) {
        (,int256 answer,,,) = redstoneOracle.getRoundData(uint80(roundId));
        return answer;
    }

    function getTimestamp(uint256 roundId) external view returns (uint256) {
        (,,,uint256 updatedAt,) = redstoneOracle.getRoundData(uint80(roundId));
        return updatedAt;
    }

    function _shouldFallbackToTwap(int256 ratio) internal view returns(bool) {
        int256 threshold;
        if (maxFallbackThreshold == 0) {
            // pumpBTC should have less than 2% premium with its smart contract conversion for a considerable future
            threshold = 1.02e8;
        } else {
            threshold = maxFallbackThreshold;
        }
        if (ratio > threshold) {
            return true;
        }
        return false;
    }

    function _hardcap(int256 price, int256 cap) internal view returns(int256 finalPrice) {
        if (price > cap) {
            return cap;
        }
        return price;
    }
}