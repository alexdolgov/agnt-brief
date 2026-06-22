// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/math/MathUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";

interface IWETH {
    function deposit() external payable;
    function withdraw(uint256) external;
    function decimals() external view returns (uint8);
}

interface ILending {
    function getUtilizationRate() external view returns (uint256);
}

interface ISwapRouter {
    struct ExactInputSingleParams {
        address tokenIn;
        address tokenOut;
        uint24 fee;
        address recipient;
        uint deadline;
        uint amountIn;
        uint amountOutMinimum;
        uint160 sqrtPriceLimitX96;
    }

    /// @notice Swaps amountIn of one token for as much as possible of another token
    /// @param params The parameters necessary for the swap, encoded as ExactInputSingleParams in calldata
    /// @return amountOut The amount of the received token
    function exactInputSingle(
        ExactInputSingleParams calldata params
    ) external payable returns (uint amountOut);

    struct ExactInputParams {
        bytes path;
        address recipient;
        uint deadline;
        uint amountIn;
        uint amountOutMinimum;
    }

    /// @notice Swaps amountIn of one token for as much as possible of another along the specified path
    /// @param params The parameters necessary for the multi-hop swap, encoded as ExactInputParams in calldata
    /// @return amountOut The amount of the received token
    function exactInput(
        ExactInputParams calldata params
    ) external payable returns (uint amountOut);
}

interface AggregatorV3Interface {
    function decimals() external view returns (uint8);

    function description() external view returns (string memory);

    function version() external view returns (uint256);

    function getRoundData(
        uint80 _roundId
    ) external view returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);

    function latestRoundData()
        external
        view
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
}

contract VaultkaHandler is OwnableUpgradeable, ReentrancyGuardUpgradeable, PausableUpgradeable {
    using SafeERC20Upgradeable for IERC20Upgradeable;
    using MathUpgradeable for uint256;
    using MathUpgradeable for uint128;

    address public keeper;

    struct InterestRateConfig {
        uint256 CEIL_SLOPE_1;
        uint256 CEIL_SLOPE_2;
        uint256 MAX_INTEREST_SLOPE_1;
        uint256 MAX_INTEREST_SLOPE_2;
        uint256 baseInterestRate;
    }

    struct RateSnapshot {
        uint256 rate;
        uint256 timestamp;
        uint256 snapshotID;
        uint256 closeTimestamp;
    }

    InterestRateConfig public interestRateConfig;

    mapping(address => bool) public allowedVaults;
    mapping(address => mapping(uint256 => RateSnapshot)) public rateSnapshots;
    mapping(address => uint256) public vaultCurrentSnapshotID;
    
    uint256[50] private __gaps;

    mapping(address => InterestRateConfig) public vaultInterestRateConfig;
    address public Univ3Router;
    mapping(address => mapping(address => uint24)) public uniswapFeesForAssets;
    mapping(address => bool) public hasDecimals;
    uint256 public uniswapSlippage;
    mapping(address => address) public chainlinkOracle;

    event RequestFulfilled(address indexed user, uint256 openAmount, uint256 closedAmount);
    event InterestParamsChanged(address _vault, uint256 ceilSlope1, uint256 ceilSlope2, uint256 maxInterestSlope1, uint256 maxInterestSlope2, uint256 baseInterestRate);
    event SnapshotTaken(uint256 rate, uint256 timestamp, address indexed vault, uint256 snapshotID);
    event SetKeeper(address indexed keeper);
    event SetAllowedVault(address indexed vault, bool allowed);
    event SetUniv3Router(address indexed router);
    event SetUniswapFeesForAssets(uint24 fee, address asset1, address asset2);
    event SetHasDecimals(address indexed asset, bool hasDecimals);
    event SetUniswapSlippage(uint256 slippage);
    event SetChainlinkOracle(address indexed asset, address oracle);

    modifier onlyKeeper() {
        require(msg.sender == keeper, "Only Keeper");
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize() external initializer {

        interestRateConfig.baseInterestRate = 0;
        interestRateConfig.CEIL_SLOPE_1 = 8e17;
        interestRateConfig.CEIL_SLOPE_2 = 1e18;
        interestRateConfig.MAX_INTEREST_SLOPE_1 = 56e16;
        interestRateConfig.MAX_INTEREST_SLOPE_2 = 728e15;

        __Ownable_init();
        __Pausable_init();
        __ReentrancyGuard_init();
    }

    // -- Setters --//

    function setChainlinkOracle(address _asset, address _oracle) external onlyOwner {
        require(_oracle != address(0), "Zero address");
        chainlinkOracle[_asset] = _oracle;
        emit SetChainlinkOracle(_asset, _oracle);
    }

    function setUniswapSlippage(uint256 _slippage) external onlyOwner {
        uniswapSlippage = _slippage;
        emit SetUniswapSlippage(_slippage);
    }

    function setHasDecimals(address _asset, bool _hasDecimals) external onlyOwner {
        hasDecimals[_asset] = _hasDecimals;
        emit SetHasDecimals(_asset, _hasDecimals);
    }

    function setUniv3Router(address _router) external onlyOwner {
        require(_router != address(0), "Zero address");
        Univ3Router = _router;
        emit SetUniv3Router(_router);
    }

    function setUniswapFeesForAssets(uint24 _fee, address _asset1, address _asset2) external onlyOwner {
        uniswapFeesForAssets[_asset1][_asset2] = _fee;
        uniswapFeesForAssets[_asset2][_asset1] = _fee;
        emit SetUniswapFeesForAssets(_fee, _asset1, _asset2);
    }

    function setVaultInterestRateConfig(
        address _vault,
        uint256 _ceilSlope1,
        uint256 _ceilSlope2,
        uint256 _maxInterestSlope1,
        uint256 _maxInterestSlope2,
        uint256 _baseInterestRate
    ) external onlyOwner {
        require(_ceilSlope1 < _ceilSlope2, "Invalid ceilSlope1 and ceilSlope2");
        require(_maxInterestSlope1 < _maxInterestSlope2, "Invalid maxInterestSlope1 and maxInterestSlope2");
        vaultInterestRateConfig[_vault].CEIL_SLOPE_1 = _ceilSlope1;
        vaultInterestRateConfig[_vault].CEIL_SLOPE_2 = _ceilSlope2;
        vaultInterestRateConfig[_vault].MAX_INTEREST_SLOPE_1 = _maxInterestSlope1;
        vaultInterestRateConfig[_vault].MAX_INTEREST_SLOPE_2 = _maxInterestSlope2;
        vaultInterestRateConfig[_vault].baseInterestRate = _baseInterestRate;
        emit InterestParamsChanged(_vault, _ceilSlope1, _ceilSlope2, _maxInterestSlope1, _maxInterestSlope2, _baseInterestRate);
    }

    function setKeeper(address _keeper) public onlyOwner {
        require(_keeper != address(0), "Zero address");
        keeper = _keeper;
        emit SetKeeper(_keeper);
    }

    function setAllowedVault(address _vault, bool _allowed) external onlyOwner {
        require(_vault != address(0), "Vault address cannot be 0");
        allowedVaults[_vault] = _allowed;
        emit SetAllowedVault(_vault, _allowed);
    }

    function takeInterestsSnapshot(address[] memory _strategies, address[] memory _vaultkaVault) public onlyKeeper {
        require(_strategies.length == _vaultkaVault.length, "Invalid input");
        uint256 allVaultsLen = _strategies.length;
        for (uint256 i = 0; i < allVaultsLen; i++) {
            require(allowedVaults[_strategies[i]], 'Not an allowed vault');
            require(allowedVaults[_vaultkaVault[i]], 'Not an allowed vault');
            address strat = _strategies[i];
            vaultCurrentSnapshotID[strat]++;
            RateSnapshot storage rs = rateSnapshots[strat][vaultCurrentSnapshotID[strat]];
            uint256 interestRate = getInterestRate(_vaultkaVault[i], strat);
            rs.rate = interestRate;
            rs.snapshotID = vaultCurrentSnapshotID[strat];
            rs.timestamp = block.timestamp;
            emit SnapshotTaken(interestRate, block.timestamp, strat, vaultCurrentSnapshotID[strat]);
        }
    }

    // -- Public view functions -- //
    function getLatestData(address _token) public view returns (uint256) {
        (, /* uint80 roundID */ int answer /*uint startedAt*/ /*uint timeStamp*/ /*uint80 answeredInRound*/, , , ) = AggregatorV3Interface(
            chainlinkOracle[_token]
        ).latestRoundData(); //in 1e8

        uint256 decimals = AggregatorV3Interface(chainlinkOracle[_token]).decimals();
        if(decimals != 18) {
            return uint256(answer) * 10**(18 - decimals);
        } else {
            return uint256(answer);
        }
    }

    function getPositionWithInterestRate(
        address _user,
        uint256 _positionID,
        address _VaultkaVault,
        address _lendingVault,
        uint256 _openTimestamp,
        uint256 _leverageAmount,
        uint256 _snapShotID) public view returns (uint256,uint256) {
        require(allowedVaults[_VaultkaVault], 'Not an allowed vault');

        uint256 timestamp = _openTimestamp;
        address positionLendingVault = _lendingVault;
        uint256 positionAmount = _leverageAmount;
        uint256 positionEnteredSnapshot = _snapShotID;
        uint256 currentSnapshot = vaultCurrentSnapshotID[positionLendingVault];

        uint256 accruedInterests;
        for (uint256 i = positionEnteredSnapshot; i <= currentSnapshot; i++) {
            
            RateSnapshot memory rs = rateSnapshots[positionLendingVault][i];
            RateSnapshot memory rsAdd = rateSnapshots[positionLendingVault][i+1];

            uint256 interests = rs.rate;
            if (i != currentSnapshot){
                uint256 timeElapsed;
                if(i == positionEnteredSnapshot){
                    timeElapsed = rsAdd.timestamp - timestamp;
                } else {
                    timeElapsed = rsAdd.timestamp - rs.timestamp;
                }

                accruedInterests += interests * timeElapsed / 365 days;
            } else {
                uint256 timeElapsed;
                if (i == positionEnteredSnapshot) {
                    timeElapsed = block.timestamp - timestamp;
                } else {
                    timeElapsed = block.timestamp - rs.timestamp;
                }
                accruedInterests += interests * timeElapsed / 365 days;
            }
        }

        uint256 posDebtValueWithInterests = positionAmount * (1e18 + accruedInterests) / 1e18;
        uint256 totalInterests = posDebtValueWithInterests - positionAmount;
        
        return (posDebtValueWithInterests, totalInterests);
    }

    function getInterestRate(address _lendingVault, address _strategy) public view returns (uint256) {
        require(allowedVaults[_strategy], "Not an allowed contract");
        require(allowedVaults[_lendingVault], "Not an allowed contract");
        uint256 utilRate = ILending(_lendingVault).getUtilizationRate();
        InterestRateConfig memory irc = vaultInterestRateConfig[_strategy];
        uint256 interestRatePercent;
        if (utilRate <= irc.CEIL_SLOPE_1) {
            interestRatePercent =  irc.baseInterestRate + (1e18 - (irc.CEIL_SLOPE_1 - utilRate)) * irc.MAX_INTEREST_SLOPE_1 /1e18;
        } else {
            interestRatePercent = (irc.baseInterestRate + irc.MAX_INTEREST_SLOPE_1 +
                ((utilRate - irc.CEIL_SLOPE_1) * (irc.MAX_INTEREST_SLOPE_2 - irc.MAX_INTEREST_SLOPE_1)) /
                (irc.CEIL_SLOPE_2 - irc.CEIL_SLOPE_1));
        }
        return interestRatePercent;
    }

    function getAnySlippagedAmountOut(address _assetFrom, address _to, uint256 _amount, bool _close) public view returns (uint256) {
        uint256 assetOutPrice;

        if (!_close) {
            assetOutPrice = getLatestData(_to);
        } else {
            assetOutPrice = getLatestData(_assetFrom);
        }
        
        uint256 pricedInAssetAmount;
        uint256 amountOutMin;
        if (assetOutPrice != 0) {
            if (!_close) {
                pricedInAssetAmount = _amount * 1e18 / assetOutPrice;
                amountOutMin = pricedInAssetAmount - (pricedInAssetAmount * uniswapSlippage / 1000);
            } else {
                pricedInAssetAmount = _amount * assetOutPrice / 1e18;
                amountOutMin = pricedInAssetAmount - (pricedInAssetAmount * uniswapSlippage / 1000);
            }
            
            //we assume a 6 decimal in our out to 18 decimal in or out
            if (hasDecimals[_to]) {
                amountOutMin = amountOutMin / (10 ** (18-IWETH(_to).decimals()));
            }

            if (hasDecimals[_assetFrom]) {
                amountOutMin = amountOutMin * (10 ** (18-IWETH(_assetFrom).decimals()));
            }
            
            return amountOutMin;
        } else {
            return 0;
        }
    }

    // -- Restricted functions -- //

    function uniswapExecution(
        uint256 _amount,
        address _assetFrom,
        address _assetTo,
        bool _isClose
    ) public returns (uint256) {
        require(allowedVaults[msg.sender], 'Not an allowed vault');
        IERC20Upgradeable(_assetFrom).approve(Univ3Router, _amount);

        uint256 amountOutMin = getAnySlippagedAmountOut(_assetFrom, _assetTo, _amount, _isClose);
        require(amountOutMin > 0, "Slippage too high");

        ISwapRouter.ExactInputSingleParams memory params = ISwapRouter
            .ExactInputSingleParams({
                tokenIn: _assetFrom,
                tokenOut: _assetTo,
                fee: uniswapFeesForAssets[_assetFrom][_assetTo],
                recipient: msg.sender,
                deadline: block.timestamp,
                amountIn: _amount,
                amountOutMinimum: amountOutMin,
                sqrtPriceLimitX96: 0
            });

        uint256 amountOut = ISwapRouter(Univ3Router).exactInputSingle(params);

        return amountOut;
    }

}