// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/interfaces/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/draft-ERC20Permit.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Votes.sol";

import "./libs/ToolBox.sol";
import "./libs/AddLiquidityHelper.sol";

import "@uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol";
import "@uniswap/v2-core/contracts/interfaces/IUniswapV2Pair.sol";

contract PigsToken is ERC20("PIGS", "PIGS"), Ownable {

    address public constant BURN_ADDRESS = 0x000000000000000000000000000000000000dEaD;
    uint256 public constant busdSwapThreshold = 50 * (10 ** 18);

    // The operator can only update the transfer tax rate
    address private _operator;
    address public masterchefDogs;

    address public constant busdCurrencyAddress = 0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56;
    address public constant wbnbCurrencyAddress = 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c;
    address public rewardsVaultAddress;

    IERC20 public constant busdRewardCurrency = IERC20(busdCurrencyAddress);

    uint256 public busdRewardBalance = 0;
    uint256 public busdRewardVaultPercentage = 700; //70% goes to vault
    uint256 public sellingTax = 30; //3% tax on selling

    mapping(address => bool) public extraFromMap;
    mapping(address => bool) public extraToMap;

    address public pigsBusdSwapPair; // The trading pair

    ToolBox public immutable toolBox;
    AddLiquidityHelper public immutable addLiquidityHelper;
    IUniswapV2Router02 public pancakeswapRouter;

    // Events
    event DepositFeeConvertedToBUSD(address indexed inputToken, uint256 inputAmount, uint256 busdInstant, uint256 busdVault);
    event BUSDTransferredToUser(address recipient, uint256 busdAmount);
    event OperatorTransferred(address indexed previousOperator, address indexed newOperator);
    event UpdateFeeMaps(address _contract, bool fromHasExtra, bool toHasExtra);
    event SetPancakeswapRouter(address indexed operator, address indexed router);
    event MasterChefDogsSet(address indexed masterchefDogs);
    event RewardsVaultAddressSet(address indexed rewardsVaultAddress);
    event RewardsVaultPercentageSet(uint256 indexed rewardsVaultPercentage);
    event SellTaxSet(uint256 indexed sellTax);

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
    uint256 private buySellLimitThreshold = 250e18;

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
        require(_operator == msg.sender, "operator: caller is not the operator");
        _;
    }

    modifier onlyMasterchefDogs() {
        require(masterchefDogs == msg.sender, "masterchefDogs only");
        _;
    }

    /**
     * @notice Constructs the Pigs Token contract.
     */
    constructor(ToolBox _toolBox, AddLiquidityHelper _addLiquidityHelper){
        _operator = msg.sender;
        emit OperatorTransferred(address(0), _operator);

        toolBox = _toolBox;
        addLiquidityHelper = _addLiquidityHelper;
    }

    /**
     * @dev Returns the address of the current operator.
     */
    function operator() external view returns (address) {
        return _operator;
    }

    /// @notice Creates `_amount` token to `_to`. Must only be called by the owner (MasterChef).
    function mint(address _to, uint256 _amount) external onlyOwner {
        _mint(_to, _amount);
    }

    function _transfer(address sender, address recipient, uint256 amount) internal virtual override {
        require(!isBlacklisted(sender) && !isBlacklisted(recipient), 'on the naughty list');
        require(!transfersPaused, 'paused');

        bool isExcluded = _isExcludedFromLimiter[sender] || _isExcludedFromLimiter[recipient];

        if (recipient == address(pigsBusdSwapPair) && !isExcluded){
            require(sellingEnabled, 'selling not enabled');
        }

        //if any account belongs to _isExcludedFromLimiter account then don't do buy/sell limiting, used for initial liquidty adding
        if (buySellLimiterEnabled && !isExcluded){
            if (recipient == address(pigsBusdSwapPair) || sender == address(pigsBusdSwapPair)){
                require(amount <= buySellLimitThreshold, 'exceed transfer max');
            }
        }
        // End of AB measures

        bool toFromAddLiquidityHelper = (sender == address(addLiquidityHelper) || recipient == address(addLiquidityHelper));
        uint256 sendAmount = amount;
        uint256 taxAmount = 0;
        if (!toFromAddLiquidityHelper && (extraFromMap[sender] || extraToMap[recipient]) && sellingTax > 0){
            taxAmount = (amount * sellingTax) / 1000;
            sendAmount = amount - taxAmount;
            super._transfer(sender, BURN_ADDRESS, taxAmount);
        }

        super._transfer(sender, recipient, sendAmount);

    }

    /**
     * @dev sell all of a current type of token for busd.
     * Can only be called by the masterChef Dogs
     */
    function convertDepositFeesToBUSD(address token, bool isLPToken, bool isLiquidation) public onlyMasterchefDogs returns (uint256) {

        // shouldn't be trying to sell pigsToken
        if (token == address(this))
            return 0;

        // LP tokens aren't destroyed in PigsToken, but this is so PigsToken can process
        // already destroyed LP fees sent to it by the DogsToken contract.
        if (isLPToken) {
            return convertDepositFeesToBUSD(IUniswapV2Pair(token).token0(), false, true) +
            convertDepositFeesToBUSD(IUniswapV2Pair(token).token1(), false, true);
        }

        uint256 totalTokenBalance = IERC20(token).balanceOf(address(this));
        if (totalTokenBalance == 0){
            return 0;
        }

        if (token == address(busdRewardCurrency)) {
            // In-case any busd has been sent from OTC or otherwise, report that as gained this amount.
            uint256 amountLiquified = totalTokenBalance - busdRewardBalance;

            if (isLiquidation){
                // Split rewards that are payed out immediately and over time via vault
                uint256 busdVaultReward = (amountLiquified * busdRewardVaultPercentage) / 1000;
                uint256 busdInstantReward = amountLiquified - busdVaultReward;
                busdRewardCurrency.transfer(rewardsVaultAddress, busdVaultReward);
                busdRewardBalance = busdRewardBalance + busdInstantReward;
                return busdInstantReward;
            }


            busdRewardBalance = totalTokenBalance;

            return amountLiquified;
        }

        uint256 busdValue = toolBox.getTokenBUSDValue(totalTokenBalance, token, isLPToken);

        if (busdValue < busdSwapThreshold)
            return 0;


        // generate the pair path of token -> busd.
        address[] memory path;
        if (addLiquidityHelper.shouldRouteViaBNB(token)){
            path = new address[](3);
            path[0] = token;
            path[1] = wbnbCurrencyAddress;
            path[2] = busdCurrencyAddress;
        } else {
            path = new address[](2);
            path[0] = token;
            path[1] = busdCurrencyAddress;
        }

        uint256 busdPriorBalance = busdRewardCurrency.balanceOf(address(this));

        require(IERC20(token).approve(address(pancakeswapRouter), totalTokenBalance), 'approval failed');

        // make the swap
        pancakeswapRouter.swapExactTokensForTokensSupportingFeeOnTransferTokens(
            totalTokenBalance,
            0, // accept any amount of BUSD
            path,
            address(this),
            block.timestamp
        );

        uint256 busdProfitTotal =  busdRewardCurrency.balanceOf(address(this)) - busdPriorBalance;

        // Split rewards that are payed out immediately and over time via vault
        uint256 busdVaultReward = (busdProfitTotal * busdRewardVaultPercentage) / 1000;
        uint256 busdInstantReward = busdProfitTotal - busdVaultReward;
        busdRewardCurrency.transfer(rewardsVaultAddress, busdVaultReward);

        busdRewardBalance = busdRewardBalance + busdInstantReward;

        emit DepositFeeConvertedToBUSD(token, totalTokenBalance, busdInstantReward, busdVaultReward);

        return busdInstantReward;
    }

    /**
     * @dev send busd to a user
     * Can only be called by the masterChef Dogs
     */
    function transferBUSDToUser(address recipient, uint256 amount) external onlyMasterchefDogs {
        require(busdRewardCurrency.balanceOf(address(this)) >= amount, "accounting error, transferring more busd out than available");
        require(busdRewardCurrency.transfer(recipient, amount), "transfer failed!");

        busdRewardBalance = busdRewardBalance - amount;

        emit BUSDTransferredToUser(recipient, amount);
    }

    /**
     * @dev Update the pancakeswap router.
     * Can only be called by the current operator.
     */
    function updatePancakeswapRouter(address _router) external onlyOperator {
        require(_router != address(0), "!0");
        require(address(pancakeswapRouter) == address(0), "!unset");
        pancakeswapRouter = IUniswapV2Router02(_router);

        pigsBusdSwapPair = IUniswapV2Factory(pancakeswapRouter.factory()).getPair(address(this), busdCurrencyAddress);
        require(address(pigsBusdSwapPair) != address(0), "busd pair !exist");

        emit SetPancakeswapRouter(msg.sender, address(pancakeswapRouter));
    }

    /**
     * @dev Transfers operator of the contract to a new account (`newOperator`).
     * Can only be called by the current operator.
     */
    function transferOperator(address newOperator) external onlyOperator {
        require(newOperator != address(0), "transferOperator: new operator is the zero address");
        emit OperatorTransferred(_operator, newOperator);
        _operator = newOperator;
    }

    /**
 * @dev Update the excludeFromMap
     * Can only be called by the current operator.
     */
    function updateFeeMaps(address _contract, bool fromHasExtra, bool toHasExtra) external onlyOperator {
        extraFromMap[_contract] = fromHasExtra;
        extraToMap[_contract] = toHasExtra;

        emit UpdateFeeMaps(_contract, fromHasExtra, toHasExtra);
    }

    function setMasterChefDogs(address _masterchefDogs) external onlyOperator {
        require(address(_masterchefDogs) != address(0), "masterchefDogs cannot be the 0 address");
        require(address(masterchefDogs) == address(0), "masterchefDogs address already set");
        masterchefDogs = _masterchefDogs;

        emit MasterChefDogsSet(_masterchefDogs);
    }

    function setRewardsVaultAddress(address _vaultAddress) external onlyOperator {
        require(address(_vaultAddress) != address(0), "vaultAddress cannot be the 0 address");
        require(address(rewardsVaultAddress) == address(0), "rewardsVault address already set");
        rewardsVaultAddress = _vaultAddress;

        emit RewardsVaultAddressSet(_vaultAddress);
    }

    function setRewardsVaultPercentage(uint256 _rewardsPercentage) external onlyOperator {
        require(_rewardsPercentage < 1000, "max rewards exceeded");
        busdRewardVaultPercentage = _rewardsPercentage;
        emit RewardsVaultPercentageSet(_rewardsPercentage);
    }

    function setSellTax(uint256 _selltax) external onlyOperator {
        require(_selltax <= 100, "sell tax exceeded");
        sellingTax = _selltax;
        emit SellTaxSet(_selltax);
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