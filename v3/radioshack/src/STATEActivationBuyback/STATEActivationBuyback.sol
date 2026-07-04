// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/**
 * @title STATE Activation & Buyback Contract
 * @author NWO.CAPITAL
 * @notice Users pay ETH to activate their payout window.
 *         30% goes to deployer operations wallet.
 *         70% auto-buys STATE from DEX to create buy pressure.
 * @dev Deployed on Ethereum mainnet
 */

import "@uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

contract STATEActivationBuyback is Ownable, ReentrancyGuard {
    
    // ============ IMMUTABLE PARAMETERS ============
    
    /// @notice Deployer/operations wallet - receives 30% of ETH
    address public immutable DEPLOYER_WALLET;
    
    /// @notice STATE token contract address
    address public immutable STATE_TOKEN;
    
    /// @notice WETH address for Uniswap routing
    address public immutable WETH;
    
    /// @notice Uniswap V2 Router for buybacks
    IUniswapV2Router02 public immutable UNISWAP_ROUTER;
    
    /// @notice Activation fee in ETH (~$9 USD)
    uint256 public constant ACTIVATION_FEE = 0.003 ether;
    
    /// @notice Deployer share: 30%
    uint256 public constant DEPLOYER_SHARE = 30;
    
    /// @notice Buyback share: 70%
    uint256 public constant BUYBACK_SHARE = 70;
    
    /// @notice Total basis points
    uint256 public constant TOTAL_BPS = 100;
    
    /// @notice Slippage tolerance for buybacks (2%)
    uint256 public constant SLIPPAGE_TOLERANCE = 200;
    
    // ============ STATE VARIABLES ============
    
    /// @notice Tracks total ETH collected from activations
    uint256 public totalEthCollected;
    
    /// @notice Tracks total ETH sent to deployer
    uint256 public totalEthToDeployer;
    
    /// @notice Tracks total ETH used for buybacks
    uint256 public totalEthForBuyback;
    
    /// @notice Tracks total STATE tokens bought back
    uint256 public totalStateBoughtBack;
    
    /// @notice Tracks user activation status
    mapping(address => bool) public hasActivated;
    
    /// @notice Backend signer for authorizing claims
    address public backendSigner;
    
    /// @notice Used nonces (prevents replay attacks)
    mapping(bytes32 => bool) public usedNonces;
    
    // ============ EVENTS ============
    
    event ActivationPaid(
        address indexed user,
        uint256 ethAmount,
        uint256 deployerShare,
        uint256 buybackShare,
        uint256 stateBought
    );
    
    event TokensClaimed(
        address indexed user,
        uint256 amount,
        bytes32 indexed nonce
    );
    
    event BackendSignerUpdated(address indexed oldSigner, address indexed newSigner);
    
    // ============ ERRORS ============
    
    error InvalidETHAmount();
    error ActivationFailed();
    error BuybackFailed();
    error TransferFailed();
    error InvalidTokenAddress();
    error InvalidRouterAddress();
    error InvalidSignature();
    error NonceAlreadyUsed();
    error ActivationRequired();
    error AlreadyActivated();
    error InsufficientContractBalance();
    
    // ============ CONSTRUCTOR ============
    
    constructor(
        address _stateToken,
        address _weth,
        address _uniswapRouter,
        address _deployerWallet,
        address _backendSigner
    ) Ownable(msg.sender) {
        if (_stateToken == address(0)) revert InvalidTokenAddress();
        if (_uniswapRouter == address(0)) revert InvalidRouterAddress();
        if (_deployerWallet == address(0)) revert InvalidTokenAddress();
        if (_backendSigner == address(0)) revert InvalidTokenAddress();
        
        STATE_TOKEN = _stateToken;
        WETH = _weth;
        UNISWAP_ROUTER = IUniswapV2Router02(_uniswapRouter);
        DEPLOYER_WALLET = _deployerWallet;
        backendSigner = _backendSigner;
    }
    // ============ ACTIVATION WITH AUTO-BUYBACK ============
    
    /**
     * @notice User pays ETH to activate their payout window
     * @dev Sends 30% to deployer, 70% buys STATE from DEX
     */
    function activate() external payable nonReentrant {
        if (hasActivated[msg.sender]) revert AlreadyActivated();
        if (msg.value != ACTIVATION_FEE) revert InvalidETHAmount();
        
        // Calculate shares
        uint256 deployerAmount = (msg.value * DEPLOYER_SHARE) / TOTAL_BPS;
        uint256 buybackAmount = msg.value - deployerAmount;
        
        // Update tracking
        totalEthCollected += msg.value;
        
        // 1. Send 30% to deployer wallet
        (bool deployerSuccess, ) = payable(DEPLOYER_WALLET).call{value: deployerAmount}("");
        if (!deployerSuccess) revert TransferFailed();
        totalEthToDeployer += deployerAmount;
        
        // 2. Use 70% to buy STATE from DEX
        uint256 stateBought = _executeBuyback(buybackAmount);
        
        // 3. Record user activation
        hasActivated[msg.sender] = true;
        
        emit ActivationPaid(
            msg.sender,
            msg.value,
            deployerAmount,
            buybackAmount,
            stateBought
        );
    }
    
    // ============ CLAIM EARNED TOKENS ============
    
    function claim(
        uint256 amount,
        bytes32 nonce,
        bytes memory signature,
        uint256 deadline
    ) external nonReentrant {
        // Verify user activated
        if (!hasActivated[msg.sender]) revert ActivationRequired();
        
        // Check deadline not expired
        if (block.timestamp > deadline) revert TransferFailed();
        
        // Check nonce not used before
        if (usedNonces[nonce]) revert NonceAlreadyUsed();
        
        // Verify backend signature
        bytes32 message = keccak256(abi.encodePacked(
            msg.sender,
            amount,
            nonce,
            deadline,
            address(this)
        ));
        bytes32 ethSignedMessage = keccak256(abi.encodePacked(
            "\x19Ethereum Signed Message:\n32",
            message
        ));
        
        address signer = recoverSigner(ethSignedMessage, signature);
        if (signer != backendSigner) revert InvalidSignature();
        
        // Mark nonce used
        usedNonces[nonce] = true;
        
        // Verify contract has enough STATE
        if (IERC20(STATE_TOKEN).balanceOf(address(this)) < amount) {
            revert InsufficientContractBalance();
        }
        
        // Send STATE to user
        IERC20(STATE_TOKEN).transfer(msg.sender, amount);
        
        emit TokensClaimed(msg.sender, amount, nonce);
    }
    
    // ============ INTERNAL FUNCTIONS ============
    
    function _executeBuyback(uint256 _ethAmount) internal returns (uint256) {
        address[] memory path = new address[](2);
        path[0] = WETH;
        path[1] = STATE_TOKEN;
        
        // Get expected output
        uint256[] memory amounts = UNISWAP_ROUTER.getAmountsOut(_ethAmount, path);
        uint256 expectedOutput = amounts[1];
        
        // Apply 2% slippage (98% of expected)
        uint256 minOutput = (expectedOutput * (10000 - SLIPPAGE_TOLERANCE)) / 10000;
        
        uint256 deadline = block.timestamp + 5 minutes;
        
        uint256[] memory swapResults = UNISWAP_ROUTER.swapExactETHForTokens{value: _ethAmount}(
            minOutput,
            path,
            address(this),
            deadline
        );
        
        uint256 stateReceived = swapResults[1];
        
        totalEthForBuyback += _ethAmount;
        totalStateBoughtBack += stateReceived;
        
        return stateReceived;
    }
    
    function recoverSigner(bytes32 ethSignedMessage, bytes memory signature) 
        internal 
        pure 
        returns (address) 
    {
        require(signature.length == 65, "Invalid signature length");
        
        bytes32 r;
        bytes32 s;
        uint8 v;
        
        assembly {
            r := mload(add(signature, 32))
            s := mload(add(signature, 64))
            v := byte(0, mload(add(signature, 96)))
        }
        
        if (v < 27) v += 27;
        
        return ecrecover(ethSignedMessage, v, r, s);
    }
    
    // ============ ADMIN FUNCTIONS ============
    
    function setBackendSigner(address _newSigner) external onlyOwner {
        require(_newSigner != address(0), "Invalid address");
        address oldSigner = backendSigner;
        backendSigner = _newSigner;
        emit BackendSignerUpdated(oldSigner, _newSigner);
    }
    
    function fundContract(uint256 amount) external {
        IERC20(STATE_TOKEN).transferFrom(msg.sender, address(this), amount);
    }
    
    function emergencyWithdrawState(address _to, uint256 _amount) external onlyOwner {
        IERC20(STATE_TOKEN).transfer(_to, _amount);
    }
    
    function emergencyWithdrawETH(address _to, uint256 _amount) external onlyOwner {
        (bool success, ) = payable(_to).call{value: _amount}("");
        if (!success) revert TransferFailed();
    }
    
    // ============ VIEW FUNCTIONS ============
    
    function isActivated(address user) external view returns (bool) {
        return hasActivated[user];
    }
    
    function getContractBalance() external view returns (uint256) {
        return IERC20(STATE_TOKEN).balanceOf(address(this));
    }
    
    function isNonceUsed(bytes32 nonce) external view returns (bool) {
        return usedNonces[nonce];
    }
    
    receive() external payable {
        revert("Use activate() function");
    }
}
