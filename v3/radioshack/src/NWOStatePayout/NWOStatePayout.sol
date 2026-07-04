// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@uniswap/v3-periphery/contracts/interfaces/ISwapRouter.sol";
import "@uniswap/v3-periphery/contracts/libraries/TransferHelper.sol";

contract NWOStatePayout is ReentrancyGuard, Pausable, Ownable {
    using SafeERC20 for IERC20;

    IERC20 public immutable stateToken;
    ISwapRouter public immutable swapRouter;
    address public immutable WETH9;
    address public feeRecipient;
    address public backendSigner;

    uint256 public activationFee = 3000000000000000;
    uint256 public claimCooldown = 604800;
    uint256 public maxDailyClaim = 100000000000000000000000000;
    uint256 public maxGlobalDaily = 1000000000000000000000000000;
    
    mapping(address => bool) public hasActivated;
    mapping(address => uint256) public lastClaimTime;
    mapping(address => mapping(uint256 => uint256)) public dailyClaims;
    mapping(uint256 => uint256) public globalDailyClaims;
    mapping(bytes32 => bool) public usedNonces;

    uint24 public defaultFeeTier = 3000;
    uint256 public platformFeeBps = 100;
    uint256 public accumulatedFees;
    uint256 public totalVolume;
    uint256 public totalStateBought;

    event UserActivated(address indexed user, uint256 fee);
    event TokensClaimed(address indexed user, uint256 amount, bytes32 indexed nonce, uint256 timestamp);
    event StateBought(address indexed buyer, uint256 ethAmount, uint256 stateReceived, uint256 platformFee, uint256 timestamp);
    event FeesWithdrawn(address indexed recipient, uint256 amount);
    event BackendSignerUpdated(address indexed oldSigner, address indexed newSigner);
    event ContractFunded(address indexed funder, uint256 amount);

    constructor(
        address _stateToken,
        address _swapRouter,
        address _weth,
        address _feeRecipient,
        address _backendSigner
    ) Ownable(msg.sender) {
        require(_stateToken != address(0), "Invalid STATE address");
        require(_swapRouter != address(0), "Invalid router address");
        require(_weth != address(0), "Invalid WETH address");
        require(_feeRecipient != address(0), "Invalid fee recipient");
        require(_backendSigner != address(0), "Invalid signer address");
        
        stateToken = IERC20(_stateToken);
        swapRouter = ISwapRouter(_swapRouter);
        WETH9 = _weth;
        feeRecipient = _feeRecipient;
        backendSigner = _backendSigner;
    }

    function activate() external payable nonReentrant whenNotPaused {
        require(!hasActivated[msg.sender], "Already activated");
        require(msg.value >= activationFee, "Insufficient activation fee");
        
        hasActivated[msg.sender] = true;
        accumulatedFees += msg.value;
        
        emit UserActivated(msg.sender, msg.value);
    }

    function claim(
        uint256 amount,
        bytes32 nonce,
        bytes memory signature,
        uint256 deadline
    ) external nonReentrant whenNotPaused {
        require(hasActivated[msg.sender], "Activation required");
        require(block.timestamp <= deadline, "Claim expired");
        require(!usedNonces[nonce], "Nonce already used");
        
        require(
            block.timestamp >= lastClaimTime[msg.sender] + claimCooldown,
            "Claim cooldown active"
        );
        
        uint256 currentDay = block.timestamp / 1 days;
        require(
            dailyClaims[msg.sender][currentDay] + amount <= maxDailyClaim,
            "Daily claim limit exceeded"
        );
        require(
            globalDailyClaims[currentDay] + amount <= maxGlobalDaily,
            "Global daily limit exceeded"
        );
        
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
        require(signer == backendSigner, "Invalid signature");
        
        usedNonces[nonce] = true;
        
        lastClaimTime[msg.sender] = block.timestamp;
        dailyClaims[msg.sender][currentDay] += amount;
        globalDailyClaims[currentDay] += amount;
        
        require(
            stateToken.balanceOf(address(this)) >= amount,
            "Insufficient contract balance"
        );
        
        stateToken.safeTransfer(msg.sender, amount);
        
        emit TokensClaimed(msg.sender, amount, nonce, block.timestamp);
    }

    function buyStateWithETH(
        uint256 minAmountOut,
        uint256 deadline
    ) external payable nonReentrant whenNotPaused {
        require(msg.value > 0, "Invalid amount");
        require(block.timestamp <= deadline, "Deadline expired");
        
        uint256 platformFee = (msg.value * platformFeeBps) / 10000;
        uint256 swapAmount = msg.value - platformFee;
        
        accumulatedFees += platformFee;
        
        IWETH(WETH9).deposit{value: swapAmount}();
        
        TransferHelper.safeApprove(WETH9, address(swapRouter), swapAmount);
        
        ISwapRouter.ExactInputSingleParams memory params = ISwapRouter.ExactInputSingleParams({
            tokenIn: WETH9,
            tokenOut: address(stateToken),
            fee: defaultFeeTier,
            recipient: msg.sender,
            deadline: deadline,
            amountIn: swapAmount,
            amountOutMinimum: minAmountOut,
            sqrtPriceLimitX96: 0
        });
        
        uint256 amountOut = swapRouter.exactInputSingle(params);
        
        totalVolume += msg.value;
        totalStateBought += amountOut;
        
        emit StateBought(msg.sender, msg.value, amountOut, platformFee, block.timestamp);
    }

    function fundContract(uint256 amount) external {
        stateToken.safeTransferFrom(msg.sender, address(this), amount);
        emit ContractFunded(msg.sender, amount);
    }
    
    function withdrawFees() external onlyOwner nonReentrant {
        uint256 amount = accumulatedFees;
        require(amount > 0, "No fees to withdraw");
        
        accumulatedFees = 0;
        
        (bool success, ) = payable(feeRecipient).call{value: amount}("");
        require(success, "Transfer failed");
        
        emit FeesWithdrawn(feeRecipient, amount);
    }
    
    function setBackendSigner(address _newSigner) external onlyOwner {
        require(_newSigner != address(0), "Invalid address");
        address oldSigner = backendSigner;
        backendSigner = _newSigner;
        emit BackendSignerUpdated(oldSigner, _newSigner);
    }
    
    function setFeeRecipient(address _newRecipient) external onlyOwner {
        require(_newRecipient != address(0), "Invalid address");
        feeRecipient = _newRecipient;
    }
    
    function setActivationFee(uint256 _newFee) external onlyOwner {
        activationFee = _newFee;
    }
    
    function setCooldown(uint256 _newCooldown) external onlyOwner {
        claimCooldown = _newCooldown;
    }
    
    function setDailyLimits(uint256 _maxDaily, uint256 _maxGlobal) external onlyOwner {
        maxDailyClaim = _maxDaily;
        maxGlobalDaily = _maxGlobal;
    }
    
    function setPlatformFee(uint256 _newFeeBps) external onlyOwner {
        require(_newFeeBps <= 500, "Max 5%");
        platformFeeBps = _newFeeBps;
    }
    
    function setFeeTier(uint24 _feeTier) external onlyOwner {
        require(_feeTier == 500 || _feeTier == 3000 || _feeTier == 10000, "Invalid tier");
        defaultFeeTier = _feeTier;
    }
    
    function pause() external onlyOwner {
        _pause();
    }
    
    function unpause() external onlyOwner {
        _unpause();
    }
    
    function recoverERC20(address token, uint256 amount) external onlyOwner {
        require(token != address(stateToken), "Cannot recover STATE");
        IERC20(token).safeTransfer(owner(), amount);
    }

    function isActivated(address user) external view returns (bool) {
        return hasActivated[user];
    }
    
    function getCooldownRemaining(address user) external view returns (uint256) {
        uint256 nextClaim = lastClaimTime[user] + claimCooldown;
        if (block.timestamp >= nextClaim) return 0;
        return nextClaim - block.timestamp;
    }
    
    function getUserDailyClaimed(address user) external view returns (uint256) {
        return dailyClaims[user][block.timestamp / 1 days];
    }
    
    function getContractBalance() external view returns (uint256) {
        return stateToken.balanceOf(address(this));
    }
    
    function isNonceUsed(bytes32 nonce) external view returns (bool) {
        return usedNonces[nonce];
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
    
    receive() external payable {}
}

interface IWETH {
    function deposit() external payable;
    function withdraw(uint256 amount) external;
    function balanceOf(address account) external view returns (uint256);
}