// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;

import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";
import {IERC721} from "@openzeppelin/contracts/interfaces/IERC721.sol";
import {IERC721Receiver} from "@openzeppelin/contracts/interfaces/IERC721Receiver.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ECDSA} from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {MessageHashUtils} from "@openzeppelin/contracts/utils/cryptography/MessageHashUtils.sol";
import {Strings} from "@openzeppelin/contracts/utils/Strings.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IAllowanceTransfer} from "permit2/src/interfaces/IAllowanceTransfer.sol";

// PCS Infinity core types
import {PoolKey} from "infinity-core/src/types/PoolKey.sol";
import {PoolIdLibrary} from "infinity-core/src/types/PoolId.sol";
import {Currency, CurrencyLibrary} from "infinity-core/src/types/Currency.sol";
import {ICLPoolManager} from "infinity-core/src/pool-cl/interfaces/ICLPoolManager.sol";

// PCS Infinity periphery
import {ICLPositionManager} from "infinity-periphery/src/pool-cl/interfaces/ICLPositionManager.sol";
import {CLPositionInfo, CLPositionInfoLibrary} from "infinity-periphery/src/pool-cl/libraries/CLPositionInfoLibrary.sol";
import {LiquidityAmounts} from "infinity-periphery/src/pool-cl/libraries/LiquidityAmounts.sol";

// actions / planner
import {Actions} from "./libs/Actions.sol";
import {Planner, Plan} from "./libs/Planner.sol";
import {TransferHelper} from "./libs/TransferHelper.sol";

// Interface and math
import {IUniversalLockerPCS} from "./interface/IUniversalLockerPCS.sol";
import {TickMath} from "@uniswap/v4-core/src/libraries/TickMath.sol";

contract PCSInfinityCLLiquidityLocker is
    IUniversalLockerPCS,
    IERC721Receiver,
    Ownable,
    ReentrancyGuard
{
    using Planner for Plan;
    using PoolIdLibrary for PoolKey;
    using CurrencyLibrary for Currency;
    using CLPositionInfoLibrary for CLPositionInfo;
    using Strings for uint256;
    using Strings for uint160;
    using EnumerableSet for EnumerableSet.UintSet;
    using EnumerableSet for EnumerableSet.Bytes32Set;
    using SafeERC20 for IERC20;

    ICLPoolManager public immutable clPoolManager;
    ICLPositionManager public immutable positionManager;
    IAllowanceTransfer public immutable permit2;

    mapping(uint256 => IUniversalLockerPCS.LockInfo) public locks;
    mapping(address => EnumerableSet.UintSet) private userLocks;
    uint256 private nextLockId;

    // fees
    mapping(bytes32 nameHash => FeeStruct) public fees;
    EnumerableSet.Bytes32Set private feeNameHashSet;

    address public constant NATIVE_ETH = address(0);
    uint256 public constant FEE_DENOMINATOR = 10000;
    uint256 public constant MAX_FEE = 500;

    address public feeReceiver;
    address public customFeeSigner;

    mapping(bytes signature => bool) public disabledSignatures;
    mapping(address => bool) public blacklistedHooks;
    mapping(address => bool) public whitelistedHooks;
    bool public isWhitelistMode;

    modifier validLockOwner(uint256 lockId) {
        if (lockId >= nextLockId) revert InvalidLockId();
        if (locks[lockId].owner != _msgSender()) revert NotOwner();
        _;
    }

    constructor(
        address _clPoolManager,
        address _positionManager,
        address _permit2,
        address _feeReceiver,
        address _customFeeSigner
    ) Ownable(_msgSender()) {
        if (_clPoolManager == address(0)) revert InvalidPoolManager();
        if (_positionManager == address(0)) revert InvalidPositionManager();
        if (_permit2 == address(0)) revert InvalidPermit2();
        require(_feeReceiver != address(0), "Invalid fee receiver");
        require(_customFeeSigner != address(0), "Invalid fee signer");

        clPoolManager = ICLPoolManager(_clPoolManager);
        positionManager = ICLPositionManager(_positionManager);
        permit2 = IAllowanceTransfer(_permit2);
        feeReceiver = _feeReceiver;
        customFeeSigner = _customFeeSigner;

        addOrUpdateFee("DEFAULT", 40, 160, 0.05 ether, address(0));
        addOrUpdateFee("LVP", 64, 80, 0, address(0));
        addOrUpdateFee("LLP", 24, 280, 0, address(0));
    }

    /// @notice Add a new fee configuration or update an existing one
    function addOrUpdateFee(
        string memory name_,
        uint256 lpFee_,
        uint256 collectFee_,
        uint256 lockFee_,
        address lockFeeToken_
    ) public onlyOwner {
        bytes32 nameHash = keccak256(abi.encodePacked(name_));
        require(lpFee_ <= MAX_FEE && collectFee_ <= MAX_FEE, "MAX_FEE");

        FeeStruct memory feeObj = FeeStruct(name_, lpFee_, collectFee_, lockFee_, lockFeeToken_);
        fees[nameHash] = feeObj;
        if (feeNameHashSet.contains(nameHash)) {
            emit OnEditFee(nameHash, name_, lpFee_, collectFee_, lockFee_, lockFeeToken_);
        } else {
            feeNameHashSet.add(nameHash);
            emit OnAddFee(nameHash, name_, lpFee_, collectFee_, lockFee_, lockFeeToken_);
        }
    }

    /// @notice Remove an existing fee configuration by name (DEFAULT cannot be removed)
    function removeFee(string memory name_) external onlyOwner {
        bytes32 nameHash = keccak256(abi.encodePacked(name_));
        require(nameHash != keccak256(abi.encodePacked("DEFAULT")), "DEFAULT");
        require(feeNameHashSet.contains(nameHash), "Fee not exists");
        feeNameHashSet.remove(nameHash);
        delete fees[nameHash];
        emit OnRemoveFee(nameHash);
    }

    /// @notice Retrieve the fee configuration by name
    function getFee(string memory name_) public view returns (FeeStruct memory) {
        bytes32 feeHash = keccak256(abi.encodePacked(name_));
        require(feeNameHashSet.contains(feeHash), "NOT FOUND");
        return fees[feeHash];
    }

    /// @notice Check if a fee name is supported
    function isSupportedFeeName(string memory name_) public view returns (bool) {
        bytes32 nameHash = keccak256(abi.encodePacked(name_));
        return feeNameHashSet.contains(nameHash);
    }

    /// @notice Deduct the lock fee based on the specified fee configuration
    function _deductLockFee(FeeStruct memory feeObj) internal {
        if (feeObj.lockFeeToken == address(0)) {
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
    function updateFeeReceiver(address feeReceiver_) external onlyOwner {
        if(feeReceiver_ == address(0)) revert InvalidFeeReceiver();
        emit OnFeeReceiverUpdated(feeReceiver, feeReceiver_);
        feeReceiver = feeReceiver_;
    }

    /// @notice Set a collector address for a specific lock
    function setCollectAddress(uint256 lockId, address newCollectAddress) external {
        if (newCollectAddress == address(0)) revert InvalidCollectAddress();
        IUniversalLockerPCS.LockInfo storage lock = locks[lockId];
        if (lock.owner != msg.sender) revert NotOwner();
        lock.collector = newCollectAddress;
        emit CollectAddressUpdated(lockId, newCollectAddress);
    }

    /// @notice Update the signer authorized to issue reusable custom fee quotes
    function updateFeeSigner(address feeSigner_) external onlyOwner {
        require(feeSigner_ != address(0), "Invalid fee signer");
        emit OnFeeSignerUpdated(customFeeSigner, feeSigner_);
        customFeeSigner = feeSigner_;
    }

    /// @notice Enable or disable a reusable custom fee signature
    function setSignatureDisabled(bytes calldata signature, bool disabled) external onlyOwner {
        if (disabledSignatures[signature] == disabled) revert NoChange();
        disabledSignatures[signature] = disabled;
        emit OnSignatureDisabled(signature, disabled);
    }

    /// @notice Add or remove a hook address from the whitelist
    function setHookWhitelist(address hookAddress, bool status) external onlyOwner {
        if (hookAddress == address(0)) revert InvalidHookAddress();
        if (whitelistedHooks[hookAddress] == status) revert NoChange();
        whitelistedHooks[hookAddress] = status;
        emit HookWhitelisted(hookAddress, status);
    }

    /// @notice Add or remove a hook address from the blacklist
    function setHookBlacklist(address hook, bool blacklisted) external onlyOwner {
        if (hook == address(0)) revert InvalidHookAddress();
        if (blacklistedHooks[hook] == blacklisted) revert NoChange();
        blacklistedHooks[hook] = blacklisted;
        emit HookBlacklisted(hook, blacklisted);
    }

    /// @notice Toggle whitelist enforcement mode
    function changeWhitelistMode() external onlyOwner {
        isWhitelistMode = !isWhitelistMode;
        emit WhitelistModeChanged(isWhitelistMode);
    }

    /// @notice Validate a hook address against the current whitelist/blacklist rules
    function _validateHook(address hook) internal view {
        if (isWhitelistMode) {
            if (!whitelistedHooks[hook]) revert HookNotWhitelisted();
        }
        if (blacklistedHooks[hook]) revert HookIsBlacklisted();
    }

    struct LockParams {
        uint256 tokenId;
        uint256 unlockTime;
        address lockOwner;
        address collector;
        uint256 collectFee;
        uint256 lpFee;
        uint128 liquidity;
        PoolKey poolKey;
    }

    /// @notice Locks a PCS Infinity CL NFT position
    function lockNFTPosition(
        uint256 tokenId,
        uint256 unlockTime,
        address lockOwner_,
        address collector_,
        string memory feeName
    ) external payable nonReentrant returns (uint256 lockId) {
        if (unlockTime <= block.timestamp) revert UnlockTimeInPast();
        if(lockOwner_ == address(0)) revert InvalidLockOwner();

        require(isSupportedFeeName(feeName), "FeeName invalid");
        FeeStruct memory feeObj = getFee(feeName);

        lockId = _validateAndLock(tokenId, unlockTime, lockOwner_, collector_, feeObj);
    }

    /// @notice Locks a PCS Infinity CL NFT position with a reusable off-chain signed custom fee
    function lockNFTPositionWithCustomFee(
        uint256 tokenId,
        uint256 unlockTime,
        address lockOwner_,
        address collector_,
        bytes memory signature_,
        FeeStruct memory feeObj_
    ) external payable nonReentrant returns (uint256 lockId) {
        if (unlockTime <= block.timestamp) revert UnlockTimeInPast();
        if(lockOwner_ == address(0)) revert InvalidLockOwner();

        _verifyCustomFeeSignature(feeObj_, signature_);
        lockId = _validateAndLock(tokenId, unlockTime, lockOwner_, collector_, feeObj_);
    }

    /// @notice Returns the message hash a fee signer must sign for a custom fee quote
    function getCustomFeeMessageHash(address user, FeeStruct memory feeObj) public view returns (bytes32) {
        return keccak256(
            abi.encodePacked(
                block.chainid,
                address(this),
                user,
                feeObj.name,
                feeObj.lpFee,
                feeObj.collectFee,
                feeObj.lockFee,
                feeObj.lockFeeToken
            )
        );
    }

    /// @notice Verifies a reusable custom fee signature
    function _verifyCustomFeeSignature(FeeStruct memory feeObj, bytes memory signature) internal view {
        require(!disabledSignatures[signature], "Signature disabled");
        require(feeObj.lpFee <= MAX_FEE && feeObj.collectFee <= MAX_FEE, "MAX_FEE");
        bytes32 messageHash = getCustomFeeMessageHash(_msgSender(), feeObj);
        bytes32 prefixedHash = MessageHashUtils.toEthSignedMessageHash(messageHash);
        address signer = ECDSA.recover(prefixedHash, signature);
        require(signer == customFeeSigner, "FeeSigner not allowed");
    }

    /// @notice Validates a PCS Infinity CL NFT position and locks it with the selected fee
    function _validateAndLock(
        uint256 tokenId,
        uint256 unlockTime,
        address lockOwner_,
        address collector_,
        FeeStruct memory feeObj
    ) internal returns (uint256 lockId) {
        (PoolKey memory poolKey, ) = positionManager.getPoolAndPositionInfo(tokenId);
        uint128 liquidity = positionManager.getPositionLiquidity(tokenId);
        if (liquidity == 0) revert NoLiquidityInPosition();

        (uint160 sqrtPriceX96, , , ) = clPoolManager.getSlot0(poolKey.toId());
        if (sqrtPriceX96 == 0) revert PoolNotInitialized();

        if (address(poolKey.hooks) != address(0)) {
            _validateHook(address(poolKey.hooks));
        }

        lockId = _lock(tokenId, poolKey, liquidity, lockOwner_, collector_, unlockTime, feeObj);
    }

    /// @notice Internal function to lock a PCS Infinity CL position NFT
    function _lock(
        uint256 tokenId,
        PoolKey memory poolKey,
        uint128 liquidity,
        address lockOwner_,
        address collector_,
        uint256 unlockTime,
        FeeStruct memory feeObj
    ) internal returns (uint256 lockId) {
        if (feeObj.lockFee > 0) {
            _deductLockFee(feeObj);
        } else {
            require(msg.value == 0, "No lock fee required");
        }

        IERC721(address(positionManager)).safeTransferFrom(msg.sender, address(this), tokenId);

        // Collect pending swap fees to lock owner
        Plan memory collect_plan = Planner.init();
        collect_plan = collect_plan.add(
            Actions.DECREASE_LIQUIDITY,
            abi.encode(tokenId, uint256(0), uint128(0), uint128(0), "")
        );
        collect_plan = collect_plan.add(
            Actions.TAKE_PAIR,
            abi.encode(poolKey.currency0, poolKey.currency1, lockOwner_)
        );
        positionManager.modifyLiquidities(collect_plan.encode(), block.timestamp + 60);

        // LP fee: remove a portion of liquidity and send to feeReceiver
        if (feeObj.lpFee > 0) {
            uint256 feeAmount = (uint256(liquidity) * feeObj.lpFee) / FEE_DENOMINATOR;

            Plan memory lpFee_plan = Planner.init();
            lpFee_plan = lpFee_plan.add(
                Actions.DECREASE_LIQUIDITY,
                abi.encode(tokenId, feeAmount, uint128(0), uint128(0), "")
            );
            lpFee_plan = lpFee_plan.add(
                Actions.TAKE_PAIR,
                abi.encode(poolKey.currency0, poolKey.currency1, feeReceiver)
            );
            positionManager.modifyLiquidities(lpFee_plan.encode(), block.timestamp + 60);
            liquidity = positionManager.getPositionLiquidity(tokenId);
        }

        // Create lock
        lockId = nextLockId++;
        _createLockInfo(
            LockParams({
                tokenId: tokenId,
                unlockTime: unlockTime,
                lockOwner: lockOwner_,
                collector: collector_,
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
    function _createLockInfo(LockParams memory params, uint256 lockId) internal {
        locks[lockId] = IUniversalLockerPCS.LockInfo({
            lockId: lockId,
            owner: params.lockOwner,
            pendingOwner: address(0),
            tokenId: params.tokenId,
            poolKey: params.poolKey,
            amount: params.liquidity,
            unlockTime: params.unlockTime,
            collector: params.collector,
            collectFee: params.collectFee,
            lpFee: params.lpFee
        });

        userLocks[params.lockOwner].add(lockId);
    }

    /// @notice Unlocks a locked position after the unlock time has passed
    function unlockLiquidity(uint256 lockId) external nonReentrant {
        IUniversalLockerPCS.LockInfo storage lock = locks[lockId];
        if (lock.owner != msg.sender) revert NotOwner();
        if (lock.unlockTime > block.timestamp) revert StillLocked();
        if (lock.amount == 0) revert AlreadyUnlocked();

        uint256 amount = lock.amount;
        address lockOwner = lock.owner;
        uint256 tokenId = lock.tokenId;

        lock.amount = 0;
        userLocks[lockOwner].remove(lockId);

        try IERC721(address(positionManager)).transferFrom(address(this), lockOwner, tokenId) {
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

        delete locks[lockId];
    }

    /// @notice Collects swap fees from a locked position
    function collect(
        uint256 lockId,
        address recipient
    )
        external
        nonReentrant
        returns (uint256 amount0, uint256 amount1, uint256 fee0, uint256 fee1)
    {
        (amount0, amount1, fee0, fee1) = _collect(lockId, recipient, false);
    }

    /// @notice Collects swap fees from a locked position while reusing an existing Vault lock.
    /// @dev Used by FlapInfinityCLHook.afterSwap, where the current swap already holds the
    ///      PCS Infinity Vault lock and the position manager must use modifyLiquiditiesWithoutLock.
    function collectWithoutLock(uint256 lockId, address recipient)
        external
        nonReentrant
        returns (uint256 amount0, uint256 amount1, uint256 fee0, uint256 fee1)
    {
        return _collect(lockId, recipient, true);
    }

    /// @notice Collects pending swap fees and applies the lock's collect fee
    function _collect(
        uint256 lockId,
        address recipient,
        bool useWithoutLock
    ) internal returns (uint256 amount0, uint256 amount1, uint256 fee0, uint256 fee1) {
        IUniversalLockerPCS.LockInfo storage lock = locks[lockId];
        if (lock.owner != msg.sender && lock.collector != msg.sender) revert NotOwner();
        if (recipient == address(0)) revert InvalidRecipient();
        
        bool isToken0Native;
        {
            (PoolKey memory poolKey, ) = positionManager.getPoolAndPositionInfo(lock.tokenId);
            uint128 currentLiquidity = positionManager.getPositionLiquidity(lock.tokenId);
            isToken0Native = _isNativeETH(poolKey.currency0);

            if (currentLiquidity > 0) {
                address token0 = Currency.unwrap(poolKey.currency0);
                address token1 = Currency.unwrap(poolKey.currency1);

                uint256 balanceBefore0 = isToken0Native
                    ? address(this).balance
                    : IERC20(token0).balanceOf(address(this));
                uint256 balanceBefore1 = IERC20(token1).balanceOf(address(this));

                Plan memory plan = Planner.init();
                plan = plan.add(
                    Actions.DECREASE_LIQUIDITY,
                    abi.encode(lock.tokenId, uint256(0), uint128(0), uint128(0), "")
                );
                plan = plan.add(
                    Actions.TAKE_PAIR,
                    abi.encode(poolKey.currency0, poolKey.currency1, address(this))
                );

                if (useWithoutLock) {
                    positionManager.modifyLiquiditiesWithoutLock(plan.actions, plan.params);
                } else {
                    positionManager.modifyLiquidities(plan.encode(), block.timestamp + 60);
                }

                uint256 balanceAfter0 = isToken0Native
                    ? address(this).balance
                    : IERC20(token0).balanceOf(address(this));
                uint256 balanceAfter1 = IERC20(token1).balanceOf(address(this));
                require(balanceAfter0 >= balanceBefore0, "Balance decreased unexpectedly");
                require(balanceAfter1 >= balanceBefore1, "Balance decreased unexpectedly");
                amount0 = balanceAfter0 - balanceBefore0;
                amount1 = balanceAfter1 - balanceBefore1;
            }
        }

        if (amount0 > 0 || amount1 > 0) {
            address token0 = Currency.unwrap(lock.poolKey.currency0);
            address token1 = Currency.unwrap(lock.poolKey.currency1);

            if (lock.collectFee > 0) {
                fee0 = (amount0 * lock.collectFee) / FEE_DENOMINATOR;
                fee1 = (amount1 * lock.collectFee) / FEE_DENOMINATOR;
                amount0 = amount0 - fee0;
                amount1 = amount1 - fee1;

                if (fee0 > 0) {
                    if (isToken0Native) {
                        TransferHelper.safeTransferETH(feeReceiver, fee0);
                    } else {
                        IERC20(token0).safeTransfer(feeReceiver, fee0);
                    }
                }
                if (fee1 > 0) {
                    IERC20(token1).safeTransfer(feeReceiver, fee1);
                }
            }

            if (amount0 > 0) {
                if (isToken0Native) {
                    TransferHelper.safeTransferETH(recipient, amount0);
                } else {
                    IERC20(token0).safeTransfer(recipient, amount0);
                }
            }
            if (amount1 > 0) {
                IERC20(token1).safeTransfer(recipient, amount1);
            }
        }
    }

    /// @notice Helper to check if a currency is native ETH
    function _isNativeETH(Currency currency) internal pure returns (bool) {
        return Currency.unwrap(currency) == NATIVE_ETH;
    }

    /// @notice Ensures Permit2 allowance for the token to the spender is sufficient
    function _ensureAllowanceViaPermit2(
        address token,
        uint256 needed,
        address spender
    ) internal {
        (uint160 cur, uint48 exp, ) = permit2.allowance(address(this), token, spender);
        require(needed <= type(uint160).max, "needed too big");
        if (exp < block.timestamp || cur < needed) {
            permit2.approve(token, spender, uint160(needed), uint48(block.timestamp + 1 days));
        }
    }

    /// @notice Ensures ERC20 approval to Permit2 is sufficient
    function _safeApprovePermit2(address token, uint256 required) internal {
        uint256 cur = IERC20(token).allowance(address(this), address(permit2));
        if (cur >= required) return;

        if (cur != 0) {
            try IERC20(token).approve(address(permit2), 0) {} catch {}
        }
        IERC20(token).approve(address(permit2), required);
    }

    /// @notice Increases the liquidity of an existing lock
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
        IUniversalLockerPCS.LockInfo storage lock = locks[lockId];
        if (lock.owner != msg.sender) revert NotOwner();

        address token0 = Currency.unwrap(lock.poolKey.currency0);
        address token1 = Currency.unwrap(lock.poolKey.currency1);
        require(token1 != address(0), "DUAL_NATIVE_FORBIDDEN");

        if (token0 == address(0)) {
            require(msg.value == amount0Max, "Incorrect ETH amount");
        } else {
            require(msg.value == 0);
            TransferHelper.safeTransferFrom(token0, msg.sender, address(this), amount0Max);
        }
        TransferHelper.safeTransferFrom(token1, msg.sender, address(this), amount1Max);

        // Fetch current price and position tick range
        (, CLPositionInfo position) = positionManager.getPoolAndPositionInfo(lock.tokenId);
        (uint160 sqrtPriceX96, , , ) = clPoolManager.getSlot0(lock.poolKey.toId());

        // Calculate maximum liquidity based on transferred amounts
        uint128 maxLiquidityDelta = LiquidityAmounts.getLiquidityForAmounts(
            sqrtPriceX96,
            TickMath.getSqrtPriceAtTick(position.tickLower()),
            TickMath.getSqrtPriceAtTick(position.tickUpper()),
            amount0Max,
            amount1Max
        );

        // Calculate actual token amounts needed
        (uint256 amount0Needed, uint256 amount1Needed) = LiquidityAmounts.getAmountsForLiquidity(
            sqrtPriceX96,
            TickMath.getSqrtPriceAtTick(position.tickLower()),
            TickMath.getSqrtPriceAtTick(position.tickUpper()),
            maxLiquidityDelta
        );
        amount0Needed = amount0Needed > amount0Max ? amount0Max : amount0Needed;
        amount1Needed = amount1Needed > amount1Max ? amount1Max : amount1Needed;

        // LP fee on the added liquidity
        uint256 lpFee = lock.lpFee;
        uint256 feeAmount0 = 0;
        uint256 feeAmount1 = 0;
        if (lpFee > 0) {
            require(lpFee <= FEE_DENOMINATOR, "LP_FEE_TOO_HIGH");
            feeAmount0 = (amount0Needed * lpFee) / FEE_DENOMINATOR;
            feeAmount1 = (amount1Needed * lpFee) / FEE_DENOMINATOR;

            if (feeAmount0 > 0) {
                if (token0 == address(0)) {
                    TransferHelper.safeTransferETH(feeReceiver, feeAmount0);
                } else {
                    TransferHelper.safeTransfer(token0, feeReceiver, feeAmount0);
                }
            }
            if (feeAmount1 > 0) {
                TransferHelper.safeTransfer(token1, feeReceiver, feeAmount1);
            }
        }

        uint256 amount0ForLiquidity = amount0Needed - feeAmount0;
        uint256 amount1ForLiquidity = amount1Needed - feeAmount1;

        // Approve via Permit2
        if (token0 != address(0)) {
            _safeApprovePermit2(token0, amount0ForLiquidity);
            _ensureAllowanceViaPermit2(token0, amount0ForLiquidity, address(positionManager));
        }
        _safeApprovePermit2(token1, amount1ForLiquidity);
        _ensureAllowanceViaPermit2(token1, amount1ForLiquidity, address(positionManager));

        uint128 liquidityToAdd = LiquidityAmounts.getLiquidityForAmounts(
            sqrtPriceX96,
            TickMath.getSqrtPriceAtTick(position.tickLower()),
            TickMath.getSqrtPriceAtTick(position.tickUpper()),
            amount0ForLiquidity,
            amount1ForLiquidity
        );

        // Execute increase liquidity
        Plan memory plan = Planner.init();
        plan = plan.add(
            Actions.INCREASE_LIQUIDITY,
            abi.encode(lock.tokenId, liquidityToAdd, amount0ForLiquidity, amount1ForLiquidity, "")
        );
        plan = plan.add(Actions.SETTLE_PAIR, abi.encode(lock.poolKey.currency0, lock.poolKey.currency1));
        plan = plan.add(Actions.SWEEP, abi.encode(lock.poolKey.currency0, address(this)));
        plan = plan.add(Actions.SWEEP, abi.encode(lock.poolKey.currency1, address(this)));

        if (token0 == address(0)) {
            positionManager.modifyLiquidities{value: amount0ForLiquidity}(plan.encode(), deadline);
        } else {
            positionManager.modifyLiquidities(plan.encode(), deadline);
        }

        // Return excess tokens
        if (amount0Max > amount0Needed) {
            if (token0 == address(0)) {
                TransferHelper.safeTransferETH(msg.sender, amount0Max - amount0Needed);
            } else {
                TransferHelper.safeTransfer(token0, msg.sender, amount0Max - amount0Needed);
            }
        }
        if (amount1Max > amount1Needed) {
            TransferHelper.safeTransfer(token1, msg.sender, amount1Max - amount1Needed);
        }

        amount0Used = amount0ForLiquidity;
        amount1Used = amount1ForLiquidity;

        lock.amount += liquidityToAdd;
        emit OnIncreaseLiquidity(lockId, liquidityToAdd, amount0Used, amount1Used);
    }

    /// @notice Decreases liquidity of an expired lock
    function decreaseLiquidity(
        uint256 lockId,
        uint128 liquidityDecrease,
        uint256 amount0Min,
        uint256 amount1Min
    ) external nonReentrant returns (uint256 amount0, uint256 amount1) {
        IUniversalLockerPCS.LockInfo storage lock = locks[lockId];
        if (lock.owner != msg.sender) revert NotOwner();
        if (lock.unlockTime >= block.timestamp) revert NotYetExpired();
        if (liquidityDecrease == 0) revert ZeroLiquidity();
        if (liquidityDecrease > lock.amount) revert InsufficientLiquidity();

        address token0 = Currency.unwrap(lock.poolKey.currency0);
        address token1 = Currency.unwrap(lock.poolKey.currency1);
        bool isToken0Native = _isNativeETH(lock.poolKey.currency0);

        uint256 before0 = isToken0Native ? address(this).balance : IERC20(token0).balanceOf(address(this));
        uint256 before1 = IERC20(token1).balanceOf(address(this));

        Plan memory plan = Planner.init();
        plan = plan.add(
            Actions.DECREASE_LIQUIDITY,
            abi.encode(lock.tokenId, liquidityDecrease, amount0Min, amount1Min, "")
        );
        plan = plan.add(
            Actions.TAKE_PAIR,
            abi.encode(lock.poolKey.currency0, lock.poolKey.currency1, address(this))
        );
        positionManager.modifyLiquidities(plan.encode(), block.timestamp + 60);

        amount0 = (isToken0Native ? address(this).balance : IERC20(token0).balanceOf(address(this))) - before0;
        amount1 = IERC20(token1).balanceOf(address(this)) - before1;

        // Transfer to msg.sender
        if (amount0 > 0) {
            if (isToken0Native) {
                TransferHelper.safeTransferETH(msg.sender, amount0);
            } else {
                TransferHelper.safeTransfer(token0, msg.sender, amount0);
            }
        }
        if (amount1 > 0) {
            TransferHelper.safeTransfer(token1, msg.sender, amount1);
        }

        lock.amount -= liquidityDecrease;
        emit LiquidityDecreased(lockId);
    }

    /// @notice Returns the total number of locks for a user
    function getUserLockCount(address user) external view returns (uint256) {
        return userLocks[user].length();
    }

    /// @notice Returns the lock ID at a specific index in the user's lock set
    function getUserLockAt(address user, uint256 index) external view returns (uint256) {
        return userLocks[user].at(index);
    }

    /// @notice Returns all lock IDs owned by a user
    function getUserLocks(address user) external view returns (uint256[] memory lockIds) {
        return userLocks[user].values();
    }

    /// @notice Returns whether a lock is currently active
    function isLocked(uint256 lockId) public view returns (bool) {
        IUniversalLockerPCS.LockInfo storage lock = locks[lockId];
        return lock.amount > 0 && lock.unlockTime > block.timestamp;
    }

    /// @notice Extends lock duration (can only extend, not reduce)
    function relock(uint256 lockId, uint256 newUnlockTime) external {
        IUniversalLockerPCS.LockInfo storage lock = locks[lockId];
        if (lock.owner != msg.sender) revert NotOwner();
        if (newUnlockTime <= block.timestamp) revert UnlockTimeInPast();
        if (newUnlockTime <= lock.unlockTime) revert InvalidUnlockTime();

        lock.unlockTime = newUnlockTime;
        emit LockExtended(lockId, newUnlockTime);
    }

    /// @notice Returns detailed information about a specific lock
    function getLockInfo(uint256 lockId) public view returns (IUniversalLockerPCS.LockInfo memory) {
        return locks[lockId];
    }

    /// @notice Returns data of multiple locks in a single call
    function getBatchLockInfo(
        uint256[] calldata lockIds
    ) public view returns (IUniversalLockerPCS.LockInfo[] memory) {
        IUniversalLockerPCS.LockInfo[] memory lockInfos = new IUniversalLockerPCS.LockInfo[](lockIds.length);
        for (uint256 i = 0; i < lockIds.length; i++) {
            lockInfos[i] = locks[lockIds[i]];
        }
        return lockInfos;
    }

    /// @notice Initiates a lock ownership transfer (new owner must call acceptLock)
    function transferLock(uint256 lockId_, address newOwner_) external validLockOwner(lockId_) {
        require(newOwner_ != address(0), "Lock: new owner cannot be zero address");
        require(newOwner_ != _msgSender(), "Lock: new owner cannot be current owner");

        locks[lockId_].pendingOwner = newOwner_;
        emit OnLockPendingTransfer(lockId_, _msgSender(), newOwner_);
    }

    /// @notice Accepts ownership of a pending lock transfer
    function acceptLock(uint256 lockId_) external {
        if (lockId_ >= nextLockId) revert InvalidLockId();
        address newOwner = _msgSender();
        if (newOwner != locks[lockId_].pendingOwner) revert NotPendingOwner();

        emit OnLockTransferred(lockId_, locks[lockId_].owner, newOwner);
        userLocks[locks[lockId_].owner].remove(lockId_);
        userLocks[newOwner].add(lockId_);
        locks[lockId_].pendingOwner = address(0);
        locks[lockId_].owner = newOwner;
    }

    /// @notice Rescues mistakenly sent ERC20 tokens (cannot rescue locked NFTs)
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
    function adminRescueETH(uint256 amount, address payable receiver) external onlyOwner nonReentrant {
        (bool success, ) = receiver.call{value: amount}("");
        if (!success) revert ETHTransferFailed();
        emit EthRescued(receiver, amount);
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
