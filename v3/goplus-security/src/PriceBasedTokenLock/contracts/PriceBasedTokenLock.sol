// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import "@openzeppelin/contracts/utils/cryptography/EIP712.sol";
import "./interfaces/IUniswapV3Pool.sol";
import "./libraries/TickMath.sol";

/**
 * @title PriceBasedTokenLock
 * @notice A token locking contract that unlocks based on Uniswap V3 TWAP price milestones
 * @dev Supports multi-stage unlocking with flexible fee structures and EIP-712 signatures
 */
contract PriceBasedTokenLock is Ownable, ReentrancyGuard, EIP712 {
    using SafeERC20 for IERC20;
    using ECDSA for bytes32;

    // ============ Structs ============

    /**
     * @notice Unlock stage configuration
     * @param priceMultiplier Price multiplier in basis points (10000 = 1x, 20000 = 2x, 30000 = 3x)
     *                        Applied to the initial price to determine unlock threshold
     * @param unlockPercentage Percentage to unlock in basis points (5000 = 50%)
     * @param unlocked Whether this stage has been unlocked
     */
    struct UnlockStage {
        uint256 priceMultiplier;
        uint256 unlockPercentage;
        bool unlocked;
    }

    /**
     * @notice Lock information for a user
     * @param token Address of the locked token
     * @param poolAddress Address of the Uniswap V3 Pool for price oracle
     * @param totalAmount Total amount locked
     * @param withdrawnAmount Amount already withdrawn
     * @param initialPrice Initial price when locked (locked_token/other_token ratio scaled by 1e18, from Uniswap V3 TWAP)
     * @param isToken0 True if locked token is token0 in the pool, false if token1
     * @param unlockStages Array of unlock stages (max 5)
     * @param lockTimestamp Timestamp when locked
     */
    struct LockInfo {
        address token;
        address poolAddress;
        address owner;
        address operator;
        uint256 totalAmount;
        uint256 withdrawnAmount;
        uint256 initialPrice;
        bool isToken0;
        UnlockStage[] unlockStages;
        uint256 unlockTime;
        uint256 lockTimestamp;
    }

    /**
     * @notice Fee configuration
     * @param lockedTokenPercentage Percentage fee on locked tokens in basis points (10 = 0.1%)
     * @param feeTokenAddress Address of token to collect as fee (address(0) = ETH)
     * @param feeTokenAmount Fixed amount of fee token to collect
     */
    struct FeeConfig {
        uint256 lockedTokenPercentage;
        address feeTokenAddress;
        uint256 feeTokenAmount;
    }

    /**
     * @notice Custom fee structure for signed approvals
     * @param user Address of the user
     * @param lockedTokenPercentage Custom percentage fee
     * @param feeTokenAddress Custom fee token address
     * @param feeTokenAmount Custom fee token amount
     */
    struct CustomFee {
        address user;
        uint256 lockedTokenPercentage;
        address feeTokenAddress;
        uint256 feeTokenAmount;
    }

    // ============ Constants ============

    uint256 public constant BASIS_POINTS = 10000;
    uint256 public constant MAX_STAGES = 5;
    string public constant FEE_PERCENTAGE = "percentage";
    string public constant FEE_FIXED_TOKEN = "fixed_token";

    bytes32 private constant CUSTOM_FEE_TYPEHASH = keccak256(
        "CustomFee(address user,uint256 lockedTokenPercentage,address feeTokenAddress,uint256 feeTokenAmount)"
    );

    // ============ State Variables ============

    /// @notice TWAP interval in seconds (e.g., 1800 = 30 minutes)
    uint32 public twapInterval;

    /// @notice Fee signer address for custom fee signatures
    address public feeSigner;

    /// @notice Fee collector address
    address public feeCollector;

    // next lockId
    uint256 public nextLockId = 1;

    /// @notice Mapping of lock ID => lock info
    mapping(uint256 => LockInfo) public locks;

    /// @notice Mapping of fee name => fee configuration
    mapping(string => FeeConfig) public feeConfigs;

    /// @notice Mapping of signature hash => revoked status
    mapping(bytes32 => bool) public revokedSignatures;

    // ============ Events ============

    event TokensLocked(
        address indexed user,
        address indexed operator,
        uint256 indexed lockId,
        address token,
        uint256 amount,
        uint256 initialPrice, // token1/token0 price ratio scaled by 1e18
        uint256 stageCount
    );

    event TokensWithdrawn(
        address indexed user,
        uint256 indexed lockId,
        uint256 amount,
        uint256 currentPrice // token1/token0 price ratio scaled by 1e18
    );

    event StageUnlocked(
        address indexed user,
        uint256 indexed lockId,
        uint256 stageIndex,
        uint256 priceMultiplier,
        uint256 unlockPercentage
    );

    event FeeCollected(
        address indexed user,
        address indexed token,
        uint256 percentageFee,
        address feeTokenAddress,
        uint256 feeTokenAmount
    );

    event FeeConfigUpdated(
        string indexed feeName,
        uint256 lockedTokenPercentage,
        address feeTokenAddress,
        uint256 feeTokenAmount
    );

    event CustomFeeRevoked(
        address indexed user,
        uint256 lockedTokenPercentage,
        address feeTokenAddress,
        uint256 feeTokenAmount
    );

    event FeeSignerUpdated(address indexed newFeeSigner);
    event FeeCollectorUpdated(address indexed newFeeCollector);
    event TWAPIntervalUpdated(uint32 newInterval);

    // ============ Errors ============

    error InvalidStageCount();
    error InvalidPercentageSum();
    error InvalidPriceMultiplier();
    error InvalidAmount();
    error InvalidAddress();
    error InvalidUnlockTime();
    error InvalidSignature();
    error SignatureRevoked();
    error NoTokensToWithdraw();
    error InsufficientFeePayment();
    error NotOwnerOrOperator();

    // ============ Constructor ============

    /**
     * @notice Constructor
     * @param _feeSigner Address that signs custom fee approvals
     * @param _feeCollector Address that receives fees
     * @param _twapInterval TWAP time interval in seconds
     */
    constructor(
        address _feeSigner,
        address _feeCollector,
        uint32 _twapInterval
    ) Ownable(msg.sender) EIP712("PriceBasedTokenLock", "1") {
        if (_feeSigner == address(0)) revert InvalidAddress();
        if (_feeCollector == address(0)) revert InvalidAddress();

        feeSigner = _feeSigner;
        feeCollector = _feeCollector;
        twapInterval = _twapInterval;

        // Initialize default fee configs
        feeConfigs[FEE_PERCENTAGE] = FeeConfig({
            lockedTokenPercentage: 10, // 0.1%
            feeTokenAddress: address(0),
            feeTokenAmount: 0
        });

        feeConfigs[FEE_FIXED_TOKEN] = FeeConfig({
            lockedTokenPercentage: 0,
            feeTokenAddress: address(0), // ETH
            feeTokenAmount: 0.12 ether
        });
    }

    // ============ Locking Functions ============

    /**
     * @notice Lock tokens with preset fee configuration
     * @param token Address of token to lock
     * @param poolAddress Address of Uniswap V3 Pool for price oracle
     * @param amount Amount to lock
     * @param stages Array of unlock stages
     * @param feeType Type of fee to use ("percentage" or "fixed_token")
     * @return lockId The ID of the created lock
     */
    function lock(
        address token,
        address poolAddress,
        address operator,
        uint256 amount,
        uint256 unlockTime,
        UnlockStage[] memory stages,
        string memory feeType
    ) external payable nonReentrant returns (uint256 lockId) {
        FeeConfig memory feeConfig = feeConfigs[feeType];
        _collectFee(token, amount, feeConfig);
        return _lock(token, poolAddress, operator, amount, unlockTime, stages);
    }

    /**
     * @notice Lock tokens with custom fee using signature
     * @param token Address of token to lock
     * @param poolAddress Address of Uniswap V3 Pool for price oracle
     * @param amount Amount to lock
     * @param stages Array of unlock stages
     * @param customFee Custom fee configuration
     * @param signature EIP-712 signature from feeSigner
     * @return lockId The ID of the created lock
     */
    function lockWithCustomFee(
        address token,
        address poolAddress,
        address operator,
        uint256 amount,
        uint256 unlockTime,
        UnlockStage[] memory stages,
        CustomFee memory customFee,
        bytes memory signature
    ) external payable nonReentrant returns (uint256 lockId) {
        // Verify signature
        if (customFee.user != msg.sender) revert InvalidSignature();

        bytes32 structHash = _hashCustomFee(customFee);
        if (revokedSignatures[structHash]) revert SignatureRevoked();

        bytes32 digest = _hashTypedDataV4(structHash);
        address signer = digest.recover(signature);
        if (signer != feeSigner) revert InvalidSignature();

        // Collect custom fee
        FeeConfig memory feeConfig = FeeConfig({
            lockedTokenPercentage: customFee.lockedTokenPercentage,
            feeTokenAddress: customFee.feeTokenAddress,
            feeTokenAmount: customFee.feeTokenAmount
        });
        _collectFee(token, amount, feeConfig);

        return _lock(token, poolAddress, operator, amount, unlockTime, stages);
    }

    /**
     * @notice Internal lock function
     * @param token Address of token to lock
     * @param poolAddress Address of Uniswap V3 Pool for price oracle
     * @param amount Amount to lock
     * @param stages Array of unlock stages
     * @return lockId The ID of the created lock
     */
    function _lock(
        address token,
        address poolAddress,
        address operator,
        uint256 amount,
        uint256 unlockTime,
        UnlockStage[] memory stages
    ) internal returns (uint256 lockId) {
        if (token == address(0)) revert InvalidAddress();
        if (poolAddress == address(0)) revert InvalidAddress();
        if (amount == 0) revert InvalidAmount();
        if (unlockTime <= block.timestamp) revert InvalidUnlockTime();
        // Validate stages
        _validateStages(stages);

        // Check if token is token0 or token1 in the pool
        address poolToken0 = IUniswapV3Pool(poolAddress).token0();
        address poolToken1 = IUniswapV3Pool(poolAddress).token1();

        bool isToken0;
        if (token == poolToken0) {
            isToken0 = true;
        } else if (token == poolToken1) {
            isToken0 = false;
        } else {
            revert InvalidAddress(); // Token not in pool
        }

        // Get current TWAP price from the specified pool
        uint256 initialPrice = getCurrentPrice(poolAddress, isToken0);

        // Create lock
        lockId = nextLockId++;
        LockInfo storage lockInfo = locks[lockId];
        lockInfo.token = token;
        lockInfo.poolAddress = poolAddress;
        lockInfo.owner = msg.sender;
        lockInfo.operator = operator;
        lockInfo.totalAmount = amount;
        lockInfo.withdrawnAmount = 0;
        lockInfo.initialPrice = initialPrice;
        lockInfo.isToken0 = isToken0;
        lockInfo.unlockTime = unlockTime;
        lockInfo.lockTimestamp = block.timestamp;

        // Copy stages
        for (uint256 i = 0; i < stages.length; i++) {
            lockInfo.unlockStages.push(stages[i]);
        }

        // Transfer tokens
        IERC20(token).safeTransferFrom(msg.sender, address(this), amount);

        emit TokensLocked(
            msg.sender,
            operator,
            lockId,
            token,
            amount,
            initialPrice,
            stages.length
        );
    }

    /**
     * @notice Validate unlock stages configuration
     * @param stages Array of unlock stages to validate
     */
    function _validateStages(UnlockStage[] memory stages) internal pure {
        uint256 length = stages.length;
        if (length == 0 || length > MAX_STAGES) revert InvalidStageCount();

        uint256 totalPercentage = 0;
        uint256 lastMultiplier = 0;

        for (uint256 i = 0; i < length; i++) {
            // Check price multiplier is increasing
            if (stages[i].priceMultiplier <= lastMultiplier) {
                revert InvalidPriceMultiplier();
            }
            lastMultiplier = stages[i].priceMultiplier;

            // Sum up percentages
            totalPercentage += stages[i].unlockPercentage;
        }

        // Check total percentage equals 100%
        if (totalPercentage != BASIS_POINTS) revert InvalidPercentageSum();
    }

    // ============ Withdrawal Functions ============

    /**
     * @notice Withdraw unlocked tokens
     * @param lockId The ID of the lock to withdraw from
     */
    function withdraw(uint256 lockId) external nonReentrant {
        LockInfo storage lockInfo = locks[lockId];
        if (msg.sender != lockInfo.operator && msg.sender != lockInfo.owner) {
            revert NotOwnerOrOperator();
        }
        if (block.timestamp > lockInfo.unlockTime) {
            _unlockByTime(lockId);
        } else {
            _unlockByPrice(lockId);
        }
    }

    function _unlockByTime(uint256 lockId) internal {
        LockInfo storage lockInfo = locks[lockId];
        uint256 withdrawableAmount = 0;
        // Check and update unlock stages
        for (uint256 i = 0; i < lockInfo.unlockStages.length; i++) {
            UnlockStage storage stage = lockInfo.unlockStages[i];

            if (!stage.unlocked) {
                // Mark stage as unlocked
                stage.unlocked = true;

                withdrawableAmount += (lockInfo.totalAmount * stage.unlockPercentage) / BASIS_POINTS;
                emit StageUnlocked(
                    msg.sender,
                    lockId,
                    i,
                    stage.priceMultiplier,
                    stage.unlockPercentage
                );
            }
        }

        if (withdrawableAmount == 0) revert NoTokensToWithdraw();

        // Update withdrawn amount
        lockInfo.withdrawnAmount += withdrawableAmount;

        // Transfer tokens
        IERC20(lockInfo.token).safeTransfer(lockInfo.owner, withdrawableAmount);

        emit TokensWithdrawn(lockInfo.owner, lockId, withdrawableAmount, 0);
    }

    function _unlockByPrice(uint256 lockId) internal {
        LockInfo storage lockInfo = locks[lockId];
        uint256 currentPrice = getCurrentPrice(lockInfo.poolAddress, lockInfo.isToken0);
        uint256 unlockedAmount = 0;

        // Check and update unlock stages
        for (uint256 i = 0; i < lockInfo.unlockStages.length; i++) {
            UnlockStage storage stage = lockInfo.unlockStages[i];

            if (!stage.unlocked) {
                // Calculate target price for this stage
                // priceMultiplier is in basis points (10000): 20000 = 2x, 30000 = 3x
                uint256 targetPrice = (lockInfo.initialPrice * stage.priceMultiplier) / BASIS_POINTS;

                if (currentPrice >= targetPrice) {
                    // Mark stage as unlocked
                    stage.unlocked = true;

                    emit StageUnlocked(
                        msg.sender,
                        lockId,
                        i,
                        stage.priceMultiplier,
                        stage.unlockPercentage
                    );
                }
            }

            if (stage.unlocked) {
                unlockedAmount += (lockInfo.totalAmount * stage.unlockPercentage) / BASIS_POINTS;
            }
        }

        // Calculate withdrawable amount
        uint256 withdrawableAmount = unlockedAmount - lockInfo.withdrawnAmount;
        if (withdrawableAmount == 0) revert NoTokensToWithdraw();

        // Update withdrawn amount
        lockInfo.withdrawnAmount += withdrawableAmount;

        // Transfer tokens
        IERC20(lockInfo.token).safeTransfer(lockInfo.owner, withdrawableAmount);

        emit TokensWithdrawn(lockInfo.owner, lockId, withdrawableAmount, currentPrice);
    }

    /**
     * @notice Get unlocked amount for a lock (view function)
     * @param lockId The ID of the lock
     * @return The amount of tokens currently unlocked and available to withdraw
     */
    function getUnlockedAmount(uint256 lockId) external view returns (uint256) {
        LockInfo storage lockInfo = locks[lockId];
        if (lockInfo.totalAmount == 0) return 0;
        if (block.timestamp > lockInfo.unlockTime) {
            // unlock all
            return lockInfo.totalAmount - lockInfo.withdrawnAmount;
        }

        uint256 currentPrice = getCurrentPrice(lockInfo.poolAddress, lockInfo.isToken0);
        uint256 unlockedAmount = 0;

        for (uint256 i = 0; i < lockInfo.unlockStages.length; i++) {
            UnlockStage storage stage = lockInfo.unlockStages[i];

            if (stage.unlocked) {
                unlockedAmount += (lockInfo.totalAmount * stage.unlockPercentage) / BASIS_POINTS;
            } else {
                // priceMultiplier is in basis points (10000): 20000 = 2x, 30000 = 3x
                uint256 targetPrice = (lockInfo.initialPrice * stage.priceMultiplier) / BASIS_POINTS;
                if (currentPrice >= targetPrice) {
                    unlockedAmount += (lockInfo.totalAmount * stage.unlockPercentage) / BASIS_POINTS;
                }
            }
        }

        return unlockedAmount - lockInfo.withdrawnAmount;
    }

    // ============ Price Oracle Functions ============

    /**
     * @notice Get the price of the locked token relative to the other token
     * @param poolAddress Address of the Uniswap V3 pool
     * @param isToken0 Whether the locked token is token0
     * @return price Price of locked token / other token with 1e18 precision
     */
    function getCurrentPrice(address poolAddress, bool isToken0) public view returns (uint256) {
        uint32[] memory secondsAgos = new uint32[](2);
        secondsAgos[0] = twapInterval;
        secondsAgos[1] = 0;

        (int56[] memory tickCumulatives, ) = IUniswapV3Pool(poolAddress).observe(secondsAgos);
        int56 tickCumulativeDelta = tickCumulatives[1] - tickCumulatives[0];
        int24 arithmeticMeanTick = int24(tickCumulativeDelta / int56(uint56(twapInterval)));
        // Always round to negative infinity
        if (
            tickCumulativeDelta < 0 &&
            (tickCumulativeDelta % int56(int32(twapInterval)) != 0)
        ) arithmeticMeanTick--;
        uint160 sqrtPriceX96 = TickMath.getSqrtRatioAtTick(arithmeticMeanTick);
        uint256 priceToken1PerToken0 = (uint256(sqrtPriceX96) * uint256(sqrtPriceX96) * 1e18) >> 192;
        if (isToken0) {
            // token0/1 = 1 / (token1/0)
            require(priceToken1PerToken0 > 0, "Price is zero");
            return 1e36 / priceToken1PerToken0; // 1e18 * 1e18 / price
        } else {
            return priceToken1PerToken0;
        }
    }

    // ============ Fee Management Functions ============

    /**
     * @notice Collect fees according to fee configuration
     * @param lockedToken Address of the token being locked
     * @param lockedAmount Amount of tokens being locked
     * @param feeConfig Fee configuration to apply
     */
    function _collectFee(
        address lockedToken,
        uint256 lockedAmount,
        FeeConfig memory feeConfig
    ) internal {
        uint256 percentageFee = 0;

        // Collect percentage fee from locked tokens
        if (feeConfig.lockedTokenPercentage > 0) {
            percentageFee = (lockedAmount * feeConfig.lockedTokenPercentage) / BASIS_POINTS;
            IERC20(lockedToken).safeTransferFrom(msg.sender, feeCollector, percentageFee);
        }

        // Collect fixed token fee
        if (feeConfig.feeTokenAmount > 0) {
            if (feeConfig.feeTokenAddress == address(0)) {
                // Collect ETH
                if (msg.value < feeConfig.feeTokenAmount) revert InsufficientFeePayment();

                (bool success, ) = feeCollector.call{value: feeConfig.feeTokenAmount}("");
                require(success, "ETH transfer failed");

                // Refund excess ETH
                if (msg.value > feeConfig.feeTokenAmount) {
                    (bool refundSuccess, ) = msg.sender.call{value: msg.value - feeConfig.feeTokenAmount}("");
                    require(refundSuccess, "ETH refund failed");
                }
            } else {
                // Collect ERC20
                require(msg.value == 0, "ETH not accepted");
                IERC20(feeConfig.feeTokenAddress).safeTransferFrom(
                    msg.sender,
                    feeCollector,
                    feeConfig.feeTokenAmount
                );
            }
        }

        emit FeeCollected(
            msg.sender,
            lockedToken,
            percentageFee,
            feeConfig.feeTokenAddress,
            feeConfig.feeTokenAmount
        );
    }

    /**
     * @notice Set fee configuration (onlyOwner)
     * @param feeName Name of the fee configuration
     * @param lockedTokenPercentage Percentage fee in basis points
     * @param feeTokenAddress Address of fee token (address(0) = ETH)
     * @param feeTokenAmount Fixed fee amount
     */
    function setFeeConfig(
        string memory feeName,
        uint256 lockedTokenPercentage,
        address feeTokenAddress,
        uint256 feeTokenAmount
    ) external onlyOwner {
        feeConfigs[feeName] = FeeConfig({
            lockedTokenPercentage: lockedTokenPercentage,
            feeTokenAddress: feeTokenAddress,
            feeTokenAmount: feeTokenAmount
        });

        emit FeeConfigUpdated(feeName, lockedTokenPercentage, feeTokenAddress, feeTokenAmount);
    }

    /**
     * @notice Revoke a custom fee signature (onlyOwner)
     * @param customFee The custom fee to revoke
     */
    function revokeCustomFee(CustomFee memory customFee) external onlyOwner {
        bytes32 structHash = _hashCustomFee(customFee);
        revokedSignatures[structHash] = true;

        emit CustomFeeRevoked(
            customFee.user,
            customFee.lockedTokenPercentage,
            customFee.feeTokenAddress,
            customFee.feeTokenAmount
        );
    }

    /**
     * @notice Set fee signer address (onlyOwner)
     * @param _feeSigner New fee signer address
     */
    function setFeeSigner(address _feeSigner) external onlyOwner {
        if (_feeSigner == address(0)) revert InvalidAddress();
        feeSigner = _feeSigner;
        emit FeeSignerUpdated(_feeSigner);
    }

    /**
     * @notice Set fee collector address (onlyOwner)
     * @param _feeCollector New fee collector address
     */
    function setFeeCollector(address _feeCollector) external onlyOwner {
        if (_feeCollector == address(0)) revert InvalidAddress();
        feeCollector = _feeCollector;
        emit FeeCollectorUpdated(_feeCollector);
    }

    /**
     * @notice Set TWAP interval (onlyOwner)
     * @param _interval New TWAP interval in seconds
     */
    function setTWAPInterval(uint32 _interval) external onlyOwner {
        require(_interval > 60, "Interval must be > 60");
        twapInterval = _interval;
        emit TWAPIntervalUpdated(_interval);
    }

    // ============ EIP-712 Functions ============

    /**
     * @notice Hash a CustomFee struct for EIP-712
     * @param customFee The custom fee to hash
     * @return The hash of the struct
     */
    function _hashCustomFee(CustomFee memory customFee) internal pure returns (bytes32) {
        return keccak256(
            abi.encode(
                CUSTOM_FEE_TYPEHASH,
                customFee.user,
                customFee.lockedTokenPercentage,
                customFee.feeTokenAddress,
                customFee.feeTokenAmount
            )
        );
    }

    // ============ View Functions ============

    /**
     * @notice Get lock information
     * @param lockId The ID of the lock
     * @return token Address of the locked token
     * @return totalAmount Total amount of tokens locked
     * @return owner Owner of this lock
     * @return operator Operator of this lock
     * @return withdrawnAmount Amount of tokens already withdrawn
     * @return initialPrice Initial TWAP price when locked (token1/token0 ratio scaled by 1e18)
     * @return lockTimestamp Timestamp when the lock was created
     * @return unlockTime Timestamp when emergency unlock is available
     * @return unlockStages Array of unlock stages with their status
     */
    function getLockInfo(uint256 lockId) external view returns (
        address token,
        uint256 totalAmount,
        address owner, 
        address operator,
        uint256 withdrawnAmount,
        uint256 initialPrice,
        uint256 lockTimestamp,
        uint256 unlockTime,
        UnlockStage[] memory unlockStages
    ) {
        LockInfo storage lockInfo = locks[lockId];
        return (
            lockInfo.token,
            lockInfo.totalAmount,
            lockInfo.owner,
            lockInfo.operator,
            lockInfo.withdrawnAmount,
            lockInfo.initialPrice,
            lockInfo.lockTimestamp,
            lockInfo.unlockTime,
            lockInfo.unlockStages
        );
    }
}
