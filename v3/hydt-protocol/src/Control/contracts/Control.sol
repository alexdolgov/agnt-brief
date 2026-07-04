// SPDX-License-Identifier: GNU GPLv3

pragma solidity 0.8.19;

import "./interfaces/IHYDT.sol";
import "./interfaces/IPancakeRouter02.sol";
import "./interfaces/IReserve.sol";

import "./libraries/DataFetcher.sol";
import "./libraries/SafeERC20.sol";
import "./libraries/SafeETH.sol";

import "./utils/AccessControl.sol";
import "./utils/OpsReady.sol";

contract Control is AccessControl, OpsReady {

    /* ========== STATE VARIABLES ========== */

    bytes32 public constant GOVERNOR_ROLE = keccak256(abi.encodePacked("Governor"));
    bytes32 public constant CALLER_ROLE = keccak256(abi.encodePacked("Caller"));

    /// @dev Fixed time duration variables.
    uint128 private constant THREE_MONTHS_TIME = 7776000;
    uint128 private constant ONE_DAY_TIME = 86400;
    uint128 private constant FIVE_MINUTES_TIME = 300;

    /// @notice The address of the Pancake Router.
    IPancakeRouter02 public constant PANCAKE_ROUTER = IPancakeRouter02(0x10ED43C718714eb63d5aA57B78B54704E256024E);

    /// @notice The address of the Pancake Factory.
    address public constant PANCAKE_FACTORY = 0xcA143Ce32Fe78f1f7019d7d551a6402fC5350c73;

    /// @notice The address of the Wrapped BNB token.
    address public constant WBNB = 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c;

    /// @notice The address of the relevant stable token.
    address public constant USDT = 0x55d398326f99059fF775485246999027B3197955;

    /// @notice The total limit of USD allowed for purchasing HYDT with over the course of initial minting.
    uint128 public constant INITIAL_MINT_LIMIT = 30000000 * 1e18;
    /// @notice The daily limit of USD allowed for purchasing HYDT with during initial minting.
    uint128 public constant DAILY_INITIAL_MINT_LIMIT = 700000 * 1e18;

    /// @dev Fixed price values for peg.
    uint128 private constant PRICE_UPPER_BOUND = 1.02 * 1e18;
    uint128 private constant PRICE_LOWER_BOUND = 0.98 * 1e18;

    /// @notice The address of the primary stable token.
    IHYDT public HYDT;
    /// @notice The address of the BNB reserve.
    IReserve public RESERVE;

    /// @dev Storage of values regarding purchases of HYDT during initial minting.
    InitialMintValues private _initialMints;
    InitialMintValues private _dailyInitialMints;

    /// @dev Dependencies for ops calls.
    uint256 public mintProgressCount;
    uint256 public redeemProgressCount;
    uint256 public lastExecutedMint;
    uint256 public lastExecutedRedeem;

    /// @notice Upper limit for slippage tolerance. Lower limit is always 1.
    uint256 public slippageTolerance;

    /// @notice The state determining whether ops transaction fees will be paid by this contract or not. 
    bool public opsReadyState;

    /// @dev Initialization variables.
    address private immutable _initializer;
    bool private _isInitialized;

    /* ========== STORAGE ========== */

    struct InitialMintValues {
        uint256 startTime;
        uint256 endTime;
        uint256 amount;
    }

    /* ========== EVENTS ========== */

    event UpdateSlippageTolerance(uint256 newSlippageTolerance);
    event UpdateOpsReadyState(bool newOpsReadyState);
    event InitialMint(address indexed user, uint256 amountBNB, uint256 amountHYDT, uint256 callingPrice);
    event Mint(address indexed caller, uint256 updatedPrice, uint256 amountHYDT, uint256 callingPrice);
    event Redeem(address indexed caller, uint256 updatedPrice, uint256 amountHYDT, uint256 callingPrice);

    /* ========== CONSTRUCTOR ========== */

    constructor() {
        _initializer = _msgSender();
    }

    /* ========== INITIALIZE ========== */

    /**
     * @notice Initializes external dependencies and state variables.
     * @dev This function can only be called once.
     * @param ops_ The address of the `Automate` contract, also known in the `OpsProxyFactory` contract as ops.
     * @param taskCreator_ The address which will create tasks for this contract.
     * @param hydt_ The address of the `HYDT` contract.
     * @param reserve_ The address of the `Reserve` contract.
     * @param initialMintStartTime_ The unix timestamp at which initial minting will begin.
     */
    function initialize(address ops_, address taskCreator_, address hydt_, address reserve_, uint256 initialMintStartTime_) external {
        require(_msgSender() == _initializer, "Control: caller is not the initializer");
        require(!_isInitialized, "Control: already initialized");

        require(ops_ != address(0), "Control: invalid Ops address");
        require(taskCreator_ != address(0), "Control: invalid TaskCreator address");
        require(hydt_ != address(0), "Control: invalid HYDT address");
        require(reserve_ != address(0), "Control: invalid Reserve address");
        OPS = IOps(ops_);
        _gelato = IOps(ops_).gelato();
        (address dedicatedMsgSender, ) = IOpsProxyFactory(OPS_PROXY_FACTORY).getProxyOf(taskCreator_);

        _grantRole(GOVERNOR_ROLE, _msgSender());
        _grantRole(CALLER_ROLE, dedicatedMsgSender);
        /// @dev Renounce Role after setup is complete.
        _grantRole(DEFAULT_ADMIN_ROLE, _msgSender());

        HYDT = IHYDT(hydt_);
        RESERVE = IReserve(reserve_);

        _initialMints.startTime = initialMintStartTime_;
        _dailyInitialMints.startTime = initialMintStartTime_;
        _initialMints.endTime = initialMintStartTime_ + THREE_MONTHS_TIME;
        _dailyInitialMints.endTime = initialMintStartTime_ + ONE_DAY_TIME;

        slippageTolerance = 15;

        _delegateApprove(IERC20(hydt_), address(PANCAKE_ROUTER), true);
        _delegateApprove(IERC20(WBNB), address(PANCAKE_ROUTER), true);

        opsReadyState = true;

        _isInitialized = true;
    }

    /* ========== FUNCTIONS ========== */

    receive() external payable {

    }

    function updateSlippageTolerance(uint256 newSlippageTolerance) external onlyRole(GOVERNOR_ROLE) {
        require(0 < newSlippageTolerance && newSlippageTolerance <= 100, "Control: SlippageTolerance out of bounds");
        require(slippageTolerance != newSlippageTolerance, "Control: SlippageTolerance is already this value");
        slippageTolerance = newSlippageTolerance;

        emit UpdateSlippageTolerance(newSlippageTolerance);
    }

    /**
     * @notice Updates the `opsReadyState`. Caller must have the `Governor` role.
     * @param newOpsReadyState The new state to assign to `opsReadyState`.
     */
    function updateOpsReadyState(bool newOpsReadyState) external onlyRole(GOVERNOR_ROLE) {
        require(opsReadyState != newOpsReadyState, "Control: OpsReadyState is already this state");
        opsReadyState = newOpsReadyState;

        emit UpdateOpsReadyState(newOpsReadyState);
    }

    /**
     * @notice Allows this contract to approve tokens being sent out. Caller must have the `Governor` role.
     * @param token The address of the token to approve.
     * @param guy The address of the spender.
     * @param isApproved The new state of the spender's allowance.
     */
    function delegateApprove(IERC20 token, address guy, bool isApproved) external onlyRole(GOVERNOR_ROLE) {
        _delegateApprove(token, guy, isApproved);
    }

    function _delegateApprove(IERC20 token, address guy, bool isApproved) internal {
        uint256 oldAllowance = token.allowance(address(this), guy);

        if (isApproved && oldAllowance < type(uint256).max) {
            if (oldAllowance > 0) {
                uint256 wad = type(uint256).max - oldAllowance;
                SafeERC20.safeIncreaseAllowance(token, guy, wad);
            } else {
                uint256 wad = type(uint256).max;
                SafeERC20.safeApprove(IERC20(token), guy, wad);
            }
        } else if (!isApproved && oldAllowance > 0) {
            uint256 wad = 0;
            SafeERC20.safeApprove(IERC20(token), guy, wad);
        }
    }

    /**
     * @notice Gets total values for initial minting.
     * @return startTime The unix timestamp which denotes the start of initial minting.
     * @return endTime The unix timestamp which denotes the end of initial minting.
     * @return amountUSD The amount in USD that has been transacted via inital minting in total.
     */
    function getInitialMints() external view returns (uint256 startTime, uint256 endTime, uint256 amountUSD) {
        startTime = _initialMints.startTime;
        endTime = _initialMints.endTime;
        amountUSD = _initialMints.amount;
    }

    /**
     * @notice Gets daily values for initial minting.
     * @return startTime The unix timestamp which denotes the start of the day.
     * @return endTime The unix timestamp which denotes the end of the day.
     * @return amountUSD The amount in USD that has been transacted via inital minting in said day.
     */
    function getDailyInitialMints() external view returns (uint256 startTime, uint256 endTime, uint256 amountUSD) {
        startTime = _dailyInitialMints.startTime;
        endTime = _dailyInitialMints.endTime;
        amountUSD = _dailyInitialMints.amount;

        if (block.timestamp <= _initialMints.endTime && block.timestamp > _dailyInitialMints.endTime) {
            (startTime, endTime) =
                _getNextDailyInitialMintTime(_dailyInitialMints.startTime, _dailyInitialMints.endTime);
            amountUSD = 0;
        }
    }

    /**
     * @dev Gets the start and end times for the next iteration of daily initial mints.
     */
    function _getNextDailyInitialMintTime(uint256 startTime, uint256 endTime) internal view returns (uint256, uint256) {
        uint256 numberOfDays = (block.timestamp - startTime) / ONE_DAY_TIME;
        return (
            startTime + (numberOfDays * ONE_DAY_TIME),
            endTime + (numberOfDays * ONE_DAY_TIME)
        );
    }

    /**
     * @notice Gets current HYDT price corresponding to the preferred pair.
     */
    function getCurrentPrice() public view returns (uint256) {
        address[] memory path = new address[](3);
        path[0] = address(HYDT);
        path[1] = WBNB;
        path[2] = USDT;
        uint256 amountIn = 1 * 1e18;
        uint256 price = DataFetcher.quoteRouted(PANCAKE_FACTORY, amountIn, path);
        return price;
    }

    /**
     * @notice Used to mint HYDT in return for BNB. All transfers will be made at 1 HYDT per USD at current BNB/USD rates.
     */
    function initialMint() external payable {
        require(msg.value > 0, "Control: insufficient BNB amount");
        InitialMintValues storage initialMints = _initialMints;
        InitialMintValues storage dailyInitialMints = _dailyInitialMints;

        require(block.timestamp > _initialMints.startTime, "Control: initial mint not yet started");
        require(block.timestamp <= initialMints.endTime, "Control: initial mint ended");

        if (block.timestamp > dailyInitialMints.endTime) {
            (dailyInitialMints.startTime, dailyInitialMints.endTime) =
                _getNextDailyInitialMintTime(dailyInitialMints.startTime, dailyInitialMints.endTime);
            dailyInitialMints.amount = 0;
        }
        uint256 amount = DataFetcher.quote(PANCAKE_FACTORY, msg.value, WBNB, USDT);

        require(
            INITIAL_MINT_LIMIT >=
            initialMints.amount + amount,
            "Control: invalid amount considering initial mint limit"
        );
        require(
            DAILY_INITIAL_MINT_LIMIT >=
            dailyInitialMints.amount + amount,
            "Control: invalid amount considering daily initial mint limit"
        );
        initialMints.amount += amount;
        dailyInitialMints.amount += amount;
        SafeETH.safeTransferETH(address(RESERVE), msg.value);
        HYDT.mint(_msgSender(), amount);

        emit InitialMint(_msgSender(), msg.value, amount, 1 * 1e18);
    }

    /**
     * @notice Called by ops to maintain peg. Caller must have the `Caller` role.
     * @param argument Denotes whether to mint or redeem.
     */
    function execute(uint8 argument) external onlyRole(CALLER_ROLE) {
        uint256 price = getCurrentPrice();

        if (argument == 0 && price > PRICE_UPPER_BOUND) {
            _mint(price);
        } else if (argument == 1 && price < PRICE_LOWER_BOUND) {
            _redeem(price);
        }

        if (opsReadyState) {
            (uint256 fee, address feeToken) = _getFeeDetails();
            RESERVE.withdraw(fee);
            _transfer(fee, feeToken);
        }
    }

    function _mint(uint256 price) internal {
        if (mintProgressCount < 0.1 * 1e18) {
            /// @dev The "mintProgressCount" is incremented on each call.
            /// NOTE: If the mint amount is large enough the "mintProgressCount" will be adjusted such that another call won't be 
            /// needed within the given time frame. If the inverse is true, then calls will be made after every 5 minutes.
            mintProgressCount += 1 * 1e18;
        }
        uint256 amountReserve = DataFetcher.quote(PANCAKE_FACTORY, address(RESERVE).balance, WBNB, USDT);
        uint256 amountLiquidityHYDT = HYDT.balanceOf(
            DataFetcher.pairFor(
                PANCAKE_FACTORY,
                address(HYDT),
                WBNB
            )
        );

        /// @dev "firstValue" - ((CurrentPrice - 0.9) ^ 2) * ReserveBalance * 0.04 * MintProgressCount.
        /// @dev To avoid uint max issues we seperate the calculations for "firstValue" into 2 parts.
        /// @dev "baseValue" is the 1st half of the calculation.
        /// NOTE: The static lower limit for the price (0.9) should always be less than or equal to "PRICE_UPPER_BOUND".
        uint256 baseValue = (((price - (0.9 * 1e18)) ** 2) * amountReserve * (0.04 * 1e2)) / 1e38;
        uint256 firstValue = (baseValue * mintProgressCount) / 1e18;
        /// @dev The "secondValue" is a percentage of the amount of HYDT in the corresponding liquidity pool.
        /// @dev By using a certain percentage of said liquidity, we can limit by how much the price changes.
        /// NOTE: In this case we are limiting the price change to be 0.5%.
        uint256 secondValue = ((0.0025 * 1e4) * amountLiquidityHYDT) / 1e4;
        /// @dev Whichever of the 2 values is smaller is used to perform the swap.
        uint256 amountMintHYDT = firstValue < secondValue ? firstValue : secondValue;

        HYDT.mint(address(this), amountMintHYDT);
        address[] memory path = new address[](2);
        path[0] = address(HYDT);
        path[1] = WBNB;

        for (uint256 i = 1 ; i <= slippageTolerance ; i++) {
            bool check;
            uint256 percentage = 100 - i;
            uint256 amountOutMin = (PANCAKE_ROUTER.getAmountsOut(
                amountMintHYDT,
                path
            )[path.length - 1] * percentage) / 100;

            try PANCAKE_ROUTER.swapExactTokensForETH(
                amountMintHYDT,
                amountOutMin,
                path,
                address(RESERVE),
                block.timestamp + FIVE_MINUTES_TIME
            ) {
                check = true;
            } catch {

            }

            if (check) break;
        }
        /// @dev These values are recalculated with the new price so that the "mintProgressCount" can be adjusted.
        /// NOTE: The "reduction" is directly proportional to the mint amount.
        uint256 currentPrice = getCurrentPrice();
        amountReserve = DataFetcher.quote(PANCAKE_FACTORY, address(RESERVE).balance, WBNB, USDT);
        baseValue = (((currentPrice - (0.9 * 1e18)) ** 2) * amountReserve * (0.04 * 1e2)) / 1e38;
        uint256 reduction = (amountMintHYDT * 1e18) / baseValue;
        mintProgressCount = reduction > mintProgressCount ? 0 : mintProgressCount - reduction;

        lastExecutedMint = block.timestamp;

        emit Mint(_msgSender(), currentPrice, amountMintHYDT, price);
    }

    function _redeem(uint256 price) internal {
        if (redeemProgressCount < 0.1 * 1e18) {
            /// @dev The "redeemProgressCount" is incremented on each call.
            /// NOTE: If the redeem amount is large enough the "redeemProgressCount" will be adjusted such that another call won't be 
            /// needed within the given time frame. If the inverse is true, then calls will be made after every 5 minutes.
            redeemProgressCount += 1 * 1e18;
        }
        /// @dev All calculations are based on USD value hence the following are converted.
        uint256 amountReserve = DataFetcher.quote(PANCAKE_FACTORY, address(RESERVE).balance, WBNB, USDT);
        uint256 amountLiquidity = DataFetcher.quote(
            PANCAKE_FACTORY,
            IERC20(WBNB).balanceOf(
                DataFetcher.pairFor(
                    PANCAKE_FACTORY,
                    address(HYDT),
                    WBNB
                )
            ),
            WBNB,
            USDT
        );

        /// @dev "firstValue" - ((1.1 - CurrentPrice) ^ 2) * ReserveBalance * 0.004 * RedeemProgressCount.
        /// @dev To avoid uint max issues we seperate the calculations for "firstValue" into 2 parts.
        /// @dev "baseValue" is the 1st half of the calculation.
        /// NOTE: The static upper limit for the price (1.1) should always be greater than or equal to "PRICE_LOWER_BOUND".
        uint256 baseValue = ((((1.1 * 1e18) - price) ** 2) * amountReserve * (0.004 * 1e3)) / 1e39;
        uint256 firstValue = (baseValue * redeemProgressCount) / 1e18;
        /// @dev The "secondValue" is a percentage of the amount of HYDT in the corresponding liquidity pool.
        /// @dev By using a certain percentage of said liquidity, we can limit by how much the price changes.
        /// NOTE: In this case we are limiting the price change to be 0.5%.
        uint256 secondValue = ((0.0025 * 1e4) * amountLiquidity) / 1e4;
        /// @dev Whichever of the 2 values is smaller is used to perform the swap.
        uint256 amountRedeem = firstValue < secondValue ? firstValue : secondValue;
        uint256 amountRedeemBNB = DataFetcher.quote(PANCAKE_FACTORY, amountRedeem, USDT, WBNB);

        RESERVE.withdraw(amountRedeemBNB);
        address[] memory path = new address[](2);
        path[0] = WBNB;
        path[1] = address(HYDT);
        uint256 amountBurnHYDT;

        for (uint256 i = 1 ; i <= slippageTolerance ; i++) {
            bool check;
            uint256 percentage = 100 - i;
            uint256 amountOutMin = (PANCAKE_ROUTER.getAmountsOut(
                amountRedeemBNB,
                path
            )[path.length - 1] * percentage) / 100;

            try PANCAKE_ROUTER.swapExactETHForTokens{value: amountRedeemBNB}(
                amountOutMin,
                path,
                address(this),
                block.timestamp + FIVE_MINUTES_TIME
            ) returns (uint256[] memory amounts) {
                amountBurnHYDT = amounts[path.length - 1];
                check = true;
            } catch {

            }

            if (check) break;
        }
        HYDT.burn(amountBurnHYDT);

        /// @dev These values are recalculated with the new price so that the "redeemProgressCount" can be adjusted.
        /// NOTE: The "reduction" is directly proportional to the redeem amount.
        uint256 currentPrice = getCurrentPrice();
        amountReserve = DataFetcher.quote(PANCAKE_FACTORY, address(RESERVE).balance, WBNB, USDT);
        baseValue = ((((1.1 * 1e18) - currentPrice) ** 2) * amountReserve * (0.004 * 1e3)) / 1e39;
        uint256 reduction = (amountRedeem * 1e18) / baseValue;
        redeemProgressCount = reduction > redeemProgressCount ? 0 : redeemProgressCount - reduction;

        lastExecutedRedeem = block.timestamp;

        emit Redeem(_msgSender(), currentPrice, amountBurnHYDT, price);
    }
}