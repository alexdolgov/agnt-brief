// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

// --- Standard/Common Interfaces ---

/**
 * @title IERC20 Standard Interface
 * @dev Standard interface for ERC20 tokens
 */
interface IERC20 {
    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function transfer(address recipient, uint256 amount) external returns (bool);
    function allowance(address owner, address spender) external view returns (uint256);
    function approve(address spender, uint256 amount) external returns (bool);
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);
    function decimals() external view returns (uint8);
    function symbol() external view returns (string memory);

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
}

/**
 * @title IWETH Interface
 * @dev Interface for Wrapped Sonic (WS) or similar wrapped native token contracts
 */
interface IWETH is IERC20 {
    function deposit() external payable;
    function withdraw(uint256 wad) external;
}

// --- Amped / GMX V1 Interfaces ---

/**
 * @title IVault Interface
 * @dev Interface for the main Amped Vault (based on GMX V1 Vault)
 */
interface IVault {
    function usdg() external view returns (address);
    function getAumInUsdg(bool maximise) external view returns (uint256);
    function getMinPrice(address _token) external view returns (uint256);
    function getMaxPrice(address _token) external view returns (uint256);
    function getFeeBasisPoints(address _token, uint256 _usdgDelta, uint256 _feeBasisPoints, uint256 _taxBasisPoints, bool _increment) external view returns (uint256);
    function whitelistedTokenCount() external view returns (uint256);
    function allWhitelistedTokens(uint256) external view returns (address);
    function PRICE_PRECISION() external view returns (uint256);
    function BASIS_POINTS_DIVISOR() external view returns (uint256);
    function adjustForDecimals(uint256 _amount, address _tokenDiv, address _tokenMul) external view returns (uint256);
    function taxBasisPoints() external view returns (uint256);
    function stableTaxBasisPoints() external view returns (uint256);
    function mintBurnFeeBasisPoints() external view returns (uint256);
    function swapFeeBasisPoints() external view returns (uint256);
    function stableSwapFeeBasisPoints() external view returns (uint256);
    function marginFeeBasisPoints() external view returns (uint256);
    function allWhitelistedTokensLength() external view returns (uint256);
    function whitelistedTokens(address _token) external view returns (bool);
    function stableTokens(address _token) external view returns (bool);
}

/**
 * @title IRewardRouterV2 Interface
 * @dev Interface for the Amped Reward Router that handles staking/unstaking ALP
 */
interface IRewardRouterV2 {
    function mintAndStakeGlp(address _token, uint256 _amount, uint256 _minUsdg, uint256 _minGlp) external returns (uint256);
    function unstakeAndRedeemGlp(address _tokenOut, uint256 _glpAmount, uint256 _minOut, address _receiver) external returns (uint256);
    function glp() external view returns (address);
    function stakedGlpTracker() external view returns (address);
    function feeGlpTracker() external view returns (address);
}

/**
 * @title IRewardTracker Interface
 * @dev Interface for tracking staked ALP balances
 */
interface IRewardTracker {
    function balanceOf(address _account) external view returns (uint256);
    function stake(address _depositToken, uint256 _amount) external;
    function stakeForAccount(address _fundingAccount, address _account, address _depositToken, uint256 _amount) external;
    function unstake(address _depositToken, uint256 _amount) external;
    function unstakeForAccount(address _account, address _depositToken, uint256 _amount, address _receiver) external;
    function tokensPerInterval() external view returns (uint256);
    function claimable(address _account) external view returns (uint256);
    function claimForAccount(address _account, address _receiver) external returns (uint256);
    function claim(address _receiver) external returns (uint256);
    function depositBalances(address _account, address _depositToken) external view returns (uint256);
}

// --- Wrapper Token Interface ---

/**
 * @title IwALP Interface
 * @dev Interface for the wALP token that wraps staked ALP, following ERC4626-like pattern
 */
interface IwALP is IERC20 {
    // Core deposit functions
    function depositWithToken(
        address _depositToken,
        uint256 _amount,
        address _receiver,
        uint256 _minAlp
    ) external returns (uint256 shares);
    
    function depositNative(
        address _receiver,
        uint256 _minAlp
    ) external payable returns (uint256 shares);
    
    // Core withdrawal functions
    function withdrawToToken(
        uint256 _shares,
        address _receiver,
        address _owner,
        address _tokenOut,
        uint256 _minTokenOut
    ) external returns (uint256 assets);
    
    function withdrawToNative(
        uint256 _shares,
        address payable _receiver,
        address _owner,
        uint256 _minNativeOut
    ) external returns (uint256 assets);

    // Direct Vyper vault methods
    function deposit(uint256 _amount, address recipient) external returns (uint256);
    function withdraw(uint256 maxShares, address recipient, uint256 maxLoss) external returns (uint256);

    // ERC4626-inspired view functions
    function asset() external view returns (address);
    function totalAssets() external view returns (uint256);
    function pricePerShare() external view returns (uint256);
    function convertToShares(uint256 assets) external view returns (uint256 shares);
    function convertToAssets(uint256 shares) external view returns (uint256 assets);
    
    // Admin functions
    function enableDepositToken(address token) external;
    function disableDepositToken(address token) external;
    
    // Token state view functions
    function depositTokens(address token) external view returns (bool);
}

// --- Helper Interface for wALP ---

/**
 * @title IShareHelper Interface
 * @dev Interface for helper contract to calculate share conversions for wALP
 */
interface IShareHelper {
    function amountToShares(address vault, uint256 amount, bool roundUp) external view returns (uint256);
    function sharesToAmount(address vault, uint256 shares, bool roundUp) external view returns (uint256);
}

// --- Amped / GMX V1 Vault Utilities Interface ---

/**
 * @title IVaultUtils Interface
 * @dev Interface for the utility contract providing fee calculation functions for the Amped Vault
 */
interface IVaultUtils {
    function getBuyUsdgFeeBasisPoints(address _token, uint256 _usdgAmount) external view returns (uint256);
    function getSellUsdgFeeBasisPoints(address _token, uint256 _usdgAmount) external view returns (uint256);
}