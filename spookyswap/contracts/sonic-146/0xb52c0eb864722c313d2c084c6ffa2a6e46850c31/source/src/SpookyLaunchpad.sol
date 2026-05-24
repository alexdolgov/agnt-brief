pragma solidity 0.8.18;

import { LibUtils } from "./libraries/LibUtils.sol";
import { LibTokens } from "./libraries/LibTokens.sol";
import { IwETH } from "./interfaces/IwETH.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { Token } from "./libraries/Token.sol";
import { INonfungiblePositionManager } from "./interfaces/INonFungiblePositionManager.sol";
import { Vault } from './Vault.sol';

struct Config {
    uint256 creationPrice;
	address nfpManager; //20B
    uint16 txFee; //2B
    uint16 launchFee; //2B
	uint16 farmRatioDenominator; //2B 
    uint256 fakePoolEthMCapThreshold; //32B 
    uint256 tokenSupply;
    uint256 fakePoolBaseEther;
    address weth;
	address v3staker;
}

struct FakePool {
    uint256 fakeEth;
    uint256 ethReserve;
    uint256 tokenReserve;
    address token;
    address pair;
    uint16 sellPenalty;
    bool locked;
}

    struct IncentiveKey {
        address rewardToken;
        address pool;
        uint256 startTime;
        uint256 endTime;
        uint256 vestingPeriod;
        address refundee;
    }

	interface IUniV3Staker {
		function createIncentive(IncentiveKey memory key, uint256 reward) external;
	}

contract SpookyLaunchpad is Ownable {
	event TokenCreated(address creator, address token, uint256 supply, string name, string symbol, string imageCid, string description, string[] links, uint256 price, LibTokens.LpStrategy lpStrategy);
	event TokenLaunched(address creator, address token, address pair);
	event Bought(address buyer, address token, uint256 ethIn, uint256 tokensOut, uint256 newPrice);
	event Sold(address seller, address token, uint256 ethOut, uint256 tokensIn, uint256 newPrice);
	event Swap(address indexed sender, uint256 amount0In, uint256 amount1In, uint256 amount0Out, uint256 amount1Out, address indexed to); // UNIV2 event for tracking
	event FakePoolCreated(address token, uint16 sellPenalty, uint256 ethReserve, uint256 tokenReserve);
	event FakePoolReserveChanged(address token, uint256 ethReserve, uint256 tokenReserve);
	event FakePoolMCapReached(address token);

	
	mapping(address => FakePool) public poolMap;
    Config public config;
	uint256 public proceeds;

	constructor() Ownable() {
	}

	function create(string calldata name, string calldata symbol, string calldata imageCid, string calldata description, string[] calldata links, uint16 sellPenalty, LibTokens.LpStrategy lpStrategy, uint256 initialBuy) external payable {
		require(
			bytes(name).length <= 18 &&
			bytes(symbol).length <= 18 &&
			bytes(description).length <= 512, 
			"Invalid params"
		);

		require(links.length < 5, "5 links max");
		for (uint8 i = 0; i < links.length; i++) {
			require(bytes(links[i]).length <= 128, "link too long");
		}

		uint256 supply = config.tokenSupply;

		Token token = new Token();
		address tokenAddress = address(token);
		token.emboss(name, symbol, supply, address(this));

		uint256 creationPrice = _create_FakePool(tokenAddress, supply, sellPenalty);

		LibTokens.Storage storage ts = LibTokens.store();

		ts.creatorMap[tokenAddress] = msg.sender;
		ts.lpStrategyMap[tokenAddress] = lpStrategy;
		 
		emit TokenCreated(msg.sender, tokenAddress, config.tokenSupply, name, symbol, imageCid, description, links, creationPrice, lpStrategy);

		uint256 eth = msg.value;

		uint256 creationEth = config.creationPrice;
		require(eth >= creationEth, "Not enough eth to pay the creation price!");

		eth -= creationEth;
		gatherProceeds(creationEth);

		if (initialBuy > 0) {
			eth -= initialBuy;

			(uint256 tokensOut, uint256 newPrice) = _buy_FakePool(tokenAddress, initialBuy); 
			
			Token(token).transfer(msg.sender, tokensOut); // Transfer tokens to buyer
			emit Bought(msg.sender, tokenAddress, initialBuy, tokensOut, newPrice);
		}

		if (eth > 0) {
			(bool sent,) = msg.sender.call{ value: eth }(""); // refund dust
			require(sent, "not sent!");
		}
	}

	function quote(address token, uint256 amount, bool ethOut) public view returns(uint256) {
			return _quote_FakePool(token, amount, ethOut);
	}

	function buy(address token, uint256 min) external payable returns (uint256 tokensOut, uint256 newPrice) {
		(tokensOut, newPrice) = _buy_FakePool(token, msg.value);

		if (min != 0) require(tokensOut >= min, "amount out lower than min");

		Token(token).transfer(msg.sender, tokensOut); // Transfer tokens to buyer
		emit Bought(msg.sender, token, msg.value, tokensOut, newPrice);
		emit Swap(address(this), msg.value, 0, 0, tokensOut, msg.sender);
	}

	function sell(address token, uint256 amount, uint256 min) external returns (uint256 ethOut, uint256 newPrice) {
		(ethOut, newPrice) = _sell_FakePool(token, amount);

		if (min != 0) require(ethOut >= min, "amount out lower than min");

		Token(token).transferFrom(msg.sender, address(this), amount); // Transfer tokens from seller
		(bool sent,) = msg.sender.call{ value: ethOut }(""); require(sent, "eth send failed"); // Transfer eth to seller
		emit Sold(msg.sender, token, ethOut, amount, newPrice);
		emit Swap(msg.sender, 0, amount, ethOut, 0, address(this));
	}

	function launch(address token, uint8 farmType) external onlyOwner payable returns (
            uint256 tokenId,		//0=no farm, 1=token farm 2=wnative farm
            uint128 liquidity,
            uint256 amount0,
            uint256 amount1
        ){
		(uint256 eth, uint256 tokens) = _launchstats_FakePool(token);
		


		uint256 launchFee = LibUtils.calculatePercentage(config.launchFee, eth);
		gatherProceeds(launchFee);
		eth -= launchFee;

		INonfungiblePositionManager nonfungiblePositionManager = INonfungiblePositionManager(config.nfpManager);
		IUniV3Staker v3staker = IUniV3Staker(config.v3staker);

		Token(token).approve(address(nonfungiblePositionManager), tokens);
		Token(token).launch();

		LibTokens.Storage storage ts = LibTokens.store();

		//LibTokens.LpStrategy lpStrategy = ts.lpStrategyMap[token];

		address wethAdr = config.weth;
		IwETH(wethAdr).deposit{ value: eth }();
		Token(wethAdr).approve(address(nonfungiblePositionManager), eth);
		
		uint amountFarm;
		if(farmType == 1) {
			amountFarm = tokens / config.farmRatioDenominator;
			tokens -= amountFarm;
			Token(token).approve(address(v3staker), amountFarm);
		} else if(farmType == 2) {
			amountFarm = eth / config.farmRatioDenominator;
			eth -= amountFarm;
			Token(wethAdr).approve(address(v3staker), amountFarm);
		}


		(address _token0, address _token1) = token < wethAdr ? (token, wethAdr) : (wethAdr, token);
		(uint _amount0, uint _amount1) = token < wethAdr ? (tokens, eth) : (eth, tokens);




		
		address pair = nonfungiblePositionManager.createAndInitializePoolIfNecessary(_token0, _token1, 3000, calculateSqrtPriceX96(_amount1, _amount0));
		Vault vault = new Vault();

        INonfungiblePositionManager.MintParams memory params =
        INonfungiblePositionManager.MintParams({
            token0: _token0,
            token1: _token1,
            fee: 3000,
            tickLower: -887272 + 52,
            tickUpper: 887272 - 52,
            amount0Desired: _amount0,
            amount1Desired: _amount1,
            amount0Min: _amount0 * 9 / 10,
            amount1Min: _amount1 * 9 / 10,
            recipient: address(vault),
            deadline: block.timestamp
        });

		(tokenId, liquidity, amount0, amount1) = nonfungiblePositionManager.mint(params);
		vault.setup(owner(), ts.creatorMap[token], tokenId);

		// create farm

		if(farmType != 0) {
			IncentiveKey memory incentive = IncentiveKey({
				rewardToken: farmType == 1 ? token : wethAdr,
				pool: pair,
				startTime: block.timestamp + 1,
				endTime: (block.timestamp + 1 + 60 days),
				vestingPeriod: 72 hours,
				refundee: owner()
			});
			v3staker.createIncentive(incentive, amountFarm);
		}

		setPool(token, pair);

		emit TokenLaunched(ts.creatorMap[token], token, pair);
	}

    function calculateSqrtPriceX96(uint256 amount0, uint256 amount1) public pure returns (uint160) {
		return (uint160)(sqrt(amount0 * (2**192 / amount1)));
    }

    function sqrt(uint256 x) internal pure returns (uint256 result) {
        if (x == 0) return 0;
        uint256 z = (x + 1) / 2;
        result = x;
        while (z < result) {
            result = z;
            z = (x / z + z) / 2;
        }
    }


	// // ==================================================================== // //
	// // =========================== FAKE POOLS ============================= // //
	// // ==================================================================== // //


    function getConfig() external view returns (Config memory) {
        return config;
    }

	function setConfig(Config memory _config) public onlyOwner {
		config = _config;
	}

	function swapExactTokensForETH(FakePool storage pool, uint256 tokens) internal returns (uint256) {
		uint256 out = getAmountOut(tokens, pool.tokenReserve, pool.ethReserve);
		pool.tokenReserve += tokens;
		pool.ethReserve -= out;
		emit FakePoolReserveChanged(pool.token, pool.ethReserve, pool.tokenReserve);
		return out;
	}

	function swapExactETHForTokens(FakePool storage pool, uint256 eth) internal returns (uint256) {
		uint256 out = getAmountOut(eth, pool.ethReserve, pool.tokenReserve);
		pool.tokenReserve -= out;
		pool.ethReserve += eth;
		emit FakePoolReserveChanged(pool.token, pool.ethReserve, pool.tokenReserve);
		return out;
	}

	function getAmountOut(uint256 amountIn, uint256 reserveIn, uint256 reserveOut) internal pure returns (uint256) {
		uint256 numerator = amountIn * reserveOut;
		uint256 denominator = reserveIn + amountIn;
		return numerator / denominator;
	}

	function price(FakePool storage pool, uint256 amount, bool ethOut) internal view returns (uint256) {
		if (ethOut) {
			return (amount * pool.ethReserve) / pool.tokenReserve;
		} else {
			return (amount * pool.tokenReserve) / pool.ethReserve;
		}
	}

	function checkMarketCapThreshold(FakePool storage pool) internal {
	 	uint256 p = price(pool, 1 ether, true);
		uint256 ethMcap = (config.tokenSupply * p) / 1 ether;

		if (ethMcap >= config.fakePoolEthMCapThreshold) {
			pool.locked = true;
			emit FakePoolMCapReached(pool.token);
		}
	}

	function calculateSellPenalty(FakePool storage pool, uint256 eth) internal view returns (uint256) {
		if (pool.sellPenalty == 0) return 0;
		return LibUtils.calculatePercentage(pool.sellPenalty, eth);
	}

	function deductSellPenalty(FakePool storage pool, uint256 eth) internal returns (uint256) {
		uint256 fee = calculateSellPenalty(pool, eth);
		if (fee == 0) {
			return eth;
		} else {
			pool.ethReserve += fee; // redistribute the penaltyFee back into the ether reserve
			return eth - fee;
		}
	}


	// PUBLIC

	function _quote_FakePool(address token, uint256 amount, bool ethOut) public view returns (uint256) {
		FakePool storage pool = poolMap[token];
		if (ethOut) { // sell
			uint256 eth = getAmountOut(amount, pool.tokenReserve, pool.ethReserve);
			eth -= calculateTxFee(eth);
			eth -= calculateSellPenalty(pool, eth);
			return eth;
		} else { // buy
			uint256 txFee = calculateTxFee(amount);
			return getAmountOut(amount - txFee, pool.ethReserve, pool.tokenReserve);
		}
	}

	function _create_FakePool(address tokenAddress, uint256 supply, uint16 sellPenalty) internal returns (uint256) {
		require(sellPenalty <= 700, "sell penalty invalid");

		FakePool storage pool = poolMap[tokenAddress];
		uint fakeEth = config.fakePoolBaseEther;
		pool.token = tokenAddress;
		pool.fakeEth = fakeEth;
		pool.ethReserve = fakeEth;
		pool.tokenReserve = supply;
		pool.sellPenalty = sellPenalty;

		emit FakePoolCreated(tokenAddress, sellPenalty, pool.ethReserve, pool.tokenReserve);

		return price(pool, 1 ether, true);
	}

	function _launchstats_FakePool(address token) public view returns (uint256, uint256) {
		FakePool storage pool = poolMap[token];
		require(pool.token != address(0));
		return (pool.ethReserve - pool.fakeEth, pool.tokenReserve);
	}

	function _buy_FakePool(address token, uint amount) internal returns (uint256, uint256) {
		FakePool storage pool = poolMap[token];
		require(pool.token != address(0) && !pool.locked, "pool is zero or locked!");

		uint256 ethIn = deductTxFee(amount);
		uint256 tokensOut = swapExactETHForTokens(pool, ethIn);

		checkMarketCapThreshold(pool);

		return (tokensOut, price(pool, 1 ether, true));
	}

	function _sell_FakePool(address token, uint256 amount) internal returns (uint256, uint256) {
		FakePool storage pool = poolMap[token];
		require(pool.token != address(0) && !pool.locked);

		uint256 ethOut = swapExactTokensForETH(pool, amount);
		ethOut = deductTxFee(ethOut);
		ethOut = deductSellPenalty(pool, ethOut);

		require(pool.ethReserve >= pool.fakeEth, "no eth left in pool");
		checkMarketCapThreshold(pool);

		return (ethOut, price(pool, 1 ether, true));
	}

    function setPool(address _token, address _pair) internal {
        poolMap[_token].locked = true;
        poolMap[_token].pair = _pair;
    }

	function calculateTxFee(uint256 eth) public view returns (uint256) {
		return LibUtils.calculatePercentage(config.txFee, eth);
	}

	function gatherProceeds(uint256 amount) internal {
		proceeds += amount;
	}

	function deductTxFee(uint256 eth) internal returns (uint256) {
		uint256 fee = calculateTxFee(eth);
		gatherProceeds(fee);
		return eth - fee;
	}



	function reap() external onlyOwner {
		uint256 eth = proceeds;
		proceeds = 0;
		(bool sent,) = payable(msg.sender).call{ value: eth }("");
		require(sent);
	}

	function unlock(address[] calldata assets) external onlyOwner {
		for (uint256 i = 0; i < assets.length; i++) {
			Token(assets[i]).transfer(msg.sender, Token(assets[i]).balanceOf(address(this)));
		}
	}

	function unlockEth(uint _value) external onlyOwner {
		(bool sent,) = payable(msg.sender).call{ value: _value }("");
		require(sent);
	}

	function manualLock(address _pool, bool _lock) external onlyOwner {
		FakePool storage pool = poolMap[_pool];
		pool.locked = _lock;
	}

	function manualLaunch(address token) external onlyOwner {
		Token(token).launch();
	}

}