// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;

import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";
import {IERC721} from "@openzeppelin/contracts/interfaces/IERC721.sol";
import {IERC721Receiver} from "@openzeppelin/contracts/interfaces/IERC721Receiver.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {Strings} from "@openzeppelin/contracts/utils/Strings.sol";

import {IPoolManager} from "@uniswap/v4-core/src/interfaces/IPoolManager.sol";
import {IPositionManager} from "@uniswap/v4-periphery/src/interfaces/IPositionManager.sol";
import {PoolKey} from "@uniswap/v4-core/src/types/PoolKey.sol";
import {PoolIdLibrary} from "@uniswap/v4-core/src/types/PoolId.sol";
import {StateLibrary} from "@uniswap/v4-core/src/libraries/StateLibrary.sol";
import {Currency, CurrencyLibrary} from "@uniswap/v4-core/src/types/Currency.sol";
import {Actions} from "./libs/Actions.sol";
import {Planner, Plan} from "./libs/Planner.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {IUniversalLocker} from "./interface/IUniversalLocker_GPS.sol";

import {PositionInfo} from "@uniswap/v4-periphery/src/libraries/PositionInfoLibrary.sol";
import {LiquidityAmounts} from "@uniswap/v4-core/test/utils/LiquidityAmounts.sol";
import {TickMath} from "@uniswap/v4-core/src/libraries/TickMath.sol";
import {IAllowanceTransfer} from "permit2/src/interfaces/IAllowanceTransfer.sol";
import {TransferHelper} from "./libs/TransferHelper.sol";

contract UniV4LiquidityLocker is
    IUniversalLocker,
    IERC721Receiver,
    Ownable,
    ReentrancyGuard
{
    using Planner for Plan;
    using PoolIdLibrary for PoolKey;
    using CurrencyLibrary for Currency;
    using StateLibrary for IPoolManager;
    using Strings for uint256;
    using Strings for uint160;
    using EnumerableSet for EnumerableSet.UintSet;
    using EnumerableSet for EnumerableSet.Bytes32Set;
    using SafeERC20 for IERC20;

    IPoolManager public immutable poolManager;
    IPositionManager public immutable positionManager;
    IAllowanceTransfer public immutable permit2;

    mapping(uint256 => IUniversalLocker.LockInfo) public locks;
    mapping(address => EnumerableSet.UintSet) private userLocks;
    uint256 private nextLockId;

    // fees
    struct FeeStruct {
        string name; // name by which the fee is accessed
        uint256 lpFee; // 100 = 1%, 10,000 = 100%
        uint256 collectFee; // 100 = 1%, 10,000 = 100%
        uint256 lockFee; // in amount tokens
        address lockFeeToken; // address(0) = ETH otherwise ERC20 address expected
    }
    mapping(address owner => FeeStruct) ownerFees;
    mapping(address owner => bool) isCustomFee;

    mapping(bytes32 nameHash => FeeStruct) public fees;
    EnumerableSet.Bytes32Set private feeNameHashSet;

    uint256 public constant FEE_DENOMINATOR = 10000; // denominator for all fees
    uint256 public constant MAX_FEE = 500;

    address public feeReceiver; // Address to receive fees

    // Add state variables
    mapping(address => bool) public blacklistedHooks;
    mapping(address => bool) public whitelistedHooks;
    bool public isWhitelistMode;

    modifier validLockOwner(uint256 lockId) {
        require(lockId < nextLockId, "Invalid lockId");
        require(locks[lockId].owner == _msgSender(), "Not lock owner");
        _;
    }

    constructor(
        address _poolManager,
        address _positionManager,
        address _permit2,
        address _feeReceiver
    ) Ownable(_msgSender()) {
        if (_poolManager == address(0)) revert InvalidPoolManager();
        if (_positionManager == address(0)) revert InvalidPositionManager();
        if (_permit2 == address(0)) revert InvalidPermit2();
        require(_feeReceiver != address(0), "Invalid fee receiver");

        poolManager = IPoolManager(_poolManager);
        positionManager = IPositionManager(_positionManager);
        permit2 = IAllowanceTransfer(_permit2);
        feeReceiver = _feeReceiver;

        addOrUpdateFee("DEFAULT", 40, 160, 0.05 ether, address(0));
        addOrUpdateFee("LVP", 64, 80, 0, address(0));
        addOrUpdateFee("LLP", 24, 280, 0, address(0));
    }

    /// @notice Add a new fee configuration or update an existing one
    /// @dev Emits `OnEditFee` if the fee exists, otherwise emits `OnAddFee`
    /// @param name_ The name of the fee configuration (e.g., "DEFAULT")
    /// @param lpFee_ lp fee
    /// @param collectFee_ collect fee
    /// @param lockFee_ Fixed fee amount charged during lock
    /// @param lockFeeToken_ The token used for paying the lock fee (address(0) for ETH)
    function addOrUpdateFee(
        string memory name_,
        uint256 lpFee_,
        uint256 collectFee_,
        uint256 lockFee_,
        address lockFeeToken_
    ) public onlyOwner {
        bytes32 nameHash = keccak256(abi.encodePacked(name_));
        require(lpFee_ <= MAX_FEE && collectFee_ <= MAX_FEE, "MAX_FEE");

        FeeStruct memory feeObj = FeeStruct(
            name_,
            lpFee_,
            collectFee_,
            lockFee_,
            lockFeeToken_
        );
        fees[nameHash] = feeObj;
        if (feeNameHashSet.contains(nameHash)) {
            emit OnEditFee(
                nameHash,
                name_,
                lpFee_,
                collectFee_,
                lockFee_,
                lockFeeToken_
            );
        } else {
            feeNameHashSet.add(nameHash);
            emit OnAddFee(
                nameHash,
                name_,
                lpFee_,
                collectFee_,
                lockFee_,
                lockFeeToken_
            );
        }
    }

    /// @notice Remove an existing fee configuration by name
    /// @dev The default fee named "DEFAULT" cannot be removed
    /// @param name_ The name of the fee configuration to remove
    function removeFee(string memory name_) external onlyOwner {
        bytes32 nameHash = keccak256(abi.encodePacked(name_));
        // DEFAULT cannot be removed
        require(nameHash != keccak256(abi.encodePacked("DEFAULT")), "DEFAULT");
        require(feeNameHashSet.contains(nameHash), "Fee not exists");
        feeNameHashSet.remove(nameHash);
        delete fees[nameHash];
        emit OnRemoveFee(nameHash);
    }

    /// @notice Retrieve the fee configuration by name
    /// @param name_ The name of the fee configuration
    /// @return The corresponding `FeeStruct` with all fee parameters
    function getFee(
        string memory name_
    ) public view returns (FeeStruct memory) {
        bytes32 feeHash = keccak256(abi.encodePacked(name_));
        require(feeNameHashSet.contains(feeHash), "NOT FOUND");
        return fees[feeHash];
    }

    /// @notice Check if a fee name is supported
    /// @param name_ The name to check
    /// @return True if the fee configuration exists, false otherwise
    function isSupportedFeeName(
        string memory name_
    ) public view returns (bool) {
        bytes32 nameHash = keccak256(abi.encodePacked(name_));
        return feeNameHashSet.contains(nameHash);
    }

    /// @notice Deduct the lock fee based on the specified fee configuration
    /// @param feeObj The fee configuration containing amount and token address
    function _deductLockFee(FeeStruct memory feeObj) internal {
        if (feeObj.lockFeeToken == address(0)) {
            // ETH
            require(msg.value == feeObj.lockFee, "Incorrect lock fee");
            TransferHelper.safeTransferETH(feeReceiver, msg.value);
        } else {
            require(msg.value == 0, "Incorrect lock fee");
            TransferHelper.safeTransferFrom(
                feeObj.lockFeeToken,
                _msgSender(),
                feeReceiver,
                feeObj.lockFee
            );
        }
    }

    /// @notice Update the global fee receiver address
    /// @dev Emits an `OnFeeReceiverUpdated` event with old and new addresses
    /// @param feeReceiver_ The new address to receive fees
    function updateFeeReceiver(address feeReceiver_) external onlyOwner {
        emit OnFeeReceiverUpdated(feeReceiver, feeReceiver_);
        feeReceiver = feeReceiver_;
    }

    /// @notice LockOwnere set a collector address for a specific lock
    /// @dev Only the lock owner can update the collector address
    /// @param lockId The ID of the lock to update
    /// @param newCollectAddress The new address to receive collected rewards
    function setCollectAddress(
        uint256 lockId,
        address newCollectAddress
    ) external {
        if (newCollectAddress == address(0)) revert InvalidCollectAddress();
        IUniversalLocker.LockInfo storage lock = locks[lockId];
        if (lock.owner != msg.sender) revert NotOwner();
        lock.collector = newCollectAddress;
        emit CollectAddressUpdated(lockId, newCollectAddress);
    }

    /// @notice Set a custom fee configuration for a specific user
    /// @param user The user address to assign a custom fee configuration
    /// @param feeObj The custom `FeeStruct` to assign to the user
    function setCustomFee(
        address user,
        FeeStruct memory feeObj
    ) external onlyOwner {
        require(
            feeObj.lpFee <= MAX_FEE && feeObj.collectFee <= MAX_FEE,
            "MAX_FEE"
        );
        require(user != address(0), "Invalid user");

        isCustomFee[user] = true;
        ownerFees[user] = feeObj;

        emit CustomFeeAdded(
            user,
            feeObj.lpFee,
            feeObj.collectFee,
            feeObj.lockFee
        );
    }

    /// @notice Clears the custom fee configuration for a specific user and reverts to the global fee settings
    /// @param user The address of the user whose custom fee is to be cleared
    function removeCustomFee(address user) external onlyOwner {
        require(user != address(0), "Invalid user");
        require(isCustomFee[user], "No custom fee set");

        isCustomFee[user] = false;
        delete ownerFees[user];
        emit CustomFeeRemoved(user);
    }

    /// @notice Add or remove a hook address from the whitelist
    /// @param hookAddress The hook contract address
    /// @param status `true` to whitelist, `false` to remove from whitelist
    function setHookWhitelist(
        address hookAddress,
        bool status
    ) external onlyOwner {
        if (hookAddress == address(0)) revert InvalidHookAddress();
        if (whitelistedHooks[hookAddress] == status) revert NoChange();
        whitelistedHooks[hookAddress] = status;
        emit HookWhitelisted(hookAddress, status);
    }

    /// @notice Add or remove a hook address from the blacklist
    /// @param hook The hook contract address
    /// @param blacklisted `true` to blacklist, `false` to remove from blacklist
    function setHookBlacklist(
        address hook,
        bool blacklisted
    ) external onlyOwner {
        if (hook == address(0)) revert InvalidHookAddress();
        if (blacklistedHooks[hook] == blacklisted) revert NoChange();
        blacklistedHooks[hook] = blacklisted;
        emit HookBlacklisted(hook, blacklisted);
    }

    /// @notice Toggle whitelist enforcement mode for hook validation
    /// @dev When enabled, only whitelisted hooks are allowed (blacklist still applies)
    function changeWhitelistMode() external onlyOwner {
        isWhitelistMode = !isWhitelistMode;
        emit WhitelistModeChanged(isWhitelistMode);
    }

    /// @notice Validate a hook address against the current whitelist/blacklist rules
    /// @dev blacklistedHooks is enabled by default
    /// @param hook The hook contract address to validate
    function _validateHook(address hook) internal view {
        if (isWhitelistMode) {
            if (!whitelistedHooks[hook]) revert HookNotWhitelisted();
        }
        if (blacklistedHooks[hook]) revert HookIsBlacklisted();
    }

    /// @notice Parameters for creating a lock
    /// @param tokenId NFT position token ID
    /// @param unlockTime Timestamp when position can be unlocked
    /// @param collectFee collect fee
    /// @param lpFee lp fee
    /// @param liquidity Amount of liquidity being locked
    /// @param poolKey Pool key associated with the position
    struct LockParams {
        uint256 tokenId;
        uint256 unlockTime;
        uint256 collectFee;
        uint256 lpFee;
        uint128 liquidity;
        PoolKey poolKey;
    }

    /// @notice Locks an NFT position
    /// @param tokenId NFT position token ID
    /// @param unlockTime Timestamp when position can be unlocked
    /// @param collector_ lock owner set, address to collect fees to
    /// @param feeName Name of the fee to use
    /// @return lockId ID of the lock created
    function lockNFTPosition(
        uint256 tokenId,
        uint256 unlockTime,
        address collector_,
        string memory feeName
    ) external payable nonReentrant returns (uint256 lockId) {
        require(isSupportedFeeName(feeName), "FeeName invalid");
        if (unlockTime <= block.timestamp) revert UnlockTimeInPast();

        FeeStruct memory feeObj = getFee(feeName);
        if (isCustomFee[msg.sender]) {
            feeObj = ownerFees[msg.sender];
        }

        // Get position info
        (PoolKey memory poolKey, ) = IPositionManager(address(positionManager))
            .getPoolAndPositionInfo(tokenId);
        uint128 liquidity = IPositionManager(address(positionManager))
            .getPositionLiquidity(tokenId);
        if (liquidity == 0) revert NoLiquidityInPosition();

        // Check if pool exists by getting its state
        (uint160 sqrtPriceX96, , , ) = poolManager.getSlot0(poolKey.toId());
        if (sqrtPriceX96 == 0) revert PoolNotInitialized();

        // Validate hook based on permission mode
        if (address(poolKey.hooks) != address(0)) {
            _validateHook(address(poolKey.hooks));
        }

        lockId = _lock(
            tokenId,
            poolKey,
            liquidity,
            collector_,
            unlockTime,
            feeObj
        );
    }

    /// @notice Internal function to lock a Uniswap V4 position NFT and optionally apply fee logic
    /// @param tokenId The NFT token ID of the Uniswap V4 position to be locked
    /// @param poolKey The key representing the pool
    /// @param liquidity The liquidity value to be locked
    /// @param collector_ The address to receive pending swap fee during locking
    /// @param unlockTime The UNIX timestamp after which the position can be unlocked
    /// @param feeObj The fee configuration applied to this lock (including lockFee and lpFee)
    /// @return lockId The ID assigned to this new lock
    function _lock(
        uint256 tokenId,
        PoolKey memory poolKey,
        uint128 liquidity,
        address collector_,
        uint256 unlockTime,
        FeeStruct memory feeObj
    ) internal returns (uint256 lockId) {
        if (feeObj.lockFee > 0) {
            _deductLockFee(feeObj);
        }

        IERC721(address(positionManager)).safeTransferFrom(
            msg.sender,
            address(this),
            tokenId
        );

        // collect swap fee
        Plan memory collect_plan = Planner.init();
        collect_plan = collect_plan.add(
            Actions.DECREASE_LIQUIDITY,
            abi.encode(
                tokenId,
                uint256(0),
                uint128(0), // min amount 0
                uint128(0), // min amount 1
                "" // hook data
            )
        );
        collect_plan = collect_plan.add(
            Actions.TAKE_PAIR,
            abi.encode(poolKey.currency0, poolKey.currency1, collector_)
        );

        bytes memory collectData = collect_plan.encode();
        positionManager.modifyLiquidities(collectData, block.timestamp + 60);

        // lp fee
        if (feeObj.lpFee > 0) {
            uint256 feeAmount = (uint256(liquidity) * feeObj.lpFee) /
                FEE_DENOMINATOR;

            Plan memory lpFee_plan = Planner.init();
            lpFee_plan = lpFee_plan.add(
                Actions.DECREASE_LIQUIDITY,
                abi.encode(
                    tokenId,
                    feeAmount,
                    uint128(0), // min amount 0
                    uint128(0), // min amount 1
                    "" // hook data
                )
            );

            lpFee_plan = lpFee_plan.add(
                Actions.TAKE_PAIR,
                abi.encode(poolKey.currency0, poolKey.currency1, feeReceiver)
            );

            bytes memory planData = lpFee_plan.encode();
            positionManager.modifyLiquidities(planData, block.timestamp + 60);
            liquidity = IPositionManager(address(positionManager))
                .getPositionLiquidity(tokenId);
        }

        // create lock
        lockId = nextLockId++;
        _createLockInfo(
            LockParams({
                tokenId: tokenId,
                unlockTime: unlockTime,
                collectFee: feeObj.collectFee,
                lpFee: feeObj.lpFee,
                liquidity: liquidity,
                poolKey: poolKey
            }),
            lockId
        );

        emit LiquidityLocked(
            lockId,
            msg.sender,
            address(positionManager),
            tokenId,
            poolKey.toId(),
            liquidity,
            unlockTime
        );
    }

    /// @notice Internal function to initialize and store lock metadata
    /// @param params The set of lock parameters including tokenId, fees, unlock time, and liquidity
    /// @param lockId The ID used to index this lock entry in the global `locks` mapping
    function _createLockInfo(
        LockParams memory params,
        uint256 lockId
    ) internal {
        locks[lockId] = IUniversalLocker.LockInfo({
            lockId: lockId,
            owner: msg.sender,
            pendingOwner: msg.sender,
            tokenId: params.tokenId,
            poolKey: params.poolKey,
            amount: params.liquidity,
            unlockTime: params.unlockTime,
            collector: msg.sender,
            collectFee: params.collectFee,
            lpFee: params.lpFee
        });

        userLocks[msg.sender].add(lockId);
    }

    /// @notice Unlocks a locked position
    /// @param lockId ID of the lock to unlock
    function unlockLiquidity(uint256 lockId) external nonReentrant {
        IUniversalLocker.LockInfo storage lock = locks[lockId];
        if (lock.owner != msg.sender) revert NotOwner();
        if (lock.unlockTime > block.timestamp) revert StillLocked();
        if (lock.amount == 0) revert AlreadyUnlocked();

        uint256 amount = lock.amount;
        address lockOwner = lock.owner;
        uint256 tokenId = lock.tokenId;

        // Update state before transfer
        lock.amount = 0;
        userLocks[lockOwner].remove(lockId);

        // Use try-catch for NFT transfer
        try
            IERC721(address(positionManager)).transferFrom(
                address(this),
                lockOwner,
                tokenId
            )
        {
            emit LiquidityUnlocked(
                lockId,
                lockOwner,
                address(positionManager),
                tokenId,
                lock.poolKey.toId(),
                amount
            );
        } catch Error(string memory reason) {
            revert TransferFailed(reason);
        } catch {
            revert TransferFailed("Unknown transfer error");
        }

        // Delete lock info after successful transfer
        delete locks[lockId];
    }

    /// @notice Collects fees from a locked position
    /// @param lockId ID of the lock to collect fees from
    /// @param recipient Address to receive collected fees
    /// @return amount0 Amount of token0 collected
    /// @return amount1 Amount of token1 collected
    /// @return fee0 Protocol fee amount for token0
    /// @return fee1 Protocol fee amount for token1
    /// @dev Handles fee splitting between protocol and user
    function collect(
        uint256 lockId,
        address recipient
    )
        external
        nonReentrant
        returns (uint256 amount0, uint256 amount1, uint256 fee0, uint256 fee1)
    {
        IUniversalLocker.LockInfo storage lock = locks[lockId];

        if (lock.owner != msg.sender && lock.collector != msg.sender)
            revert NotOwner();
        if (recipient == address(0)) revert InvalidRecipient();
        // Get position info
        (PoolKey memory poolKey, ) = IPositionManager(address(positionManager))
            .getPoolAndPositionInfo(lock.tokenId);
        uint128 currentLiquidity = IPositionManager(address(positionManager))
            .getPositionLiquidity(lock.tokenId);

        // Create a plan to collect fees without removing liquidity
        if (currentLiquidity > 0) {
            // Approve position manager to modify position
            IERC721(address(positionManager)).approve(
                address(positionManager),
                lock.tokenId
            );

            // Create a plan using Planner
            Plan memory plan = Planner.init();

            // Add collect fees action (decrease with 0 liquidity)
            plan = plan.add(
                Actions.DECREASE_LIQUIDITY,
                abi.encode(
                    lock.tokenId,
                    uint256(0), // Don't remove any liquidity
                    uint128(0), // min amount 0
                    uint128(0), // min amount 1
                    "" // hook data
                )
            );

            // Add take actions for both tokens to recipient
            // TAKE_PAIR action withdraws any accumulated tokens for a currency pair from the PoolManager
            // to the specified recipient address. This is used to collect fees and other accumulated value.
            plan = plan.add(
                Actions.TAKE_PAIR,
                abi.encode(poolKey.currency0, poolKey.currency1, address(this))
            );

            // Encode the final data
            bytes memory unlockData = plan.encode();

            positionManager.modifyLiquidities(
                unlockData,
                block.timestamp + 60 // deadline
            );

            // Get token addresses
            address token0 = Currency.unwrap(poolKey.currency0);
            address token1 = Currency.unwrap(poolKey.currency1);

            // Get collected amounts
            amount0 = IERC20(token0).balanceOf(address(this));
            amount1 = IERC20(token1).balanceOf(address(this));

            if (lock.collectFee > 0) {
                // Calculate protocol fees
                fee0 = (amount0 * lock.collectFee) / FEE_DENOMINATOR;
                fee1 = (amount1 * lock.collectFee) / FEE_DENOMINATOR;

                // Remaining amounts after fees
                amount0 = amount0 - fee0;
                amount1 = amount1 - fee1;

                // Transfer protocol fees
                if (fee0 > 0) {
                    IERC20(token0).safeTransfer(feeReceiver, fee0);
                }
                if (fee1 > 0) {
                    IERC20(token1).safeTransfer(feeReceiver, fee1);
                }

                // Transfer remaining amounts
                if (amount0 > 0) {
                    IERC20(token0).safeTransfer(recipient, amount0);
                }
                if (amount1 > 0) {
                    IERC20(token1).safeTransfer(recipient, amount1);
                }
            } else {
                // No protocol fees, transfer full amounts
                if (amount0 > 0) {
                    IERC20(token0).safeTransfer(recipient, amount0);
                }
                if (amount1 > 0) {
                    IERC20(token1).safeTransfer(recipient, amount1);
                }
            }
        }
    }

    /// @dev Ensures that this contract has granted sufficient Permit2 approval for the token to the spender.
    /// @notice If the existing Permit2 allowance is expired or insufficient, it re-approves with the new amount.
    /// @param token The ERC20 token address.
    /// @param needed The required minimum allowance amount to the spender.
    /// @param spender The address that needs to be allowed to spend this contract's tokens via Permit2.
    function _ensureAllowanceViaPermit2(
        address token,
        uint256 needed,
        address spender
    ) internal {
        (uint160 cur, uint48 exp, ) = permit2.allowance(
            address(this),
            token,
            spender
        );
        require(needed <= type(uint160).max, "needed too big");
        if (exp < block.timestamp || cur < needed) {
            permit2.approve(
                token,
                spender,
                uint160(needed),
                uint48(block.timestamp + 1 days)
            );
        }
    }

    // @dev Ensures that the Permit2 contract is approved to transfer the specified amount of this contract's tokens.
    /// @notice This sets or resets the allowance for the Permit2 contract to pull tokens from this contract.
    /// @param token The ERC20 token address to approve.
    /// @param required The minimum amount of allowance that Permit2 should have.
    function _safeApprovePermit2(address token, uint256 required) internal {
        uint256 cur = IERC20(token).allowance(address(this), address(permit2));
        if (cur >= required) return;

        if (cur != 0) {
            try IERC20(token).approve(address(permit2), 0) {} catch {}
        }

        IERC20(token).approve(address(permit2), required);
    }

    /// @dev Increases the liquidity of an existing lock by depositing additional token0 and token1.
    /// @param lockId The ID of the lock whose liquidity is being increased.
    /// @param amount0Max The maximum amount of token0 the user is willing to provide.
    /// @param amount1Max The maximum amount of token1 the user is willing to provide.
    /// @return amount0Used The actual amount of token0 used for increasing liquidity.
    /// @return amount1Used The actual amount of token1 used for increasing liquidity.
    function increaseLiquidity(
        uint256 lockId,
        uint256 amount0Max,
        uint256 amount1Max,
        uint48 deadline
    )
        external
        payable
        nonReentrant
        returns (uint256 amount0Used, uint256 amount1Used)
    {
        // check
        IUniversalLocker.LockInfo storage lock = locks[lockId];
        if (lock.owner != msg.sender) revert NotOwner();

        address token0 = Currency.unwrap(lock.poolKey.currency0);
        address token1 = Currency.unwrap(lock.poolKey.currency1);
        require(token1 != address(0), "DUAL_NATIVE_FORBIDDEN");

        // transfer
        if (token0 == address(0)) {
            require(msg.value == amount0Max, "Incorrect ETH amount");
        } else {
            TransferHelper.safeTransferFrom(
                token0,
                msg.sender,
                address(this),
                amount0Max
            );
        }

        TransferHelper.safeTransferFrom(
            token1,
            msg.sender,
            address(this),
            amount1Max
        );

        // Fetch current price and position information
        (, PositionInfo position) = IPositionManager(positionManager)
            .getPoolAndPositionInfo(lock.tokenId);
        (uint160 sqrtPriceX96, , , ) = StateLibrary.getSlot0(
            poolManager,
            lock.poolKey.toId()
        );

        // Calculate maximum liquidity based on transferred amounts
        uint128 maxLiquidityDelta = LiquidityAmounts.getLiquidityForAmounts(
            sqrtPriceX96,
            TickMath.getSqrtPriceAtTick(position.tickLower()),
            TickMath.getSqrtPriceAtTick(position.tickUpper()),
            amount0Max,
            amount1Max
        );

        // Calculate the exact amount of token0 and token1 needed
        (uint256 amount0Needed, uint256 amount1Needed) = LiquidityAmounts
            .getAmountsForLiquidity(
                sqrtPriceX96,
                TickMath.getSqrtPriceAtTick(position.tickLower()),
                TickMath.getSqrtPriceAtTick(position.tickUpper()),
                maxLiquidityDelta
            );
        amount0Needed = amount0Needed > amount0Max ? amount0Max : amount0Needed;
        amount1Needed = amount1Needed > amount1Max ? amount1Max : amount1Needed;

        // Lp fee
        uint256 lpFee = isCustomFee[msg.sender]
            ? ownerFees[msg.sender].lpFee
            : lock.lpFee;

        uint256 feeAmount0 = 0;
        uint256 feeAmount1 = 0;
        if (lpFee > 0) {
            require(lpFee <= FEE_DENOMINATOR, "LP_FEE_TOO_HIGH");
            feeAmount0 = (amount0Needed * lpFee) / FEE_DENOMINATOR;
            feeAmount1 = (amount1Needed * lpFee) / FEE_DENOMINATOR;

            if (feeAmount0 > 0) {
                if (token0 == address(0))
                    payable(feeReceiver).transfer(feeAmount0);
                else
                    TransferHelper.safeTransfer(
                        token0,
                        feeReceiver,
                        feeAmount0
                    );
            }
            if (feeAmount1 > 0) {
                TransferHelper.safeTransfer(token1, feeReceiver, feeAmount1);
            }
        }

        // approve
        uint256 amount0ForLiquidity = amount0Needed - feeAmount0;
        uint256 amount1ForLiquidity = amount1Needed - feeAmount1;

        if (token0 != address(0)) {
            _safeApprovePermit2(token0, amount0ForLiquidity);
            _ensureAllowanceViaPermit2(
                token0,
                amount0ForLiquidity,
                address(positionManager)
            );
        }
        _safeApprovePermit2(token1, amount1ForLiquidity);
        _ensureAllowanceViaPermit2(
            token1,
            amount1ForLiquidity,
            address(positionManager)
        );

        uint128 liquidityToAdd = LiquidityAmounts.getLiquidityForAmounts(
            sqrtPriceX96,
            TickMath.getSqrtPriceAtTick(position.tickLower()),
            TickMath.getSqrtPriceAtTick(position.tickUpper()),
            amount0ForLiquidity,
            amount1ForLiquidity
        );

        // increase liquidity
        Plan memory plan = Planner.init();
        plan = plan.add(
            Actions.INCREASE_LIQUIDITY,
            abi.encode(
                lock.tokenId,
                liquidityToAdd,
                amount0ForLiquidity,
                amount1ForLiquidity,
                ""
            )
        );

        // default mode SETTLE_PAIR
        plan = plan.add(
            Actions.SETTLE_PAIR,
            abi.encode(lock.poolKey.currency0, lock.poolKey.currency1)
        );
        plan = plan.add(
            Actions.SWEEP,
            abi.encode(lock.poolKey.currency0, address(this))
        );
        plan = plan.add(
            Actions.SWEEP,
            abi.encode(lock.poolKey.currency1, address(this))
        );

        if (token0 == address(0)) {
            positionManager.modifyLiquidities{value: amount0ForLiquidity}(
                plan.encode(),
                deadline
            );
        } else {
            positionManager.modifyLiquidities(plan.encode(), deadline);
        }

        // Return excess tokens
        if (amount0Max > amount0Needed) {
            if (token0 == address(0)) {
                payable(msg.sender).transfer(amount0Max - amount0Needed);
            } else {
                TransferHelper.safeTransfer(
                    token0,
                    msg.sender,
                    amount0Max - amount0Needed
                );
            }
        }
        if (amount1Max > (amount1Needed)) {
            TransferHelper.safeTransfer(
                token1,
                msg.sender,
                amount1Max - amount1Needed
            );
        }

        amount0Used = amount0ForLiquidity;
        amount1Used = amount1ForLiquidity;

        lock.amount += liquidityToAdd;
        emit OnIncreaseLiquidity(
            lockId,
            liquidityToAdd,
            amount0Used,
            amount1Used
        );
    }

    /// @notice Decreases liquidity of an expired lock
    /// @param lockId ID of the lock
    /// @param liquidityDecrease Amount of liquidity to decrease
    /// @param amount0Min Minimum amount of token0 to receive
    /// @param amount1Min Minimum amount of token1 to receive
    /// @return amount0 Amount of token0 received
    /// @return amount1 Amount of token1 received
    /// @dev Only callable after lock expiry
    function decreaseLiquidity(
        uint256 lockId,
        uint128 liquidityDecrease,
        uint256 amount0Min,
        uint256 amount1Min
    ) external nonReentrant returns (uint256 amount0, uint256 amount1) {
        IUniversalLocker.LockInfo storage lock = locks[lockId];
        if (lock.owner != msg.sender) revert NotOwner();
        if (lock.unlockTime >= block.timestamp) revert NotYetExpired();
        if (liquidityDecrease == 0) revert ZeroLiquidity();
        if (liquidityDecrease > lock.amount) revert InsufficientLiquidity();

        // Create a plan using Planner
        Plan memory plan = Planner.init();

        // Add decrease liquidity action
        plan = plan.add(
            Actions.DECREASE_LIQUIDITY,
            abi.encode(
                lock.tokenId,
                liquidityDecrease,
                amount0Min,
                amount1Min,
                "" // hook data
            )
        );

        // Add take pair action to collect tokens
        plan = plan.add(
            Actions.TAKE_PAIR,
            abi.encode(
                lock.poolKey.currency0,
                lock.poolKey.currency1,
                msg.sender
            )
        );

        // Execute plan using modifyLiquidities
        positionManager.modifyLiquidities(
            plan.encode(),
            block.timestamp + 60 // deadline
        );

        // Update lock amount
        lock.amount -= liquidityDecrease;

        emit LiquidityDecreased(lockId);
        return (amount0, amount1);
    }

    /// @notice Returns the total number of lock positions created by a given user
    /// @param user The address of the user
    /// @return The number of lock positions the user owns
    function getUserLockCount(address user) external view returns (uint256) {
        return userLocks[user].length();
    }

    /// @notice Returns the lock ID at a specific index in the user's lock set
    /// @param user The address of the user
    /// @param index The index within the user's lock list
    /// @return The lock ID at the specified index
    function getUserLockAt(
        address user,
        uint256 index
    ) external view returns (uint256) {
        return userLocks[user].at(index);
    }

    /// @notice Returns all lock IDs owned by a specific user
    /// @param user The address of the user
    /// @return lockIds An array of lock IDs associated with the user
    function getUserLocks(
        address user
    ) external view returns (uint256[] memory lockIds) {
        return userLocks[user].values();
    }

    /// @notice Checks whether a lock is currently active (locked and not expired)
    /// @param lockId The ID of the lock
    /// @return True if the lock has liquidity and unlock time is in the future
    function isLocked(uint256 lockId) public view returns (bool) {
        IUniversalLocker.LockInfo storage lock = locks[lockId];
        return lock.amount > 0 && lock.unlockTime > block.timestamp;
    }

    /// @notice Extends lock duration
    /// @param lockId ID of the lock to extend
    /// @param newUnlockTime New unlock timestamp
    /// @dev Can only extend, not reduce unlock time
    function relock(uint256 lockId, uint256 newUnlockTime) external {
        IUniversalLocker.LockInfo storage lock = locks[lockId];
        if (lock.owner != msg.sender) revert NotOwner();
        if (newUnlockTime <= block.timestamp) revert UnlockTimeInPast();
        if (newUnlockTime <= lock.unlockTime) revert InvalidUnlockTime();

        lock.unlockTime = newUnlockTime;
        emit LockExtended(lockId, newUnlockTime);
    }

    /// @notice Returns detailed information about a specific lock position
    /// @param lockId The ID of the lock
    /// @return A `LockInfo` struct containing the lock’s data
    function getLockInfo(
        uint256 lockId
    ) public view returns (IUniversalLocker.LockInfo memory) {
        return locks[lockId];
    }

    /// @notice Returns data of multiple lock positions in a single call
    /// @param lockIds An array of lock IDs to query
    /// @return An array of `LockInfo` structs corresponding to the given IDs
    function getBatchLockInfo(
        uint256[] calldata lockIds
    ) public view returns (IUniversalLocker.LockInfo[] memory) {
        IUniversalLocker.LockInfo[]
            memory lockInfos = new IUniversalLocker.LockInfo[](lockIds.length);
        for (uint256 i = 0; i < lockIds.length; i++) {
            lockInfos[i] = locks[lockIds[i]];
        }
        return lockInfos;
    }

    /// @notice Rescues mistakenly sent ERC20 tokens
    /// @param token Address of the token to rescue
    /// @param receiver Address to receive the tokens
    /// @param amount Amount of tokens to rescue
    /// @dev Cannot rescue locked NFTs
    function adminRescueTokens(
        address token,
        address receiver,
        uint256 amount
    ) external onlyOwner nonReentrant {
        if (token == address(positionManager)) revert CannotRescueNFTs();
        IERC20(token).safeTransfer(receiver, amount);

        emit TokensRescued(token, receiver, amount);
    }

    /// @notice Rescues mistakenly sent ETH
    /// @param amount Amount of ETH to rescue
    /// @param receiver Address to receive the ETH
    /// @dev Only callable by owner
    function adminRescueETH(
        uint256 amount,
        address payable receiver
    ) external onlyOwner nonReentrant {
        (bool success, ) = receiver.call{value: amount}("");
        if (!success) revert ETHTransferFailed();

        emit EthRescued(receiver, amount);
    }

    /// @notice Transfers ownership of a lock to a new owner
    /// @param lockId_ ID of the lock to transfer
    /// @param newOwner_ New owner of the lock
    /// @dev Only callable by the current owner
    /// @dev The new owner must accept the transfer by calling acceptLock
    function transferLock(
        uint256 lockId_,
        address newOwner_
    ) external validLockOwner(lockId_) {
        require(
            newOwner_ != address(0),
            "Lock: new owner cannot be zero address"
        );
        require(
            newOwner_ != _msgSender(),
            "Lock: new owner cannot be current owner"
        ); // _msgSender() is the current owner due to validLockOwner

        locks[lockId_].pendingOwner = newOwner_;
        emit OnLockPendingTransfer(lockId_, _msgSender(), newOwner_);
    }

    /// @notice Accepts ownership of a lock
    /// @param lockId_ ID of the lock to accept
    /// @dev Only callable by the pending owner
    function acceptLock(uint256 lockId_) external {
        require(lockId_ < nextLockId, "Invalid lockId");
        address newOwner = _msgSender();
        // check new owner
        require(newOwner == locks[lockId_].pendingOwner, "Not pendingOwner");
        // emit event
        emit OnLockTransferred(lockId_, locks[lockId_].owner, newOwner);
        // remove lockId from owner
        userLocks[locks[lockId_].owner].remove(lockId_);
        // add lockId to new owner
        userLocks[newOwner].add(lockId_);
        // set owner
        locks[lockId_].pendingOwner = address(0);
        locks[lockId_].owner = newOwner;
    }

    function onERC721Received(
        address operator,
        address from,
        uint256 tokenId,
        bytes calldata data
    ) external pure override returns (bytes4) {
        return IERC721Receiver.onERC721Received.selector;
    }

    receive() external payable {}
}
