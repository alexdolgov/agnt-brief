// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

// ============ Imports ============
import "@openzeppelin/contracts/access/Ownable2Step.sol";

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC721} from "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import {INonfungiblePositionManager} from "../interfaces/INonFungiblePositionManager.sol";
import "../Security/ContractPermissionManager.sol";
import {TransferHelper} from "../libraries/TransferHelper.sol";

// ============ Interfaces ============
interface IGaugeManager {
	function increaseLockedAgs(uint256 amountLockedAgs) external;
	function decreaseLockedAgs(uint256 amountUnlockedAgs) external;
	function desactivateGauge(address pool) external;
	function unlockedPool(address pool) external;
	function isLswLocked() external view returns (bool);
	function isGaugeActive(address pool) external view returns (bool);
}

interface IAlgebraFactory {
    function getPair(
        address tokenA,
        address tokenB
    ) external view returns (address pool);
}

// ============ Structs ============
struct PositionInfo {
	uint256 lockedPositionId;  // ID of the locked position (starts from 1)
	uint256 tokenId;
	address owner;
	address token0;
	address token1;
	uint256 silverStakeAmount;
	uint256 lockedMonths;
	uint256 creationTime;
	uint256 lockedUntil;
	bool locked;
	bool gaugeCreated;
	address pool;
}

/**
 * @title PoolLocker
 * @author github.com/SifexPro
 * @notice This contract is used to lock the LP tokens for the gauges
 */
contract PoolLocker is Ownable2Step {
	// ============ Interfaces ============
	IERC20 public silverStakeToken;
	IGaugeManager public gaugeManager;
	INonfungiblePositionManager public positionManager;
	IERC721 public positionManagerERC721;
	ContractPermissionManager public immutable securityManager;

	// ============ Storage ============
	uint256 public lockedPositionId;
    mapping(uint256 => PositionInfo) public positionByTokenId;
	mapping(address => uint256[]) public userPositions;
	mapping(uint256 => uint256) public tokenIdByLockedPositionId;
	uint256[] public pendingGaugesTokenId;
	uint256[] public pendingToUnlockTokenId;

	// ============ Events ============
	event PositionMinted(uint256 lockedPositionId, uint256 tokenId, uint128 liquidity, uint256 amount0, uint256 amount1);
	event PositionLocked(uint256 lockedPositionId, uint256 tokenId, address owner);
	event PositionUnlocked(uint256 lockedPositionId, uint256 tokenId, address owner);
	event PositionUnlockedAll();
	event PositionUnlockedAndDesactivatedGauge(uint256 lockedPositionId, uint256 tokenId, address owner);
	event PositionLockIncreased(uint256 lockedPositionId, uint256 tokenId, uint256 oldMonthsLocked, uint256 newMonthsLocked);
	event PoolFeesWithdrawn(uint256 lockedPositionId, uint256 tokenId, address pool, uint256 amount0, uint256 amount1);

	// ============ Events for gauges ============
	event PendingGaugeCreated(uint256 tokenId);
	event PendingGaugeRefused(uint256 tokenId);
	event PendingGaugeRemoved(uint256 tokenId);
	event PendingGaugePurged(uint256 tokenId);

	// ============ Events for setters ============
	event PositionManagerSet(address positionManager);
	event GaugeManagerSet(address gaugeManager);

	// ============ Constructor ============
	constructor(
		address _positionManager,
		address _silverStakeToken, 
		address _securityManager
	) Ownable(msg.sender) {
		positionManager = INonfungiblePositionManager(_positionManager);
		positionManagerERC721 = IERC721(_positionManager);
		silverStakeToken = IERC20(_silverStakeToken);
		securityManager = ContractPermissionManager(_securityManager);
	}


	// ============ LockLP functions ============

	/**	
	 * @notice mint and lock position
	 * @param lockedMonths The amount of mouths to lock the position (must be multiple of 3)
	 * @param projectToken The project token
	 * @param projectTokenAmount The amount of project tokens to lock
	 * @param silverStakeAmount The amount of silver stake to lock
	 */
	function mintAndLockPosition(
		uint256 lockedMonths, 
		address projectToken, 
		uint256 projectTokenAmount, 
		uint256 silverStakeAmount
	) public checkLockMonths(lockedMonths) {
		require(!gaugeManager.isLswLocked(), "Lsw system is locked");
		require(projectToken != address(0), "Invalid project token");
		require(projectToken != address(silverStakeToken), "Project token cannot be SilverStake");
		require(projectTokenAmount > 2000 && silverStakeAmount > 1000, "Amounts too low");

		uint256 balanceSilverStakeTokenBefore = silverStakeToken.balanceOf(address(this));

		TransferHelper.safeTransferFrom(projectToken, msg.sender, address(this), projectTokenAmount);
		TransferHelper.safeTransferFrom(address(silverStakeToken), msg.sender, address(this), silverStakeAmount);
		
		projectTokenAmount -= 2000;
		silverStakeAmount -= 1000;

		TransferHelper.safeTransfer(projectToken, address(gaugeManager), 2000);
		TransferHelper.safeTransfer(address(silverStakeToken), address(gaugeManager), 1000);

		TransferHelper.safeApprove(projectToken, address(positionManager), projectTokenAmount);
		TransferHelper.safeApprove(address(silverStakeToken), address(positionManager), silverStakeAmount);

		(address token0, address token1) = projectToken < address(silverStakeToken) ? 
			(projectToken, address(silverStakeToken)) : (address(silverStakeToken), projectToken);
		(uint256 amount0Desired, uint256 amount1Desired) = projectToken < address(silverStakeToken) ? 
			(projectTokenAmount, silverStakeAmount) : (silverStakeAmount, projectTokenAmount);

		address pool = IAlgebraFactory(positionManager.factory()).getPair(token0, token1);
		require(pool != address(0), "Pool not found");
		require(!gaugeManager.isGaugeActive(pool), "Gauge already active for this projectToken");

		(uint256 tokenId, uint128 liquidity, uint256 amount0, uint256 amount1) = positionManager.mint(
			INonfungiblePositionManager.MintParams({
				token0: token0,
				token1: token1,
				tickLower: -887220,
				tickUpper: 887220,
				amount0Desired: amount0Desired,
				amount1Desired: amount1Desired,
				amount0Min: 0,
				amount1Min: 0,
				recipient: address(this),
				deadline: block.timestamp + 1 hours
			})
		);

		uint256 realSilverStakeAmount = silverStakeAmount - (silverStakeToken.balanceOf(address(this)) - balanceSilverStakeTokenBefore);
		TransferHelper.safeTransfer(address(silverStakeToken), msg.sender, silverStakeAmount - realSilverStakeAmount);

		lockPosition(tokenId, token0, token1, msg.sender, realSilverStakeAmount, lockedMonths, pool);

		emit PositionMinted(positionByTokenId[tokenId].lockedPositionId, tokenId, liquidity, amount0, amount1);
	}

	function lockPosition(uint256 _tokenId, address token0, address token1, address _owner, uint256 silverStakeAmount, uint256 lockedMonths, address pool) private {
		require(!positionByTokenId[_tokenId].locked, "Position already locked");
		require(positionManagerERC721.ownerOf(_tokenId) == address(this), "Position not transferred to contract");
	
		positionByTokenId[_tokenId] = PositionInfo({
			lockedPositionId: _incrementLockedPositionId(),
			tokenId: _tokenId,
			owner: _owner,
			token0: token0,
			token1: token1,
			silverStakeAmount: silverStakeAmount,
			locked: true,
			lockedMonths: lockedMonths,
			creationTime: block.timestamp,
			lockedUntil: block.timestamp + (lockedMonths * 30 days),
			gaugeCreated: false,
			pool: pool
		});
		_increaseLockedAgs(silverStakeAmount);
		tokenIdByLockedPositionId[positionByTokenId[_tokenId].lockedPositionId] = _tokenId;
		pendingGaugesTokenId.push(_tokenId);
		userPositions[_owner].push(_tokenId);

		emit PositionLocked(positionByTokenId[_tokenId].lockedPositionId, _tokenId, _owner);
	}

	/**
	 * @notice Unlock position
	 * @param _tokenId The position tokenId
	 */
	function unlockPosition(uint256 _tokenId) public onlyPositionOwner(_tokenId) {
		require(!gaugeManager.isLswLocked(), "Lsw system is locked");
		require(positionByTokenId[_tokenId].locked, "Position not locked");
		////testing
		////require(block.timestamp >= positionByTokenId[_tokenId].lockedUntil, "Position still locked");

		pendingToUnlockTokenId.push(_tokenId);

		emit PositionUnlocked(positionByTokenId[_tokenId].lockedPositionId, _tokenId, msg.sender);
	}

	function unlockAllPositions() public onlyGaugeManager {
		if (pendingToUnlockTokenId.length == 0)
			return;

		uint256 batchSize = 20;
		uint256 startIndex = 0;
		uint256 endIndex = batchSize < pendingToUnlockTokenId.length ? batchSize : pendingToUnlockTokenId.length;
		
		while (startIndex < pendingToUnlockTokenId.length) {
			for (uint256 i = startIndex; i < endIndex; i++) {
				_unlockPositionAndDesactivateGauge(pendingToUnlockTokenId[i]);
			}
			
			for (uint256 i = 0; i < endIndex - startIndex; i++) {
				pendingToUnlockTokenId[i] = pendingToUnlockTokenId[pendingToUnlockTokenId.length - 1];
				pendingToUnlockTokenId.pop();
			}
			
			startIndex = endIndex;
			endIndex = (startIndex + batchSize) < pendingToUnlockTokenId.length ? (startIndex + batchSize) : pendingToUnlockTokenId.length;
		}

		emit PositionUnlockedAll();
	}

	function _unlockPositionAndDesactivateGauge(uint256 _tokenId) private {
		positionByTokenId[_tokenId].locked = false;
		_decreaseLockedAgs(positionByTokenId[_tokenId].silverStakeAmount);
		_desactivateGauge(positionByTokenId[_tokenId].pool);
		_unlockedPool(positionByTokenId[_tokenId].pool);

		positionManagerERC721.safeTransferFrom(address(this), positionByTokenId[_tokenId].owner, _tokenId);
		removePositionFromPendingGauges(_tokenId);

		emit PositionUnlockedAndDesactivatedGauge(positionByTokenId[_tokenId].lockedPositionId, _tokenId, msg.sender);
	}

	/**
	 * @notice Increase lock time
	 * @param _tokenId The position tokenId
	 * @param lockedMonths The additional number of months to lock the position (must be multiple of 3)
	 */
	function increaseLockTime(uint256 _tokenId, uint256 lockedMonths) public onlyPositionOwner(_tokenId) {
		require(positionByTokenId[_tokenId].locked, "Position not locked");
		require(lockedMonths % 3 == 0, "Lock time must be multiple of 3 months");
		require(positionByTokenId[_tokenId].lockedMonths + lockedMonths <= 24, "Maximum lock time is 24 months");

		positionByTokenId[_tokenId].lockedMonths += lockedMonths;
		positionByTokenId[_tokenId].lockedUntil = positionByTokenId[_tokenId].creationTime + (positionByTokenId[_tokenId].lockedMonths * 30 days);

		emit PositionLockIncreased(positionByTokenId[_tokenId].lockedPositionId, _tokenId, positionByTokenId[_tokenId].lockedMonths - lockedMonths, positionByTokenId[_tokenId].lockedMonths);
	}

	function withdrawFees(uint256 _tokenId, INonfungiblePositionManager.CollectParams memory collectParams) public onlyPositionOwner(_tokenId) {
		require(positionByTokenId[_tokenId].locked, "Position not locked");
		require(positionByTokenId[_tokenId].owner == msg.sender, "Not owner of position");

		(uint256 amount0, uint256 amount1) = positionManager.collect(collectParams);

		emit PoolFeesWithdrawn(positionByTokenId[_tokenId].lockedPositionId, _tokenId, positionByTokenId[_tokenId].pool, amount0, amount1);
	}


	// ============ Gauge manager functions ============

	/**
	 * @notice Set position as gauge created
	 * @param _tokenId The position tokenId
	 */
	function gaugeCreated(uint256 _tokenId) public onlyGaugeManager {
		positionByTokenId[_tokenId].gaugeCreated = true;
		removePositionFromPendingGauges(_tokenId);

		emit PendingGaugeCreated(_tokenId);
	}

	function gaugeRefused(uint256 _tokenId) public onlyGaugeManager {
		require(!positionByTokenId[_tokenId].gaugeCreated, "Gauge already created");

		positionByTokenId[_tokenId].locked = false;
		_decreaseLockedAgs(positionByTokenId[_tokenId].silverStakeAmount);

		removePositionFromPendingGauges(_tokenId);
		positionManagerERC721.safeTransferFrom(address(this), positionByTokenId[_tokenId].owner, _tokenId);

		emit PendingGaugeRefused(_tokenId);
	}

	/**
	 * @notice Remove a position from pending gauges
	 * @param _tokenId The position tokenId
	 */
	function removePositionFromPendingGauges(uint256 _tokenId) public onlyOwnerOrGaugeManager {
		uint256 length = pendingGaugesTokenId.length;
		for (uint256 i = 0; i < length; i++) {
			if (pendingGaugesTokenId[i] == _tokenId) {
				if (i < length - 1) {
					pendingGaugesTokenId[i] = pendingGaugesTokenId[length - 1];
				}
				pendingGaugesTokenId.pop();
				break;
			}
		}

		emit PendingGaugeRemoved(_tokenId);
	}

	/**
	 * @notice Purge pending gauges
	 * @dev Remove pending gauges that are older than 2 weeks so that don't flood the pendingGaugesTokenId array
	 */
	function purgePendingGauges() public onlyOwnerOrGaugeManager {
		uint256 length = pendingGaugesTokenId.length;
		uint256 actualTime = block.timestamp;
		uint256 i = 0;

		while (i < length) {
			uint256 tokenId = pendingGaugesTokenId[i];
			if (actualTime - positionByTokenId[tokenId].creationTime >= 2 weeks) {
				positionByTokenId[tokenId].locked = false;
				positionManagerERC721.safeTransferFrom(address(this), positionByTokenId[tokenId].owner, tokenId);

				if (i < length - 1) {
					pendingGaugesTokenId[i] = pendingGaugesTokenId[length - 1];
				}
				pendingGaugesTokenId.pop();
				length--;

				emit PendingGaugePurged(tokenId);
			} else {
				i++;
			}
		}
	}


	// ============ Internal functions ============

	function _incrementLockedPositionId() private returns (uint256) {
		lockedPositionId++;

		return lockedPositionId;
	}

	function _increaseLockedAgs(uint256 silverStakeAmount) private {
		gaugeManager.increaseLockedAgs(silverStakeAmount);
	}

	function _decreaseLockedAgs(uint256 silverStakeAmount) private {
		gaugeManager.decreaseLockedAgs(silverStakeAmount);
	}

	function _desactivateGauge(address pool) private {
		gaugeManager.desactivateGauge(pool);
	}

	function _unlockedPool(address pool) private {
		gaugeManager.unlockedPool(pool);
	}


	// ============ Setters ============

	function setPositionManager(address _positionManager) public onlyOwner {
		positionManager = INonfungiblePositionManager(_positionManager);
		positionManagerERC721 = IERC721(_positionManager);

		emit PositionManagerSet(_positionManager);
	}

	function setGaugeManager(address _gaugeManager) public onlyOwner {
		gaugeManager = IGaugeManager(payable(_gaugeManager));

		emit GaugeManagerSet(_gaugeManager);
	}


	// ============ Getters ============

	function _getPositionInfoByTokenId(uint256 tokenId) public view returns (PositionInfo memory) {
		return positionByTokenId[tokenId];
	}

	function _getPositionInfoByLockedPositionId(uint256 _lockedPositionId) public view returns (PositionInfo memory) {
		return _getPositionInfoByTokenId(tokenIdByLockedPositionId[_lockedPositionId]);
	}

	function _getTokenIdByLockedPositionId(uint256 _lockedPositionId) public view returns (uint256) {
		return tokenIdByLockedPositionId[_lockedPositionId];
	}

	function _getPendingGauges() public view returns (uint256[] memory) {
		return pendingGaugesTokenId;
	}

	function _isGaugeCreated(uint256 tokenId) public view returns (bool) {
		return positionByTokenId[tokenId].gaugeCreated;
	}

	function _getUserPositions(address user) public view returns (uint256[] memory) {
		return userPositions[user];
	}

	// ============ Modifiers ============

	modifier onlyOwnerOrGaugeManager() {
		require(msg.sender == owner() || securityManager.hasContractRole(securityManager.GAUGE_MANAGER_ROLE(), msg.sender), "Not authorized");
		_;
	}

	modifier onlyGaugeManager () {
		require(securityManager.hasContractRole(securityManager.GAUGE_MANAGER_ROLE(), msg.sender), "Not authorized");
		_;
	}

	modifier onlyPositionOwner(uint256 _tokenId) {
		require(positionByTokenId[_tokenId].owner == msg.sender, "Only position owner");
		_;
	}

	modifier checkLockMonths(uint256 lockedMonths) {
		require(lockedMonths >= 6, "Minimum lock time is 6 months");
		require(lockedMonths <= 24, "Maximum lock time is 24 months");
		require(lockedMonths % 3 == 0, "Lock time must be multiple of 3 months");
		_;
	}

	
	// ============ Receive function ============

	receive() external payable {}
}
//// re see the positionId
//// re see the view functions (for positionId)
//// key for returns instead of tuple
