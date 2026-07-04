// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

import "./IPlanetFarm.sol";
import "./IAggregator.sol";
import "./ITokenAddress.sol";

/**
@title Planet's Farn
@author Planet - planet.finance
*/

contract EligibilityDataProvider is Initializable, UUPSUpgradeable, OwnableUpgradeable  {
	
	/********************** Common Info ***********************/

	/// @notice RATIO BASE equal to 100%
	uint256 internal constant RATIO_DIVISOR = 10000;

	/// @notice Initial required ratio of TVL to get reward; in bips
	uint256 internal constant INITIAL_REQUIRED_DEPOSIT_RATIO = 500;

	/// @notice Initial ratio of the required price to still allow without disqualification; in bips
	uint256 internal constant INITIAL_PRICE_TOLERANCE_RATIO = 9000;

	/// @notice Minimum required ratio of TVL to get reward; in bips
	uint256 internal constant MIN_PRICE_TOLERANCE_RATIO = 8000;
	
	/// @notice Required ratio of TVL to get reward; in bips
	uint256 public requiredDepositRatio;
	
	uint256 internal constant DECIMALS = 18;

	// @notice GAMMA-BTCB Pid in Farm
	uint256 public boostGeneratorPid;

	/// @notice Ratio of the required price to still allow without disqualification; in bips
	uint256 public priceToleranceRatio;

	/// @notice Address of Planet Farm
	IPlanetFarm public farm;

	/// @notice GAMMA-BTCB LP token
	address public boostLpToken;

    // token aggregator mapping for token prices in USD
    mapping(address => address) public chainkLinkFeeds;

	// Lp token address for token prices in USD
	mapping(address => address) public lpTokenFeeds;

	/********************** Eligible info ***********************/

	/// @notice Last eligible status of the user
	mapping(address => bool) public lastEligibleStatus;

	/// @notice Disqualified time of the user
	mapping(address => uint256) public disqualifiedTime;

	/// @notice Address of want token
	mapping(uint256 => address) public tokenAddress;

	/// @notice Whether the token is a V2 token or not, if not, it is considered a V3 token
	mapping(uint256 => bool) public isV2;

	/// @notice Whether the token is a single token, if not, it is an lp pair or concentrated liquidity hypervisor
	mapping(address => bool) public isSingleToken;

	/********************** Events ***********************/

	/// @notice Emitted when Planet Farm is set
	event PlanetFarmUpdated(IPlanetFarm indexed farm);

	/// @notice Emitted when LP token (GAMMA_BTCB) is set
	event BoostLPTokenUpdated(address indexed _boostLpToken);
	
	/// @notice Emitted when LP token (GAMMA_BTCB) pid in Planet Farm is set
	event SetBoostGeneratorPid (uint256 _boostGeneratorPid);

	/// @notice Emitted when required TVL ratio is updated
	event RequiredDepositRatioUpdated(uint256 indexed requiredDepositRatio);

	/// @notice Emitted when price tolerance ratio is updated
	event PriceToleranceRatioUpdated(uint256 indexed priceToleranceRatio);

	/// @notice Emitted when DQ time is set
	event DqTimeUpdated(address indexed _user, uint256 _time);

	/********************** Errors ***********************/
	error AddressZero();

	error InvalidRatio();

	error OnlyFarm();

	/// @custom:oz-upgrades-unsafe-allow constructor
	constructor() {
		_disableInitializers();
	}

	/**
	 * @notice Constructor
	 * @param _farm Address of farm.
	 * @param _boostGeneratorPid pid of GAMMA-BTCB strategy in the farm
	 */
	function initialize(
		IPlanetFarm _farm,
		uint256 _boostGeneratorPid
	) public initializer {
		if (address(_farm) == address(0)) revert AddressZero();

		farm = _farm;
		requiredDepositRatio = INITIAL_REQUIRED_DEPOSIT_RATIO;
		priceToleranceRatio = INITIAL_PRICE_TOLERANCE_RATIO;
		boostGeneratorPid = _boostGeneratorPid;
		__Ownable_init();
		__UUPSUpgradeable_init();
	}
	function _authorizeUpgrade(address newImplementation)
        internal
        virtual
        override
	onlyOwner {
    }

	/********************** Setters ***********************/

	/**
	 * @notice Set Farm
	 * @param _farm address.
	 */
	function setFarm(IPlanetFarm _farm) external onlyOwner {
		if (address(_farm) == address(0)) revert AddressZero();
		farm = _farm;
		emit PlanetFarmUpdated(_farm);
	}

	/**
	 * @notice Set Boost LP token
	 * @param _boostLpToken Address of GAMMA-BTCB LP Token
	 */
	function setBoostLPToken(address _boostLpToken) external onlyOwner {
		if (_boostLpToken == address(0)) revert AddressZero();
		boostLpToken = _boostLpToken;

		emit BoostLPTokenUpdated(_boostLpToken);
	}

	/**
	 * @notice Set GAMMA-BTCB Pid
	 * @param _boostGeneratorPid Pid of GAMMA-BTCB in Planet Farm
	 */
	function setBoostGeneratorPid (uint256 _boostGeneratorPid) external onlyOwner {
		boostGeneratorPid = _boostGeneratorPid;

		emit SetBoostGeneratorPid (_boostGeneratorPid);
	}

	/**
	 * @notice Sets required tvl ratio. Can only be called by the owner.
	 * @param _requiredDepositRatio Ratio in bips.
	 */
	function setRequiredDepositRatio(uint256 _requiredDepositRatio) external onlyOwner {
		if (_requiredDepositRatio > RATIO_DIVISOR) revert InvalidRatio();
		requiredDepositRatio = _requiredDepositRatio;

		emit RequiredDepositRatioUpdated(_requiredDepositRatio);
	}

	/**
	 * @notice Sets price tolerance ratio. Can only be called by the owner.
	 * @param _priceToleranceRatio Ratio in bips.
	 */
	function setPriceToleranceRatio(uint256 _priceToleranceRatio) external onlyOwner {
		if (_priceToleranceRatio < MIN_PRICE_TOLERANCE_RATIO || _priceToleranceRatio > RATIO_DIVISOR)
			revert InvalidRatio();
		priceToleranceRatio = _priceToleranceRatio;

		emit PriceToleranceRatioUpdated(_priceToleranceRatio);
	}

	/**
	 * @notice Sets want token of a specified pid in Planet farm
	 * @param _pid pid in the farm whose want token is to be set
	 * @param _token address of the want token of the specified pid in Planet farm
	 */	
	function setTokenAddress (uint256 _pid, address _token) external onlyOwner {
		tokenAddress[_pid] = _token;
	}

	/**
	 * @notice Sets whether the want token corresponding to a pid in the farm is a V2 token or not. If not V2, it is considered a V3 hypervisor token.
	 * @param _pid pid in the farm 
	 * @param _isV2 whether the corresponding want token for the pid in Planet farm is V2 or not.
	 */
	function setIsV2 (uint256 _pid, bool _isV2) external onlyOwner {
		isV2[_pid] = _isV2;
	}


	/********************** View functions ***********************/

	/**
	 * @notice Returns GAMMA-BTCB locked value in USD
	 * @param user's address
	 * @return lockedSupplyUSD user's GAMMA-BTCB locked value in USD
	 */
	function lockedUsdValue(address user) public view returns (uint256 lockedSupplyUSD) {
		( , lockedSupplyUSD)= getUserUSD(user);
	}

	/**
	 * @notice Returns USD value required to be locked in GAMMA-BTCB
	 * @dev Returning without accounting for price tolerance so that user deposits the proper amount.  
	 * @param user's address
	 * @return required USD value required in GAMMA-BTCB
	 */
	function requiredUsdValue(address user) public view returns (uint256 required) {
		(uint256 totalSupplyUSD, )= getUserUSD(user);
		required = (totalSupplyUSD * requiredDepositRatio) / RATIO_DIVISOR;
	}

	/**
	 * @notice Returns user's USD value locked in GAMMA-BTCB and user's total USD value supplied in pools other than GAMMA-BTCB
	 * @param _user's address
	 * @return totalSupplyUSD total USD value supplied by the user in pools other than GAMMA-BTCB
	 * @return lockedSupplyUSD user's GAMMA-BTCB locked value in USD 
	 */
	function getUserUSD(address _user) internal view returns (uint256 totalSupplyUSD, uint256 lockedSupplyUSD) {
		uint256[] memory userPoolList;
		uint256[] memory userSharesList;
		(userPoolList, userSharesList) = farm.getUserAccountData(_user);

		uint256 len = userPoolList.length;
		uint256 i;
		address token;
		uint256 tokenPrice;
		uint256 price0;
		uint256 price1;
		uint256 amount0;
		uint256 amount1;
		uint256 totalSupply;
		uint256 pid;
		
		for (i=0; i< len;){
			pid = userPoolList[i];

			token = tokenAddress[pid];
			if(isSingleToken[token]){
				tokenPrice = price(token);
			}
			else{
				price0 = price(ITokenAddress(token).token0());
				price1 = price(ITokenAddress(token).token1());

				if (isV2[pid]){
					(amount0, amount1, ) = ITokenAddress(token).getReserves();

				} else {
					(amount0, amount1) = ITokenAddress(token).getTotalAmounts();
				}
				totalSupply = ITokenAddress(token).totalSupply();
				tokenPrice = (amount0 * price0 + amount1 * price1) / totalSupply;
			}
			if (pid == boostGeneratorPid){
				lockedSupplyUSD += (tokenPrice * userSharesList[i])/1e18;
			}
			else{
				totalSupplyUSD += (tokenPrice * userSharesList[i])/1e18; 
			}
			unchecked {
				i++;
			}
		}
	}

	/**
	 * @notice Returns true if the user is eligible to receive rewards
	 * @param _user's address
	 */
	function isEligibleForRewards(address _user) public view returns (bool) {
		(uint256 totalValue, uint256 lockedValue) = getUserUSD(_user);
		uint256 requiredValue = (totalValue * requiredDepositRatio * priceToleranceRatio) / (RATIO_DIVISOR * RATIO_DIVISOR);
		return lockedValue >= requiredValue;
	}

	/**
	 * @notice Returns DQ time of the user
	 * @param _user's address
	 */
	function getDqTime(address _user) public view returns (uint256) {
		return disqualifiedTime[_user];
	}

	/********************** Operate functions ***********************/
	/**
	 * @notice Refresh token amount for eligibility
	 * @param user The address of the user
	 * @return currentEligibility The current eligibility status of the user
	 */
	function refresh(address user) external returns (bool currentEligibility) {
		if (msg.sender != address(farm)) revert OnlyFarm();
		if (user == address(0)) revert AddressZero();

		// updatePrice(); // check if this is needed with the oracle process we are following
		currentEligibility = isEligibleForRewards(user);
		if (currentEligibility) {
			disqualifiedTime[user] = 0;
			emit DqTimeUpdated(user, block.timestamp);
		}
		else if(disqualifiedTime[user] == 0){
			disqualifiedTime[user] = block.timestamp;
			emit DqTimeUpdated(user, block.timestamp);
		}
		lastEligibleStatus[user] = currentEligibility;
	}

	/********************** Oracle functions ***********************/
	/**
	 * @notice Sets chainlink source for a given token
	 * @param token token whose chainlink source is to be set
	 * @param aggregator chainlink source of the token
	 */
    function setChainlinkSource(address token, address aggregator) external onlyOwner {
		chainkLinkFeeds[token] = aggregator;
    }

	/**
	 * @notice Sets LP pair source to get price for a given token
	 * @param token token whose LP Pair source is to be set
	 * @param _lpTokenFeed address of the LP pair
	 */
    function setLPSource(address token, address _lpTokenFeed) external onlyOwner {
		lpTokenFeeds[token] = _lpTokenFeed;
    }

	/**
	 * @notice Gets token price in USD
	 * @param token token whose price is to be found
	 * @return _price price of the token
	 */
    function price(address token) internal view returns(uint256 _price) {

        if(chainkLinkFeeds[token] != address(0)){

            _price = uint256(IAggregator(chainkLinkFeeds[token]).latestAnswer()) * (10 ** (DECIMALS - (uint256(IAggregator(chainkLinkFeeds[token]).decimals()))));
		}
		// one of the tokens of the LP must have a chainlink price feed for this to work.
		else if (lpTokenFeeds[token] != address(0)){
			address lpToken = lpTokenFeeds[token];
			address token0 = ITokenAddress(lpToken).token0();
			address token1 = ITokenAddress(lpToken).token1();

			(uint256 amount0, uint256 amount1, ) = ITokenAddress(lpToken).getReserves();

			uint256 otherTokenPrice;
			if (token == token0){
				otherTokenPrice = price(token1);
				_price = (otherTokenPrice * amount1) / amount0;
			}
			else{
				otherTokenPrice = price(token0);
				_price = (otherTokenPrice * amount0) / amount1;				
			}
		}
		else {
            require(false, "Token source not present");

        }
    }

	/**
	 * @notice Sets whether a given token is a single token or not, if not, it is a LP pair or Hypervisor token
	 * @param token token whose type is to be set
	 * @param _type type of the tokem
	 */
	function setTokenType(address token, bool _type) external onlyOwner {
		isSingleToken[token] = _type;
    }

}