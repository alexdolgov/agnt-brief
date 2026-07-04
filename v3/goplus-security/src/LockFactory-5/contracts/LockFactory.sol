// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import "@openzeppelin/contracts/utils/cryptography/EIP712.sol";
import "./interfaces/ILockFactory.sol";
import "./TokenLock.sol";

/**
 * @title LockFactory
 * @notice Factory contract for creating price-based token locks with Uniswap V3 TWAP integration
 * @dev This contract creates and manages TokenLock instances with flexible fee mechanisms
 * @dev Supports both standard fee configurations and custom fees with EIP-712 signatures
 */
contract LockFactory is Ownable, EIP712, ILockFactory {
    using SafeERC20 for IERC20;
    using ECDSA for bytes32;

    // Custom errors for gas-efficient error handling
    error InvalidAddress();           // Thrown when zero address is provided
    error InvalidUnlockTime();        // Thrown when unlock time is in the past
    error InsufficientFeePayment();   // Thrown when insufficient fee is paid
    error ETHTransferFailed();        // Thrown when ETH transfer fails
    error NotNeedETH();              // Thrown when ETH sent for ERC20 fee payment
    error InvalidSignature();         // Thrown when signature verification fails
    error NotCustomFeeUser();        // Thrown when custom fee user doesn't match sender
    error InvalidPoolPath();         // Thrown when pool path is invalid
    error InvalidFeeType();          // Thrown when fee type is invalid

    /// @notice Default fee configuration identifier
    string public constant DEFAULT = "default";

    /// @notice EIP-712 type hash for custom fee struct
    bytes32 private constant CUSTOM_FEE_TYPEHASH = keccak256(
        "CustomFee(address user,uint256 lockedTokenPercentage,address feeTokenAddress,uint256 feeTokenAmount)"
    );

    /// @notice Address that receives collected fees
    address public feeCollector;
    
    /// @notice Address authorized to sign custom fee configurations
    address public feeSigner;
    
    /// @notice TWAP interval in seconds used for price calculations
    uint16 public twapInterval;

    /// @notice Mapping from pool address to custom TWAP interval for specific pools
    /// @dev If a pool doesn't have a custom interval, the default twapInterval is used
    mapping(address => uint16) public poolTwapIntervals;
    
    /// @notice Mapping from fee type name to fee configuration
    mapping(string => FeeConfig) public feeConfigs;

    /// @notice Mapping to track valid fee types to prevent bypassing fee collection
    /// @dev Used to validate fee types before processing to ensure proper fee collection
    mapping(string => bool) public validFeeTypes;

    /// @notice Mapping to track revoked custom fee signatures
    mapping(bytes32 => bool) public revokedSignatures;

    /// @notice Mapping from user address to their created lock contracts
    mapping(address => address[]) public userLocks;
    
    /**
     * @notice Constructor to initialize the LockFactory
     * @param _feeSigner Address authorized to sign custom fee configurations
     * @param _feeCollector Address that will receive collected fees
     * @param _twapInterval TWAP interval in seconds for price calculations
     */
    constructor(
        address _feeSigner,
        address _feeCollector,
        uint16 _twapInterval
    ) Ownable(msg.sender) EIP712("LockFactory", "1"){
        if (_feeSigner == address(0)) revert InvalidAddress();
        if (_feeCollector == address(0)) revert InvalidAddress();
        feeSigner = _feeSigner;
        feeCollector = _feeCollector;
        twapInterval = _twapInterval;

        // Initialize default fee configuration
        feeConfigs[DEFAULT] = FeeConfig({
            lockedTokenPercentage: 10, // 0.1% withdrawal fee from locked tokens
            feeTokenAddress: address(0), // ETH payment (address(0))
            feeTokenAmount: 0.1 ether    // 0.1 ETH platform fee
        });
        validFeeTypes[DEFAULT] = true;
    }

    /**
     * @notice Set the fee collector address (onlyOwner)
     * @param _feeCollector New fee collector address
     */
    function setFeeCollector(address _feeCollector) external onlyOwner {
        if (_feeCollector == address(0)) revert InvalidAddress();
        feeCollector = _feeCollector;
    }

    /**
     * @notice Set the fee signer address (onlyOwner)
     * @param _feeSigner New fee signer address
     */
    function setFeeSigner(address _feeSigner) external onlyOwner {
        if (_feeSigner == address(0)) revert InvalidAddress();
        feeSigner = _feeSigner;
    }
    
    /**
     * @notice Set the TWAP interval for price calculations (onlyOwner)
     * @param _twapInterval New TWAP interval in seconds
     */
    function setTwapInterval(uint16 _twapInterval) external onlyOwner {
        require(_twapInterval > 0, "Invalid TWAP interval");
        twapInterval = _twapInterval;
    }

    /**
     * @notice Set custom TWAP interval for a specific pool (onlyOwner)
     * @dev Allows pools to have different TWAP intervals based on their liquidity and volatility characteristics
     * @param pool Address of the Uniswap V3 pool to set custom interval for
     * @param interval Custom TWAP interval in seconds for this specific pool
     */
    function setPoolTwapInterval(address pool, uint16 interval) external onlyOwner {
        require(interval > 0, "Invalid TWAP interval");
        poolTwapIntervals[pool] = interval;
    }

    /**
     * @notice Get the effective TWAP interval for a specific pool
     * @dev Returns custom interval if set for the pool, otherwise returns default interval
     * @param pool Address of the Uniswap V3 pool to get interval for
     * @return The TWAP interval in seconds to be used for this pool
     */
    function getTwapIntervals(address pool) external view returns (uint16) {
        uint16 interval = poolTwapIntervals[pool];
        if (interval != 0) {
            return interval;
        }
        return twapInterval;
    }

    /**
     * @notice Set fee configuration for a specific fee type (onlyOwner)
     * @param feeType Name/identifier for the fee type
     * @param lockedTokenPercentage Percentage fee taken from locked tokens (in basis points)
     * @param feeTokenAddress Address of token for platform fee (address(0) for ETH)
     * @param feeTokenAmount Amount of platform fee to collect
     */
    function setFeeConfig(
        string memory feeType,
        uint256 lockedTokenPercentage,
        address feeTokenAddress,
        uint256 feeTokenAmount
    ) external onlyOwner {
        feeConfigs[feeType] = FeeConfig({
            lockedTokenPercentage: lockedTokenPercentage,
            feeTokenAddress: feeTokenAddress,
            feeTokenAmount: feeTokenAmount
        });
        validFeeTypes[feeType] = true;
    }

    /**
     * @notice Get fee configuration for a specific fee type
     * @param feeType Name/identifier for the fee type
     * @return FeeConfig struct containing fee parameters
     */
    function getFeeConfig(string memory feeType) external view returns (FeeConfig memory) {
        if (!validFeeTypes[feeType]) revert InvalidFeeType();
        return feeConfigs[feeType];
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
     * @notice Create a token lock with single pool price reference
     * @param token Address of the token to lock
     * @param pool Address of the Uniswap V3 pool for price reference
     * @param operator Address authorized to withdraw (in addition to owner)
     * @param unlockTime Timestamp when time-based unlock is allowed
     * @param unlockPriceMultiplier Price multiplier for price-based unlock (in basis points)
     * @param feeType Fee configuration type to use
     * @return lockAddress Address of the created TokenLock contract
     */
    function createLock(
        address token, 
        address pool, 
        address operator, 
        uint256 unlockTime, 
        uint256 unlockPriceMultiplier,
        string memory feeType
    ) external payable returns (address lockAddress){
        return createLock(
            token, 
            _asArray(pool), 
            operator, 
            unlockTime, 
            unlockPriceMultiplier,
            feeType
        );
    }

    /**
     * @notice Helper function to convert single address to array
     * @param pool Single pool address
     * @return Array containing the single pool address
     */
    function _asArray(address pool) internal pure returns (address[] memory) {
        address[] memory pools = new address[](1);
        pools[0] = pool;
        return pools;
    }

    /**
     * @notice Create a token lock with multi-pool price path
     * @param token Address of the token to lock
     * @param pools Array of Uniswap V3 pool addresses for multi-hop price calculation
     * @param operator Address authorized to withdraw (in addition to owner)
     * @param unlockTime Timestamp when time-based unlock is allowed
     * @param unlockPriceMultiplier Price multiplier for price-based unlock (in basis points)
     * @param feeType Fee configuration type to use
     * @return lockAddress Address of the created TokenLock contract
     */
    function createLock(
        address token, 
        address[] memory pools, 
        address operator, 
        uint256 unlockTime, 
        uint256 unlockPriceMultiplier,
        string memory feeType
    ) public payable returns (address lockAddress){
        if (token == address(0)) revert InvalidAddress();
        if (pools.length == 0) revert InvalidPoolPath();
        if (unlockTime <= block.timestamp) revert InvalidUnlockTime();
        if (!validFeeTypes[feeType]) revert InvalidFeeType();
        
        FeeConfig memory feeConfig = feeConfigs[feeType];
        _collectFee(feeConfig);
        
        TokenLock newLock = new TokenLock(
            token,
            pools,
            operator,
            unlockTime,
            unlockPriceMultiplier,
            msg.sender,
            address(this),
            feeConfig.lockedTokenPercentage
        );
        userLocks[msg.sender].push(address(newLock));
        
        emit LockCreated(
            address(newLock),
            token,
            pools,
            operator,
            unlockTime,
            unlockPriceMultiplier,
            msg.sender
        );
        return address(newLock);
    }
    /**
     * @notice Create a token lock with custom fee and single pool
     * @param token Address of the token to lock
     * @param pool Address of the Uniswap V3 pool for price reference
     * @param operator Address authorized to withdraw (in addition to owner)
     * @param unlockTime Timestamp when time-based unlock is allowed
     * @param unlockPriceMultiplier Price multiplier for price-based unlock (in basis points)
     * @param customFee Custom fee configuration signed by feeSigner
     * @param signature EIP-712 signature of the custom fee
     * @return lockAddress Address of the created TokenLock contract
     */
    function createLockWithCustomFee(
        address token,
        address pool,
        address operator,
        uint256 unlockTime, 
        uint256 unlockPriceMultiplier,
        CustomFee memory customFee,
        bytes memory signature 
    ) external payable returns (address lockAddress) {
        return createLockWithCustomFee(
            token,
            _asArray(pool),
            operator,
            unlockTime,
            unlockPriceMultiplier,
            customFee,
            signature
        );
    }

    /**
     * @notice Create a token lock with custom fee and multi-pool path
     * @param token Address of the token to lock
     * @param pools Array of Uniswap V3 pool addresses for multi-hop price calculation
     * @param operator Address authorized to withdraw (in addition to owner)
     * @param unlockTime Timestamp when time-based unlock is allowed
     * @param unlockPriceMultiplier Price multiplier for price-based unlock (in basis points)
     * @param customFee Custom fee configuration signed by feeSigner
     * @param signature EIP-712 signature of the custom fee
     * @return lockAddress Address of the created TokenLock contract
     */
    function createLockWithCustomFee(
        address token,
        address[] memory pools,
        address operator,
        uint256 unlockTime, 
        uint256 unlockPriceMultiplier,
        CustomFee memory customFee,
        bytes memory signature 
    ) public payable returns (address lockAddress) {
        if (token == address(0)) revert InvalidAddress();
        if (pools.length == 0) revert InvalidPoolPath();
        if (unlockTime <= block.timestamp) revert InvalidUnlockTime();
        if (customFee.user != msg.sender) revert NotCustomFeeUser();

        // Verify custom fee signature
        bytes32 structHash = _hashCustomFee(customFee);
        if (revokedSignatures[structHash]) revert InvalidAddress(); // Signature already revoked
        bytes32 digest = _hashTypedDataV4(structHash);
        address signer = digest.recover(signature);
        if (signer != feeSigner) revert InvalidSignature();

        // Convert custom fee to fee config
        FeeConfig memory feeConfig = FeeConfig({
            lockedTokenPercentage: customFee.lockedTokenPercentage,
            feeTokenAddress: customFee.feeTokenAddress,
            feeTokenAmount: customFee.feeTokenAmount
        });

        _collectFee(feeConfig);

        TokenLock newLock = new TokenLock(
            token,
            pools,
            operator,
            unlockTime,
            unlockPriceMultiplier,
            msg.sender,
            address(this),
            customFee.lockedTokenPercentage
        );
        userLocks[msg.sender].push(address(newLock));
        
        emit LockCreated(
            address(newLock),
            token,
            pools,
            operator,
            unlockTime,
            unlockPriceMultiplier,
            msg.sender
        );
        return address(newLock);
    }
    /**
     * @notice Internal function to collect fees based on fee configuration
     * @param feeConfig Fee configuration specifying token and amount
     * @dev Handles both ETH and ERC20 fee payments with refund mechanism
     */
    function _collectFee(
        FeeConfig memory feeConfig
    ) internal {
        // Collect platform fee if specified
        if (feeConfig.feeTokenAmount > 0) {
            if (feeConfig.feeTokenAddress == address(0)) {
                // Collect ETH fee
                if (msg.value < feeConfig.feeTokenAmount) revert InsufficientFeePayment();

                (bool success, ) = feeCollector.call{value: feeConfig.feeTokenAmount}("");
                if (!success) revert ETHTransferFailed();

                // Refund excess ETH to sender
                if (msg.value > feeConfig.feeTokenAmount) {
                    (bool refundSuccess, ) = msg.sender.call{value: msg.value - feeConfig.feeTokenAmount}("");
                    if (!refundSuccess) revert ETHTransferFailed();
                }
            } else {
                // Collect ERC20 fee
                if (msg.value != 0) revert NotNeedETH();
                IERC20(feeConfig.feeTokenAddress).safeTransferFrom(
                    msg.sender,
                    feeCollector,
                    feeConfig.feeTokenAmount
                );
            }
        }

        emit FeeCollected(
            msg.sender,
            feeConfig.feeTokenAddress,
            feeConfig.feeTokenAmount
        );
    }

    /**
     * @notice Hash a CustomFee struct for EIP-712 signature verification
     * @param customFee The custom fee struct to hash
     * @return The keccak256 hash of the encoded struct
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

    /**
     * @notice Get all lock contracts created by a specific user
     * @param user Address of the user
     * @return Array of TokenLock contract addresses created by the user
     */
    function getUserLocks(address user) external view returns (address[] memory) {
        return userLocks[user];
    }
}