// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/IERC20MetadataUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

/**
 * @title RTKNConverter
 * @dev Upgradeable contract that converts RTKN + CTKN pairs to USDC or other whitelisted tokens
 * Users can exchange 1 RTKN + 1 CTKN = 1 USDC (normalized by decimals)
 * RTKN and CTKN tokens must have 18 decimals, USDC decimals are queried dynamically
 */
contract RTKNConverter is Initializable, OwnableUpgradeable, ReentrancyGuardUpgradeable {
    
    // Token contracts
    IERC20Upgradeable[] public rtknTokens;  // Array of RTKN token contracts
    IERC20Upgradeable public ctknToken;     // CTKN token contract
    IERC20Upgradeable public usdcToken;     // USDC token contract
    
    // ParaSwap constants
    address private constant PARA_ROUTER = 0x6A000F20005980200259B80c5102003040001068;
    bytes4 private constant SWAP_EXACT_AMOUNT_IN_SELECTOR = 0xe3ead59e;
    bytes4 private constant SWAP_EXACT_AMOUNT_IN_ON_UNI_V3_SELECTOR = 0x876a02f6;
    
    // ParaSwap executor addresses
    address private constant EXECUTOR_1 = 0xDEF171Fe48CF0115B1d80b88dc8eAB59176FEe57;
    address private constant EXECUTOR_2 = 0x6A000F20005980200259B80c5102003040001068;
    address private constant EXECUTOR_3 = 0x000010036C0190E009a000d0fc3541100A07380A;
    address private constant EXECUTOR_4 = 0x00C600b30fb0400701010F4b080409018B9006E0;
    address private constant EXECUTOR_5 = 0x0e5891850Bb3F03090F03010000806f080040100;
    
    // Whitelisted tokens that USDC can be swapped into
    mapping(address => bool) public whitelistedSwapTokens;
    
    // ParaSwap structs
    struct GenericData {
        address srcToken;
        address destToken;
        uint256 fromAmount;
        uint256 toAmount;
        uint256 quotedAmount;
        bytes32 metadata;
        address payable beneficiary;
    }
    
    struct UniswapV3Data {
        address srcToken;
        address destToken;
        uint256 fromAmount;
        uint256 toAmount;
        uint256 quotedAmount;
        bytes32 metadata;
        address payable beneficiary;
        bytes pools;
    }
    
    struct ParaSwapDecodedData {
        address executor;
        address srcToken;
        address destToken;
        uint256 fromAmount;
        uint256 toAmount;
        address partner;
        address payable beneficiary;
    }
    
    // Events
    event Funded(uint256 amount);
    event Conversion(
        address indexed user, 
        uint256 rtknAmount, 
        uint256 ctknAmount, 
        uint256 usdcAmount
    );
    event ConversionWithSwap(
        address indexed user,
        uint256 rtknAmount,
        uint256 ctknAmount,
        uint256 usdcAmount,
        address indexed targetToken,
        uint256 targetTokenAmount
    );
    event RTKNTokenAdded(address indexed token);
    event RTKNTokenRemoved(address indexed token);
    event SwapTokenWhitelisted(address indexed token);
    event SwapTokenRemovedFromWhitelist(address indexed token);
    
    // Custom errors
    error InvalidExecutor();
    error InvalidBeneficiary();
    error InvalidTokenAddress();
    error InvalidAmount();
    error SwapFailed();
    error TooLittleReceived();
    error TokenNotWhitelisted();
    error InvalidSwapSource();
    
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
     * @param amount Amount of USDC to fund (in USDC's native decimals)
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
     * @param requestedAmount Amount of RTKNs user wants to convert (in 18 decimals)
     */
    function convertRTKNToUSDC(uint256 requestedAmount) external nonReentrant {
        require(requestedAmount > 0, "Amount must be greater than 0");
        
        // Check user's CTKN balance
        uint256 ctknBalance = ctknToken.balanceOf(msg.sender);
        require(ctknBalance > 0, "No CTKN balance");
        
        // Check user's total RTKN balance across all contracts
        uint256 totalRTKNBalance = getTotalRTKNBalance(msg.sender);
        require(totalRTKNBalance > 0, "No RTKN balance");
        
        // Determine actual conversion amount in 18 decimals (limited by both balances)
        uint256 conversionAmount = requestedAmount;
        if (conversionAmount > ctknBalance) {
            conversionAmount = ctknBalance;
        }
        if (conversionAmount > totalRTKNBalance) {
            conversionAmount = totalRTKNBalance;
        }
        
        // Convert to USDC decimals (18 decimals -> USDC decimals)
        uint8 usdcDecimals = IERC20MetadataUpgradeable(address(usdcToken)).decimals();
        uint256 usdcAmount = _convertDecimals(conversionAmount, 18, usdcDecimals);
        
        // Check contract has enough USDC
        require(
            usdcToken.balanceOf(address(this)) >= usdcAmount,
            "Insufficient USDC in contract"
        );
        
        // Check CTKN approval and transfer (same amount as conversionAmount - both 18 decimals)
        require(
            ctknToken.allowance(msg.sender, address(this)) >= conversionAmount,
            "Insufficient CTKN approval"
        );
        require(
            ctknToken.transferFrom(msg.sender, address(this), conversionAmount),
            "CTKN transfer failed"
        );
        
        // Handle RTKN transfers from multiple contracts (in 18 decimals)
        _transferRTKNs(msg.sender, conversionAmount);
        
        // Transfer USDC to user
        require(
            usdcToken.transfer(msg.sender, usdcAmount),
            "USDC transfer failed"
        );
        
        emit Conversion(msg.sender, conversionAmount, conversionAmount, usdcAmount);
    }
    
    /**
     * @dev Convert RTKN + CTKN pairs to USDC, then swap USDC to another whitelisted token
     * @param requestedAmount Amount of RTKNs user wants to convert (in 18 decimals)
     * @param paraswapSelector ParaSwap function selector
     * @param paraswapData Encoded ParaSwap swap data
     */
    function convertRTKNToOtherToken(
        uint256 requestedAmount,
        bytes4 paraswapSelector,
        bytes calldata paraswapData
    ) external nonReentrant {
        require(requestedAmount > 0, "Amount must be greater than 0");
        
        // Step 1: Convert RTKN + CTKN to USDC (same logic as convertRTKNToUSDC)
        uint256 ctknBalance = ctknToken.balanceOf(msg.sender);
        require(ctknBalance > 0, "No CTKN balance");
        
        uint256 totalRTKNBalance = getTotalRTKNBalance(msg.sender);
        require(totalRTKNBalance > 0, "No RTKN balance");
        
        uint256 conversionAmount = requestedAmount;
        if (conversionAmount > ctknBalance) {
            conversionAmount = ctknBalance;
        }
        if (conversionAmount > totalRTKNBalance) {
            conversionAmount = totalRTKNBalance;
        }
        
        uint8 usdcDecimals = IERC20MetadataUpgradeable(address(usdcToken)).decimals();
        uint256 usdcAmount = _convertDecimals(conversionAmount, 18, usdcDecimals);
        
        require(
            usdcToken.balanceOf(address(this)) >= usdcAmount,
            "Insufficient USDC in contract"
        );
        
        require(
            ctknToken.allowance(msg.sender, address(this)) >= conversionAmount,
            "Insufficient CTKN approval"
        );
        require(
            ctknToken.transferFrom(msg.sender, address(this), conversionAmount),
            "CTKN transfer failed"
        );
        
        _transferRTKNs(msg.sender, conversionAmount);
        
        // Step 2: Decode and validate ParaSwap data
        ParaSwapDecodedData memory swapData = _decodeParaSwapData(paraswapSelector, paraswapData);
        _validateParaSwapParameters(swapData, usdcAmount);
        
        // Step 3: Execute ParaSwap swap
        uint256 targetTokenAmount = _executeParaSwapSwap(
            paraswapSelector,
            paraswapData,
            swapData,
            usdcAmount
        );
        
        emit ConversionWithSwap(
            msg.sender,
            conversionAmount,
            conversionAmount,
            usdcAmount,
            swapData.destToken,
            targetTokenAmount
        );
    }
    
    /**
     * @dev Internal function to execute ParaSwap swap
     * @param selector ParaSwap function selector
     * @param data ParaSwap calldata
     * @param swapData Decoded swap data
     * @param usdcAmount Amount of USDC to swap
     * @return Amount of target tokens received
     */
    function _executeParaSwapSwap(
        bytes4 selector,
        bytes calldata data,
        ParaSwapDecodedData memory swapData,
        uint256 usdcAmount
    ) internal returns (uint256) {
        IERC20Upgradeable targetToken = IERC20Upgradeable(swapData.destToken);
        
        // Record initial balance
        uint256 initialTargetBalance = targetToken.balanceOf(address(this));
        
        // Approve ParaSwap router
        require(
            usdcToken.approve(PARA_ROUTER, usdcAmount),
            "USDC approval failed"
        );
        
        // Execute swap
        (bool success, ) = PARA_ROUTER.call(abi.encodePacked(selector, data));
        if (!success) revert SwapFailed();
        
        // Calculate received amount
        uint256 finalTargetBalance = targetToken.balanceOf(address(this));
        uint256 receivedAmount = finalTargetBalance - initialTargetBalance;
        
        // Verify minimum output
        if (receivedAmount < swapData.toAmount) revert TooLittleReceived();
        
        // Transfer target tokens to user
        require(
            targetToken.transfer(msg.sender, receivedAmount),
            "Target token transfer failed"
        );
        
        // Revoke approval
        usdcToken.approve(PARA_ROUTER, 0);
        
        return receivedAmount;
    }
    
    /**
     * @dev Validate ParaSwap swap parameters
     * @param data Decoded ParaSwap data
     * @param expectedUsdcAmount Expected USDC amount from conversion
     */
    function _validateParaSwapParameters(
        ParaSwapDecodedData memory data,
        uint256 expectedUsdcAmount
    ) internal view {
        // Validate executor
        if (data.executor != address(0) && !_isValidExecutor(data.executor)) {
            revert InvalidExecutor();
        }
        
        // Validate beneficiary (must be this contract)
        if (data.beneficiary != address(this) && data.beneficiary != address(0)) {
            revert InvalidBeneficiary();
        }
        
        // Validate source token is USDC
        if (data.srcToken != address(usdcToken)) {
            revert InvalidSwapSource();
        }
        
        // Validate destination token
        if (data.destToken == address(0) || data.destToken == address(usdcToken)) {
            revert InvalidTokenAddress();
        }
        
        // Validate destination token is whitelisted
        if (!_isTokenWhitelisted(data.destToken)) {
            revert TokenNotWhitelisted();
        }
        
        // Validate amounts
        if (data.fromAmount == 0 || data.toAmount == 0) {
            revert InvalidAmount();
        }
        
        // Ensure fromAmount matches expected USDC amount
        if (data.fromAmount != expectedUsdcAmount) {
            revert InvalidAmount();
        }
    }
    
    /**
     * @dev Decode ParaSwap data based on selector
     * @param selector Function selector
     * @param data Calldata for ParaSwap
     * @return Decoded ParaSwapDecodedData struct
     */
    function _decodeParaSwapData(
        bytes4 selector,
        bytes calldata data
    ) internal pure returns (ParaSwapDecodedData memory) {
        if (selector == SWAP_EXACT_AMOUNT_IN_SELECTOR) {
            return _decodeSwapExactAmountIn(data);
        } else if (selector == SWAP_EXACT_AMOUNT_IN_ON_UNI_V3_SELECTOR) {
            return _decodeSwapExactAmountInOnUniV3(data);
        }
        revert("Invalid selector");
    }
    
    /**
     * @dev Decode SwapExactAmountIn data
     * @param _data Encoded calldata
     * @return Decoded ParaSwapDecodedData
     */
    function _decodeSwapExactAmountIn(
        bytes calldata _data
    ) internal pure returns (ParaSwapDecodedData memory) {
        require(_data.length >= 288, "Invalid data length");
        
        address executor;
        bytes memory executorBytes = _data[:32];
        assembly {
            executor := mload(add(executorBytes, 32))
        }
        
        bytes memory genericDataBytes = _data[32:256];
        GenericData memory genericData = abi.decode(genericDataBytes, (GenericData));
        
        uint256 partnerAndFee = abi.decode(_data[256:288], (uint256));
        address payable partner = _parsePartnerAddress(partnerAndFee);
        
        return ParaSwapDecodedData({
            executor: executor,
            srcToken: genericData.srcToken,
            destToken: genericData.destToken,
            fromAmount: genericData.fromAmount,
            toAmount: genericData.toAmount,
            partner: partner,
            beneficiary: genericData.beneficiary
        });
    }
    
    /**
     * @dev Decode SwapExactAmountInOnUniV3 data
     * @param _data Encoded calldata
     * @return Decoded ParaSwapDecodedData
     */
    function _decodeSwapExactAmountInOnUniV3(
        bytes calldata _data
    ) internal pure returns (ParaSwapDecodedData memory) {
        require(_data.length >= 288, "Invalid data length");
        
        UniswapV3Data memory uniData = abi.decode(_data, (UniswapV3Data));
        
        uint256 partnerAndFee;
        assembly {
            partnerAndFee := calldataload(add(_data.offset, 32))
        }
        address payable partner = _parsePartnerAddress(partnerAndFee);
        
        return ParaSwapDecodedData({
            executor: address(0),
            srcToken: uniData.srcToken,
            destToken: uniData.destToken,
            fromAmount: uniData.fromAmount,
            toAmount: uniData.toAmount,
            partner: partner,
            beneficiary: uniData.beneficiary
        });
    }
    
    /**
     * @dev Parse partner address from encoded data
     * @param partnerAndFee Encoded partner and fee data
     * @return partner Partner address
     */
    function _parsePartnerAddress(uint256 partnerAndFee) internal pure returns (address payable) {
        address payable partner;
        assembly {
            partner := and(shr(96, partnerAndFee), 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)
        }
        return partner;
    }
    
    /**
     * @dev Check if address is a valid ParaSwap executor
     * @param executorAddress Address to check
     * @return True if valid executor
     */
    function _isValidExecutor(address executorAddress) internal pure returns (bool) {
        return executorAddress == EXECUTOR_1 ||
               executorAddress == EXECUTOR_2 ||
               executorAddress == EXECUTOR_3 ||
               executorAddress == EXECUTOR_4 ||
               executorAddress == EXECUTOR_5;
    }
    
    /**
     * @dev Check if a token is whitelisted for swapping
     * @param token Token address to check
     * @return True if whitelisted
     */
    function _isTokenWhitelisted(address token) internal view returns (bool) {
        return whitelistedSwapTokens[token];
    }
    
    /**
     * @dev Add a token to the swap whitelist (owner only)
     * @param token Token address to whitelist
     */
    function whitelistSwapToken(address token) external onlyOwner {
        require(token != address(0), "Invalid token address");
        require(token != address(usdcToken), "Cannot whitelist USDC");
        whitelistedSwapTokens[token] = true;
        emit SwapTokenWhitelisted(token);
    }
    
    /**
     * @dev Remove a token from the swap whitelist (owner only)
     * @param token Token address to remove
     */
    function removeSwapTokenFromWhitelist(address token) external onlyOwner {
        whitelistedSwapTokens[token] = false;
        emit SwapTokenRemovedFromWhitelist(token);
    }
    
    /**
     * @dev Internal function to convert amounts between different decimal systems
     * @param amount Amount to convert
     * @param fromDecimals Source token decimals
     * @param toDecimals Target token decimals
     * @return Converted amount
     */
    function _convertDecimals(
        uint256 amount,
        uint8 fromDecimals,
        uint8 toDecimals
    ) internal pure returns (uint256) {
        if (fromDecimals == toDecimals) {
            return amount;
        } else if (fromDecimals > toDecimals) {
            return amount / (10 ** (fromDecimals - toDecimals));
        } else {
            return amount * (10 ** (toDecimals - fromDecimals));
        }
    }
    
    /**
     * @dev Internal function to handle RTKN transfers from multiple contracts
     * @param user User address
     * @param totalAmount Total amount of RTKNs to transfer (in 18 decimals)
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
            
            require(
                rtkn.allowance(user, address(this)) >= transferAmount,
                "Insufficient RTKN approval"
            );
            
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
     * @return Total RTKN balance (in 18 decimals)
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
     * @return Maximum amount user can convert (in 18 decimals)
     */
    function getMaxConvertibleAmount(address user) public view returns (uint256) {
        uint256 ctknBalance = ctknToken.balanceOf(user);
        uint256 totalRTKNBalance = getTotalRTKNBalance(user);
        uint256 contractUSDCBalance = usdcToken.balanceOf(address(this));
        
        uint8 usdcDecimals = IERC20MetadataUpgradeable(address(usdcToken)).decimals();
        uint256 usdcBalanceIn18Decimals = _convertDecimals(contractUSDCBalance, usdcDecimals, 18);
        
        uint256 maxAmount = ctknBalance;
        if (totalRTKNBalance < maxAmount) {
            maxAmount = totalRTKNBalance;
        }
        if (usdcBalanceIn18Decimals < maxAmount) {
            maxAmount = usdcBalanceIn18Decimals;
        }
        
        return maxAmount;
    }
    
    /**
     * @dev Add a new RTKN token (owner only)
     * @param tokenAddress Address of the RTKN token to add
     */
    function addRTKNToken(address tokenAddress) external onlyOwner {
        require(tokenAddress != address(0), "Invalid token address");
        
        uint8 tokenDecimals = IERC20MetadataUpgradeable(tokenAddress).decimals();
        require(tokenDecimals == 18, "Token must have 18 decimals");
        
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
        require(
            IERC20Upgradeable(token).balanceOf(address(this)) >= amount,
            "Insufficient balance"
        );
        require(
            IERC20Upgradeable(token).transfer(owner(), amount),
            "Transfer failed"
        );
    }
    
    /**
     * @dev Get contract's USDC balance
     * @return USDC balance of the contract (in USDC's native decimals)
     */
    function getContractUSDCBalance() public view returns (uint256) {
        return usdcToken.balanceOf(address(this));
    }
    
    /**
     * @dev Get implementation version for upgrade tracking
     * @return Version string
     */
    function version() public pure returns (string memory) {
        return "1.1.0";
    }
    
    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[46] private __gap;
}