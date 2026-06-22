// SPDX-License-Identifier: MIT
// Author: Heisenberg
pragma solidity ^0.8.4;

import "ReentrancyGuard.sol";
import "ERC721.sol";
import "AccessControl.sol";
import "SafeERC20.sol";
import "Interfaces.sol";
import "OptionsConfig.sol";
import "BufferBinaryOptions.sol";
import "ConfigFactory.sol";
import "OptionsFactory.sol";

// import "BufferRouter.sol";

/**
 * @author Heisenberg
 * @title Controller
 * @notice A contract to manage the config values for all the option contracts and to launch new option contracts on a defined pool
 */

contract Controller is AccessControl {
    event PairCreated(string assetPair, address options, address optionsConfig);

    constructor() {
        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    // mapping of pool address to assetPair to option contract address
    // mapping(address => mapping(string => address)) public marketRegistry;

    mapping(address => address) public poolSFD;

    address routerContractAddress;
    IReferralStorage referralStorage;
    address traderNFTContract;
    IConfigFactory configFactory;
    IOptionsFactory optionsFactory;
    bytes32 public constant ROUTER_ROLE = keccak256("ROUTER_ROLE");
    bytes32 public constant OPTION_ISSUER_ROLE =
        keccak256("OPTION_ISSUER_ROLE");

    struct Market {
        address pool;
        string assetPair;
        IBufferBinaryOptions.AssetCategory assetCategory;
        IOptionsConfig.Window[] windows;
        uint16 _baseSettlementFeePercentageForAbove;
        uint16 _baseSettlementFeePercentageForBelow;
        uint8[4] _nftTierStep;
        uint16 optionFeePerTxnLimitPercent;
        uint16 overallPoolUtilizationLimit;
        uint16 assetUtilizationLimit;
        uint32 minPeriod;
        uint32 maxPeriod;
        uint256 minFee;
    }

    // set the router contract address, referral storage address, sfd address, pool address
    function initialize(
        address _routerContractAddress,
        IReferralStorage _referralStorageAddress,
        address _traderNFTContract,
        IConfigFactory _configFactory,
        IOptionsFactory _optionsFactory
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        routerContractAddress = _routerContractAddress;
        referralStorage = _referralStorageAddress;
        traderNFTContract = _traderNFTContract;
        configFactory = _configFactory;
        optionsFactory = _optionsFactory;
    }

    function setSFD(
        address pool,
        address sfd
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        poolSFD[pool] = sfd;
    }

    // function setMarketRegistry(
    //     address pool,
    //     string memory assetPair,
    //     address options
    // ) external onlyRole(DEFAULT_ADMIN_ROLE) {
    //     marketRegistry[pool][assetPair] = options;
    // }

    // function grantContractRole(
    //     address targetContract,
    //     bytes32 role,
    //     address account
    // ) external onlyRole(DEFAULT_ADMIN_ROLE) {
    //     IAccessControl(targetContract).grantRole(role, account);
    // }

    function createPair(
        Market memory market
    ) external onlyRole(DEFAULT_ADMIN_ROLE) returns (address) {
        IOptionsConfig optionsConfig = configFactory.deploy(
            ILiquidityPool(market.pool)
        );

        optionsConfig.setSettlementFeeDisbursalContract(
            poolSFD[address(market.pool)]
        );
        if (market.assetCategory == IBufferBinaryOptions.AssetCategory.Forex) {
            // set setMarketTime
            optionsConfig.setMarketTime(market.windows);
        }

        IBufferBinaryOptions options = optionsFactory.deploy(
            ILiquidityPool(market.pool),
            optionsConfig,
            referralStorage,
            market.assetCategory,
            market.assetPair
        );

        IAccessControl(market.pool).grantRole(
            OPTION_ISSUER_ROLE,
            address(options)
        );

        // grantRole on options to router contract
        IAccessControl(address(options)).grantRole(
            ROUTER_ROLE,
            routerContractAddress
        );

        // setContractRegistry on router contract
        IBufferRouter(routerContractAddress).setContractRegistry(
            address(options),
            true
        );

        // approvePoolToTransferTokenX on options contract
        options.approvePoolToTransferTokenX();

        options.configure(
            market._baseSettlementFeePercentageForAbove,
            market._baseSettlementFeePercentageForBelow,
            market._nftTierStep
        );
        optionsConfig.setOptionFeePerTxnLimitPercent(
            market.optionFeePerTxnLimitPercent
        );
        optionsConfig.setOverallPoolUtilizationLimit(
            market.overallPoolUtilizationLimit
        );
        optionsConfig.setAssetUtilizationLimit(market.assetUtilizationLimit);
        optionsConfig.settraderNFTContract(traderNFTContract);
        optionsConfig.setMinFee(market.minFee);
        optionsConfig.setMaxPeriod(market.maxPeriod);
        optionsConfig.setMinPeriod(market.minPeriod);

        // // set marketRegistry
        // marketRegistry[address(market.pool)][market.assetPair] = address(
        //     options
        // );

        // Transfer ownerships
        Ownable(address(optionsConfig)).transferOwnership(msg.sender);
        IAccessControl(address(options)).grantRole(
            DEFAULT_ADMIN_ROLE,
            msg.sender
        );

        emit PairCreated(
            market.assetPair,
            address(options),
            address(optionsConfig)
        );
        return address(options);
    }
}
