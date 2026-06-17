// SPDX-License-Identifier: SAL-1.0
pragma solidity 0.8.18;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@uniswap/v3-core/contracts/libraries/FixedPoint128.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { FullMath } from "./concentrator/contracts/vendor0.8/uniswap/FullMath.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "./concentrator/contracts/interfaces/IDispatcher.sol";
import "./concentrator/contracts/interfaces/IMultipool.sol";
import "./concentrator/contracts/interfaces/IMultipoolToken.sol";
import "./concentrator/contracts/interfaces/IFactory.sol";
import "./concentrator/contracts/interfaces/IPlatformFeesVault.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "./WagmiVesting.sol";
import "./interfaces/IOracle.sol";

// import "hardhat/console.sol";

/**
 * @title GMI
 * @dev A non-transferable token for GMI platform.
 */
contract GMI is Ownable, Pausable {
    using SafeERC20 for IERC20;

    struct PoolInfo {
        address multipool;
        address multipoolToken;
        address token0;
        address token1;
        uint256 dispatcherPid;
    }

    struct UserInfo {
        uint256 wagmiLocked;
        uint256 gmiShares;
        uint256 lastMint;
    }

    struct TotalInfo {
        uint256 supply;
        uint256 lockedWagmi;
    }

    struct Asset {
        address token;
        uint256 amount;
        uint256 priceInUsd;
    }

    struct PremiumInfo {
        uint256 length_bp;
        uint256 amount_bp;
    }

    struct Order {
        bool partialSale;
        uint256 gmiAmount;
        uint256 priceInWagmi18;
        uint256 deadline;
    }

    uint256 public constant MAX_BP = 10000;
    uint256 public constant POOLS_LIMIT = 8;
    uint256 public constant MINIMUM_AMOUNT = 1000;
    uint256 public constant UNSUPPORTED = type(uint256).max;
    uint256 public constant MINIMUM_LOCK_PERIOD_IN_BLOCKS = 5;
    IPlatformFeesVault public immutable platformFeesVault;
    IDispatcher public immutable dispatcher;
    WagmiVesting public immutable wagmiVesting;

    bool public earnBeforeMint = true;
    /// The earning is publicly available if the earnOperator is zero address.
    address public earnOperator;
    address public immutable wagmiToken;

    mapping(address => UserInfo) private userBalances;
    /// token => accPerShare
    mapping(address => uint256) private rewardTokensAccPerShare;
    /// user => (token => accPerShare)
    mapping(address => mapping(address => uint256)) private userDebtAccPerShare;

    mapping(address => uint256) private multiPoolIndex;
    mapping(address => uint256) private tokenIndex;

    mapping(address => IOracle) public oracles;
    mapping(address => Order) public orders;
    mapping(address => bool) public whitelisted;

    address[] public supportedTokens;
    PoolInfo[] public poolInfo;
    PremiumInfo[] public premiumInfo;

    string public name;
    string public symbol;
    uint256 public constant decimals = 18;
    uint256 public deviationBP = 900; //10% (Maximum 1000)
    uint256 public platformSharesBP = 5000; //50%

    TotalInfo private total;

    modifier checkToken(address token) {
        require(getTokenIndex(token) != UNSUPPORTED, "unsupported token");
        _;
    }

    event AddPoolToGmi(uint256 dispatcherPid, address multipool);
    event MintGmi(
        address to,
        uint256 amount,
        uint256 amountInUsd,
        uint256 wagmiAmount,
        uint256 wagmiPremiumAmount
    );
    event BurnGmi(address from, uint256 amount);
    event Earn(uint256 dispatcherPid, IDispatcher.FeesInfo feeInfo);
    event SellOrder(
        bool partialSale,
        address seller,
        uint256 gmiAmount,
        uint256 priceInWagmi,
        uint256 deadline
    );
    event FillOrder(
        address seller,
        address buyer,
        uint256 gmiAmountOut,
        uint256 paymentWagmiAmount
    );
    event SetEarnBeforeMint(bool earnBeforeMint);
    event Boost(address indexed tokenToDisperse, uint256 amountToDisperse, uint256[] boostedFees);
    error NotEnoughWagmiBalance(uint256 imbalance);

    /**
     * @dev Initializes the contract with the given parameters.
     * @param _multisig The multisignature wallet address that will take ownership of the contract.
     * @param _multiFactory The address of the Factory contract.
     * @param _name The name of the GMI token.
     * @param _symbol The symbol of the GMI token.
     */
    constructor(
        address _multisig,
        address _multiFactory,
        address _wagmiOracle,
        string memory _name,
        string memory _symbol
    ) {
        address _dispatcher = IFactory(_multiFactory).dispatcher();
        address _wagmiToken = IDispatcher(_dispatcher).wagmiToken();
        require(_wagmiToken != address(0), "set the wagmiToken to dispatcher first");
        _addToken(_wagmiToken, _wagmiOracle);
        platformFeesVault = IPlatformFeesVault(IFactory(_multiFactory).platformFeesVault());
        wagmiToken = _wagmiToken;
        dispatcher = IDispatcher(_dispatcher);
        name = _name;
        symbol = _symbol;

        premiumInfo.push(PremiumInfo(5000, 2000));
        premiumInfo.push(PremiumInfo(6000, 1600));
        premiumInfo.push(PremiumInfo(7000, 1200));
        premiumInfo.push(PremiumInfo(8000, 800));
        premiumInfo.push(PremiumInfo(9000, 400));

        bytes32 salt = keccak256(abi.encode(block.timestamp, address(this)));
        wagmiVesting = new WagmiVesting{ salt: salt }(_wagmiToken, _multisig);
        if (msg.sender != _multisig) {
            _transferOwnership(_multisig);
        }
    }

    /**
     * @dev Returns the number of pools registered with the contract.
     *
     * @return The number of pools registered with the contract.
     */
    function poolLength() external view returns (uint256) {
        return poolInfo.length;
    }

    function supportedTokensLength() external view returns (uint256) {
        return supportedTokens.length;
    }

    function premiumLength() external view returns (uint256) {
        return premiumInfo.length;
    }

    function balanceOf(address account) public view returns (uint256) {
        return userBalances[account].gmiShares;
    }

    function wagmiLockedOf(address account) external view returns (uint256) {
        return userBalances[account].wagmiLocked;
    }

    function totalSupply() public view returns (uint256) {
        return total.supply;
    }

    function totalLockedWagmi() external view returns (uint256) {
        return total.lockedWagmi;
    }

    function _claimAll(address account, uint256 shares) private {
        mapping(address => uint256) storage userDebt = userDebtAccPerShare[account];
        uint256 amount;
        address token;
        for (uint256 i = 0; i < supportedTokens.length; ) {
            token = supportedTokens[i];
            amount = FullMath.mulDiv(
                shares,
                rewardTokensAccPerShare[token] - userDebt[token],
                FixedPoint128.Q128
            );
            _pay(token, address(this), account, amount);
            // updateUserDebt
            userDebt[token] = rewardTokensAccPerShare[token];
            unchecked {
                ++i;
            }
        }
    }

    function _selectiveClaim(address account, uint256 shares, uint256[] memory sTokenIndx) private {
        mapping(address => uint256) storage userDebt = userDebtAccPerShare[account];
        uint256 amount;
        address token;
        uint256 limitIndex = supportedTokens.length;
        for (uint256 i = 0; i < sTokenIndx.length; ) {
            uint256 indx = sTokenIndx[i];
            require(indx < limitIndex, "Invalid token index");
            token = supportedTokens[indx];
            amount = FullMath.mulDiv(
                shares,
                rewardTokensAccPerShare[token] - userDebt[token],
                FixedPoint128.Q128
            );
            _pay(token, address(this), account, amount);
            // updateUserDebt
            userDebt[token] = rewardTokensAccPerShare[token];
            unchecked {
                ++i;
            }
        }
    }

    function _updateUserDebt(address account) private {
        mapping(address => uint256) storage userDebt = userDebtAccPerShare[account];
        for (uint256 i = 0; i < supportedTokens.length; ) {
            address token = supportedTokens[i];
            userDebt[token] = rewardTokensAccPerShare[token];
            unchecked {
                ++i;
            }
        }
    }

    function _mint(address account, uint256 gmiAmount, uint256 wagmiAmount) private {
        require(gmiAmount > 0 && wagmiAmount > 0, "the amount is too small");

        UserInfo storage balance = userBalances[account];
        balance.lastMint = block.number;
        if (balance.gmiShares > 0) {
            _claimAll(account, balance.gmiShares);
        } else {
            _updateUserDebt(account);
        }
        unchecked {
            total.supply += gmiAmount;
            total.lockedWagmi += wagmiAmount;
            balance.wagmiLocked += wagmiAmount;
            balance.gmiShares += gmiAmount;
        }
        uint256 wagmiVestingBalance = wagmiVesting.wagmiBalance();
        if (wagmiVestingBalance < total.lockedWagmi) {
            revert NotEnoughWagmiBalance(total.lockedWagmi - wagmiVestingBalance);
        }
    }

    function _withdrawPlatformShares(uint256 gmiAmount) private {
        uint256 length = poolInfo.length;
        uint256 _totalSupply = total.supply;
        uint256 delimiter = _totalSupply * MAX_BP;
        IDispatcher.FeesInfo memory fees;
        IDispatcher.UserInfo memory dispatcherInfo;
        for (uint256 i = 0; i < length; ) {
            PoolInfo memory pool = poolInfo[i];
            dispatcherInfo = dispatcher.userInfo(pool.dispatcherPid, address(this));
            fees = dispatcher.estimateClaim(pool.dispatcherPid, address(this));

            uint256 withdrawalAmt = ((dispatcherInfo.shares - fees.burnedAmount) *
                gmiAmount *
                (gmiAmount == _totalSupply ? MAX_BP : platformSharesBP)) / delimiter;
            (withdrawalAmt, fees) = dispatcher.withdraw(
                pool.dispatcherPid,
                withdrawalAmt,
                deviationBP
            );
            _pay(pool.multipoolToken, address(this), address(platformFeesVault), withdrawalAmt);
            _updatePerShare(pool.token0, pool.token1, _totalSupply, fees);
            unchecked {
                ++i;
            }
        }
    }

    /**
     * @notice Internal function to burn GMI tokens from the specified account
     * @dev This function performs the following actions:
     *  - Retrieves the balance information of the specified account from the userBalances mapping
     *  - Requires that the GMI balance of the account is greater than 0
     *  - Calculates the WAGMI amount based on the locked WAGMI and GMI shares of the account
     *  - Requires that the WAGMI amount is greater than 0
     *  - Calls the _withdrawPlatformShares() function to withdraw platform shares
     *  - Calls the _claim() function to claim rewards for the account's GMI shares
     *  - Updates the total supply, locked WAGMI, locked WAGMI in the balance, and GMI shares in an unchecked manner
     *  - Calls the _updateUserDebt() function to update the user's debt
     *  - Starts vesting the WAGMI amount for the specified account using the wagmiVesting contract
     * @param account The address of the account to burn GMI tokens from
     * @param amount The amount of GMI tokens to burn
     */
    function _burn(address account, uint256 amount) private {
        UserInfo storage balance = userBalances[account];
        require(balance.gmiShares >= amount, "insufficient GMI balance");
        require(block.number - balance.lastMint > MINIMUM_LOCK_PERIOD_IN_BLOCKS, "too early");
        uint256 wagmiAmount = (balance.wagmiLocked * amount) / balance.gmiShares;
        require(wagmiAmount > 0, "the amount is too small");
        _withdrawPlatformShares(amount); //+earn
        _claimAll(account, balance.gmiShares); //+updateUserDebt
        unchecked {
            total.supply -= amount;
            total.lockedWagmi -= wagmiAmount;
            balance.wagmiLocked -= wagmiAmount;
            balance.gmiShares -= amount;
        }
        Order storage order = orders[msg.sender];
        if (order.gmiAmount > balance.gmiShares && order.deadline > block.timestamp) {
            order.gmiAmount = balance.gmiShares;
        }
        wagmiVesting.startVesting(account, wagmiAmount);
    }

    /**
     * @dev Create a sale order. The order can be recreated by the owner at any time.
     * @param partialSale Boolean indicating if it is a partial sale or not.
     * @param gmiAmount The amount of GMI tokens for sale.
     * @param priceInWagmi18 The price of the GMI tokens in WAGMI multiplied by 18.
     * @param lifetime The duration of the sale order in seconds.
     */
    function createSaleOrder(
        bool partialSale,
        uint256 gmiAmount,
        uint256 priceInWagmi18,
        uint256 lifetime
    ) external {
        UserInfo memory balance = userBalances[msg.sender];
        require(balance.gmiShares >= gmiAmount, "insufficient GMI balance");
        uint256 deadline = block.timestamp + lifetime;
        orders[msg.sender] = Order({
            partialSale: partialSale,
            gmiAmount: gmiAmount,
            priceInWagmi18: priceInWagmi18,
            deadline: deadline
        });
        emit SellOrder(partialSale, msg.sender, gmiAmount, priceInWagmi18, deadline);
    }

    /**
     * @dev Fill a sale order by purchasing GMI tokens from the seller.
     * @param seller The address of the seller who created the order.
     * @param maxWagmiToPay The maximum amount of WAGMI tokens the buyer is willing to pay for the GMI tokens.
     * @param gmiAmountOut The amount of GMI tokens to be purchased.
     *
     * Requirements:
     * - The order must have enough GMI tokens available for purchase, either equal to or greater than `gmiAmountOut`.
     * - The order's deadline must not have passed.
     * - The buyer must have enough locked WAGMI tokens and corresponding GMI shares to complete the purchase.
     * - The payment amount (in WAGMI tokens) must be greater than zero.
     * - The WAGMI token transfer from the buyer to the seller must succeed.
     */
    function fillSaleOrder(address seller, uint256 maxWagmiToPay, uint256 gmiAmountOut) external {
        Order storage order = orders[seller];
        require(
            order.partialSale ? order.gmiAmount >= gmiAmountOut : order.gmiAmount == gmiAmountOut,
            "invalid gmiAmountOut"
        );
        require(order.deadline >= block.timestamp, "expired");
        UserInfo storage sellerBalance = userBalances[seller];

        uint256 paymentAmount = (gmiAmountOut * order.priceInWagmi18) / 1e18;

        uint256 wagmiAmount = (sellerBalance.wagmiLocked * gmiAmountOut) / sellerBalance.gmiShares;
        require(paymentAmount > 0 && wagmiAmount > 0, "too little to buy");
        require(paymentAmount <= maxWagmiToPay, "the price is too high");
        if (earnBeforeMint) {
            _earnAll(total.supply);
        }
        _claimAll(seller, sellerBalance.gmiShares);
        sellerBalance.wagmiLocked -= wagmiAmount;
        sellerBalance.gmiShares -= gmiAmountOut;
        order.gmiAmount -= gmiAmountOut;
        UserInfo storage buyersBalance = userBalances[msg.sender];
        buyersBalance.lastMint = block.number;
        if (buyersBalance.gmiShares > 0) {
            _claimAll(msg.sender, buyersBalance.gmiShares);
        } else {
            _updateUserDebt(msg.sender);
        }
        buyersBalance.wagmiLocked += wagmiAmount;
        buyersBalance.gmiShares += gmiAmountOut;
        IERC20(wagmiToken).transferFrom(msg.sender, seller, paymentAmount);
        emit FillOrder(seller, msg.sender, gmiAmountOut, paymentAmount);
    }

    /**
     * @dev Pauses/unpauses minting of GMI tokens.
     * @param pause `true` to pause, `false` to unpause.
     * Modifiers:
     * - `onlyOwner`: Function can only be called by the contract owner.
     */
    function pauseMintGMI(bool pause) external onlyOwner {
        pause ? _pause() : _unpause();
    }

    /**
     * @dev Set a user's whitelist status.
     * @param user The address of the user to set the whitelist status for.
     * @param state The new whitelist status (true = whitelisted, false = not whitelisted).
     * Only the contract owner can invoke this function.
     */
    function setToWhitelist(address user, bool state) external onlyOwner {
        whitelisted[user] = state;
    }

    /**
     * @dev Sets the value of the earnBeforeMint flag.
     *
     * This function allows the contract owner to update the earnBeforeMint flag,
     * which determines whether earnings will be accrued before each minting.
     *
     * @param _earnBeforeMint A boolean value indicating whether earnings should be accrued before minting.
     */
    function setEarnBeforeMint(bool _earnBeforeMint) external onlyOwner {
        earnBeforeMint = _earnBeforeMint;
        emit SetEarnBeforeMint(_earnBeforeMint);
    }

    /**
     * @dev Sets the address of the earn operator.
     *
     * This function allows the contract owner to update the earnOperator address,
     * which represents the address authorized to manage earnings on behalf of the contract.
     *
     * @param _earnOperator The new address of the earn operator.
     */
    function setEarnOperator(address _earnOperator) external onlyOwner {
        earnOperator = _earnOperator;
    }

    /**
     * @dev Returns the index of a given multipool.
     *
     * @param mpool The address of the multipool.
     * @return index The index of the multipool, or UNSUPPORTED if not found.
     */
    function getMultiPoolIndex(address mpool) public view returns (uint256 index) {
        index = multiPoolIndex[mpool];
        if (index > 0) {
            return (index - 1);
        } else {
            return UNSUPPORTED;
        }
    }

    function _addToken(address token, address oracle) private {
        supportedTokens.push(token);
        tokenIndex[token] = supportedTokens.length;
        _setOracle(token, oracle, "");
    }

    /**
     * @dev Returns the index of a given token.
     *
     * @param token The address of the token.
     * @return index The index of the token, or UNSUPPORTED if not found.
     */
    function getTokenIndex(address token) public view returns (uint256 index) {
        index = tokenIndex[token];
        if (index > 0) {
            return (index - 1);
        } else {
            return UNSUPPORTED;
        }
    }

    /**
     * @dev Adds a new multipool to the list of GMI supported pools.
     * @param dispatcherPid The pool ID of the associated dispatcher contract.
     * @param multipool The address of the new multipool to be added.
     * Modifiers:
     * - `onlyOwner`: Function can only be called by the contract owner.
     * Requirements:
     * - The input parameter `pid` must correspond to an existing pool in the Dispatcher
     * - The value of `multipool` should match the multipool address stored in the Dispatcher
     * for the corresponding pool id.
     * Effects:
     * - Adds a new PoolInfo struct to the poolInfo array
     * Emits:
     * - 'AddPoolToGmi' event after successfully adding the new pool
     */
    function addPoolToGmi(
        uint256 dispatcherPid,
        address multipool,
        address oracle0,
        address oracle1
    ) external onlyOwner {
        require(getMultiPoolIndex(multipool) == UNSUPPORTED, "already added");
        require(poolInfo.length < POOLS_LIMIT, "too many pools");
        IDispatcher.PoolInfo memory dispatcherPool = dispatcher.poolInfo(dispatcherPid);
        /// prevent invalid pid
        require(multipool == dispatcherPool.multipool, "incorrect arguments");

        PoolInfo memory pInfo = PoolInfo({
            multipool: dispatcherPool.multipool,
            multipoolToken: dispatcherPool.multipoolToken,
            token0: dispatcherPool.token0,
            token1: dispatcherPool.token1,
            dispatcherPid: dispatcherPid
        });

        poolInfo.push(pInfo);
        multiPoolIndex[multipool] = poolInfo.length;

        if (getTokenIndex(dispatcherPool.token0) == UNSUPPORTED) {
            _addToken(dispatcherPool.token0, oracle0);
        }
        if (getTokenIndex(dispatcherPool.token1) == UNSUPPORTED) {
            _addToken(dispatcherPool.token1, oracle1);
        }
        IERC20(dispatcherPool.multipoolToken).approve(address(dispatcher), type(uint256).max);
        emit AddPoolToGmi(dispatcherPid, multipool);
    }

    function _pay(address token, address payer, address recipient, uint256 value) private {
        if (value > 0) {
            if (payer == address(this)) {
                IERC20(token).safeTransfer(recipient, value);
            } else {
                IERC20(token).safeTransferFrom(payer, recipient, value);
            }
        }
    }

    function _getWagmiPremium(
        uint256 lpAmountInUsd,
        uint256 lpAmount,
        address multipoolToken
    ) private view returns (uint256) {
        uint256 _maxTotalSupply = IMultipoolToken(multipoolToken).maxTotalSupply();
        uint256 _totalSupply = IMultipoolToken(multipoolToken).totalSupply();
        if (lpAmount <= _totalSupply) {
            uint256 _premiumSupply = _totalSupply - lpAmount;
            for (uint256 i = 0; i < premiumInfo.length; ) {
                PremiumInfo memory _info = premiumInfo[i];
                uint256 _premiumSupplyCap = (_maxTotalSupply * _info.length_bp) / MAX_BP;
                if (_premiumSupply < _premiumSupplyCap) {
                    return _usdToWagmi((lpAmountInUsd * _info.amount_bp) / MAX_BP);
                }
                unchecked {
                    ++i;
                }
            }
        }
        return 0;
    }

    function _usdValuation(
        address multipool,
        address multipoolToken,
        uint256 lpAmount,
        address token0,
        address token1
    ) private view returns (uint256 price) {
        if (lpAmount > 0) {
            (uint256 reserve0, uint256 reserve1, , ) = IMultipool(multipool).getReserves();
            uint256 _totalSupply = IERC20(multipoolToken).totalSupply();
            uint256 amount0 = (reserve0 * lpAmount) / _totalSupply;
            uint256 amount1 = (reserve1 * lpAmount) / _totalSupply;
            price =
                ((amount0 * (10 ** (18 - IERC20Metadata(token0).decimals()))) *
                    oracles[token0].peekSpot(new bytes(0)) +
                    (amount1 * (10 ** (18 - IERC20Metadata(token1).decimals()))) *
                    oracles[token1].peekSpot(new bytes(0))) /
                1e18; //oracle price precision
        }
    }

    function _usdToWagmi(uint256 usdAmountIn) private view returns (uint256 wagmiAmountOut) {
        wagmiAmountOut = (usdAmountIn * 1e18) / oracles[wagmiToken].peekSpot(new bytes(0));
    }

    /**
     * @dev Retrieves the price of a token in USD.
     * @param token The address of the token.
     * @param amount The amount of the token.
     * @return The price of the token in USD.
     */
    function getPriceInUsd(
        address token,
        uint256 amount
    ) external view checkToken(token) returns (uint256) {
        return _getPriceInUsd(token, amount);
    }

    function _getPriceInUsd(address token, uint256 amount) private view returns (uint256 price) {
        price =
            ((amount * (10 ** (18 - IERC20Metadata(token).decimals()))) *
                oracles[token].peekSpot(new bytes(0))) /
            1e18;
    }

    /**
     * @dev Estimates the earnings for a specified account(or for all GMI holders if the address is 0).
     *
     * @param account The address of the account.
     * @return assets An array of Asset objects representing the estimated earnings for each supported token.
     */
    function estimateEarn(address account) external view returns (Asset[] memory assets) {
        uint256 _totalSupply = total.supply;
        if (_totalSupply > 0) {
            uint256 gmiShares;
            uint256 idx;
            if (account != address(0)) {
                gmiShares = userBalances[account].gmiShares;
            } else {
                gmiShares = _totalSupply;
            }

            uint256 length = poolInfo.length;
            assets = new Asset[](supportedTokens.length);
            for (uint256 i = 0; i < length; ) {
                PoolInfo memory pool = poolInfo[i];
                IDispatcher.FeesInfo memory fees = dispatcher.estimateClaim(
                    pool.dispatcherPid,
                    address(this)
                );
                assets[0].amount += fees.wagmiAmount;
                idx = getTokenIndex(pool.token0);
                assets[idx].amount += (fees.withdrawnFee0 + fees.protocolFee0);
                idx = getTokenIndex(pool.token1);
                assets[idx].amount += (fees.withdrawnFee1 + fees.protocolFee1);
                unchecked {
                    ++i;
                }
            }
            uint256 amount;
            for (uint256 i = 0; i < supportedTokens.length; ) {
                assets[i].token = supportedTokens[i];
                amount = (assets[i].amount * gmiShares) / _totalSupply;
                if (amount > 0) {
                    assets[i].amount = amount;
                    assets[i].priceInUsd = _getPriceInUsd(assets[i].token, amount);
                }
                unchecked {
                    ++i;
                }
            }
        }
    }

    /**
     * @notice Function to earn rewards from dispatcher pools
     * @dev This function performs the following actions:
     *  - Retrieves pool information based on an array of pool IDs
     *  - Calls the internal _selectiveEarn() function if the `pids` array is not empty,
     *    or calls the internal _earnAll() function if the `pids` array is empty.
     *  - Updates the reward per share for each token
     * @param pids An array of pool IDs
     */
    function earn(uint256[] memory pids) external {
        address operator = earnOperator;
        require(operator == address(0) || msg.sender == operator, "forbidden");
        uint256 _totalSupply = total.supply;
        if (pids.length > 0) {
            _selectiveEarn(_totalSupply, pids);
        } else {
            _earnAll(_totalSupply);
        }
    }

    function _earnAll(uint256 _totalSupply) private {
        uint256 length = poolInfo.length;
        for (uint256 i = 0; i < length; ) {
            PoolInfo memory pool = poolInfo[i];
            IDispatcher.FeesInfo memory fees = _earn(pool.dispatcherPid, 0);
            _updatePerShare(pool.token0, pool.token1, _totalSupply, fees);
            unchecked {
                ++i;
            }
        }
    }

    function _selectiveEarn(uint256 _totalSupply, uint256[] memory _pids) private {
        uint256 length = _pids.length;
        uint256 limitIndex = poolInfo.length;
        for (uint256 i = 0; i < length; ) {
            uint256 indx = _pids[i];
            require(indx < limitIndex, "Invalid pool index");
            PoolInfo memory pool = poolInfo[indx];
            IDispatcher.FeesInfo memory fees = _earn(pool.dispatcherPid, 0);
            _updatePerShare(pool.token0, pool.token1, _totalSupply, fees);
            unchecked {
                ++i;
            }
        }
    }

    /**
     * @notice Estimate the claimable assets for a given account
     * @dev This function performs the following actions:
     *  - Retrieves the balance information of the specified account
     *  - Checks if the account has any GMI shares
     *  - Retrieves the user debt mapping for the account
     *  - Calculates the claimable amount for each supported token based on GMI shares and user debt
     *  - Constructs an array of Asset structs containing the claimable assets
     * @param account The Ethereum address of the account
     * @return assets An array of Asset structs representing the claimable assets
     */
    function estimateClaim(address account) external view returns (Asset[] memory assets) {
        UserInfo memory balance = userBalances[account];
        if (balance.gmiShares > 0) {
            mapping(address => uint256) storage userDebt = userDebtAccPerShare[account];
            uint256 amount;
            address token;
            uint256 length = supportedTokens.length;
            assets = new Asset[](length);
            for (uint256 i = 0; i < length; ) {
                token = supportedTokens[i];
                amount = FullMath.mulDiv(
                    balance.gmiShares,
                    rewardTokensAccPerShare[token] - userDebt[token],
                    FixedPoint128.Q128
                );
                if (amount > 0) {
                    assets[i].amount = amount;
                    assets[i].priceInUsd = _getPriceInUsd(token, amount);
                }
                assets[i].token = token;
                unchecked {
                    ++i;
                }
            }
        }
    }

    /**
     * @notice Function to claim rewards
     * @dev This function performs the following actions:
     *  - Retrieves the user's balance information
     *  - If the user has positive GMI shares:
     *      - Calls the internal _selectiveClaim() function to claim rewards from specific sTokens(if the `sTokens` array is not empty)
     *      - OR
     *      - Calls the internal _claimAll() function to claim rewards from all sTokens if the `sTokens` array is empty
     * @param sTokenIndx An array of integers representing the indices of the sTokens to selectively
     * claim rewards from (optional)
     */
    function claimGmi(uint256[] memory sTokenIndx) external {
        UserInfo storage balance = userBalances[msg.sender];
        if (balance.gmiShares > 0) {
            if (sTokenIndx.length > 0) {
                _selectiveClaim(msg.sender, balance.gmiShares, sTokenIndx);
            } else {
                _claimAll(msg.sender, balance.gmiShares);
            }
        }
    }

    /**
     * @notice Internal function to earn fees from a dispatcher pool
     * @param dispatcherPid The PID (Pool Identifier) of the dispatcher pool
     * @param lpAmount The amount of LP tokens to be deposited into the dispatcher pool
     * @return fees The fees information returned by the dispatcher
     */
    function _earn(
        uint256 dispatcherPid,
        uint256 lpAmount
    ) private returns (IDispatcher.FeesInfo memory fees) {
        fees = dispatcher.deposit(dispatcherPid, lpAmount, address(this), deviationBP);
        emit Earn(dispatcherPid, fees);
    }

    /**
     * @notice Internal function to update the reward per share for tokens
     * @param token0 The address of token0
     * @param token1 The address of token1
     * @param _totalSupply The GMI total supply
     * @param fees The fees information returned by the dispatcher's deposit() function
     */
    function _updatePerShare(
        address token0,
        address token1,
        uint256 _totalSupply,
        IDispatcher.FeesInfo memory fees
    ) private {
        if (_totalSupply > 0) {
            address[] memory tokens = new address[](2);
            uint256[] memory amounts = new uint256[](2);
            tokens[0] = token0;
            amounts[0] = fees.protocolFee0;
            tokens[1] = token1;
            amounts[1] = fees.protocolFee1;
            require(
                platformFeesVault.transferTokens(tokens, amounts, address(this)),
                "set gmi address to platformFeesVault"
            );

            rewardTokensAccPerShare[token0] += FullMath.mulDiv(
                fees.withdrawnFee0 + fees.protocolFee0,
                FixedPoint128.Q128,
                _totalSupply
            );
            rewardTokensAccPerShare[token1] += FullMath.mulDiv(
                fees.withdrawnFee1 + fees.protocolFee1,
                FixedPoint128.Q128,
                _totalSupply
            );
            rewardTokensAccPerShare[wagmiToken] += FullMath.mulDiv(
                fees.wagmiAmount,
                FixedPoint128.Q128,
                _totalSupply
            );
        }
    }

    /**
     * @dev Get the total liquidity value of all platform-owned lpTokens in USD with an accuracy of 18 decimal places.
     *
     * This function calculates the total liquidity value in USD by iterating through all the pools in the poolInfo array
     * and summing up the USD valuation of each pool's liquidity.
     *
     * @return liquidityInUsd The total liquidity value in USD with an accuracy of 18 decimal places.
     */
    function platformOwnedLiquidity() external view returns (uint256 liquidityInUsd) {
        uint256 length = poolInfo.length;

        for (uint256 i = 0; i < length; ) {
            PoolInfo memory pool = poolInfo[i];
            uint256 platformShares = IERC20(pool.multipoolToken).balanceOf(
                address(platformFeesVault)
            );

            liquidityInUsd += _usdValuation(
                pool.multipool,
                pool.multipoolToken,
                platformShares,
                pool.token0,
                pool.token1
            );
            unchecked {
                ++i;
            }
        }
    }

    /**
     * @dev Returns the total value locked (TVL) in the contract.
     * @return tvl The total value locked in USD with an accuracy of 18 decimal places
     */
    function totalValueLocked() public view returns (uint256 tvl) {
        uint256 length = poolInfo.length;
        IDispatcher.FeesInfo memory fees;

        for (uint256 i = 0; i < length; ) {
            PoolInfo memory pool = poolInfo[i];
            uint256 dispatcherShares = dispatcher
                .userInfo(pool.dispatcherPid, address(this))
                .shares;
            fees = dispatcher.estimateClaim(pool.dispatcherPid, address(this));
            dispatcherShares = dispatcherShares > fees.burnedAmount
                ? dispatcherShares - fees.burnedAmount
                : 0;
            tvl += _usdValuation(
                pool.multipool,
                pool.multipoolToken,
                dispatcherShares,
                pool.token0,
                pool.token1
            );
            unchecked {
                ++i;
            }
        }
    }

    /**
     * @dev Returns the current GMI token price.
     * @return price The current GMI token price with an accuracy of 18 decimal places
     */
    function gmiPrice() external view returns (uint256 price) {
        if (total.supply > 0) {
            price = (totalValueLocked() * 10 ** 18) / total.supply;
        }
    }

    /**
     * @dev Estimate the amount of GMI tokens to mint.
     * @param pid The ID of the pool to deposit liquidity into.
     * @param lpAmount The amount of liquidity tokens being deposited.
     * @return gmiAmount The amount of GMI tokens to mint.
     * @return wagmiAmount The amount of WAGMI tokens.
     * @return wagmiPremiumAmount The amount of WAGMI Premium tokens.
     */
    function estimateGmiMint(
        uint256 pid,
        uint256 lpAmount
    ) external view returns (uint256 gmiAmount, uint256 wagmiAmount, uint256 wagmiPremiumAmount) {
        uint256 length = poolInfo.length;
        uint256 totalInUsd;
        uint256 amountInUsd;
        IDispatcher.FeesInfo memory fees;
        address multipoolToken;
        for (uint256 i = 0; i < length; ) {
            PoolInfo memory pool = poolInfo[i];
            uint256 dispatcherShares = dispatcher
                .userInfo(pool.dispatcherPid, address(this))
                .shares;

            if (earnBeforeMint) {
                fees = dispatcher.estimateClaim(pool.dispatcherPid, address(this));
                dispatcherShares = dispatcherShares > fees.burnedAmount
                    ? dispatcherShares - fees.burnedAmount
                    : 0;
            }

            uint256 sharesInUsd = _usdValuation(
                pool.multipool,
                pool.multipoolToken,
                dispatcherShares,
                pool.token0,
                pool.token1
            );
            totalInUsd += sharesInUsd;
            if (i == pid) {
                if (dispatcherShares > 0) {
                    amountInUsd = (sharesInUsd * lpAmount) / dispatcherShares;
                } else {
                    amountInUsd = _usdValuation(
                        pool.multipool,
                        pool.multipoolToken,
                        lpAmount,
                        pool.token0,
                        pool.token1
                    );
                }
                multipoolToken = pool.multipoolToken;
            }
            unchecked {
                ++i;
            }
        }

        if (totalInUsd == 0) {
            gmiAmount = amountInUsd;
        } else {
            gmiAmount = (total.supply * amountInUsd) / totalInUsd;
        }

        wagmiAmount = _usdToWagmi(amountInUsd);
        wagmiPremiumAmount = _getWagmiPremium(amountInUsd, lpAmount, multipoolToken);
    }

    /**
     * @dev Precalculates the amount of GMI tokens to mint and other relevant values
     *      based on the amount of liquidity tokens being deposited.
     * @param pid The pool ID of the deposit pool
     * @param lpAmount The amount of liquidity tokens being deposited
     * @return gmiAmount The amount of GMI tokens to mint
     * @return amountInUsd The price in USD of liquidity tokens being deposited
     */
    function _precalculateMint(
        uint256 pid,
        uint256 lpAmount
    )
        private
        returns (
            uint256 gmiAmount, //gmiAmount The amount of GMI tokens to mint.
            uint256 amountInUsd
        )
    {
        uint256 length = poolInfo.length;
        uint256 _totalSupply = total.supply;
        uint256 totalInUsd; //The total amount in all pools, denominated in USD
        IDispatcher.FeesInfo memory fees;
        for (uint256 i = 0; i < length; ) {
            PoolInfo memory pool = poolInfo[i];
            uint256 dispatcherShares = dispatcher
                .userInfo(pool.dispatcherPid, address(this))
                .shares;
            bool isDepositPool = i == pid;
            if (earnBeforeMint || isDepositPool) {
                fees = _earn(pool.dispatcherPid, isDepositPool ? lpAmount : 0);
                dispatcherShares -= fees.burnedAmount;
                _updatePerShare(pool.token0, pool.token1, _totalSupply, fees);
            }

            uint256 sharesInUsd = _usdValuation(
                pool.multipool,
                pool.multipoolToken,
                dispatcherShares,
                pool.token0,
                pool.token1
            );

            totalInUsd += sharesInUsd;
            if (isDepositPool) {
                if (dispatcherShares > 0) {
                    amountInUsd = (sharesInUsd * lpAmount) / dispatcherShares;
                } else {
                    amountInUsd = _usdValuation(
                        pool.multipool,
                        pool.multipoolToken,
                        lpAmount,
                        pool.token0,
                        pool.token1
                    );
                }
            }
            unchecked {
                ++i;
            }
        }

        if (_totalSupply == 0) {
            gmiAmount = amountInUsd;
        } else {
            gmiAmount = (_totalSupply * amountInUsd) / totalInUsd; //totalInUsd never equal 0
        }
    }

    /**
     * @notice Mint GMI tokens by providing LP tokens
     * @dev This function performs the following actions:
     *  - Checks if the provided LP amount is greater than the minimum amount
     *  - Retrieves information about the specified pool
     *  - Transfers LP tokens from the user to this contract
     *  - Calls the internal _precalculateMint() function to calculate GMI and USD amounts based on LP tokens
     *  - Checks if the calculated GMI amount is greater than or equal to the minimum GMI out requirement
     *  - Converts the calculated USD amount to WAGMI using the internal _usdToWagmi() function
     *  - Adds a premium to the WAGMI amount based on LP token values using the internal _getWagmiPremium() function
     *  - Mints GMI tokens and rewards them to the user
     *  - Emits an event to indicate the successful minting of GMI tokens
     * @param pid The ID of the pool
     * @param lpAmount The amount of LP tokens provided
     * @param recipient The address of the recipient for the minted GMI tokens.
     * @param minGmiOut The minimum acceptable amount of GMI tokens to be minted
     */
    function mintGmi(
        uint256 pid,
        uint256 lpAmount,
        address recipient,
        uint256 minGmiOut
    ) external whenNotPaused {
        require(lpAmount > MINIMUM_AMOUNT, "the amount is too small");
        require(
            recipient == msg.sender || whitelisted[msg.sender],
            "a third party recipient is not available"
        );
        PoolInfo memory pool = poolInfo[pid];
        _pay(pool.multipoolToken, msg.sender, address(this), lpAmount);
        (uint256 gmiAmount, uint256 amountInUsd) = _precalculateMint(pid, lpAmount);
        require(gmiAmount >= minGmiOut, "inflation detected");
        uint256 wagmiAmount = _usdToWagmi(amountInUsd);
        uint256 wagmiPremiumAmount = _getWagmiPremium(amountInUsd, lpAmount, pool.multipoolToken);
        wagmiAmount += wagmiPremiumAmount;
        _mint(recipient, gmiAmount, wagmiAmount);
        emit MintGmi(recipient, gmiAmount, amountInUsd, wagmiAmount, wagmiPremiumAmount);
    }

    /**
     * @notice Burn a specified amount of GMI tokens from the caller's balance
     * @dev This function performs the following actions:
     *  - Burns the specified amount of GMI tokens from the caller's balance
     *  - Emits a BurnGmi event to notify the burning action
     * @param amount The amount of GMI tokens to burn
     */
    function burnGmi(uint256 amount) external {
        _burn(msg.sender, amount);
        emit BurnGmi(msg.sender, amount);
    }

    /**
     * @notice Function to set an oracle for a specific token
     * @dev This function allows the contract owner to set an oracle address for a given token.
     *      The oracle is responsible for providing price data for the token.
     * @param token The address of the token
     * @param oracle The address of the oracle
     * @param oracleName The name of the oracle (for verification only. If it is empty, it will be automatically generated from the token symbol).
     */
    function setOracle(
        address token,
        address oracle,
        string memory oracleName
    ) external onlyOwner checkToken(token) {
        _setOracle(token, oracle, oracleName);
    }

    function _setOracle(
        address token,
        address oracle,
        string memory oracleName
    ) private onlyOwner checkToken(token) {
        require(IOracle(oracle).peekSpot("") != 0, "unsupported oracle");
        if (bytes(oracleName).length == 0) {
            oracleName = string.concat(IERC20Metadata(token).symbol(), "/USD");
        }
        require(
            keccak256(abi.encodePacked(IOracle(oracle).name(""))) ==
                keccak256(abi.encodePacked(oracleName)),
            "invalid oracle name"
        );
        oracles[token] = IOracle(oracle);
    }

    /**
     * @dev Set premium information.
     * @param _premiumInfo An array of PremiumInfo structs containing the length_bp and amount_bp values.
     *
     * Requirements:
     * - The caller must be the contract owner.
     * - The length_bp of each PremiumInfo struct must be less than MAX_BP and greater than the previous length_bp value.
     * - The amount_bp of each PremiumInfo struct must be less than the previous amount_bp value.
     */
    function setPremiumInfo(PremiumInfo[] calldata _premiumInfo) external onlyOwner {
        delete premiumInfo;
        uint prevLengthBp;
        uint prevAmountBp = MAX_BP;
        for (uint256 i = 0; i < _premiumInfo.length; ) {
            PremiumInfo memory _info = _premiumInfo[i];
            require(_info.length_bp < MAX_BP && _info.length_bp > prevLengthBp, "wrong bp length");
            require(_info.amount_bp < prevAmountBp, "premium is too high");
            prevLengthBp = _info.length_bp;
            prevAmountBp = _info.amount_bp;
            premiumInfo.push(_info);
            unchecked {
                ++i;
            }
        }
    }

    /**
     * @dev Boost GMI users with owner's fees or other token.
     * @param tokenToDisperse Token that should be distributed among other GMI users
     * @param amountToDisperse Amount of token that should be distributed among other GMI users
     * @param earnable if true - owner's feed wil be distributed among other GMI users
     *
     * Requirements:
     * - The caller must be the contract owner.
     * - The amountToDisperse should be more than 0 if tokenToDisperse is set.
     */
    function boost(address tokenToDisperse, address oracle, uint256 amountToDisperse, bool earnable) external onlyOwner {
        address token;
        mapping(address => uint256) storage ownerDebt = userDebtAccPerShare[owner()];
        uint256 ownerShares = userBalances[owner()].gmiShares;
        uint256 sharesWithoutOwner = total.supply - ownerShares;
        uint256[] memory boostedAmounts = new uint256[](supportedTokens.length);
        if (earnable) {
            _earnAll(total.supply);
            for (uint256 i = 0; i < supportedTokens.length; ) {
                token = supportedTokens[i];
                boostedAmounts[i] = FullMath.mulDiv(
                    ownerShares,
                    rewardTokensAccPerShare[token] - ownerDebt[token],
                    FixedPoint128.Q128
                );
                // disperse earned tokens
                rewardTokensAccPerShare[token] += 
                    FullMath.mulDiv(boostedAmounts[i], FixedPoint128.Q128, sharesWithoutOwner);
                // update owner's reward
                ownerDebt[token] = rewardTokensAccPerShare[token];

                unchecked {
                    ++i;
                }
            }
        }
        if (tokenToDisperse != address(0)) {
            require(amountToDisperse > 0, "Zero amount");
            uint256 index = getTokenIndex(tokenToDisperse);
            if (index == UNSUPPORTED) {
                _addToken(tokenToDisperse, oracle);
            } else if(!earnable) {
                uint256[] memory sTokenIndex = new uint256[](1);
                sTokenIndex[0] = index;
                _selectiveClaim(owner(), ownerShares, sTokenIndex);
            }
            _pay(tokenToDisperse, owner(), address(this), amountToDisperse);
            rewardTokensAccPerShare[tokenToDisperse] += FullMath.mulDiv(
                amountToDisperse,
                FixedPoint128.Q128,
                sharesWithoutOwner
            );
            ownerDebt[tokenToDisperse] = rewardTokensAccPerShare[tokenToDisperse];
        }
        emit Boost(tokenToDisperse, amountToDisperse, boostedAmounts);
    }

    function setDeviationBP(uint256 _deviationBP) external onlyOwner {
        deviationBP = _deviationBP;
    }
}
