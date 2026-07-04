// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

import {SafeERC20} from "./SafeERC20.sol";
import {OwnableDelayModule} from "./OwnableDelayModule.sol";
import {IUniswapOracleV3} from "./IUniswapV3.sol";
import {IERC20} from "./IERC20.sol";
import "./IATVAdapter.sol";
import {AggregatorV3Interface} from "./AggregatorV3Interface.sol";

interface IAFi{
    function sendProfitOrFeeToManager(
        address wallet,
        uint profitShare,
        address oToken
    ) external;
}

interface IAFiStorage{
    function getAFiOracle() external view returns(address);
    function getPriceInUSDC(
        address tok
    ) external view returns (uint256, uint256);
    /**
    * @notice Returns the team wallet details.
    * @param aFiContract Address of the AFi contract.
    * @param _wallet Wallet address
    * @return isPresent Boolean indicating the present status of the wallet.
    * @return isActive Boolean indicating whether to set the wallet to either active/inactive.
    */
    function getTeamWalletDetails(
        address aFiContract,
        address _wallet
    ) external view returns (bool isPresent, bool isActive);

    function getPriceInUSD(
        address tok
    ) external view returns (uint256, uint256);
}



/*//////////////////////////////////////////////////////////////
                        GENERIC MULTICALL TYPES
//////////////////////////////////////////////////////////////*/

/// @notice Struct containing all the data needed to make a call.
struct Call {
    address to;
    bytes data;
    uint256 value;
    bool skipRevert;
    /// @dev If nonzero, the bundler expects exactly one reenter()
    ///      from `to` with msg.data[4:] hashing to this value.
    bytes32 callbackHash;
}

/// @title Leverage Bundler Interface
interface ILeverageBundler {
    function multicall(Call[] calldata) external payable;
    function reenter(Call[] calldata) external payable;
    function reenterHash() external view returns (bytes32);
    function initiator() external view returns (address);
}

/*//////////////////////////////////////////////////////////////
                           MORPHO BLUE
//////////////////////////////////////////////////////////////*/

interface IMorphoBlue {
    struct MarketParams {
        address loanToken;
        address collateralToken;
        address oracle;
        address irm;
        uint256 lltv;
    }

    struct Market {
        uint128 totalSupplyAssets;
        uint128 totalSupplyShares;
        uint128 totalBorrowAssets;
        uint128 totalBorrowShares;
        uint128 lastUpdate;
        uint128 fee;
    }

    struct Position {
        uint256 supplyShares;
        uint128 borrowShares;
        uint128 collateral;
    }

    function supplyCollateral(
        MarketParams memory marketParams,
        uint256 assets,
        address onBehalf,
        bytes calldata data
    ) external;

    function borrow(
        MarketParams memory marketParams,
        uint256 assets,
        uint256 shares,
        address onBehalf,
        address receiver
    ) external returns (uint256 assetsBorrowed, uint256 sharesBorrowed);

    function repay(
        MarketParams memory marketParams,
        uint256 assets,
        uint256 shares,
        address onBehalf,
        bytes calldata data
    ) external returns (uint256 assetsRepaid, uint256 sharesRepaid);

    function withdrawCollateral(
        MarketParams memory marketParams,
        uint256 assets,
        address onBehalf,
        address receiver
    ) external;

    function position(bytes32 id, address user) external view returns (Position memory);
    function market(bytes32 id) external view returns (Market memory);
}

/*//////////////////////////////////////////////////////////////
                           ATV BASE (MINIMAL)
//////////////////////////////////////////////////////////////*/

/// @dev Minimal interface for AtvBase invoke + owner ops used by helpers.
interface IAtvBase {
    function invoke(address target, uint256 value, bytes calldata data) external payable returns (bytes memory);
    function getcSwapCounter() external view returns(uint256);
}

interface IAtvStorage {
    function getPreSwapDepositsTokens(
        address aFiContract,
        uint256 _cSwapCounter,
        address stableToken
    ) external view returns (uint256);
}

interface IOracle {
    function price() external view returns (uint256);
}

/*//////////////////////////////////////////////////////////////
           MORPHO BLUE INTEGRATION (WITH BUNDLER SUPPORT)
//////////////////////////////////////////////////////////////*/

contract AtvMorphoBlueIntegration is OwnableDelayModule{
    using SafeERC20 for IERC20;

    uint256 constant WAD = 1e18;
    uint256 constant VIRTUAL_SHARES = 1e6;
    uint256 constant VIRTUAL_ASSETS = 1;
    uint256 constant ORACLE_PRICE_SCALE = 1e36;
    mapping(address => uint256) public interestBuffer; // 2 = .02%
    address constant MORPHO_BLUE = 0xBBBBBbbBBb9cC5e90e3b3Af64bdAF62C37EEFFCb;
    uint256 public minHealthFactor = 1.05e18;

    address public atvStorage;
    address public atvAdapter;

    IMorphoBlue public immutable morpho;
    ILeverageBundler public bundler;

    mapping(address => address) public baseFeed1;
    mapping(address => address) public quoteFeed1;
    mapping(address => uint256) public baseFeed1Heartbeat;
    mapping(address => uint256) public quoteFeed1Heartbeat;

    struct LeveragePosition {
        address vault;
        address underlyingToken;
        address loanToken;
        address collateralToken;
        uint256 collateralSupplied;
        uint256 amountBorrowed;
        uint256 borrowShares;
        bytes32 marketId;
        uint256 leverageRatio; // 1e4 = x100.00%
        bool isActive;
    }

    mapping(address => mapping( bytes32 => LeveragePosition)) public positions;
    mapping(address => bytes32[]) private vaultMarketIds;
    mapping(bytes32 => IMorphoBlue.MarketParams) public marketRegistry;
    mapping(address => bool) public emergencyPartialDel;
    mapping(address => bool) public authorizedCallers;
    mapping(address => mapping(address => uint256)) public profitShareTracker;


    modifier onlyAuthorized() {
        require(authorizedCallers[msg.sender], "AtvMorphoBlueIntegration: Not authorized");
        _;
    }

    event LeveragePositionOpened(
        address indexed vault,
        address underlyingToken,
        address indexed loanToken,
        uint256 collateralAmount,
        uint256 borrowAmount,
        uint256 leverageRatio
    );
    event BundledOperationExecuted(address indexed vault, string operationType);
    event ProfitShareDistributed(address indexed aFiContract, address indexed teamWallet, uint256 amount);
    event EmergencyWithdraw(address indexed token, address indexed wallet, uint256 amount);
    event UpdateInterestBuffer(address indexed _vault, uint256 oldBuffer, uint256 newBuffer);
    event BaseFeed1Updated(address _vault, address indexed feed, uint256 heartbeat);
    event QuoteFeed1Updated(address _vault, address indexed feed, uint256 heartbeat);
    event AllFeedsUpdated(
        address _vault, 
        address baseFeed1,
        address quoteFeed1,
        uint256 baseFeed1Heartbeat,
        uint256 quoteFeed1Heartbeat
    );
    event EmergencyPartialDelSet(address indexed vault, bool callEmergencypartial);
    event MinHealthFactorUpdated(uint256 oldValue, uint256 newValue);

    constructor(address _atvStorage) {
        require(_atvStorage != address(0), "Zero address");
        morpho = IMorphoBlue(MORPHO_BLUE);
        atvStorage = _atvStorage;
    }

    function setStorage(address _atvStorage) external onlyOwner {
        require(_atvStorage != address(0), "Zero address");
        atvStorage = _atvStorage;
    }

    function setBundler(address _bundler) external onlyOwner {
        bundler = ILeverageBundler(_bundler);
    }

    function setAuthorizedCaller(address caller, bool authorized) external onlyOwner {
        authorizedCallers[caller] = authorized;
    }

    function updateATvAdapter(address _atvAdapter) external onlyOwner {
        require(_atvAdapter != address(0), "ATVMB : Zero address");
        atvAdapter = _atvAdapter;
    }

    function getVaultMarkets(address vault) external view returns (bytes32[] memory) {
        return vaultMarketIds[vault];
    }

    function openLeveragePositionBundled(
        address atvBaseContract,
        address uToken,
        address collateralToken,
        address loanToken,
        uint256 collateralAmount,
        uint256 borrowAmount,
        IMorphoBlue.MarketParams memory marketParams
    ) external onlyAuthorized returns (uint256 assetsBorrowed) {
        require(address(bundler) != address(0), "Bundler not set");
        bytes32 marketId = keccak256(abi.encode(marketParams));

        require(collateralAmount > 0 && borrowAmount > 0, "Invalid amounts");

        Call[] memory bundle = new Call[](3) ; // max 3 ops 
        uint256 j;
        bundle[j++] = _buildApproveCall(atvBaseContract, collateralToken, collateralAmount);
        bundle[j++] = _buildSupplyCall(atvBaseContract, marketParams, collateralAmount);
        bundle[j++] = _buildBorrowCall(atvBaseContract, marketParams, borrowAmount);

        bundler.multicall(bundle);

        uint256 leverageRatio = ((collateralAmount + borrowAmount) * 10000) / collateralAmount;
        IMorphoBlue.Position memory mp = morpho.position(marketId, atvBaseContract);
        if(positions[atvBaseContract][marketId].isActive){
            positions[atvBaseContract][marketId].collateralSupplied += collateralAmount;
            positions[atvBaseContract][marketId].amountBorrowed += borrowAmount;
            positions[atvBaseContract][marketId].borrowShares = mp.borrowShares;
        }else {
            positions[atvBaseContract][marketId] = LeveragePosition({
                vault: atvBaseContract,
                underlyingToken: uToken,
                loanToken: loanToken,
                collateralToken: collateralToken,
                collateralSupplied: collateralAmount,
                amountBorrowed: borrowAmount,
                borrowShares: mp.borrowShares,
                marketId: marketId,
                leverageRatio: leverageRatio,
                isActive: true
            });
        }

        // track marketId for vault
        vaultMarketIds[atvBaseContract].push(marketId);

        marketRegistry[marketId] = marketParams;
        emit LeveragePositionOpened(atvBaseContract, uToken, loanToken, collateralAmount, borrowAmount, leverageRatio);
        emit BundledOperationExecuted(atvBaseContract, "openLeverage");
        return borrowAmount;
    }

    function _buildApproveCall(
        address atvBaseContract,
        address token,
        uint256 amount
    ) internal pure returns (Call memory) {
        bytes memory data = abi.encodeWithSelector(
            IAtvBase.invoke.selector,
            token,
            0,
            abi.encodeWithSelector(IERC20.approve.selector, MORPHO_BLUE, amount)
        );

        return Call({
            to: atvBaseContract,
            data: data,
            value: 0,
            skipRevert: false,
            callbackHash: bytes32(0)
        });
    }

    function _buildSupplyCall(
        address atvBaseContract,
        IMorphoBlue.MarketParams memory marketParams,
        uint256 amount
    ) internal pure returns (Call memory) {
        bytes memory data = abi.encodeWithSelector(
            IAtvBase.invoke.selector,
            MORPHO_BLUE,
            0,
            abi.encodeWithSelector(
                IMorphoBlue.supplyCollateral.selector,
                marketParams,
                amount,
                atvBaseContract,
                ""
            )
        );

        return Call({
            to: atvBaseContract,
            data: data,
            value: 0,
            skipRevert: false,
            callbackHash: bytes32(0)
        });
    }

    function _buildBorrowCall(
        address atvBaseContract,
        IMorphoBlue.MarketParams memory marketParams,
        uint256 borrowAmount
    ) internal pure returns (Call memory) {
        bytes memory data = abi.encodeWithSelector(
            IAtvBase.invoke.selector,
            MORPHO_BLUE,
            0,
            abi.encodeWithSelector(
                IMorphoBlue.borrow.selector,
                marketParams,
                borrowAmount,
                0,
                atvBaseContract,
                atvBaseContract
            )
        );

        return Call({
            to: atvBaseContract,
            data: data,
            value: 0,
            skipRevert: false,
            callbackHash: bytes32(0)
        });
    }

    function partialDeleverageBundled(
        address atvBaseContract,
        uint256 repayAmount,
        bytes32 marketId
    ) public onlyAuthorized returns (uint256 assetsRepaid) {
        require(address(bundler) != address(0), "Bundler not set");
        LeveragePosition storage p = positions[atvBaseContract][marketId];
        require(p.isActive, "No position");
        require(repayAmount > 0, "Invalid repay");
        IMorphoBlue.MarketParams memory marketParams = marketRegistry[p.marketId];
        p.amountBorrowed = calculateMaxDebt(
            atvBaseContract,
            marketId
        );
        Call[] memory bundle = new Call[](3);

        // approve repay
        bundle[0] = Call({
            to: atvBaseContract,
            data: abi.encodeWithSelector(
                IAtvBase.invoke.selector,
                p.loanToken,
                0,
                abi.encodeWithSelector(IERC20.approve.selector, MORPHO_BLUE, repayAmount)
            ),
            value: 0,
            skipRevert: false,
            callbackHash: bytes32(0)
        });

        // repay by assets
        bundle[1] = Call({
            to: atvBaseContract,
            data: abi.encodeWithSelector(
                IAtvBase.invoke.selector,
                MORPHO_BLUE,
                0,
                abi.encodeWithSelector(
                    IMorphoBlue.repay.selector,
                    marketParams,
                    repayAmount,
                    0,
                    atvBaseContract,
                    ""
                )
            ),
            value: 0,
            skipRevert: false,
            callbackHash: bytes32(0)
        });

        bundler.multicall(bundle);        
        p.amountBorrowed -= repayAmount;
        emit BundledOperationExecuted(atvBaseContract, "partialDeleverage");
        return repayAmount;
    }

    function calculateMaxDebt(address vault, bytes32 marketId) internal view returns(uint256) {
        IMorphoBlue.Position memory mp = morpho.position(marketId, vault);
        return _calculateExactDebtWithInterest(
            vault,
            marketId,
            mp.borrowShares
        );
    }

    function withdrawCollateralBundled(
        address atvBaseContract,
        uint256 collateralToWithdraw, 
        bytes32 marketId
    ) public onlyAuthorized returns (uint256 collateralWithdrawn) {
        require(address(bundler) != address(0), "Bundler not set");
        LeveragePosition storage p = positions[atvBaseContract][marketId];
        require(p.isActive, "No position");
        require(collateralToWithdraw > 0 && collateralToWithdraw <= p.collateralSupplied, "Invalid amount");

        IMorphoBlue.MarketParams memory marketParams = marketRegistry[p.marketId];

        Call[] memory bundle = new Call[](3);
        bundle[0] = Call({
            to: atvBaseContract,
            data: abi.encodeWithSelector(
                IAtvBase.invoke.selector,
                MORPHO_BLUE,
                0,
                abi.encodeWithSelector(
                    IMorphoBlue.withdrawCollateral.selector,
                    marketParams,
                    collateralToWithdraw,
                    atvBaseContract,
                    atvBaseContract
                )
            ),
            value: 0,
            skipRevert: false,
            callbackHash: bytes32(0)
        });

        bundler.multicall(bundle);

        p.collateralSupplied -= collateralToWithdraw;
        emit BundledOperationExecuted(atvBaseContract, "withdrawCollateral");
        return collateralToWithdraw;
    }

    function closeLeveragePositionBundled(
        address atvBaseContract,
        bytes32 marketId
    ) external onlyAuthorized returns (uint256 collateralReturned, uint256 seedByPlatform) {
        require(address(bundler) != address(0), "Bundler not set");
        LeveragePosition storage p = positions[atvBaseContract][marketId];
        require(p.isActive, "No position");

        IMorphoBlue.MarketParams memory marketParams = marketRegistry[p.marketId];
        IMorphoBlue.Position memory mp = morpho.position(p.marketId, atvBaseContract);

        Call[] memory bundle = new Call[](3) ; // max 3 ops
        uint256 j;
        bool partialEntered;
        uint256 amountToPay;
        uint256 maxRepay;
        // Repay debt if exists
        if (mp.borrowShares > 0) {
            maxRepay = _calculateExactDebtWithInterest(
                atvBaseContract,
                p.marketId,
                mp.borrowShares
            );
            uint256 considerToRepay = (IERC20(p.loanToken).balanceOf(atvBaseContract) - getPreswapDep(atvBaseContract, p.loanToken));
            if(maxRepay > considerToRepay){
                if(!emergencyPartialDel[atvBaseContract]){
                    seedByPlatform = (maxRepay - considerToRepay);
                    IERC20(p.loanToken).transfer(atvBaseContract, seedByPlatform);
                    bundle[j++] = _buildApproveCall(atvBaseContract, p.loanToken, maxRepay);
                    bundle[j++] = _buildRepayCall(atvBaseContract, marketParams, mp.borrowShares);
                }else {
                    partialEntered = true;
                    amountToPay = considerToRepay;
                }
            }else {
                bundle[j++] = _buildApproveCall(atvBaseContract, p.loanToken, maxRepay);
                bundle[j++] = _buildRepayCall(atvBaseContract, marketParams, mp.borrowShares);
            }
        }

        // Withdraw collateral if exists
        if (mp.collateral > 0) {
            if(!partialEntered){
                bundle[j++] = _buildWithdrawCall(atvBaseContract, marketParams, mp.collateral);
                collateralReturned = mp.collateral;
            }
        }

        if(!partialEntered) {

            // Shrink bundle to actual size
            Call[] memory finalBundle = new Call[](j);
            for (uint256 i = 0; i < j; i++) {
                finalBundle[i] = bundle[i];
            }

            bundler.multicall(finalBundle);

            delete positions[atvBaseContract][marketId];
            positions[atvBaseContract][marketId].collateralSupplied = 0;
            positions[atvBaseContract][marketId].amountBorrowed = 0;

            // Check all the increamental variable that are used in other parts 
            // remove marketId from vaultMarketIds
            bytes32[] storage arr = vaultMarketIds[atvBaseContract];
            for (uint256 i = 0; i < arr.length; i++) {
                if (arr[i] == marketId) {
                    arr[i] = arr[arr.length - 1];
                    arr.pop();
                    break;
                }
            }
        }else {
            uint256 repaid = partialDeleverageBundled(
                atvBaseContract,
                amountToPay,
                marketId
            );

            uint256 collateralToWithdraw = (p.collateralSupplied * repaid) / maxRepay;
            collateralReturned = withdrawCollateralBundled(
                atvBaseContract,
                collateralToWithdraw,
                marketId
            );
        }
        emit BundledOperationExecuted(atvBaseContract, "closeLeverage");
    }

    function getPreswapDep(address _vault, address tok) internal view returns(uint256) {
        uint256 csCounter = IAtvBase(_vault).getcSwapCounter();
        return IAtvStorage(atvStorage).getPreSwapDepositsTokens(_vault, csCounter, tok);
    }

    function setEmergencyPartialDel(address vault, bool callEmergencypartial) external {
        checkCsController(vault);
        emergencyPartialDel[vault] = callEmergencypartial;
        emit EmergencyPartialDelSet(vault, callEmergencypartial);
    }

    function _buildRepayCall(
        address atvBaseContract,
        IMorphoBlue.MarketParams memory marketParams,
        uint256 borrowShares
    ) internal pure returns (Call memory) {
        bytes memory data = abi.encodeWithSelector(
            IAtvBase.invoke.selector,
            MORPHO_BLUE,
            0,
            abi.encodeWithSelector(
                IMorphoBlue.repay.selector,
                marketParams,
                0,
                borrowShares,
                atvBaseContract,
                ""
            )
        );

        return Call({
            to: atvBaseContract,
            data: data,
            value: 0,
            skipRevert: false,
            callbackHash: bytes32(0)
        });
    }

    function _buildWithdrawCall(
        address atvBaseContract,
        IMorphoBlue.MarketParams memory marketParams,
        uint256 collateralAmount
    ) internal pure returns (Call memory) {
        bytes memory data = abi.encodeWithSelector(
            IAtvBase.invoke.selector,
            MORPHO_BLUE,
            0,
            abi.encodeWithSelector(
                IMorphoBlue.withdrawCollateral.selector,
                marketParams,
                collateralAmount,
                atvBaseContract,
                atvBaseContract
            )
        );

        return Call({
            to: atvBaseContract,
            data: data,
            value: 0,
            skipRevert: false,
            callbackHash: bytes32(0)
        });
    }

    function _calculateExactDebtWithInterest(
        address vault,
        bytes32 marketId,
        uint256 borrowShares
    ) public view returns (uint256) {
        IMorphoBlue.Market memory m = morpho.market(marketId);
        // Calculate the base debt amount
        uint256 baseDebt = mulDivUp(borrowShares, m.totalBorrowAssets + VIRTUAL_ASSETS, m.totalBorrowShares + VIRTUAL_SHARES);
        // Calculate 0.01% interest (1 basis point)
        // Using 10000 as denominator for basis points (0.01% = 1/10000)
        uint256 interestAmount = (baseDebt * interestBuffer[vault]) / 10000;
        return baseDebt + interestAmount;
    }

    function updateInterestBuffer(address _vault, uint256 _interestBuffer) external {
        checkCsController(_vault);
        uint256 oldBuffer = interestBuffer[_vault];
        interestBuffer[_vault] = _interestBuffer;
        emit UpdateInterestBuffer(_vault, oldBuffer, _interestBuffer);
    }

    function mulDivUp(uint256 x, uint256 y, uint256 z) internal pure returns (uint256) {
        return (x * y + z - 1) / z;
    }

    function getPosition(address vault, bytes32 marketId) external view returns (LeveragePosition memory) {
        return positions[vault][marketId];
    }

    /**
     * @notice Calculate the health factor of a position
     * @param vault The vault's address
     * @return healthFactor The health factor (scaled by WAD)
     */
    function calculateHealthFactor(
        address vault,
        uint256 oraclePrice,
        bytes32 marketId
    ) external view returns (uint256) {
        LeveragePosition memory position = positions[vault][marketId];
        if (!position.isActive) return type(uint256).max;
        
        IMorphoBlue.MarketParams memory marketParams = marketRegistry[position.marketId];
        
        // Get collateral value in loan token units
        uint256 collateralValueInLoanToken = (position.collateralSupplied * oraclePrice) / ORACLE_PRICE_SCALE;
        return calculateHealthFactor(collateralValueInLoanToken, marketParams.lltv, position.amountBorrowed);
    }

    function calculateHealthFactor(uint256 collAmountInLoanToken, uint256 lltv, uint256 borrowAmount) internal view returns(uint256) {
        // Health Factor = (Collateral Value * LLTV) / Borrowed Amount
        uint256 healthFactor = (collAmountInLoanToken * lltv) / borrowAmount;
        return healthFactor;
    }

    function healthFactorcheck(address vault, address ctoken, address lToken, address oracle, uint256 collateralamount, uint256 borrowAmount, uint256 lltv) external view returns (uint256){
        uint256 oraclePrice = IOracle(oracle).price();
        require(oraclePrice > 0, "Invalid oracle price");
        uint256 cDec = IERC20(ctoken).decimals();
        uint256 lDec = IERC20(lToken).decimals();

        // Get collateral value in loan token units
        uint256 collateralValueInLoanToken = (collateralamount * oraclePrice) / (10 **(36 + lDec - cDec));
        uint256 healthFactor = calculateHealthFactor(collateralValueInLoanToken, lltv, borrowAmount);

        if (_isMorphoOracleStale(vault)) {
            healthFactor = 0;
        }
        require(healthFactor >= minHealthFactor, "HF too low");
        return healthFactor;
    }

    function calculateLTV(
        address vault,
        bytes32 marketId,
        uint256 oraclePrice
    ) external view returns (uint256 ltv) {
        LeveragePosition memory position = positions[vault][marketId];
        if (!position.isActive) return 0;
        
        // Get current debt including interest
        uint256 currentDebt = _calculateDebtFromShares(position.marketId, position.borrowShares);
        
        // Get collateral value in loan token units
        uint256 collateralValueInLoanToken = (position.collateralSupplied * oraclePrice) / ORACLE_PRICE_SCALE;
        
        if (collateralValueInLoanToken == 0) return 0;
        
        // LTV = Current Debt / Collateral Value
        ltv = (currentDebt * WAD) / collateralValueInLoanToken;
        
        return ltv;
    }

    /**
     * @notice Calculate debt from shares using Morpho's exact formula
     * @dev Uses virtual shares/assets to prevent rounding issues
     */
    function _calculateDebtFromShares(
        bytes32 marketId,
        uint256 borrowShares
    ) internal view returns (uint256 assets) {
        if (borrowShares == 0) return 0;
        
        IMorphoBlue.Market memory marketData = morpho.market(marketId);
        
        // Use Morpho's toAssetsUp formula with virtual shares/assets
        assets = mulDivUp(
            borrowShares,
            marketData.totalBorrowAssets + VIRTUAL_ASSETS,
            marketData.totalBorrowShares + VIRTUAL_SHARES
        );
        
        return assets;
    }

    function calculateTotalCollateralSupplied(
        address vault,
        bytes32 marketId
    ) external view returns (address uTok, uint256 cSupplied, address cToken, uint256 bAmount, address bToken) {
        LeveragePosition memory position = positions[vault][marketId];
        if (!position.isActive) return (uTok, 0, position.collateralToken, 0, position.loanToken);

        IMorphoBlue.Position memory mp = morpho.position(marketId, vault);
        uint256 maxRepay;
        // Repay debt if exists
        if (mp.borrowShares > 0) {
            maxRepay = _calculateExactDebtWithInterest(
                vault,
                marketId,
                mp.borrowShares
            );
        }
        return (position.underlyingToken, position.collateralSupplied, position.collateralToken, maxRepay, position.loanToken);
    }

    function getMarketId(IMorphoBlue.MarketParams memory marketParams) external pure returns(bytes32 marketId) {
       return keccak256(abi.encode(marketParams));
    }

    function getAFiOracle() internal view returns(address){
        return IAFiStorage(atvStorage).getAFiOracle();
    }

    function checkCsController(address afiContract) internal view {
        (address csController, ) = IUniswapOracleV3(getAFiOracle()).getControllers(afiContract);
        require(csController == msg.sender, "MorphoBlue: wrong caller");
    }

    // ============= PROFIT DISTRIBUTION =============
    function distributeProfitShare(address aFiContract, uint256 share, address oToken, uint256 depositNAV, uint256 redemptionNAV) external onlyAuthorized returns (uint256 totalProfitShare) {
        (uint256 price, uint256 multiplier) = IAFiStorage(atvStorage).getPriceInUSD(oToken);
        
        if (price != 0) {
            uint256 decimals = 18 - IERC20(oToken).decimals();
            uint256 profitShare = ((redemptionNAV - depositNAV) * share * (10 ** multiplier)) / 
                (price * (10 ** decimals) * 10000);
            totalProfitShare = _profitDistribution(aFiContract, profitShare, oToken);
        }
    }

    function _profitDistribution(address aFiContract, uint256 profitShare, address oToken) internal returns (uint256 totalProfitShare) {
        address[] memory teamWallets =  IATVAdapter(atvAdapter).getTeamWalletsOfAFi(aFiContract);
        uint256 totalProfit = IUniswapOracleV3(getAFiOracle()).getTotalProfit(aFiContract);
        uint256 daoProfit = IUniswapOracleV3(getAFiOracle()).getDaoProfit(aFiContract);
        uint256 totalActive =  IATVAdapter(atvAdapter).getTotalActiveWallets(aFiContract);
        
        uint256 teamProfitShare;
        if (totalActive > 1) {
            teamProfitShare = (profitShare * (totalProfit - daoProfit)) / ((totalActive - 1) * 100);
        }
        
        for (uint i = 0; i < teamWallets.length; i++) {
            (bool isActive, ) = IATVAdapter(atvAdapter).getTeamWalletDetails(aFiContract, teamWallets[i]);
            
            if (isActive) {
                uint256 currentShare = (i == 0) ? 
                    (profitShare * daoProfit) / 100 : 
                    teamProfitShare;
                
                totalProfitShare += currentShare;
                profitShareTracker[aFiContract][teamWallets[i]] += currentShare;
                
                IAFi(aFiContract).sendProfitOrFeeToManager(teamWallets[i], currentShare, oToken);
                emit ProfitShareDistributed(aFiContract, teamWallets[i], currentShare);
            }
        }
    }

    function emergencyWithdraw(address token, address wallet, uint256 amount) external onlyOwner{
        require(wallet != address(0), "invalid wallet");
        IERC20(token).safeTransfer(wallet, amount);
        emit EmergencyWithdraw(token, wallet, amount);
    }

    function _isMorphoOracleStale(address vault) internal view returns (bool) {
        uint256 currentTime = block.timestamp;
        bool anyFeedSet = false;

        address baseFeed = baseFeed1[vault];
        address quoteFeed = quoteFeed1[vault];

        uint256 baseHeartbeat = baseFeed1Heartbeat[baseFeed];
        uint256 quoteHeartbeat = quoteFeed1Heartbeat[quoteFeed];

        // --- Base feed check ---
        if (baseFeed != address(0)) {
            anyFeedSet = true;
            (, , , uint256 updatedAt, ) = AggregatorV3Interface(baseFeed).latestRoundData();
            if (currentTime - updatedAt > baseHeartbeat) return true;
        }

        // --- Quote feed check ---
        if (quoteFeed != address(0)) {
            anyFeedSet = true;
            (, , , uint256 updatedAt, ) = AggregatorV3Interface(quoteFeed).latestRoundData();
            if (currentTime - updatedAt > quoteHeartbeat) return true;
        }

        // --- No feeds configured ---
        if (!anyFeedSet) return true;

        return false; // all fresh
    }

    // ------------------------------
    // Setter functions (onlyOwner)
    // ------------------------------
    function setBaseFeed1(address _vault, address _feed, uint256 _heartbeat) external onlyOwner {
        baseFeed1[_vault] = _feed;
        baseFeed1Heartbeat[_feed] = _heartbeat;
        emit BaseFeed1Updated(_vault, _feed, _heartbeat);
    }

    function setQuoteFeed1(address _vault, address _feed, uint256 _heartbeat) external onlyOwner {
        quoteFeed1[_vault] = _feed;
        quoteFeed1Heartbeat[_feed] = _heartbeat;
        emit QuoteFeed1Updated(_vault, _feed, _heartbeat);
    }

    /**
    * @notice Updates the minimum health factor requirement for leverage positions
    * @dev Health factor is scaled by 1e18. 1.05e18 means 1.05 (5% safety margin above liquidation)
    *      Existing positions are not affected - only new operations use the updated value
    * @param _minHealthFactor New minimum health factor (must be greater or equal to 1.05)
    */
    function setMinHealthFactor(uint256 _minHealthFactor) external onlyOwner {
        require(_minHealthFactor >= 1.05e18, "Health factor too low");
        
        uint256 oldValue = minHealthFactor;
        minHealthFactor = _minHealthFactor;
        
        emit MinHealthFactorUpdated(oldValue, _minHealthFactor);
    }

    function setAllFeeds(
        address _vault, 
        address _baseFeed1,
        address _quoteFeed1,
        uint256 _baseFeed1Heartbeat,
        uint256 _quoteFeed1Heartbeat
    ) external onlyOwner {
        baseFeed1[_vault] = _baseFeed1;
        quoteFeed1[_vault] = _quoteFeed1;

        baseFeed1Heartbeat[_baseFeed1] = _baseFeed1Heartbeat;
        quoteFeed1Heartbeat[_quoteFeed1] = _quoteFeed1Heartbeat;

        emit AllFeedsUpdated(
            _vault,
            _baseFeed1,
            _quoteFeed1,
            _baseFeed1Heartbeat,
            _quoteFeed1Heartbeat
        );
    }
}
