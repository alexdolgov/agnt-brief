// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/interfaces/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "./libs/AddLiquidityHelper.sol";
import "./libs/ToolBox.sol";

import "@uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol";
import "@uniswap/v2-core/contracts/interfaces/IUniswapV2Pair.sol";
import "@uniswap/v2-core/contracts/interfaces/IUniswapV2Factory.sol";

contract DogsToken is ERC20("DOGS", "DOGS"), Ownable {
    using SafeERC20 for IERC20;

    uint256 public transferTaxRate = 600; // Transfer tax rate in basis points. (default 6%)
    uint256 public extraTransferTaxRate = 300; // Extra transfer tax rate in basis points. (default 3.00%)

    uint256 public constant MAXIMUM_TRANSFER_TAX_RATE = 1001; // Max transfer tax rate: 10.01%.

    address public constant BURN_ADDRESS = 0x000000000000000000000000000000000000dEaD;
    address public constant busdCurrencyAddress = 0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56;
    address public constant wbnbCurrencyAddress = 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c;

    uint256 public constant busdSwapThreshold = 50 * (10 ** 18);

    bool public swapAndLiquifyEnabled = true; // Automatic swap and liquify enabled

    uint256 public constant minDogsAmountToLiquify = 40 * (10 ** 18);
    uint256 public constant minBUSDAmountToLiquify = 200 * (10 ** 18);

    uint256 public vaultLiqSplit = 2;

    IUniswapV2Router02 public pancakeswapRouter;

    address public dogsBusdSwapPair; // The trading pair

    bool private _inSwapAndLiquify;  // In swap and liquify

    AddLiquidityHelper public immutable addLiquidityHelper;
    ToolBox public immutable toolBox;
    IERC20 public constant busdRewardCurrency = IERC20(busdCurrencyAddress);
    address public immutable pigsToken;
    address public immutable rewardsVaultAddress;

    mapping(address => bool) public excludeFromMap;
    mapping(address => bool) public excludeToMap;

    mapping(address => bool) public extraFromMap;
    mapping(address => bool) public extraToMap;

    event SetSwapAndLiquifyEnabled(bool swapAndLiquifyEnabled);
    event TransferFeeChanged(uint256 txnFee, uint256 extraTxnFee);
    event UpdateFeeMaps(address _contract, bool fromExcluded, bool toExcluded, bool fromHasExtra, bool toHasExtra);
    event SetPancakeswapRouter(address pancakeswapRouter, address dogsBusdSwapPair);
    event SetOperator(address operator);
    event UpdateVaultLiqSplit(uint256 liqVaultSplit);

    // The operator can only update the transfer tax rate
    address private _operator;

    // AB measures
    mapping(address => bool) private blacklist;
    mapping (address => bool) private _isExcludedFromLimiter;

    bool private blacklistFeatureAllowed = true;

    bool private transfersPaused = false;
    bool private transfersPausedFeatureAllowed = true;

    bool private sellingEnabled = false;
    bool private sellingToggleAllowed = true;

    bool private buySellLimiterEnabled = true;
    bool private buySellLimiterAllowed = true;
    uint256 private buySellLimitThreshold = 500e18;

    // AB events
    event LimiterUserUpdated(address account, bool isLimited);
    event BlacklistUpdated(address account, bool blacklisted);
    event TransferStatusUpdate(bool isPaused);
    event TransferPauseFeatureBurn();
    event SellingToggleFeatureBurn();
    event BuySellLimiterUpdate(bool isEnabled, uint256 amount);
    event SellingEnabledToggle(bool enabled);
    event LimiterFeatureBurn();
    event BlacklistingFeatureBurn();

    modifier onlyOperator() {
        require(_operator == msg.sender, "!operator");
        _;
    }

    modifier lockTheSwap {
        _inSwapAndLiquify = true;
        _;
        _inSwapAndLiquify = false;
    }

    modifier transferTaxFree {
        uint256 _transferTaxRate = transferTaxRate;
        uint256 _extraTransferTaxRate = extraTransferTaxRate;
        transferTaxRate = 0;
        extraTransferTaxRate = 0;
        _;
        transferTaxRate = _transferTaxRate;
        extraTransferTaxRate = _extraTransferTaxRate;
    }

    /**
     * @notice Constructs the Dogs Token contract.
     */
    constructor(address _pigsToken, AddLiquidityHelper _addLiquidityHelper, ToolBox _toolBox, address _rewardsVaultAddress) {
        pigsToken = _pigsToken;
        addLiquidityHelper = _addLiquidityHelper;
        toolBox = _toolBox;
        _operator = msg.sender;

        rewardsVaultAddress = _rewardsVaultAddress;
    }

    /// @notice Creates `_amount` token to `_to`. Must only be called by the owner (MasterChef).
    function mint(address _to, uint256 _amount) external onlyOwner {
        _mint(_to, _amount);
    }

    /// @dev overrides transfer function to meet tokenomics of Dogs Token
    function _transfer(address sender, address recipient, uint256 amount) internal virtual override {
        require(!isBlacklisted(sender) && !isBlacklisted(recipient), 'on the naughty list');
        require(!transfersPaused, 'paused');

        bool isExcluded = _isExcludedFromLimiter[sender] || _isExcludedFromLimiter[recipient];

        if (recipient == address(dogsBusdSwapPair) && !isExcluded){
            require(sellingEnabled, 'selling not enabled');
        }

        //if any account belongs to _isExcludedFromLimiter account then don't do buy/sell limiting, used for initial liquidty adding
        if (buySellLimiterEnabled && !isExcluded){
            if (recipient == address(dogsBusdSwapPair) || sender == address(dogsBusdSwapPair)){
                require(amount <= buySellLimitThreshold, 'exceed transfer max');
            }
        }
        // End of AB measures


        bool toFromAddLiquidityHelper = (sender == address(addLiquidityHelper) || recipient == address(addLiquidityHelper));
        // swap and liquify
        if (
            swapAndLiquifyEnabled == true
            && _inSwapAndLiquify == false
            && address(pancakeswapRouter) != address(0)
            && !toFromAddLiquidityHelper
        && sender != dogsBusdSwapPair
        && sender != owner()
        ) {
            swapAndLiquify();
        }

        if (toFromAddLiquidityHelper ||
        recipient == BURN_ADDRESS || (transferTaxRate == 0 && extraTransferTaxRate == 0) ||
        excludeFromMap[sender] || excludeToMap[recipient]) {
            super._transfer(sender, recipient, amount);
        } else {
            // default tax is 6% of every transfer, but extra 3% for dumping tax. 3% dump tax gets burned
            uint256 liquidityAmount = amount * transferTaxRate / 10000;
            uint256 burnAmount = amount * ((extraFromMap[sender] || extraToMap[recipient]) ? extraTransferTaxRate : 0) / 10000;

            // default 94% of transfer sent to recipient (6% tax)
            // 91% of transfer sent to recipient in case of selling (6% tax + 3% dump tax)
            uint256 sendAmount = amount - liquidityAmount - burnAmount;

            require(amount == sendAmount + liquidityAmount + burnAmount, "sum error");

            super._transfer(sender, address(this), liquidityAmount);
            super._transfer(sender, recipient, sendAmount);
            if (burnAmount > 0){
                super._transfer(sender, BURN_ADDRESS, burnAmount);
            }
            amount = sendAmount;
        }
    }

    /// @dev Swap and liquify
    function swapAndLiquify() private lockTheSwap transferTaxFree {
        uint256 dogsBalance = ERC20(address(this)).balanceOf(address(this));
        uint256 busdBalance = ERC20(busdCurrencyAddress).balanceOf(address(this));

        if (dogsBalance >= minDogsAmountToLiquify || busdBalance >= minBUSDAmountToLiquify) {
            ERC20(address(this)).transfer(address(addLiquidityHelper), dogsBalance);

            ERC20(address(busdCurrencyAddress)).transfer(address(rewardsVaultAddress), busdBalance / vaultLiqSplit);
            ERC20(address(busdCurrencyAddress)).transfer(address(addLiquidityHelper), busdBalance - (busdBalance / vaultLiqSplit));

            // send all tokens to add liquidity with, we are refunded any that aren't used.
            addLiquidityHelper.dogsBUSDLiquidityWithBuyBack(BURN_ADDRESS);
        }
    }

    /**
     * @dev un-enchant the lp token into its original components.
     */
    function swapLpTokensForFee(address token, uint256 amount) internal {
        require(IERC20(token).approve(address(pancakeswapRouter), amount), '!approved');

        IUniswapV2Pair lpToken = IUniswapV2Pair(token);
        IERC20 token0 = IERC20(lpToken.token0());
        IERC20 token1 = IERC20(lpToken.token1());

        uint256 token0BeforeLiquidation = token0.balanceOf(address(this));
        uint256 token1BeforeLiquidation = token1.balanceOf(address(this));

        // make the swap
        pancakeswapRouter.removeLiquidity(
            address(token0),
            address(token1),
            amount,
            0,
            0,
            address(this),
            block.timestamp
        );

        uint256 token0FromLiquidation = token0.balanceOf(address(this)) - token0BeforeLiquidation;
        uint256 token1FromLiquidation = token1.balanceOf(address(this)) - token1BeforeLiquidation;

        // send pigsToken all of 1 half of the LP to be converted to BUSD later.
        token0.safeTransfer(address(pigsToken), token0FromLiquidation);

        // send pigsToken 50% share of the other 50% to give pigsToken 75% in total.
        token1.safeTransfer(address(pigsToken), token1FromLiquidation/2);

        swapDepositFeeForTokensInternal(address(token1), false, busdCurrencyAddress);
    }

    /**
     * @dev sell all of a current type of token for BUSD, to be used in dogs liquidity later.
     */
    function swapDepositFeeForBUSD(address token, bool isLPToken) external onlyOwner {
        // If dogs or busd already no need to do anything.

        if (token == address(this) || token == busdCurrencyAddress)
            return;

        uint256 busdValue = toolBox.getTokenBUSDValue(IERC20(token).balanceOf(address(this)), token, isLPToken);

        // only swap if a certain busd value
        if (busdValue < busdSwapThreshold)
            return;

        swapDepositFeeForTokensInternal(token, isLPToken, busdCurrencyAddress);
    }

    function swapDepositFeeForTokensInternal(address token, bool isLPToken, address toToken) internal {
        uint256 totalTokenBalance = IERC20(token).balanceOf(address(this));

        // can't trade to dogs inside of dogs anyway
        if (token == toToken || totalTokenBalance == 0 || toToken == address(this))
            return;

        if (isLPToken) {
            swapLpTokensForFee(token, totalTokenBalance);
            return;
        }

        require(IERC20(token).approve(address(pancakeswapRouter), totalTokenBalance), "!approved");

        address[] memory path;
        if (addLiquidityHelper.shouldRouteViaBNB(token)){
            path = new address[](3);
            path[0] = token;
            path[1] = wbnbCurrencyAddress;
            path[2] = toToken;
        } else {
            path = new address[](2);
            path[0] = token;
            path[1] = toToken;
        }

        try
        // make the swap
        pancakeswapRouter.swapExactTokensForTokensSupportingFeeOnTransferTokens(
            totalTokenBalance,
            0, // accept any amount of tokens
            path,
            address(this),
            block.timestamp
        )
        { /* suceeded */ } catch { /* failed, but we avoided reverting */ }

        // Unfortunately can't swap directly to dogs inside of dogs (Uniswap INVALID_TO Assert, boo).
        // Also dont want to add an extra swap here.
        // Will leave as BUSD and make the dogs Txn AMM utilise available BUSD first.
    }

    /**
     * @dev Update the swapAndLiquifyEnabled.
     * Can only be called by the current operator.
     */
    function updateSwapAndLiquifyEnabled(bool _enabled) external onlyOperator {
        swapAndLiquifyEnabled = _enabled;

        emit SetSwapAndLiquifyEnabled(swapAndLiquifyEnabled);
    }

    /**
     * @dev Update the transfer tax rate.
     * Can only be called by the current operator.
     */
    function updateTransferTaxRate(uint256 _transferTaxRate, uint256 _extraTransferTaxRate) external onlyOperator {
        require(_transferTaxRate + _extraTransferTaxRate  <= MAXIMUM_TRANSFER_TAX_RATE, "!valid");
        transferTaxRate = _transferTaxRate;
        extraTransferTaxRate = _extraTransferTaxRate;

        emit TransferFeeChanged(transferTaxRate, extraTransferTaxRate);
    }

    /**
     * @dev Update the excludeFromMap
     * Can only be called by the current operator.
     */
    function updateFeeMaps(address _contract, bool fromExcluded, bool toExcluded, bool fromHasExtra, bool toHasExtra) external onlyOperator {
        excludeFromMap[_contract] = fromExcluded;
        excludeToMap[_contract] = toExcluded;
        extraFromMap[_contract] = fromHasExtra;
        extraToMap[_contract] = toHasExtra;

        emit UpdateFeeMaps(_contract, fromExcluded, toExcluded, fromHasExtra, toHasExtra);
    }

    /**
     * @dev Update the swap router.
     * Can only be called by the current operator.
     */
    function updatePancakeswapRouter(address _router) external onlyOperator {
        require(_router != address(0), "!0");
        require(address(pancakeswapRouter) == address(0), "!unset");

        pancakeswapRouter = IUniswapV2Router02(_router);
        dogsBusdSwapPair = IUniswapV2Factory(pancakeswapRouter.factory()).getPair(address(this), busdCurrencyAddress);

        require(address(dogsBusdSwapPair) != address(0), "busd pair !exist");

        emit SetPancakeswapRouter(address(pancakeswapRouter), dogsBusdSwapPair);
    }

    /**
     * @dev Returns the address of the current operator.
     */
    function operator() external view returns (address) {
        return _operator;
    }

    /**
     * @dev Transfers operator of the contract to a new account (`newOperator`).
     * Can only be called by the current operator.
     */
    function transferOperator(address newOperator) external onlyOperator {
        require(newOperator != address(0), "!!0");
        _operator = newOperator;

        emit SetOperator(_operator);
    }

    function updateVaultLiqSplit(uint256 _vaultLiqSplit) external onlyOperator {
        require(_vaultLiqSplit > 1, 'invalid');
        vaultLiqSplit = _vaultLiqSplit;
        emit UpdateVaultLiqSplit(vaultLiqSplit);
    }

    // AB measures
    function toggleExcludedFromLimiterUser(address account, bool isExcluded) external onlyOperator {
        require(buySellLimiterAllowed, 'feature destroyed');
        _isExcludedFromLimiter[account] = isExcluded;
        emit LimiterUserUpdated(account, isExcluded);
    }

    function toggleBuySellLimiter(bool isEnabled, uint256 amount) external onlyOperator {
        require(buySellLimiterAllowed, 'feature destroyed');
        buySellLimiterEnabled = isEnabled;
        buySellLimitThreshold = amount;
        emit BuySellLimiterUpdate(isEnabled, amount);
    }

    function burnLimiterFeature() external onlyOperator {
        buySellLimiterAllowed = false;
        emit LimiterFeatureBurn();
    }

    function isBlacklisted(address account) public view returns(bool) {
        return blacklist[account];
    }

    function toggleBlacklistUser(address account, bool blacklisted) external onlyOperator {
        require(blacklistFeatureAllowed, 'feature burned');
        blacklist[account] = blacklisted;
        emit BlacklistUpdated(account, blacklisted);
    }

    function burnBlacklistingFeature() external onlyOperator {
        blacklistFeatureAllowed = false;
        emit BlacklistingFeatureBurn();
    }

    function toggleSellingEnabled(bool enabled) external onlyOperator {
        require(sellingToggleAllowed, 'feature destroyed');
        sellingEnabled = enabled;
        emit SellingEnabledToggle(enabled);
    }

    function burnToggleSellFeature() external onlyOperator {
        sellingToggleAllowed = false;
        emit SellingToggleFeatureBurn();
    }

    function toggleTransfersPaused(bool isPaused) external onlyOperator {
        require(transfersPausedFeatureAllowed, 'feature destroyed');
        transfersPaused = isPaused;
        emit TransferStatusUpdate(isPaused);
    }

    function burnTogglePauseFeature() external onlyOperator {
        transfersPausedFeatureAllowed = false;
        emit TransferPauseFeatureBurn();
    }

}