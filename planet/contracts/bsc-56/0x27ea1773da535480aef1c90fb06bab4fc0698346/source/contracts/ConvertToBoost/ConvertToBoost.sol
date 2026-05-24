pragma solidity ^0.8.19;

// SPDX-License-Identifier: MIT

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

import "./IPlanetRouter.sol";
import "./IAggregator.sol";
import "./ITokenAddress.sol";

/**
@title Planet's Convert To Boost
@author Planet - planet.finance
*/
contract ConvertToBoost is Ownable, ReentrancyGuard {
    
    using SafeERC20 for IERC20;

    uint256 internal minAddLiquidity; // minimum percentage of used tokens when calling addLiquidity
    uint256 internal constant DECIMALS = 18;
    address internal constant GAMMA = 0xb3Cb6d2f8f2FDe203a022201C81a96c167607F15;
    address public GAMMA_BTCB;
    address public planetRouter; 
    address[] public GAMMAToBTCBRoute;

    mapping(address => address) public chainkLinkFeeds; // token aggregator mapping for token prices in USD

    event SetGAMMA_BTCBAddress(address _GAMMA_BTCB);
    event SetPlanetRouter(address _planetRouter);
    event SetGAMMAToBTCBRoute(address[] _route);
    event SetChainLinkFeeds(address _token, address _chainLinkFeed);
    event SetMinAddLiquidity(uint256 _minAddLiquidity);


    constructor() Ownable() {
    }

    /**
     *@notice function to convert given token (GAMMA) to Boosted Tokens(GAMMA-BTCB)
     *@param _GAMMAAmount amount of gamma tokens to be converted
     *@param _mintAddress address of user for whom conversion is happening. Additional BTCB is taken from this address and tokens left after add liquidity are returned to this address
     *@param _addBTCBPercentage percentage of additional BTCB to be taken from _mintAddress towards creating the GAMMA-BTCB  lp token
     *@return GAMMA_BTCBAmount amount of GAMMA-BTCB LP tokens created
     */
    function convertToBoost(uint256 _GAMMAAmount, uint256 BTCBAmount, address _mintAddress, uint256 _addBTCBPercentage) external nonReentrant returns (uint256 GAMMA_BTCBAmount){

        if (_addBTCBPercentage > 5000){
            _addBTCBPercentage = 5000;
        }

        address BTCB = GAMMAToBTCBRoute[GAMMAToBTCBRoute.length - 1];
        address _gamma = GAMMA;
        address router = planetRouter;
        {
            uint256 pendingBTCBAmount = (_GAMMAAmount * (5000 - _addBTCBPercentage))/(10000 - _addBTCBPercentage);
            _GAMMAAmount = (_GAMMAAmount * 5000)/(10000 - _addBTCBPercentage);

            if(pendingBTCBAmount > 0){

                IERC20(_gamma).safeIncreaseAllowance(
                    router,
                    pendingBTCBAmount
                );

                _safeSwap(
                    router,
                    pendingBTCBAmount,
                    GAMMAToBTCBRoute,
                    address(this),
                    (block.timestamp + 600)
                );
            }
        }
        BTCBAmount = IERC20(BTCB).balanceOf(address(this));

        IERC20(_gamma).safeIncreaseAllowance(
            router,
            _GAMMAAmount
        );

        IERC20(BTCB).safeIncreaseAllowance(
            router,
            BTCBAmount
        );

        (, , GAMMA_BTCBAmount) = IPlanetRouter(router).addLiquidity(_gamma, BTCB, _GAMMAAmount, BTCBAmount, (_GAMMAAmount * minAddLiquidity)/10000, (BTCBAmount * minAddLiquidity)/10000, _msgSender(), block.timestamp+300);
        

        uint256 remainingAmount = IERC20(_gamma).balanceOf(address(this));
        if (remainingAmount > 0){
            IERC20(_gamma).safeTransfer(_mintAddress, remainingAmount);
        }

        remainingAmount = IERC20(BTCB).balanceOf(address(this));
        if (remainingAmount > 0){
            IERC20(BTCB).safeTransfer(_mintAddress, remainingAmount);
        }
    }

    function getBTCBAmount(uint256 _GAMMAAmount, uint256 _addBTCBPercentage) external view returns(uint256 BTCBAmount){
        address BTCB = GAMMAToBTCBRoute[GAMMAToBTCBRoute.length - 1];
       (uint256 priceOfBTCB, uint256 priceOfGamma) = getBTCBGAMMAprice(BTCB);
        BTCBAmount = (_GAMMAAmount * _addBTCBPercentage) * (priceOfGamma)/((priceOfBTCB) * (10000 - _addBTCBPercentage));
    }

    /**
     *@notice Sets GAMMA_BTCB LP token address
     *@param _GAMMA_BTCB The address of the new GAMMA_BTCB LP token 
     */
    function setGAMMA_BTCBAddress(address _GAMMA_BTCB) external onlyOwner{
        GAMMA_BTCB = _GAMMA_BTCB;
        emit SetGAMMA_BTCBAddress(_GAMMA_BTCB);
    }

    /**
     *@notice Sets Planet's router address
     *@param _planetRouter The address of the new Planet Router 
     */
    function setPlanetRouter(address _planetRouter) external onlyOwner {
        planetRouter = _planetRouter;
        emit SetPlanetRouter(_planetRouter);
    }

    /**
     *@notice Sets Route to swap from GAMMA to BTCB
     *@param _route New route to swap from GAMMA to BTCB
     */
    function setGAMMAToBTCBRoute(address[] calldata _route) external onlyOwner{
        uint currLen = GAMMAToBTCBRoute.length;
        for (uint i = 0 ; i < currLen; ++i){
            GAMMAToBTCBRoute.pop();
        }
        uint len = _route.length;
         
        for (uint i = 0 ; i < len; ++i){
            GAMMAToBTCBRoute.push(_route[i]);
        }
    
        emit SetGAMMAToBTCBRoute(_route);
    }

	/**
	 * @notice Sets chainlink feed for a given token
	 * @param _token token whose chainlink feed is to be set
	 * @param _chainLinkFeed chainlink feed of the token
	 */
    function setChainLinkFeeds(address _token, address _chainLinkFeed) external onlyOwner{
        chainkLinkFeeds[_token] = _chainLinkFeed;
        emit SetChainLinkFeeds(_token, _chainLinkFeed);
    }


    /**
    @notice Sets the minimum amount of desired input tokens that must be used up when adding liquidity, to prevent loss of tokens via front-running.
    @param _minAddLiquidity The new minimum amount for adding liquidity
    */
    function setMinAddLiquidity(uint256 _minAddLiquidity) external onlyOwner {
        require (_minAddLiquidity > 8000, "invalid minAddLiquidity");
        minAddLiquidity = _minAddLiquidity;
        emit SetMinAddLiquidity(_minAddLiquidity);
    }

    /**
    @notice Function is used to swap a given amount of tokens for another type of tokens via a specified router, ensuring the swap meets the required parameters and deadline
    @param _planetRouterAddress The address of the router to be used for the token swap
    @param _amountIn The amount of input tokens to be swapped
    @param _route An array of addresses representing the token swap path
    @param _to The address where the swapped tokens will be sent
    @param _deadline The deadline by which the swap must be completed
    */
    function _safeSwap (
        address _planetRouterAddress,
        uint256 _amountIn,
        address[] memory _route,
        address _to,
        uint256 _deadline) internal {
        IPlanetRouter(_planetRouterAddress)
            .swapExactTokensForTokens( 
            _amountIn,
            1,
            _route,
            _to,
            _deadline
        );
    }

    /**
    @notice Function to fetch the latest price data for BTCB and GAMMA, converting them into USD prices
    It uses Chainlink oracles for BTCB and calculates the GAMMA price based on the GAMMA-BTCB liquidity pool reserves
    @param _btcb The address of the BTCB token, for which the price is fetched from a Chainlink oracle
    @return _btcbPrice The current price of BTCB in USD
    @return _gammaPrice The current price of GAMMA in USD, calculated using the BTCB price and GAMMA-BTCB pool reserves
    @dev The function requires a valid Chainlink oracle address for BTCB to retrieve its price
    @dev The GAMMA price is calculated based on the reserve ratio in the GAMMA-BTCB liquidity pool, using the latest BTCB price
    @dev This function will be updated to remove token0/token1 logic once a direct gamma-btcb feed is available
    */
    // to-do : once we deploy gamma-btcb remove token0, token1 thing
    function getBTCBGAMMAprice(address _btcb) internal view returns(uint256 _btcbPrice, uint256 _gammaPrice) {

        require (chainkLinkFeeds[_btcb] != address(0), "no btcb oracle");
        _btcbPrice = uint256(IAggregator(chainkLinkFeeds[_btcb]).latestAnswer()) * (10 ** (DECIMALS - (uint256(IAggregator(chainkLinkFeeds[_btcb]).decimals()))));
              
        address token0 = ITokenAddress(GAMMA_BTCB).token0();
        (uint256 amount0, uint256 amount1, ) = ITokenAddress(GAMMA_BTCB).getReserves();

        if (GAMMA == token0){
            _gammaPrice = (_btcbPrice * amount1) / amount0;
        }
        else{
            _gammaPrice = (_btcbPrice * amount0) / amount1;				
        } 
       
    } 

}
