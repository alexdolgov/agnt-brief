// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.21;


// OpenZeppelin Contracts v4.4.1 (utils/Context.sol)
/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
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
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        _checkOwner();
        _;
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if the sender is not the owner.
     */
    function _checkOwner() internal view virtual {
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby disabling any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        _transferOwnership(address(0));
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

contract RewardConfig is Ownable {
    struct RewardInfo {
        address rewardToken;
        uint256 epochStart;
        uint256 epochEnd;
        uint256 amount;
        uint256 decimal;
    }

    struct AggregatorData {
        address aggregator;
        RewardInfo[] rewardInfo;
    }

    address[] private _aggregators;
    // aggregator -> reward token array
    mapping(address => address[]) private _aggregatorToRewardTokens;
    // aggregator -> reward token -> reawrd info
    mapping(address => mapping(address => RewardInfo)) private _aggregatorToRewardInfos;

    event SetRewardInfo(
        address aggregator,
        address rewardToken,
        uint256 epochStart,
        uint256 epochEnd,
        uint256 amount,
        uint256 decimals
    );
    event RemoveAggregator(address aggregator);
    event RemoveRewardToken(address aggregator, address rewardToken);

    /**
     * @dev Set reward info to aggregator
     * - Caller is Admin
     * @param _aggregator The aggregator address.
     * @param _rewardToken The reward token address.
     * @param _rewardTokenDecimals The reward token decimals.
     * @param _epochStart The reward epoch start block number.
     * @param _epochEnd The reward epoch end block number.
     * @param _amount The reward token count amount.
     */
    function setRewardInfo(
        address _aggregator,
        address _rewardToken,
        uint256 _rewardTokenDecimals,
        uint256 _epochStart,
        uint256 _epochEnd,
        uint256 _amount
    ) external payable onlyOwner {
        uint256 count = _aggregators.length;
        bool isExist;

        // check and register aggregator
        for (uint256 i; i < count; ++i) {
            if (_aggregators[i] == _aggregator) {
                isExist = true;
                break;
            }
        }

        if (!isExist) {
            _aggregators.push(_aggregator);
        }

        // check and register reward token
        address[] memory aggregatorRewardTokens = _aggregatorToRewardTokens[_aggregator];
        count = aggregatorRewardTokens.length;
        isExist = false;

        for (uint256 i; i < count; ++i) {
            if (aggregatorRewardTokens[i] == _rewardToken) {
                isExist = true;
                break;
            }
        }

        if (!isExist) {
            _aggregatorToRewardTokens[_aggregator].push(_rewardToken);
        }

        // set reard info
        _aggregatorToRewardInfos[_aggregator][_rewardToken] = RewardInfo(
            _rewardToken,
            _epochStart,
            _epochEnd,
            _amount,
            _rewardTokenDecimals
        );

        emit SetRewardInfo(_aggregator, _rewardToken, _epochStart, _epochEnd, _amount, _rewardTokenDecimals);
    }

    /**
     * @dev Remove the aggregator reward info
     * - Caller is Admin
     * @param _aggregator The aggregator address.
     */
    function removeAggregator(address _aggregator) external payable onlyOwner {
        uint256 count = _aggregators.length;

        for (uint256 i; i < count; ++i) {
            if (_aggregators[i] == _aggregator) {
                if (i < count - 1) {
                    _aggregators[i] = _aggregators[count - 1];
                }
                _aggregators.pop();
                break;
            }
        }

        delete _aggregatorToRewardTokens[_aggregator];

        emit RemoveAggregator(_aggregator);
    }

    /**
     * @dev Remove the reward token from aggregator
     * - Caller is Admin
     * @param _aggregator The aggregator address.
     * @param _rewardToken The aggregator address.
     */
    function removeRewardToken(address _aggregator, address _rewardToken) external payable onlyOwner {
        uint256 count = _aggregatorToRewardTokens[_aggregator].length;

        for (uint256 i; i < count; ++i) {
            if (_aggregatorToRewardTokens[_aggregator][i] == _rewardToken) {
                if (i < count - 1) {
                    _aggregatorToRewardTokens[_aggregator][i] = _aggregatorToRewardTokens[_aggregator][count - 1];
                }
                _aggregatorToRewardTokens[_aggregator].pop();
                break;
            }
        }

        delete _aggregatorToRewardInfos[_aggregator][_rewardToken];

        emit RemoveRewardToken(_aggregator, _rewardToken);
    }

    /**
     * @dev Get all reward config
     */
    function getAllRewardInfo() external view returns (AggregatorData[] memory) {
        uint256 aggregatorCount = _aggregators.length;
        AggregatorData[] memory result = new AggregatorData[](aggregatorCount);

        for (uint256 i; i < aggregatorCount; ++i) {
            address aggregator = _aggregators[i];
            uint256 rewardTokenCount = _aggregatorToRewardTokens[aggregator].length;
            RewardInfo[] memory rewardInfo = new RewardInfo[](rewardTokenCount);
            
            for (uint256 j; j < rewardTokenCount; ++j) {
                address rewardToken = _aggregatorToRewardTokens[aggregator][j];

                rewardInfo[j] = _aggregatorToRewardInfos[aggregator][rewardToken];
            }

            result[i] = AggregatorData(
                aggregator,
                rewardInfo
            );
        }

        return result;
    }
}