// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import "@openzeppelin/contracts/utils/cryptography/EIP712.sol";
import "./interfaces/ILockFactory.sol";
import "./TokenLock.sol";

contract LockFactory is Ownable, EIP712, ILockFactory {
    using SafeERC20 for IERC20;
    using ECDSA for bytes32;

    error InvalidAddress();
    error InvalidUnlockTime();
    error InsufficientFeePayment();
    error ETHTransferFailed();
    error NotNeedETH();
    error InvalidSignature();
    error NotCustomFeeUser();
    error InvalidPoolPath();

    string public constant DEFAULT = "default";

    bytes32 private constant CUSTOM_FEE_TYPEHASH = keccak256(
        "CustomFee(address user,uint256 lockedTokenPercentage,address feeTokenAddress,uint256 feeTokenAmount)"
    );

    address public feeCollector;
    address public feeSigner;
    uint16 public twapInterval;
    mapping(string => FeeConfig) public feeConfigs;

    mapping(bytes32 => bool) public revokedSignatures;

    mapping(address => address[]) public userLocks;
    
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

        // Initialize default fee configs
        feeConfigs[DEFAULT] = FeeConfig({
            lockedTokenPercentage: 10, // 0.1%
            feeTokenAddress: address(0),
            feeTokenAmount: 0.1 ether
        });
    }

    function setFeeCollector(address _feeCollector) external onlyOwner {
        if (_feeCollector == address(0)) revert InvalidAddress();
        feeCollector = _feeCollector;
    }

    function setFeeSigner(address _feeSigner) external onlyOwner {
        if (_feeSigner == address(0)) revert InvalidAddress();
        feeSigner = _feeSigner;
    }
    function setTwapInterval(uint16 _twapInterval) external onlyOwner {
        twapInterval = _twapInterval;
    }

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
    }

    function getFeeConfig(string memory feeType) external view returns (FeeConfig memory) {
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

    function _asArray(address pool) internal pure returns (address[] memory) {
        address[] memory pools = new address[](1);
        pools[0] = pool;
        return pools;
    }

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

        bytes32 structHash = _hashCustomFee(customFee);
        if (revokedSignatures[structHash]) revert InvalidAddress(); // Signature already revoked
        bytes32 digest = _hashTypedDataV4(structHash);
        address signer = digest.recover(signature);
        if (signer != feeSigner) revert InvalidSignature();

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
    function _collectFee(
        FeeConfig memory feeConfig
    ) internal {

        // Collect fixed token fee
        if (feeConfig.feeTokenAmount > 0) {
            if (feeConfig.feeTokenAddress == address(0)) {
                // Collect ETH
                if (msg.value < feeConfig.feeTokenAmount) revert InsufficientFeePayment();

                (bool success, ) = feeCollector.call{value: feeConfig.feeTokenAmount}("");
                if (!success) revert ETHTransferFailed();

                // Refund excess ETH
                if (msg.value > feeConfig.feeTokenAmount) {
                    (bool refundSuccess, ) = msg.sender.call{value: msg.value - feeConfig.feeTokenAmount}("");
                    if (!refundSuccess) revert ETHTransferFailed();
                }
            } else {
                // Collect ERC20
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

    function getUserLocks(address user) external view returns (address[] memory) {
        return userLocks[user];
    }
}