// SPDX-License-Identifier: -- WISE --

pragma solidity =0.8.25;

import "../InterfaceHub/IAave.sol";
import "../InterfaceHub/IPendle.sol";
import "../InterfaceHub/IAaveHub.sol";
import "../InterfaceHub/IWiseLending.sol";
import "../InterfaceHub/IWiseSecurity.sol";
import "../InterfaceHub/IPositionNFTs.sol";
import "../InterfaceHub/IWiseOracleHub.sol";
import "../InterfaceHub/IBalancerFlashloan.sol";
import "../InterfaceHub/IUniswapV3.sol";
import "../InterfaceHub/IUniswapV2Pool.sol";
import "../InterfaceHub/IUniswapV3PoolPowerFarm.sol";
import "../InterfaceHub/IUniswapFactory.sol";
import "../InterfaceHub/IOraclePendle.sol";
import "../TransferHub/WrapperHelper.sol";
import "../TransferHub/TransferHelper.sol";
import "../TransferHub/ApprovalHelper.sol";
import "../TransferHub/SendValueHelper.sol";

import "./GenericErrors.sol";

contract GenericDeclarations is
    WrapperHelper,
    TransferHelper,
    ApprovalHelper,
    SendValueHelper
{
    bool public isShutdown;
    bool public allowEnter;

    uint256 public collateralFactor;
    uint256 public minDepositEthAmount;

    uint256 internal MAX_PROPORTION = 96
        * PRECISION_FACTOR_E18
        / 100;

    address public FARM_ASSET;
    address public POOL_ASSET_AAVE;

    address public PENDLE_LIMIT_ROUTER_ADDRESS;

    address public immutable ENTRY_ASSET;
    address public immutable PENDLE_CHILD;

    IAave public immutable AAVE;
    IAaveHub public immutable AAVE_HUB;
    IWiseLending public immutable WISE_LENDING;
    IWiseOracleHub public immutable ORACLE_HUB;
    IWiseSecurity public immutable WISE_SECURITY;
    IBalancerVault public immutable BALANCER_VAULT;
    IPositionNFTs public immutable POSITION_NFT;
    IUniswapV3 public immutable UNISWAP_V3_ROUTER;
    IUniswapV2Pool public UNISWAP_V2_POOL;
    IUniswapV3PoolPowerFarm public UNISWAP_V3_POOL;
    IUniswapFactory public immutable UNISWAP_FACTORY;

    IPendleSy public immutable PENDLE_SY;
    IPendleRouter public PENDLE_ROUTER;
    IPendleMarket public immutable PENDLE_MARKET;
    IPendleRouterStatic public immutable PENDLE_ROUTER_STATIC;
    IOraclePendle public immutable PT_ORACLE_PENDLE;

    address internal immutable WETH_ADDRESS;
    address immutable AAVE_ADDRESS;
    address immutable AAVE_HUB_ADDRESS;
    address immutable AAVE_WETH_ADDRESS;

    address public collateralFactorRole;

    bool public ethBack;
    bool public specialDepegCase;
    bool public routingOngoing;

    struct FarmData {
        uint256 wiseLendingNFT;
        uint256 leverage;
        uint256 amount;
        uint256 amountAfterMintFee;
        uint256 timestamp;
    }

    mapping(uint256 => FarmData) public farmData; //keyId to FarmData
    mapping(uint256 => bool) public isAave; //nftId to bool
    mapping(address => bool) public whiteListedExternalContracts; // whiteList for external contracts to use routing for swaps

    event FarmEntry(
        uint256 indexed keyId,
        uint256 indexed wiseLendingNFT,
        uint256 indexed leverage,
        uint256 amount,
        uint256 amountAfterMintFee,
        uint256 timestamp
    );

    event FarmExit(
        uint256 indexed keyId,
        uint256 indexed wiseLendingNFT,
        uint256 amount,
        uint256 timestamp
    );

    event FarmStatus(
        bool indexed state,
        uint256 timestamp
    );

    event ManualPaybackShares(
        uint256 indexed keyId,
        uint256 indexed wiseLendingNFT,
        uint256 amount,
        uint256 timestamp
    );

    event ManualWithdrawShares(
        uint256 indexed keyId,
        uint256 indexed wiseLendingNFT,
        uint256 amount,
        uint256 timestamp
    );

    event MinDepositChange(
        uint256 minDepositEthAmount,
        uint256 timestamp
    );

    event ETHReceived(
        uint256 amount,
        address from
    );

    event RegistrationFarm(
        uint256 nftId,
        uint256 timestamp
    );

    uint256 internal constant ETH_CHAIN_ID = 1;
    uint256 internal constant ARB_CHAIN_ID = 42161;

    uint256 internal constant FIFTY_PERCENT = 50E16;
    uint256 internal constant PRECISION_FACTOR_E18 = 1E18;
    uint256 internal constant PRECISION_FACTOR_E16 = 1E16;
    uint256 internal constant PRECISION_FACTOR_E18_2X = 2E18;

    uint256 internal constant MAX_AMOUNT = type(uint256).max;
    uint256 internal constant MAX_LEVERAGE = 15 * PRECISION_FACTOR_E18;

    uint24 public constant UNISWAP_V3_FEE = 100;
    address internal constant BALANCER_ADDRESS = 0xBA12222222228d8Ba445958a75a0704d566BF2C8;
    address public constant UNISWAP_FACTORY_V2_ADDRESS = 0x5C69bEe701ef814a2B6a3EDD4B1652CB9cc5aA6f;

    uint256 ongoingFlashAmountV3;

    constructor(
        address _wiseLendingAddress,
        address _pendleChildTokenAddress,
        address _pendleRouter,
        address _entryAsset,
        address _pendleSy,
        address _underlyingMarket,
        address _routerStatic,
        address _dexAddress,
        uint256 _collateralFactor
    )
        WrapperHelper(
            IWiseLending(_wiseLendingAddress).WETH_ADDRESS()
        )
    {
        PENDLE_ROUTER_STATIC = IPendleRouterStatic(
            _routerStatic
        );

        PENDLE_MARKET = IPendleMarket(
            _underlyingMarket
        );

        PENDLE_SY = IPendleSy(
            _pendleSy
        );

        PENDLE_ROUTER = IPendleRouter(
            _pendleRouter
        );

        UNISWAP_V3_ROUTER = IUniswapV3(
            _dexAddress
        );

        if (block.chainid == ETH_CHAIN_ID) {
            UNISWAP_FACTORY = IUniswapFactory(
                UNISWAP_FACTORY_V2_ADDRESS
            );
        }

        ENTRY_ASSET = _entryAsset;
        PENDLE_CHILD = _pendleChildTokenAddress;

        WISE_LENDING = IWiseLending(
            _wiseLendingAddress
        );

        ORACLE_HUB = IWiseOracleHub(
            WISE_LENDING.WISE_ORACLE()
        );

        BALANCER_VAULT = IBalancerVault(
            BALANCER_ADDRESS
        );

        WISE_SECURITY = IWiseSecurity(
            WISE_LENDING.WISE_SECURITY()
        );

        WETH_ADDRESS = WISE_LENDING.WETH_ADDRESS();

        AAVE_HUB = IAaveHub(
            WISE_SECURITY.AAVE_HUB()
        );

        AAVE_ADDRESS = AAVE_HUB.AAVE_ADDRESS();

        AAVE = IAave(
            AAVE_ADDRESS
        );

        AAVE_HUB_ADDRESS = address(
            AAVE_HUB
        );

        POSITION_NFT = IPositionNFTs(
            WISE_LENDING.POSITION_NFT()
        );

        collateralFactor = _collateralFactor;

        AAVE_WETH_ADDRESS = AAVE_HUB.aaveTokenAddress(
            AAVE_HUB.WETH_ADDRESS()
        );

        PT_ORACLE_PENDLE = IOraclePendle(
            0x1Fd95db7B7C0067De8D45C0cb35D59796adfD187
        );

        PENDLE_LIMIT_ROUTER_ADDRESS = 0x000000000000c9B3E2C3Ec88B1B4c0cD853f4321;

        minDepositEthAmount = 0.03 ether;

        // @TODO - REDO - make parameter driven avoid if conditon
        if (block.chainid == ETH_CHAIN_ID) {
            minDepositEthAmount = 3 ether;

            PT_ORACLE_PENDLE = IOraclePendle(
                0x66a1096C6366b2529274dF4f5D8247827fe4CEA8
            );
        }
    }

    function changeUniV3Pool(
        address _poolAddress
    )
        external
        virtual
    {}

    function doApprovals()
        external
        virtual
    {
        _doApprovals(
            address(WISE_LENDING)
        );
    }

    function _doApprovals(
        address _wiseLendingAddress
    )
        internal
        virtual
    {}

    modifier isActive()
    {
        _isActive();
        _;
    }

    modifier routingOngoingCheck()
    {
        _routingOngoingCheck();
        _;
    }

    function _routingOngoingCheck()
        internal
        virtual
    {
        if (routingOngoing == true) {
            revert GenericRoutingOngoing();
        }
    }

    function _isActive()
        internal
        virtual
        view
    {
        if (isShutdown == true) {
            revert GenericDeactivated();
        }
    }

    modifier onlyCollateralFactorRole() {
        _onlyCollateralFactorRole();
        _;
    }

    function _onlyCollateralFactorRole()
        internal
        virtual
    {
        if (msg.sender != collateralFactorRole) {
            revert GenericAccessDenied();
        }
    }
}
