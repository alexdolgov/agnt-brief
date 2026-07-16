// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

// ============ Imports ============
import "@openzeppelin/contracts/access/Ownable2Step.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC721} from "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {TransferHelper} from "../libraries/TransferHelper.sol";
import {ContractPermissionManager} from "../Security/ContractPermissionManager.sol";

import {SilverLswManager} from "../LSW/SilverLswManager.sol";
import {PoolLocker, PositionInfo} from "../Gauge/PoolLocker.sol";
import {INonfungiblePositionManager} from "../interfaces/INonFungiblePositionManager.sol";

// ============ Interfaces ============
interface IAlgebraPool {
	function token0() external view returns (address);
	function token1() external view returns (address);
	function liquidity() external view returns (uint128);
}

interface IAlgebraFactory {
    function getPair(
        address tokenA,
        address tokenB
    ) external view returns (address pool);
}

// ============ Structs ============
struct GaugeInfo {
	address agsTokenPool;			// AGS/xToken LP
	address wrappedNativePool;		// wrappedNativeToken/xToken LP
	uint256 agsPositionId;			// Position ID for AGS/xToken LP
	uint256 wrappedPositionId;		// Position ID for wrappedNativeToken/xToken LP
	uint256 totalAgsDeposited;		// Total AGS deposited in the gauge
	bool exists;					// Whether the gauge exists
	bool active;					// Whether the gauge is active
}

struct UserInfo {
	uint256 totalAgsDeposited;  // Total AGS deposited across all gauges
	mapping(address => uint256) agsDeposits;  // Amount of AGS deposited per pool
	mapping(address => uint256) projectTokenDeposits;  // Amount of project token deposited per pool
	mapping(address => uint128) liquidityDeposits;  // Amount of liquidity deposited per pool
}

/**
 * @title GaugeManager
 * @author github.com/SifexPro
 * @notice This contract is used to manage the gauges for the SilverLsw protocol
 */
contract GaugeManager is Ownable2Step {
	// ============ Interfaces ============
	PoolLocker public poolLocker;
	SilverLswManager public silverLswManager;
	IERC20 public silverStakeToken;
	INonfungiblePositionManager public positionManager;
	IERC721 public positionManagerERC721;
	ContractPermissionManager public immutable securityManager;

	// ============ Utils variables ============
	uint256 public totalAgsLocked; // Total AGS locked in LockedLP
	uint256 public totalAgsDeposited; // Total AGS (locked + deposited in gauges)
	address public immutable wrappedNativeToken;
	address[] public unlockedPools;

	// ============ Mapping ============
	mapping(address => GaugeInfo) public gaugeInfo;
	mapping(address => UserInfo) public userInfo;

	// ============ Events for gauge management ============
	event GaugeInitialized(
		address indexed pool, 
		address agsTokenPool, 
		address wrappedNativePool,
		uint256 agsPositionId,
		uint256 wrappedPositionId
	);
	event GaugeDesactivated(address indexed pool);
	event PoolUnlocked(address indexed pool);
	
	// ============ Events for liquidity ============
	event LiquidityAdded(address indexed pool, uint256 tokenId, uint256 amount0, uint256 amount1);
	event LiquidityRemoved(address indexed pool, uint256 tokenId, uint256 amount0, uint256 amount1);
	event LiquidityReinjected(address indexed pool, uint256 tokenId, uint256 amount0, uint256 amount1);
	
	// ============ Events for AGS ============
	event LockedAgsUpdated(uint256 newTotal);
	
	// ============ Events for setters ============
	event SilverLswManagerSet(address indexed newSilverLswManager);
	event PoolLockerSet(address indexed newPoolLocker);

	// ============ Events for owner ============
	event WithdrawnNative(address indexed to, uint256 amount);
	event WithdrawnToken(address indexed token, address to, uint256 amount);

	// ============ Constructor ============
	constructor(
		address _positionManager, 
		address _poolLocker, 
		address _silverStakeToken,
		address _wrappedNativeToken,
		address _securityManager
	) Ownable(msg.sender) {
		poolLocker = PoolLocker(payable(_poolLocker));
		positionManager = INonfungiblePositionManager(_positionManager);
		positionManagerERC721 = IERC721(_positionManager);
		silverStakeToken = IERC20(_silverStakeToken);
		wrappedNativeToken = _wrappedNativeToken;
		securityManager = ContractPermissionManager(_securityManager);
	}


	// ============ Gauge functions ============

	/**
	 * @notice Initialize a new gauge with AGS/xToken and wrappedNativeToken/xToken pools
	 * @param lockedPositionId The locked position ID
	 * @dev Needs to initialize the wrappedNativePool first if it doesn't exist
	 */
	function initGauge(uint256 lockedPositionId) public onlyOwner {
		require(!isLswLocked(), "Lsw system is locked");
		PositionInfo memory position = getPositionInfoByLockedPositionId(lockedPositionId);
		
		require(!position.gaugeCreated, "Gauge already created");
		require(position.locked, "Position not locked");
		require(position.token0 == address(silverStakeToken) || position.token1 == address(silverStakeToken), "Invalid pool tokens");

		
		address projectToken = position.token0 == address(silverStakeToken) ? position.token1 : position.token0;

		// Get wrappedNativeToken/xToken pool
		address wrappedNativePool = _getWrappedNativePool(projectToken);
		
		// Create empty positions for both pools
		uint256 agsPositionId = _createEmptyPosition(position.pool);
		uint256 wrappedPositionId = _createEmptyPosition(wrappedNativePool);

		require(agsPositionId != 0 && wrappedPositionId != 0, "Failed to create empty positions");

		poolLocker.gaugeCreated(position.tokenId);

		silverLswManager.syncNewGauge(position.pool);

		gaugeInfo[position.pool] = GaugeInfo({
			agsTokenPool: position.pool,
			wrappedNativePool: wrappedNativePool,
			agsPositionId: agsPositionId,
			wrappedPositionId: wrappedPositionId,
			totalAgsDeposited: 0,
			exists: true,
			active: true
		});

		emit GaugeInitialized(position.pool, position.pool, wrappedNativePool, agsPositionId, wrappedPositionId);
	}

	/**
	 * @notice Refuse a gauge
	 * @param lockedPositionId The locked position ID
	 */
	function refuseGauge(uint256 lockedPositionId) public onlyOwner {
		PositionInfo memory position = getPositionInfoByLockedPositionId(lockedPositionId);
		require(!position.gaugeCreated, "Gauge already created");
		require(position.locked, "Position not locked");
		
		poolLocker.gaugeRefused(position.tokenId);
	}

	/**
	 * @notice Add liquidity to a gauge's AGS/xToken position
	 * @param pool The pool address
	 * @param amount0Desired Amount of token0 to add
	 * @param amount1Desired Amount of token1 to add
	 */
	function addLiquidityInGauge(
		address pool,
		uint256 amount0Desired,
		uint256 amount1Desired
	) public {
		require(!isLswLocked(), "Lsw system is locked");
		GaugeInfo storage info = gaugeInfo[pool];
		require(info.active, "Gauge not active");
		
		(address token0, address token1) = (IAlgebraPool(pool).token0(), IAlgebraPool(pool).token1());

		// Transfer tokens from user
		TransferHelper.safeTransferFrom(token0, msg.sender, address(this), amount0Desired);
		TransferHelper.safeTransferFrom(token1, msg.sender, address(this), amount1Desired);

		// Approve tokens to position manager
		TransferHelper.safeApprove(token0, address(positionManager), amount0Desired);
		TransferHelper.safeApprove(token1, address(positionManager), amount1Desired);
		
		// Increase liquidity of AGS/xToken position
		(uint128 liquidityAdded, uint256 amount0, uint256 amount1) = positionManager.increaseLiquidity(
			INonfungiblePositionManager.IncreaseLiquidityParams({
				tokenId: info.agsPositionId,
				amount0Desired: amount0Desired,
				amount1Desired: amount1Desired,
				amount0Min: 0,
				amount1Min: 0,
				deadline: block.timestamp + 1 hours
			})
		);

		// Sort amounts into AGS and project token
		(uint256 agsAmount, uint256 projectTokenAmount) = _sortTokenAmounts(pool, amount0, amount1);
		
		// Update user's deposits
		UserInfo storage user = userInfo[msg.sender];
		user.totalAgsDeposited += agsAmount;
		user.agsDeposits[pool] += agsAmount;
		user.projectTokenDeposits[pool] += projectTokenAmount;
		user.liquidityDeposits[pool] += liquidityAdded;
		
		info.totalAgsDeposited += agsAmount;
		totalAgsDeposited += agsAmount;

		emit LiquidityAdded(pool, info.agsPositionId, amount0, amount1);
	}

	/**
	 * @notice Remove liquidity from a gauge's AGS/xToken position
	 * @param pool The pool address
	 * @param liquidity The amount of liquidity to remove
	 */
	function removeLiquidityFromGauge(
		address pool,
		uint128 liquidity
	) public {
		require(!isLswLocked(), "Lsw system is locked");
		GaugeInfo storage info = gaugeInfo[pool];
		require(info.exists, "Gauge does not exist");
		
		UserInfo storage user = userInfo[msg.sender];
		require(user.liquidityDeposits[pool] >= liquidity, "Insufficient liquidity deposit");
		
		// Get current position info
		(, , , , , , uint128 currentLiquidity, , , , ) = positionManager.positions(info.agsPositionId);
		require(currentLiquidity >= liquidity, "Insufficient position liquidity");
		
		// Remove liquidity from AGS/xToken position
		(uint256 amount0, uint256 amount1) = positionManager.decreaseLiquidity(
			INonfungiblePositionManager.DecreaseLiquidityParams({
				tokenId: info.agsPositionId,
				liquidity: liquidity,
				amount0Min: 0,
				amount1Min: 0,
				deadline: block.timestamp + 1 hours
			})
		);

		// Sort amounts into AGS and project token
		(uint256 agsAmount, uint256 projectTokenAmount) = _sortTokenAmounts(pool, amount0, amount1);

		// Collect tokens
		positionManager.collect(
			INonfungiblePositionManager.CollectParams({
				tokenId: info.agsPositionId,
				recipient: msg.sender,
				amount0Max: uint128(amount0),
				amount1Max: uint128(amount1)
			})
		);

		// Update user's deposits
		user.totalAgsDeposited -= agsAmount;
		user.agsDeposits[pool] -= agsAmount;
		user.projectTokenDeposits[pool] -= projectTokenAmount;
		user.liquidityDeposits[pool] -= liquidity;
		
		info.totalAgsDeposited -= agsAmount;
		totalAgsDeposited -= agsAmount;

		emit LiquidityRemoved(pool, info.agsPositionId, amount0, amount1);
	}

	/**
	 * @notice Add liquidity to a gauge's wrappedNativeToken/xToken position
	 * @param pool The pool address
	 * @param amount0Desired Amount of token0 to add
	 * @param amount1Desired Amount of token1 to add
	 */
	function addLiquidityInWrappedPool(
		address pool,
		uint256 amount0Desired,
		uint256 amount1Desired
	) public onlySilverLswManager {
		GaugeInfo storage info = gaugeInfo[pool];
		require(info.active, "Gauge not active");
		
		(address token0, address token1) = (IAlgebraPool(info.wrappedNativePool).token0(), IAlgebraPool(info.wrappedNativePool).token1());

		// Transfer tokens from user
		TransferHelper.safeTransferFrom(token0, msg.sender, address(this), amount0Desired);
		TransferHelper.safeTransferFrom(token1, msg.sender, address(this), amount1Desired);

		// Approve tokens to position manager
		TransferHelper.safeApprove(token0, address(positionManager), amount0Desired);
		TransferHelper.safeApprove(token1, address(positionManager), amount1Desired);
		
		(, uint256 amount0, uint256 amount1) = positionManager.increaseLiquidity(
			INonfungiblePositionManager.IncreaseLiquidityParams({
				tokenId: info.wrappedPositionId,
				amount0Desired: amount0Desired,
				amount1Desired: amount1Desired,
				amount0Min: 0,
				amount1Min: 0,
				deadline: block.timestamp + 1 hours
			})
		);

		// Handle any remaining tokens
		uint256 remaining0 = amount0Desired - amount0;
		uint256 remaining1 = amount1Desired - amount1;
		
		if (remaining0 > 0) {
			TransferHelper.safeTransfer(token0, msg.sender, remaining0);
		}
		if (remaining1 > 0) {
			TransferHelper.safeTransfer(token1, msg.sender, remaining1);
		}

		emit LiquidityReinjected(info.wrappedNativePool, info.wrappedPositionId, amount0, amount1);
	}

	/**
	 * @notice Remove 5% of liquidity from a gauge's wrappedNativeToken/xToken position
	 * @param pool The pool address
	 */
	function removeLiquidityFromWrappedPool(
		address pool
	) public onlySilverLswManager {
		GaugeInfo storage info = gaugeInfo[pool];
		require(info.active, "Gauge not active");
		
		// Get current position info
		(, , , , , , uint128 currentLiquidity, , , , ) = positionManager.positions(info.wrappedPositionId);
		require(currentLiquidity > 0, "No liquidity in position");
		
		// Calculate 5% of current liquidity
		uint128 liquidityToRemove = (currentLiquidity * 5) / 100;
		
		// Remove liquidity from wrappedNativeToken/xToken position
		(uint256 amount0, uint256 amount1) = positionManager.decreaseLiquidity(
			INonfungiblePositionManager.DecreaseLiquidityParams({
				tokenId: info.wrappedPositionId,
				liquidity: liquidityToRemove,
				amount0Min: 0,
				amount1Min: 0,
				deadline: block.timestamp + 1 hours
			})
		);

		// Collect tokens and send them to SilverLswManager
		positionManager.collect(
			INonfungiblePositionManager.CollectParams({
				tokenId: info.wrappedPositionId,
				recipient: address(silverLswManager),
				amount0Max: uint128(amount0),
				amount1Max: uint128(amount1)
			})
		);

		emit LiquidityRemoved(info.wrappedNativePool, info.wrappedPositionId, amount0, amount1);
	}

	/**
	 * @notice Get the position ID for a pool
	 * @param pool The pool address
	 * @return The position ID
	 */
	function _getPositionId(address pool) internal view returns (uint256) {
		return gaugeInfo[pool].wrappedPositionId;
	}

	/**
	 * @notice Sort tokens to identify WETH and other token
	 * @param pool The pool address
	 * @param amount0 Amount of token0
	 * @param amount1 Amount of token1
	 * @return wethToken The WETH token address
	 * @return otherToken The other token address
	 * @return wethAmount The amount of WETH
	 * @return otherAmount The amount of other token
	 */
	function _sortTokens(
		address pool,
		uint256 amount0,
		uint256 amount1
	) internal view returns (
		address wethToken,
		address otherToken,
		uint256 wethAmount,
		uint256 otherAmount
	) {
		IAlgebraPool poolContract = IAlgebraPool(pool);
		address token0 = poolContract.token0();
		address token1 = poolContract.token1();

		if (token0 == wrappedNativeToken) {
			return (token0, token1, amount0, amount1);
		} else {
			return (token1, token0, amount1, amount0);
		}
	}

	/**
	 * @notice Determine which token is AGS and which is project token
	 * @param pool The pool address
	 * @param amount0 Amount of token0
	 * @param amount1 Amount of token1
	 * @return agsAmount Amount of AGS
	 * @return projectTokenAmount Amount of project token
	 */
	function _sortTokenAmounts(
		address pool,
		uint256 amount0,
		uint256 amount1
	) internal view returns (
		uint256 agsAmount,
		uint256 projectTokenAmount
	) {
		if (IAlgebraPool(pool).token0() == address(silverStakeToken)) {
			return (amount0, amount1);
		} else {
			return (amount1, amount0);
		}
	}


	// ============ Internal functions ============

	/**
	 * @notice Unlock all positions that are waiting for the liquidity to be unlocked
	 */
	function unlockAllPositions() external onlySilverLswManager {
		poolLocker.unlockAllPositions();
	}

	/**
	 * @notice Increase the total AGS locked in LockedLP
	 * @param amountLockedAgs The amount of AGS locked
	 */
	function increaseLockedAgs(uint256 amountLockedAgs) external onlyPoolLocker {
		totalAgsLocked += amountLockedAgs;

		emit LockedAgsUpdated(totalAgsLocked);
	}

	/**
	 * @notice Decrease the total AGS locked in LockedLP
	 * @param amountUnlockedAgs The amount of AGS unlocked
	 */
	function decreaseLockedAgs(uint256 amountUnlockedAgs) external onlyPoolLocker {
		totalAgsLocked -= amountUnlockedAgs;

		emit LockedAgsUpdated(totalAgsLocked);
	}

	/**
	 * @notice Desactivate a gauge (if liquidity is unlocked)
	 * @param pool The pool address
	 */
	function desactivateGauge(address pool) external onlyPoolLocker {
		if (!gaugeInfo[pool].exists || !gaugeInfo[pool].active) return;
		
		gaugeInfo[pool].active = false;
		silverLswManager.cancelTaskGauge(pool);

		emit GaugeDesactivated(pool);
	}
	
	/**
	 * @notice Add a pool to the unlockedPools array
	 * @param pool The pool address
	 */
	function unlockedPool(address pool) external onlyPoolLocker {
		unlockedPools.push(pool);

		emit PoolUnlocked(pool);
	}

	/**
	 * @notice Create an empty position in a pool
	 * @param pool The pool address
	 * @return The position ID
	 */
	function _createEmptyPosition(
		address pool
	) internal returns (uint256) {
		(address _token0, address _token1) = (IAlgebraPool(pool).token0(), IAlgebraPool(pool).token1());

		TransferHelper.safeApprove(_token0, address(positionManager), 1000);
		TransferHelper.safeApprove(_token1, address(positionManager), 1000);

		// Create empty position with full range
		INonfungiblePositionManager.MintParams memory params;
		params.token0 = _token0;
		params.token1 = _token1;
		params.tickLower = -887220;
		params.tickUpper = 887220;
		params.amount0Desired = 1000;
		params.amount1Desired = 1000;
		params.amount0Min = 0;
		params.amount1Min = 0;
		params.recipient = address(this);
		params.deadline = block.timestamp + 1 hours;

		(uint256 tokenId, , , ) = positionManager.mint(params);
		return tokenId;
	}

	function _getWrappedNativePool(
		address _projectToken
	) internal returns (address pool) {
		(address _token0, address _token1) = _projectToken < wrappedNativeToken ? 
			(_projectToken, wrappedNativeToken) : (wrappedNativeToken, _projectToken);

		pool = IAlgebraFactory(positionManager.factory()).getPair(_token0, _token1);
		
		require(pool != address(0), "wrappedNative/projectToken pool not found");

		return pool;
	}


	// ============ Setters ============

	function setSilverLswManager(address _silverLswManager) public onlyOwner {
		silverLswManager = SilverLswManager(payable(_silverLswManager));
		emit SilverLswManagerSet(_silverLswManager);
	}

	function setPoolLocker(address _poolLocker) public onlyOwner {
		poolLocker = PoolLocker(payable(_poolLocker));
		emit PoolLockerSet(_poolLocker);
	}


	// ============ Owner Functions ============

	function withdrawNative(address _to) public onlyOwner {
		uint256 balance = address(this).balance;
		require(balance > 0, "No Native to withdraw");

		address payable _tresory = payable(_to);
		(bool success, ) = _tresory.call{value:balance}("");
		require(success, "Transaction failed");

		emit WithdrawnNative(_tresory, balance);
	}

	function withdrawToken(address _token, address _to) public onlyOwner {
		IERC20 token = IERC20(_token);
		uint256 balance = token.balanceOf(address(this));

		SafeERC20.safeTransfer(token, _to, balance);

		emit WithdrawnToken(_token, _to, balance);
	}


	// ============ Getters ============

	function getTotalAgs() public view returns (uint256) {
		return totalAgsLocked + totalAgsDeposited;
	}

	function getUserVotingPower(address user) public view returns (uint256) {
		uint256 totalAgs = getTotalAgs();
		
		if (totalAgs == 0) return 0;
		
		return (getUserTotalAgsDeposits(user) * 1e18) / totalAgs;
	}

	function getProjectToken(address pool) public view returns (address) {
		return IAlgebraPool(pool).token0() == address(silverStakeToken) ? IAlgebraPool(pool).token1() : IAlgebraPool(pool).token0();
	}

	function getUserAgsDeposits(address user, address pool) public view returns (uint256) {
		return userInfo[user].agsDeposits[pool];
	}

	function getUserProjectTokenDeposits(address user, address pool) public view returns (uint256) {
		return userInfo[user].projectTokenDeposits[pool];
	}

	function getUserLiquidityDeposits(address user, address pool) public view returns (uint128) {
		return userInfo[user].liquidityDeposits[pool];
	}

	function getUserTotalAgsDeposits(address user) public view returns (uint256) {
		uint256 userAgsDeposits = userInfo[user].totalAgsDeposited;
		uint256 length = unlockedPools.length;
		
		unchecked {
			for (uint256 i = 0; i < length; i++) {
				userAgsDeposits -= userInfo[user].agsDeposits[unlockedPools[i]];
			}
		}
		
		return userAgsDeposits;
	}

	function getGaugeInfo(address pool) public view returns (GaugeInfo memory) {
		return gaugeInfo[pool];
	}

	function isGaugeActive(address pool) public view returns (bool) {
		return gaugeInfo[pool].active;
	}

	function isLswLocked() public view returns (bool) {
		return silverLswManager.isLswLocked();
	}


	// ============ PoolLocker getters ============

	function getPositionInfoByTokenId(uint256 _tokenId) public view returns (PositionInfo memory) {
		return poolLocker._getPositionInfoByTokenId(_tokenId);
	}

	function getPositionInfoByLockedPositionId(uint256 _lockedPositionId) public view returns (PositionInfo memory) {
		return poolLocker._getPositionInfoByLockedPositionId(_lockedPositionId);
	}

	function getPendingGauges() public view returns (uint256[] memory) {
		return poolLocker._getPendingGauges();
	}

	function isGaugeCreated(uint256 _tokenId) public view returns (bool) {
		return poolLocker._isGaugeCreated(_tokenId);
	}


	// ============ Modifiers ============

	modifier onlyPoolLocker() {
		require(securityManager.hasContractRole(securityManager.POOL_LOCKER_ROLE(), msg.sender), "Not authorized");
		_;
	}

	modifier onlySilverLswManager () {
		require(securityManager.hasContractRole(securityManager.SILVER_LSW_MANAGER_ROLE(), msg.sender), "Not authorized");
		_;
	}


	// ============ Receive function ============

	receive() external payable {}
}