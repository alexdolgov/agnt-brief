// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

/**
 * @title RTKNConverter
 * @dev Upgradeable contract that converts RTKN + CTKN pairs to USDC
 * Users can exchange 1 RTKN + 1 CTKN = 1 USDC
 */
contract RTKNConverter is Initializable, OwnableUpgradeable, ReentrancyGuardUpgradeable {
    
    // Token contracts
    IERC20Upgradeable[] public rtknTokens;  // Array of RTKN token contracts
    IERC20Upgradeable public ctknToken;     // CTKN token contract
    IERC20Upgradeable public usdcToken;     // USDC token contract
    
    // Events
    event Funded(uint256 amount);
    event Conversion(
        address indexed user, 
        uint256 rtknAmount, 
        uint256 ctknAmount, 
        uint256 usdcAmount
    );
    event RTKNTokenAdded(address indexed token);
    event RTKNTokenRemoved(address indexed token);
    
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }
    
    /**
     * @dev Initialize the contract (replaces constructor for upgradeable contracts)
     * @param _rtknTokens Array of RTKN token addresses
     * @param _ctknToken CTKN token address
     * @param _usdcToken USDC token address
     * @param _owner Initial owner of the contract
     */
    function initialize(
        address[] memory _rtknTokens,
        address _ctknToken,
        address _usdcToken,
        address _owner
    ) public initializer {
        require(_ctknToken != address(0), "Invalid CTKN address");
        require(_usdcToken != address(0), "Invalid USDC address");
        require(_owner != address(0), "Invalid owner address");
        
        __Ownable_init();
        __ReentrancyGuard_init();
        
        // Transfer ownership to specified owner
        _transferOwnership(_owner);
        
        for (uint i = 0; i < _rtknTokens.length; i++) {
            require(_rtknTokens[i] != address(0), "Invalid RTKN address");
            rtknTokens.push(IERC20Upgradeable(_rtknTokens[i]));
        }
        
        ctknToken = IERC20Upgradeable(_ctknToken);
        usdcToken = IERC20Upgradeable(_usdcToken);
    }
    
    /**
     * @dev Fund the contract with USDC (owner only)
     * @param amount Amount of USDC to fund
     */
    function fundWithUSDC(uint256 amount) external onlyOwner {
        require(amount > 0, "Amount must be greater than 0");
        require(
            usdcToken.transferFrom(msg.sender, address(this), amount),
            "USDC transfer failed"
        );
        
        emit Funded(amount);
    }
    
    /**
     * @dev Convert RTKN + CTKN pairs to USDC
     * @param requestedAmount Amount of RTKNs user wants to convert
     */
    function convertRTKNToUSDC(uint256 requestedAmount) external nonReentrant {
        require(requestedAmount > 0, "Amount must be greater than 0");
        
        // Check user's CTKN balance
        uint256 ctknBalance = ctknToken.balanceOf(msg.sender);
        require(ctknBalance > 0, "No CTKN balance");
        
        // Check user's total RTKN balance across all contracts
        uint256 totalRTKNBalance = getTotalRTKNBalance(msg.sender);
        require(totalRTKNBalance > 0, "No RTKN balance");
        
        // Determine actual conversion amount (limited by CTKN balance)
        uint256 conversionAmount = requestedAmount;
        if (conversionAmount > ctknBalance) {
            conversionAmount = ctknBalance;
        }
        if (conversionAmount > totalRTKNBalance) {
            conversionAmount = totalRTKNBalance;
        }
        
        // Check contract has enough USDC
        require(
            usdcToken.balanceOf(address(this)) >= conversionAmount,
            "Insufficient USDC in contract"
        );
        
        // Check CTKN approval and transfer
        require(
            ctknToken.allowance(msg.sender, address(this)) >= conversionAmount,
            "Insufficient CTKN approval"
        );
        require(
            ctknToken.transferFrom(msg.sender, address(this), conversionAmount),
            "CTKN transfer failed"
        );
        
        // Handle RTKN transfers from multiple contracts
        _transferRTKNs(msg.sender, conversionAmount);
        
        // Transfer USDC to user
        require(
            usdcToken.transfer(msg.sender, conversionAmount),
            "USDC transfer failed"
        );
        
        emit Conversion(msg.sender, conversionAmount, conversionAmount, conversionAmount);
    }
    
    /**
     * @dev Internal function to handle RTKN transfers from multiple contracts
     * @param user User address
     * @param totalAmount Total amount of RTKNs to transfer
     */
    function _transferRTKNs(address user, uint256 totalAmount) internal {
        uint256 remainingAmount = totalAmount;
        
        for (uint i = 0; i < rtknTokens.length && remainingAmount > 0; i++) {
            IERC20Upgradeable rtkn = rtknTokens[i];
            uint256 userBalance = rtkn.balanceOf(user);
            
            if (userBalance == 0) continue;
            
            uint256 transferAmount = remainingAmount;
            if (transferAmount > userBalance) {
                transferAmount = userBalance;
            }
            
            // Check approval
            require(
                rtkn.allowance(user, address(this)) >= transferAmount,
                "Insufficient RTKN approval"
            );
            
            // Transfer tokens
            require(
                rtkn.transferFrom(user, address(this), transferAmount),
                "RTKN transfer failed"
            );
            
            remainingAmount -= transferAmount;
        }
        
        require(remainingAmount == 0, "Could not source enough RTKNs");
    }
    
    /**
     * @dev Get user's total RTKN balance across all RTKN contracts
     * @param user User address
     * @return Total RTKN balance
     */
    function getTotalRTKNBalance(address user) public view returns (uint256) {
        uint256 totalBalance = 0;
        
        for (uint i = 0; i < rtknTokens.length; i++) {
            totalBalance += rtknTokens[i].balanceOf(user);
        }
        
        return totalBalance;
    }
    
    /**
     * @dev Get maximum convertible amount for a user
     * @param user User address
     * @return Maximum amount user can convert
     */
    function getMaxConvertibleAmount(address user) public view returns (uint256) {
        uint256 ctknBalance = ctknToken.balanceOf(user);
        uint256 totalRTKNBalance = getTotalRTKNBalance(user);
        uint256 contractUSDCBalance = usdcToken.balanceOf(address(this));
        
        // Return the minimum of the three
        uint256 maxAmount = ctknBalance;
        if (totalRTKNBalance < maxAmount) {
            maxAmount = totalRTKNBalance;
        }
        if (contractUSDCBalance < maxAmount) {
            maxAmount = contractUSDCBalance;
        }
        
        return maxAmount;
    }
    
    /**
     * @dev Add a new RTKN token (owner only)
     * @param tokenAddress Address of the RTKN token to add
     */
    function addRTKNToken(address tokenAddress) external onlyOwner {
        require(tokenAddress != address(0), "Invalid token address");
        
        // Check if token already exists
        for (uint i = 0; i < rtknTokens.length; i++) {
            require(address(rtknTokens[i]) != tokenAddress, "Token already exists");
        }
        
        rtknTokens.push(IERC20Upgradeable(tokenAddress));
        emit RTKNTokenAdded(tokenAddress);
    }
    
    /**
     * @dev Remove an RTKN token (owner only)
     * @param tokenAddress Address of the RTKN token to remove
     */
    function removeRTKNToken(address tokenAddress) external onlyOwner {
        for (uint i = 0; i < rtknTokens.length; i++) {
            if (address(rtknTokens[i]) == tokenAddress) {
                rtknTokens[i] = rtknTokens[rtknTokens.length - 1];
                rtknTokens.pop();
                emit RTKNTokenRemoved(tokenAddress);
                return;
            }
        }
        revert("Token not found");
    }
    
    /**
     * @dev Get number of RTKN tokens
     * @return Number of RTKN token contracts
     */
    function getRTKNTokenCount() public view returns (uint256) {
        return rtknTokens.length;
    }
    
    /**
     * @dev Emergency withdraw function (owner only)
     * @param token Token address to withdraw
     * @param amount Amount to withdraw
     */
    function emergencyWithdraw(address token, uint256 amount) external onlyOwner {
        IERC20Upgradeable(token).transfer(owner(), amount);
    }
    
    /**
     * @dev Get contract's USDC balance
     * @return USDC balance of the contract
     */
    function getContractUSDCBalance() public view returns (uint256) {
        return usdcToken.balanceOf(address(this));
    }
    
    /**
     * @dev Get implementation version for upgrade tracking
     * @return Version string
     */
    function version() public pure returns (string memory) {
        return "1.0.0";
    }
    
    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[47] private __gap;
}