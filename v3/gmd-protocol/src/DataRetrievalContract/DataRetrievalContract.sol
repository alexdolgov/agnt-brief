// File: @openzeppelin/contracts/utils/Context.sol


// OpenZeppelin Contracts (last updated v5.0.0) (utils/Context.sol)

pragma solidity ^0.8.20;

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

// File: @openzeppelin/contracts/access/Ownable.sol


// OpenZeppelin Contracts (last updated v5.0.0) (access/Ownable.sol)

pragma solidity ^0.8.20;


/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * The initial owner is set to the address provided by the deployer. This can
 * later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract Ownable is Context {
    address private _owner;

    /**
     * @dev The caller account is not authorized to perform an operation.
     */
    error OwnableUnauthorizedAccount(address account);

    /**
     * @dev The owner is not a valid owner account. (eg. `address(0)`)
     */
    error OwnableInvalidOwner(address owner);

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the address provided by the deployer as the initial owner.
     */
    constructor(address initialOwner) {
        if (initialOwner == address(0)) {
            revert OwnableInvalidOwner(address(0));
        }
        _transferOwnership(initialOwner);
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
        if (owner() != _msgSender()) {
            revert OwnableUnauthorizedAccount(_msgSender());
        }
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
        if (newOwner == address(0)) {
            revert OwnableInvalidOwner(address(0));
        }
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

// File: oracle.sol


pragma solidity ^0.8.0;


    interface AggregatorV3Interface {
        function decimals() external view returns (uint8);

        function description() external view returns (string memory);

        function version() external view returns (uint256);

        function getRoundData(uint80 _roundId)
            external
            view
            returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
            );

        function latestRoundData()
            external
            view
            returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
            );
    }


    struct MarketProps {
        address marketToken;
        address indexToken;
        address longToken;
        address shortToken;
    }

    struct Price {
    int256 max;
    int256 min;
    }

    struct MarketPrices {
    Price indexTokenPrice;
    Price longTokenPrice;
    Price shortTokenPrice;
    }
    interface IReaderContract {
        function getWithdrawalAmountOut(
            address dataStore,
            MarketProps memory market,
            MarketPrices memory prices,
            uint256 marketTokenAmount,
            address uiFeeReceiver
        ) external view returns (uint256, uint256);
    }





    contract DataRetrievalContract is Ownable {

        address public updater = address(0);
        uint256 public GMETHprice = 0;
        uint256 public GMBTCprice = 0;

        constructor() Ownable(msg.sender) {
        
        }

        function getAnswerFromPriceContract(address oracle) public view returns (int256) {
            AggregatorV3Interface priceContract = AggregatorV3Interface(oracle);
            (
                uint80 roundId,
                int256 answer,
                uint256 startedAt,
                uint256 updatedAt,
                uint80 answeredInRound
            ) = priceContract.latestRoundData();

            return answer;
        }



        function setUpdater(address _updater) external onlyOwner {
            updater = _updater;
        }

        function updateGMETHprice(uint256 price) external {
            require(msg.sender == updater);
            require(price >= 0 && price <=1e27, "out of range");
            GMETHprice = price;
        }

        function updateGMBTCprice(uint256 price) external {
            require(msg.sender == updater);
            require(price >= 0 && price <=1e27, "out of range");
            GMBTCprice = price;
        }

        function getGMETHprice() public view returns(uint256) {
            return GMETHprice;
        }

        
        function getGMBTCprice() public view returns(uint256) {
            return GMBTCprice;
        }

        function getAssetPrice() public view returns(uint256) {
            return uint256(getAnswerFromPriceContract(0x639Fe6ab55C921f74e7fac1ee960C0B6293ba612));
        }

        function getStableAssetPrice() public pure returns(uint256) {
            return 1e8;
        }



        // Function to retrieve the amount using the reader contract
        function retrieveETHUSDCAmount(int256 price) external view returns (uint256, uint256) {
            // Create an instance of the reader contract
            IReaderContract readerContract = IReaderContract(0xf60becbba223EEA9495Da3f606753867eC10d139);

            // Define the parameters
            address dataStore = 0xFD70de6b91282D8017aA4E741e9Ae325CAb992d8;
            MarketProps memory market = MarketProps({
                marketToken: 0x70d95587d40A2caf56bd97485aB3Eec10Bee6336,
                indexToken: 0x82aF49447D8a07e3bd95BD0d56f35241523fBab1,
                longToken: 0x82aF49447D8a07e3bd95BD0d56f35241523fBab1,
                shortToken: 0xaf88d065e77c8cC2239327C5EDb3A432268e5831
            });

           MarketPrices memory prices = MarketPrices({
                indexTokenPrice: Price({
                    max: price,
                    min: price
                }),
                longTokenPrice: Price({
                    max: price,
                    min: price
                }),
                shortTokenPrice: Price({
                    max: 100000000,
                    min: 100000000
                })
            });


            uint256 marketTokenAmount = 1000000000000000000000;
            address uiFeeReceiver = 0x0000000000000000000000000000000000000000;

            // Call the reader contract's function
            (uint256 result1, uint256 result2) = readerContract.getWithdrawalAmountOut(
                dataStore,
                market,
                prices,
                marketTokenAmount,
                uiFeeReceiver
            );

            return (result1,result2);

        }
        // Function to retrieve the amount using the reader contract
        function retrieveETHUSDCAmount(MarketProps memory market, MarketPrices memory prices) external view returns (uint256, uint256) {
            // Create an instance of the reader contract
            IReaderContract readerContract = IReaderContract(0xf60becbba223EEA9495Da3f606753867eC10d139);

            // Define the parameters
            address dataStore = 0xFD70de6b91282D8017aA4E741e9Ae325CAb992d8;
           
            uint256 marketTokenAmount = 1000000000000000000000000;
            address uiFeeReceiver = 0x0000000000000000000000000000000000000000;

            // Call the reader contract's function
            (uint256 result1, uint256 result2) = readerContract.getWithdrawalAmountOut(
                dataStore,
                market,
                prices,
                marketTokenAmount,
                uiFeeReceiver
            );

            return (result1,result2);

        }
    }