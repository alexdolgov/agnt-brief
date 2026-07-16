// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import { IERC20, SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import { UUPSUpgradeable } from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import { Initializable } from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

import { _revert } from "./utils/Globals.sol";

import { IOracle } from "./interfaces/IOracle.sol";
import { IRainDeployer } from "./interfaces/IRainDeployer.sol";
import { IRainPool } from "./interfaces/IRainPool.sol";

import { IRainDiamondFactory } from "./interfaces/IRainDiamondFactory.sol";

import { IDiamondCut } from "./diamond/interfaces/IDiamondCut.sol";

/**
 * @title RainDeployer
 * @notice Provides functionality for deploying RainPools.
 */
contract RainDeployer is IRainDeployer, Initializable, OwnableUpgradeable, UUPSUpgradeable {
    using SafeERC20 for IERC20;

    /// @inheritdoc IRainDeployer
    uint256 public totalPools;

    /// @inheritdoc IRainDeployer
    mapping(address => uint256) public currentIndex;

    /// @inheritdoc IRainDeployer
    mapping(address => mapping(uint256 => address)) public userPools;

    /// @inheritdoc IRainDeployer
    mapping(uint256 => address) public allPools;

    /// @inheritdoc IRainDeployer
    mapping(address => bool) public createdPools;

    /// @inheritdoc IRainDeployer
    address public oracleFactoryAddress;

    /// @inheritdoc IRainDeployer
    address public baseToken;

    /// @inheritdoc IRainDeployer
    uint256 public closingFee;

    /// @inheritdoc IRainDeployer
    address public platformAddress;

    /// @inheritdoc IRainDeployer
    address public resolverAI;

    /// @inheritdoc IRainDeployer
    uint256 public liquidityFee;

    /// @inheritdoc IRainDeployer
    uint256 public platformFee;

    /// @inheritdoc IRainDeployer
    uint256 public oracleFixedFee;

    /// @inheritdoc IRainDeployer
    uint256 public creatorFee;

    /// @inheritdoc IRainDeployer
    uint256 public resultResolverFee;

    /// @inheritdoc IRainDeployer
    address public disputeResolverAI;

    /// @inheritdoc IRainDeployer
    address public rainToken;

    /// @inheritdoc IRainDeployer
    address public diamondFactory;

    /// @inheritdoc IRainDeployer
    mapping(address => bytes4[]) public facetFunctionSelectors;

    /// @inheritdoc IRainDeployer
    address public diamondCutFacet;

    /// @inheritdoc IRainDeployer
    address public diamondLoupeFacet;

    /// @inheritdoc IRainDeployer
    address public diamondTradingFacet;

    /// @inheritdoc IRainDeployer
    address public diamondResolutionFacet;

    /// @inheritdoc IRainDeployer
    address public diamondDisputeFacet;

    /// @inheritdoc IRainDeployer
    address public diamondClaimFacet;

    /// @inheritdoc IRainDeployer
    address public diamondCancelOrderFacet;

    /// @inheritdoc IRainDeployer
    address public diamondInfoFacet;

    /// @inheritdoc IRainDeployer
    address public diamondGetterFacet;

    /// @inheritdoc IRainDeployer
    address public diamondOracleFeeFacet;

    /// @inheritdoc IRainDeployer
    mapping(address tokenAddress => TokenData tokenData) public tokenData;

    /* =============================== CONSTRUCTOR ====================================== */

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /* =============================== INITALIZER ====================================== */

    /**
     * @inheritdoc IRainDeployer
     */
    function initialize(
        address _oracleFactoryAddress,
        address _baseToken,
        address _platformAddress,
        address _resolverAI,
        address _disputeResolverAI,
        address _rainToken,
        address _diamondFactory,
        uint256 _baseTokenDecimals,
        uint256 _liquidityFee,
        uint256 _platformFee,
        uint256 _oracleFixedFee,
        uint256 _creatorFee,
        uint256 _resultResolverFee,
        uint256 _closingFee
    ) external initializer {
        __Ownable_init(msg.sender);
        __UUPSUpgradeable_init();

        if (
            _oracleFactoryAddress == address(0) ||
            _baseToken == address(0) ||
            _platformAddress == address(0) ||
            _resolverAI == address(0) ||
            _disputeResolverAI == address(0) ||
            _rainToken == address(0) ||
            _diamondFactory == address(0)
        ) {
            _revert(InvalidAddress.selector);
        }

        if (
            _baseTokenDecimals == 0 ||
            _liquidityFee == 0 ||
            _platformFee == 0 ||
            _oracleFixedFee == 0 ||
            _creatorFee == 0 ||
            _resultResolverFee == 0 ||
            _closingFee == 0
        ) {
            _revert(InvalidValue.selector);
        }

        oracleFactoryAddress = _oracleFactoryAddress;
        baseToken = _baseToken;
        platformAddress = _platformAddress;
        resolverAI = _resolverAI;
        disputeResolverAI = _disputeResolverAI;
        rainToken = _rainToken;
        diamondFactory = _diamondFactory;

        liquidityFee = _liquidityFee;
        platformFee = _platformFee;
        oracleFixedFee = _oracleFixedFee;
        creatorFee = _creatorFee;
        resultResolverFee = _resultResolverFee;
        closingFee = _closingFee;
    }

    /* =============================== FUNCTIONS ====================================== */

    /**
     * @inheritdoc IRainDeployer
     */
    function createPool(IRainDeployer.Params memory params) external returns (address poolInstance) {
        if (params.liquidityPercentages.length != params.numberOfOptions) {
            _revert(LengthMismatch.selector);
        }
        if (!tokenData[params.baseToken].isAllowed) {
            _revert(TokenNotAllowed.selector);
        }

        IRainPool.Params memory poolParams = IRainPool.Params({
            initialLiquidity: params.initialLiquidity,
            liquidityPercentages: params.liquidityPercentages,
            isPublic: params.isPublic,
            resolverIsAI: params.resolverIsAI,
            deployerContract: address(this),
            baseToken: params.baseToken,
            usdt: baseToken,
            poolOwner: params.poolOwner,
            platformAddress: platformAddress,
            resolver: resolverAI,
            disputeResolver: disputeResolverAI,
            rainToken: rainToken,
            referrer: params.referrer,
            baseTokenDecimals: ERC20(params.baseToken).decimals(),
            startTime: params.startTime,
            endTime: params.endTime,
            numberOfOptions: params.numberOfOptions,
            platformFee: platformFee,
            liquidityFee: liquidityFee,
            creatorFee: creatorFee,
            resultResolverFee: resultResolverFee,
            closingFee: closingFee,
            oracleFixedFee: oracleFixedFee,
            oracleEndTime: params.oracleEndTime,
            ipfsUri: params.ipfsUri,
            tokenData: tokenData[params.baseToken]
        });

        IDiamondCut.FacetCut[] memory diamondCut = _getAllDiamondCuts(IDiamondCut.FacetCutAction.Add);
        poolInstance = IRainDiamondFactory(diamondFactory).createRainDiamond(diamondCut, poolParams);

        if (params.baseToken != baseToken) {
            uint256 amountInBaseToken = IRainPool(poolInstance).calculateBaseTokenOracleFixedFee(
                oracleFixedFee,
                params.baseToken,
                tokenData[params.baseToken]
            );
            amountInBaseToken = (amountInBaseToken * 1010) / 1000;

            IERC20(params.baseToken).transferFrom(msg.sender, poolInstance, amountInBaseToken);
            IRainPool(poolInstance).swapOracleFixedFee(params.baseToken, tokenData[params.baseToken]);
        } else {
            IERC20(params.baseToken).transferFrom(msg.sender, poolInstance, oracleFixedFee);
        }

        // Minimum 100 wei initial liquidity required
        if (params.initialLiquidity >= 100) {
            IERC20(params.baseToken).safeTransferFrom(msg.sender, poolInstance, params.initialLiquidity);
        } else {
            _revert(InvalidInitialLiquidity.selector);
        }

        userPools[msg.sender][currentIndex[msg.sender]] = poolInstance;
        ++currentIndex[msg.sender];
        allPools[totalPools] = poolInstance;
        totalPools++;
        createdPools[poolInstance] = true;

        emit PoolCreated(poolInstance, msg.sender, params.ipfsUri);
        emit PoolTokenSet({
            poolAddress: poolInstance,
            tokenAddress: params.baseToken,
            tokenDecimals: ERC20(params.baseToken).decimals(),
            tokenName: ERC20(params.baseToken).name(),
            tokenSymbol: ERC20(params.baseToken).symbol()
        });
    }

    /**
     * @inheritdoc IRainDeployer
     */
    function createOracle(
        uint256 numberOfOracles,
        uint256 oracleReward,
        uint256 fixedFee,
        address creator,
        uint256 endTime,
        uint256 totalNumberOfOptions,
        string memory questionUri
    ) external returns (address) {
        if (createdPools[msg.sender] != true) {
            _revert(IRainDeployer.OnlyCreatedPool.selector);
        }
        IERC20(baseToken).safeTransferFrom(msg.sender, address(this), oracleReward + fixedFee);
        IERC20(baseToken).approve(oracleFactoryAddress, oracleReward + fixedFee);
        address oracle = IOracle(oracleFactoryAddress).createExternalSource(
            address(this),
            numberOfOracles,
            oracleReward,
            fixedFee,
            creator,
            endTime,
            totalNumberOfOptions,
            questionUri
        );
        return oracle;
    }

    /* =============================== SETTERS ====================================== */

    /**
     * @inheritdoc IRainDeployer
     */
    function setRainToken(address newRainToken) external onlyOwner {
        if (newRainToken == rainToken || newRainToken == address(0)) {
            _revert(InvalidAddress.selector);
        }
        rainToken = newRainToken;
    }

    function setDiamondFactory(address newDiamondFactory) external onlyOwner {
        if (newDiamondFactory == diamondFactory || newDiamondFactory == address(0)) {
            _revert(InvalidAddress.selector);
        }
        diamondFactory = newDiamondFactory;
    }

    /**
     * @inheritdoc IRainDeployer
     */
    function setResolverAI(address newResolverAI) external onlyOwner {
        if (newResolverAI == resolverAI || newResolverAI == address(0)) {
            _revert(InvalidAddress.selector);
        }
        resolverAI = newResolverAI;
    }

    /**
     * @inheritdoc IRainDeployer
     */
    function setOracleFactoryAddress(address newOracleFactoryAddress) external onlyOwner {
        if (newOracleFactoryAddress == oracleFactoryAddress || newOracleFactoryAddress == address(0)) {
            _revert(InvalidAddress.selector);
        }
        oracleFactoryAddress = newOracleFactoryAddress;
    }

    /**
     * @inheritdoc IRainDeployer
     */
    function setBaseToken(address newBaseToken) external onlyOwner {
        if (newBaseToken == baseToken || newBaseToken == address(0)) {
            _revert(InvalidAddress.selector);
        }

        baseToken = newBaseToken;
    }

    /**
     * @inheritdoc IRainDeployer
     */
    function setOracleFixedFee(uint256 newOracleFixedFee) external onlyOwner {
        if (newOracleFixedFee == oracleFixedFee || newOracleFixedFee == 0) {
            _revert(InvalidValue.selector);
        }
        oracleFixedFee = newOracleFixedFee;
    }

    /**
     * @inheritdoc IRainDeployer
     */
    function setCreatorFee(uint256 newCreatorFee) external onlyOwner {
        if (newCreatorFee == creatorFee || newCreatorFee == 0) {
            _revert(InvalidValue.selector);
        }
        creatorFee = newCreatorFee;
    }

    /**
     * @inheritdoc IRainDeployer
     */
    function setClosingFee(uint256 newClosingFee) external onlyOwner {
        if (newClosingFee == closingFee || newClosingFee == 0) {
            _revert(InvalidValue.selector);
        }
        closingFee = newClosingFee;
    }

    /**
     * @inheritdoc IRainDeployer
     */
    function setResultResolverFee(uint256 newResultResolverFee) external onlyOwner {
        if (newResultResolverFee == resultResolverFee || newResultResolverFee == 0) {
            _revert(InvalidValue.selector);
        }
        resultResolverFee = newResultResolverFee;
    }

    /**
     * @inheritdoc IRainDeployer
     */
    function setPlatformAddress(address newPlatformAddress) external onlyOwner {
        if (newPlatformAddress == platformAddress || newPlatformAddress == address(0)) {
            _revert(InvalidAddress.selector);
        }
        platformAddress = newPlatformAddress;
    }

    /**
     * @inheritdoc IRainDeployer
     */
    function setLiquidityFee(uint256 newLiquidityFee) external onlyOwner {
        if (newLiquidityFee == liquidityFee || newLiquidityFee == 0) {
            _revert(InvalidValue.selector);
        }
        liquidityFee = newLiquidityFee;
    }

    /**
     * @inheritdoc IRainDeployer
     */
    function setPlatformFee(uint256 newPlatformFee) external onlyOwner {
        if (newPlatformFee == platformFee || newPlatformFee == 0) {
            _revert(InvalidValue.selector);
        }
        platformFee = newPlatformFee;
    }

    /**
     * @inheritdoc IRainDeployer
     */
    function setDisputeResolverAI(address newDisputeResolverAI) external onlyOwner {
        disputeResolverAI = newDisputeResolverAI;
    }

    /**
     * @inheritdoc IRainDeployer
     */
    function setNewDiamondCutFacet(
        address newDiamondCutFacet,
        bytes4[] calldata newFacetFunctionSelectors
    ) external onlyOwner {
        if (newDiamondCutFacet == address(0) || newDiamondCutFacet == diamondCutFacet) {
            _revert(InvalidAddress.selector);
        }
        if (newFacetFunctionSelectors.length == 0) {
            _revert(InvalidBytes.selector);
        }
        diamondCutFacet = newDiamondCutFacet;
        facetFunctionSelectors[newDiamondCutFacet] = newFacetFunctionSelectors;
    }

    /**
     * @inheritdoc IRainDeployer
     */
    function setNewDiamondLoupeFacet(
        address newDiamondLoupeFacet,
        bytes4[] calldata newFacetFunctionSelectors
    ) external onlyOwner {
        if (newDiamondLoupeFacet == address(0) || newDiamondLoupeFacet == diamondLoupeFacet) {
            _revert(InvalidAddress.selector);
        }
        if (newFacetFunctionSelectors.length == 0) {
            _revert(InvalidBytes.selector);
        }
        diamondLoupeFacet = newDiamondLoupeFacet;
        facetFunctionSelectors[newDiamondLoupeFacet] = newFacetFunctionSelectors;
    }

    /**
     * @inheritdoc IRainDeployer
     */
    function setNewDiamondTradingFacet(
        address newDiamondTradingFacet,
        bytes4[] calldata newFacetFunctionSelectors
    ) external onlyOwner {
        if (newDiamondTradingFacet == address(0) || newDiamondTradingFacet == diamondTradingFacet) {
            _revert(InvalidAddress.selector);
        }
        if (newFacetFunctionSelectors.length == 0) {
            _revert(InvalidBytes.selector);
        }
        diamondTradingFacet = newDiamondTradingFacet;
        facetFunctionSelectors[newDiamondTradingFacet] = newFacetFunctionSelectors;
    }

    /**
     * @inheritdoc IRainDeployer
     */
    function setNewDiamondResolutionFacet(
        address newDiamondResolutionFacet,
        bytes4[] calldata newFacetFunctionSelectors
    ) external onlyOwner {
        if (newDiamondResolutionFacet == address(0) || newDiamondResolutionFacet == diamondResolutionFacet) {
            _revert(InvalidAddress.selector);
        }
        if (newFacetFunctionSelectors.length == 0) {
            _revert(InvalidBytes.selector);
        }
        diamondResolutionFacet = newDiamondResolutionFacet;
        facetFunctionSelectors[newDiamondResolutionFacet] = newFacetFunctionSelectors;
    }

    /**
     * @inheritdoc IRainDeployer
     */
    function setNewDiamondDisputeFacet(
        address newDiamondDisputeFacet,
        bytes4[] calldata newFacetFunctionSelectors
    ) external onlyOwner {
        if (newDiamondDisputeFacet == address(0) || newDiamondDisputeFacet == diamondDisputeFacet) {
            _revert(InvalidAddress.selector);
        }
        if (newFacetFunctionSelectors.length == 0) {
            _revert(InvalidBytes.selector);
        }
        diamondDisputeFacet = newDiamondDisputeFacet;
        facetFunctionSelectors[newDiamondDisputeFacet] = newFacetFunctionSelectors;
    }

    /**
     * @inheritdoc IRainDeployer
     */
    function setNewDiamondClaimFacet(
        address newDiamondClaimFacet,
        bytes4[] calldata newFacetFunctionSelectors
    ) external onlyOwner {
        if (newDiamondClaimFacet == address(0) || newDiamondClaimFacet == diamondClaimFacet) {
            _revert(InvalidAddress.selector);
        }
        if (newFacetFunctionSelectors.length == 0) {
            _revert(InvalidBytes.selector);
        }
        diamondClaimFacet = newDiamondClaimFacet;
        facetFunctionSelectors[newDiamondClaimFacet] = newFacetFunctionSelectors;
    }

    /**
     * @inheritdoc IRainDeployer
     */
    function setNewDiamondCancelOrderFacet(
        address newDiamondCancelOrderFacet,
        bytes4[] calldata newFacetFunctionSelectors
    ) external onlyOwner {
        if (newDiamondCancelOrderFacet == address(0) || newDiamondCancelOrderFacet == diamondCancelOrderFacet) {
            _revert(InvalidAddress.selector);
        }
        if (newFacetFunctionSelectors.length == 0) {
            _revert(InvalidBytes.selector);
        }
        diamondCancelOrderFacet = newDiamondCancelOrderFacet;
        facetFunctionSelectors[newDiamondCancelOrderFacet] = newFacetFunctionSelectors;
    }

    /**
     * @inheritdoc IRainDeployer
     */
    function setNewDiamondInfoFacet(
        address newDiamondInfoFacet,
        bytes4[] calldata newFacetFunctionSelectors
    ) external onlyOwner {
        if (newDiamondInfoFacet == address(0) || newDiamondInfoFacet == diamondInfoFacet) {
            _revert(InvalidAddress.selector);
        }
        if (newFacetFunctionSelectors.length == 0) {
            _revert(InvalidBytes.selector);
        }
        diamondInfoFacet = newDiamondInfoFacet;
        facetFunctionSelectors[newDiamondInfoFacet] = newFacetFunctionSelectors;
    }

    /**
     * @inheritdoc IRainDeployer
     */
    function setNewDiamondGetterFacet(
        address newDiamondGetterFacet,
        bytes4[] calldata newFacetFunctionSelectors
    ) external onlyOwner {
        if (newDiamondGetterFacet == address(0) || newDiamondGetterFacet == diamondGetterFacet) {
            _revert(InvalidAddress.selector);
        }
        if (newFacetFunctionSelectors.length == 0) {
            _revert(InvalidBytes.selector);
        }
        diamondGetterFacet = newDiamondGetterFacet;
        facetFunctionSelectors[newDiamondGetterFacet] = newFacetFunctionSelectors;
    }

    /**
     * @inheritdoc IRainDeployer
     */
    function setNewOracleFeeFacet(
        address newDiamondOracleFeeFacet,
        bytes4[] calldata newFacetFunctionSelectors
    ) external onlyOwner {
        if (newDiamondOracleFeeFacet == address(0) || newDiamondOracleFeeFacet == diamondOracleFeeFacet) {
            _revert(InvalidAddress.selector);
        }
        if (newFacetFunctionSelectors.length == 0) {
            _revert(InvalidBytes.selector);
        }
        diamondOracleFeeFacet = newDiamondOracleFeeFacet;
        facetFunctionSelectors[newDiamondOracleFeeFacet] = newFacetFunctionSelectors;
    }

    /**
     * @inheritdoc IRainDeployer
     */
    function allowNewToken(address newTokenAddress, IRainDeployer.TokenData calldata tokenData_) external onlyOwner {
        if (newTokenAddress == address(0) || tokenData[newTokenAddress].isAllowed) {
            _revert(InvalidAddress.selector);
        }

        uint256 newTokenDecimals = ERC20(newTokenAddress).decimals();
        if (newTokenDecimals == 0) {
            _revert(InvalidValue.selector);
        }

        emit NewTokenAllowed({
            tokenAddress: newTokenAddress,
            tokenDecimals: newTokenDecimals,
            tokenName: ERC20(newTokenAddress).name(),
            tokenSymbol: ERC20(newTokenAddress).symbol()
        });

        tokenData[newTokenAddress].isAllowed = true;
        tokenData[newTokenAddress].tokenPool = tokenData_.tokenPool;
        tokenData[newTokenAddress].routerAddress = tokenData_.routerAddress;
        tokenData[newTokenAddress].routerHelper = tokenData_.routerHelper;
        tokenData[newTokenAddress].pathUSDTToToken = tokenData_.pathUSDTToToken;
        tokenData[newTokenAddress].pathTokenToUSDT = tokenData_.pathTokenToUSDT;
        tokenData[newTokenAddress].pathTokenWETH = tokenData_.pathTokenWETH;
    }

    /**
     * @inheritdoc IRainDeployer
     */
    function disallowExistingToken(address tokenAddress) external onlyOwner {
        if (tokenAddress == address(0) || !tokenData[tokenAddress].isAllowed) {
            _revert(InvalidAddress.selector);
        }

        uint256 tokenDecimals = ERC20(tokenAddress).decimals();

        emit ExistingTokenDisallowed({
            tokenAddress: tokenAddress,
            tokenDecimals: tokenDecimals,
            tokenName: ERC20(tokenAddress).name(),
            tokenSymbol: ERC20(tokenAddress).symbol()
        });

        tokenData[tokenAddress].isAllowed = false;
        tokenData[tokenAddress].routerAddress = address(0);
        tokenData[tokenAddress].routerHelper = address(0);
        tokenData[tokenAddress].pathUSDTToToken = bytes("");
        tokenData[tokenAddress].pathTokenToUSDT = bytes("");
        tokenData[tokenAddress].pathTokenWETH = bytes("");
    }

    /* ================================ INTERNAL HELPER FUCNTION ================================ */

    function _getAllDiamondCuts(
        IDiamondCut.FacetCutAction action
    ) internal view returns (IDiamondCut.FacetCut[] memory facets) {
        facets = new IDiamondCut.FacetCut[](10);

        facets[0] = IDiamondCut.FacetCut({
            facetAddress: diamondCutFacet,
            action: action,
            functionSelectors: facetFunctionSelectors[diamondCutFacet]
        });

        facets[1] = IDiamondCut.FacetCut({
            facetAddress: diamondLoupeFacet,
            action: action,
            functionSelectors: facetFunctionSelectors[diamondLoupeFacet]
        });

        facets[2] = IDiamondCut.FacetCut({
            facetAddress: diamondTradingFacet,
            action: action,
            functionSelectors: facetFunctionSelectors[diamondTradingFacet]
        });

        facets[3] = IDiamondCut.FacetCut({
            facetAddress: diamondResolutionFacet,
            action: action,
            functionSelectors: facetFunctionSelectors[diamondResolutionFacet]
        });

        facets[4] = IDiamondCut.FacetCut({
            facetAddress: diamondDisputeFacet,
            action: action,
            functionSelectors: facetFunctionSelectors[diamondDisputeFacet]
        });

        facets[5] = IDiamondCut.FacetCut({
            facetAddress: diamondClaimFacet,
            action: action,
            functionSelectors: facetFunctionSelectors[diamondClaimFacet]
        });

        facets[6] = IDiamondCut.FacetCut({
            facetAddress: diamondCancelOrderFacet,
            action: action,
            functionSelectors: facetFunctionSelectors[diamondCancelOrderFacet]
        });

        facets[7] = IDiamondCut.FacetCut({
            facetAddress: diamondInfoFacet,
            action: action,
            functionSelectors: facetFunctionSelectors[diamondInfoFacet]
        });

        facets[8] = IDiamondCut.FacetCut({
            facetAddress: diamondGetterFacet,
            action: action,
            functionSelectors: facetFunctionSelectors[diamondGetterFacet]
        });

        facets[9] = IDiamondCut.FacetCut({
            facetAddress: diamondOracleFeeFacet,
            action: action,
            functionSelectors: facetFunctionSelectors[diamondOracleFeeFacet]
        });
    }

    /* ================================ INTERNAL FUNCTIONS ================================= */

    /**
     * @notice Authorizes the upgrade of the contract to a new implementation.
     * @dev This function is required for UUPS (Upgradeable Proxy) pattern.
     *      Only the contract owner can authorize an upgrade.
     * @param newImplementation The address of the new contract implementation.
     */
    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {}

    /// @dev Upgrade slot variable.
    uint256[35] private __gap;
}
